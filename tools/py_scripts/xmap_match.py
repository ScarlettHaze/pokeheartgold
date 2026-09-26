#!/usr/bin/env python3
"""
Match symbols between two Metrowerks xMAP link maps of different builds of the
same game (e.g. a JP build and the US build produced by this repo), and emit
a CSV of candidate correspondences plus optional rename suggestions.

Matching is done per module (main, ITCM, DTCM and each overlay, paired by
overlay ID) and per section kind (.text, .rodata, .data, .bss). Within each,
symbols are ordered by address and aligned on their sizes:

  anchor   - part of a run of identical sizes found by sequence alignment
  gap      - sits between two anchors, and the unmatched stretch has the same
             number of symbols on both sides (paired in order)

Anything else is left unmatched. Both maps must come from the same source
code base with only small per-region differences for this to be reliable.

Usage:
  xmap_match.py REF.xMAP TARGET.xMAP -o matches.csv [--renames renames.txt]

REF is the map whose names you want to borrow; TARGET is this repo's map
(build/heartgold.us/*.xMAP, or the upstream `xmap` branch copy).
"""

import argparse
import csv
import difflib
import re
import sys
from collections import defaultdict

SECTION_RE = re.compile(r"^# \.(\S+)$")
OVERLAY_ID_RE = re.compile(r"^#>([0-9A-F]{8})\s+SDK_OVERLAY\.(\S+)\.ID ")
SYMBOL_RE = re.compile(
    r"^  ([0-9A-F]{8}) ([0-9A-F]{8}) \.(text|rodata|data|bss|sbss|init|ctor)\s+(\S+)\s+\((.*)\)\s*$"
)
# Names in TARGET that are placeholders and safe to suggest a rename for.
PLACEHOLDER_RE = re.compile(r"^(sub|ov\d+|FUN|_?unk)(_data)?_[0-9A-Fa-f]{8}$")
# Names in REF that carry no useful information.
NOISE_RE = re.compile(r"^(@|\$|\.|\?|__sinit|L\d)|\$\d+$")


def module_key(section, overlay_ids):
    base = section[:-4] if section.endswith(".bss") else section
    if base in overlay_ids:
        return f"overlay_{overlay_ids[base]:03d}"
    return base


def parse_xmap(path):
    """Returns {(module, kind): [(addr, size, name, obj), ...]} sorted by address."""
    overlay_ids = {}
    with open(path, encoding="latin-1") as f:
        lines = f.read().splitlines()
    for line in lines:
        m = OVERLAY_ID_RE.match(line)
        if m:
            overlay_ids[m.group(2)] = int(m.group(1), 16)

    syms = defaultdict(list)
    section = None
    for line in lines:
        m = SECTION_RE.match(line)
        if m:
            section = m.group(1)
            continue
        if section is None:
            continue
        m = SYMBOL_RE.match(line)
        if not m:
            continue
        addr, size, kind, name, obj = m.groups()
        size = int(size, 16)
        if size == 0 or name.startswith((".", "$")):
            continue
        if kind == "sbss":
            kind = "bss"
        mod = module_key(section, overlay_ids)
        syms[(mod, kind)].append((int(addr, 16), size, name, obj.strip()))

    for key, lst in syms.items():
        # Dedupe aliases at the same address; keep the first.
        seen = set()
        out = []
        for s in sorted(lst, key=lambda s: s[0]):
            if s[0] in seen:
                continue
            seen.add(s[0])
            out.append(s)
        syms[key] = out
    return syms


def align(ref, tgt):
    """Yields (ref_sym, tgt_sym, method)."""
    rs = [s[1] for s in ref]
    ts = [s[1] for s in tgt]
    sm = difflib.SequenceMatcher(None, rs, ts, autojunk=False)
    for tag, i1, i2, j1, j2 in sm.get_opcodes():
        if tag == "equal":
            for k in range(i2 - i1):
                yield ref[i1 + k], tgt[j1 + k], "anchor"
        elif tag == "replace" and i2 - i1 == j2 - j1:
            for k in range(i2 - i1):
                yield ref[i1 + k], tgt[j1 + k], "gap"


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("ref", help="xMAP whose symbol names are borrowed")
    ap.add_argument("target", help="xMAP of this repo's build")
    ap.add_argument("-o", "--output", required=True, help="CSV of all matches")
    ap.add_argument("--renames", help="write 'old new' pairs for placeholder TARGET names")
    ap.add_argument("--kinds", default="text,rodata,data,bss", help="section kinds to match")
    args = ap.parse_args()

    ref = parse_xmap(args.ref)
    tgt = parse_xmap(args.target)
    kinds = set(args.kinds.split(","))

    rows = []
    stats = defaultdict(lambda: [0, 0, 0])  # module -> [target syms, anchor, gap]
    for key in sorted(set(ref) & set(tgt)):
        if key[1] not in kinds:
            continue
        stats[key][0] += len(tgt[key])
        for r, t, method in align(ref[key], tgt[key]):
            stats[key][1 if method == "anchor" else 2] += 1
            rows.append([key[0], key[1], f"{t[0]:08X}", f"{t[1]:X}", t[2], t[3],
                         f"{r[0]:08X}", f"{r[1]:X}", r[2], r[3], method])
    for key in sorted(set(tgt) - set(ref)):
        if key[1] in kinds:
            print(f"warning: {key[0]} {key[1]} has no counterpart in ref map", file=sys.stderr)

    with open(args.output, "w", newline="") as f:
        w = csv.writer(f)
        w.writerow(["module", "kind", "tgt_addr", "tgt_size", "tgt_name", "tgt_obj",
                    "ref_addr", "ref_size", "ref_name", "ref_obj", "method"])
        w.writerows(rows)

    if args.renames:
        # Only rename when the ref name is unique among matches, so we never
        # create duplicate global symbols.
        counts = defaultdict(int)
        for row in rows:
            counts[row[8]] += 1
        existing = {s[2] for lst in tgt.values() for s in lst}
        with open(args.renames, "w") as f:
            n = 0
            for row in rows:
                old, new = row[4], row[8]
                if PLACEHOLDER_RE.match(old) and not NOISE_RE.search(new) and counts[new] == 1 and new not in existing:
                    f.write(f"{old} {new}\n")
                    n += 1
        print(f"{n} rename suggestions -> {args.renames}", file=sys.stderr)

    tot = [0, 0, 0]
    for key, (n, a, g) in stats.items():
        for i, v in enumerate((n, a, g)):
            tot[i] += v
    print(f"target symbols: {tot[0]}  anchored: {tot[1]}  gap-filled: {tot[2]}  "
          f"({100 * (tot[1] + tot[2]) / max(tot[0], 1):.1f}% matched)", file=sys.stderr)
    for kind in sorted(kinds):
        n = sum(v[0] for k, v in stats.items() if k[1] == kind)
        m = sum(v[1] + v[2] for k, v in stats.items() if k[1] == kind)
        if n:
            print(f"  .{kind}: {m}/{n} ({100 * m / n:.1f}%)", file=sys.stderr)


if __name__ == "__main__":
    main()
