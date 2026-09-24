#!/usr/bin/env python3
"""Match not-yet-decompiled asm functions against an original linker map (.xMAP).

The map's addresses need not match the target ROM; functions are matched by
their order and sizes inside each overlay. For every function in the repo's
asm/*.s files it guesses the original function name and object (.c) file.

Prerequisite: assemble the asm files with GNU as (see assemble_asm.sh), which
produces <objdir>/<name>.o for every asm/<name>.s.

Output (TSV): overlay, us_name, us_size, orig_name, orig_size, orig_object, confidence
  confidence: "exact" - sizes equal and both neighbours matched too
              "size"  - sizes equal
              "fuzzy" - aligned by position only (sizes differ)
"""
import argparse
import collections
import re
import subprocess
import sys

import numpy as np

from parse_xmap import parse


def parse_lsf(path):
    """Yield (overlay_index, [object paths]) in lsf order. Static main is index -1."""
    regions = []
    cur = None
    with open(path) as f:
        for line in f:
            s = line.strip()
            m = re.match(r'^(Static|Overlay|Autoload)\s+(\S+)', s)
            if m:
                cur = [m.group(1), m.group(2), []]
                regions.append(cur)
                continue
            m = re.match(r'^Object\s+(\S+)', s)
            if m and cur is not None:
                cur[2].append(m.group(1))
    return regions


def overlay_sections(path):
    secs = []
    with open(path, encoding='latin-1') as f:
        for line in f:
            if line.startswith('# Memory map'):
                break
            m = re.match(r'^# \.(\S+)$', line.rstrip('\n'))
            if m:
                sec = m.group(1)
                if sec.endswith('.bss') or sec.startswith('binary.') or sec in ('main', 'ITCM', 'DTCM'):
                    continue
                secs.append(sec)
    return secs


def asm_funcs(objpath):
    out = subprocess.run(['arm-none-eabi-objdump', '-t', objpath], capture_output=True, text=True).stdout
    funcs = []
    for line in out.splitlines():
        parts = line.split()
        # value flags... section size name
        if len(parts) < 5 or '.text' not in parts:
            continue
        if 'F' not in parts[1:-3]:
            continue
        sec_i = parts.index('.text')
        addr = int(parts[0], 16)
        size = int(parts[sec_i + 1], 16)
        funcs.append((addr, size, parts[-1]))
    funcs.sort()
    return [(n, s) for _, s, n in funcs]


def size_eq(a, b):
    # thumb functions may or may not include a trailing 2-byte pad
    return (a + 3) & ~3 == (b + 3) & ~3


def best_offset(xs, us, lo):
    """Rigid offset k >= lo maximising exact size matches."""
    n = len(us)
    if len(xs) - lo < 1:
        return None, 0
    best_k, best = None, -1
    X = (np.asarray(xs) + 3) & ~3
    hi = len(xs)
    score = np.zeros(max(hi - lo, 1), dtype=np.int32)
    for i, u in enumerate(us):
        u = (u + 3) & ~3
        seg = X[lo + i:hi]
        if len(seg) == 0:
            break
        score[:len(seg)] += seg == u
    k = int(np.argmax(score))
    return lo + k, int(score[k])


def align(xs, us):
    """Needleman-Wunsch; returns list of (i_x, j_u) pairs."""
    n, m = len(xs), len(us)
    GAP = -1
    S = np.zeros((n + 1, m + 1), dtype=np.int32)
    T = np.zeros((n + 1, m + 1), dtype=np.int8)  # 0 diag 1 up(skip x) 2 left(skip u)
    S[1:, 0] = 0  # skipping leading x is free (window slack)
    S[0, 1:] = np.arange(1, m + 1) * GAP
    T[1:, 0] = 1
    T[0, 1:] = 2
    for i in range(1, n + 1):
        xi = xs[i - 1]
        for j in range(1, m + 1):
            d = S[i - 1, j - 1] + (3 if size_eq(xi, us[j - 1]) else -1)
            u = S[i - 1, j] + GAP
            l = S[i, j - 1] + GAP
            if d >= u and d >= l:
                S[i, j] = d; T[i, j] = 0
            elif u >= l:
                S[i, j] = u; T[i, j] = 1
            else:
                S[i, j] = l; T[i, j] = 2
    # trailing x free: pick best i in last column
    i = int(np.argmax(S[:, m])); j = m
    pairs = []
    while i > 0 and j > 0:
        t = T[i, j]
        if t == 0:
            pairs.append((i - 1, j - 1)); i -= 1; j -= 1
        elif t == 1:
            i -= 1
        else:
            j -= 1
    pairs.reverse()
    return pairs


def main():
    p = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    p.add_argument('xmap')
    p.add_argument('--lsf', default='main.lsf')
    p.add_argument('--objdir', required=True, help='directory with GNU-assembled asm objects')
    p.add_argument('-o', '--output', default='-')
    p.add_argument('--splits', help='also write, per asm file, the original objects it spans')
    args = p.parse_args()
    splits = open(args.splits, 'w') if args.splits else None

    xsec = collections.defaultdict(list)
    for sec, addr, size, kind, name, obj in parse(args.xmap):
        if kind == 'func':
            xsec[sec].append((addr, size, name, obj))
    # overlay order in the map == overlay id order
    sec_order = overlay_sections(args.xmap)
    for v in xsec.values():
        v.sort()

    out = sys.stdout if args.output == '-' else open(args.output, 'w')
    out.write('overlay\tus_name\tus_size\torig_name\torig_size\torig_object\tconfidence\n')

    ovy_idx = 0
    for kind, rname, objs in parse_lsf(args.lsf):
        if kind == 'Autoload':
            continue
        if kind == 'Static':
            xname = 'main'
        else:
            xname = sec_order[ovy_idx] if ovy_idx < len(sec_order) else None
            ovy_idx += 1
        X = xsec.get(xname, [])
        xs = [s for _, s, _, _ in X]
        files = []
        names = []
        for obj in objs:
            if not obj.startswith('asm/'):
                continue
            try:
                funcs = asm_funcs(f'{args.objdir}/{obj[4:-2]}.o')
            except FileNotFoundError:
                continue
            if funcs:
                files.append(funcs)
                names.append(obj)

        # pass 1: anchor files whose size sequence is found with confidence
        anchors = [None] * len(files)
        lo = 0
        for fi, funcs in enumerate(files):
            us = [s for _, s in funcs]
            k, sc = best_offset(xs, us, lo)
            if k is not None and sc >= max(2, len(us) // 4):
                anchors[fi] = k
                lo = k + sc

        # pass 2: align every file inside the window bounded by its anchored neighbours
        lo = 0
        for fi, funcs in enumerate(files):
            us = [s for _, s in funcs]
            nxt = next((anchors[j] for j in range(fi + 1, len(files)) if anchors[j] is not None), len(xs))
            if anchors[fi] is not None:
                wlo = max(lo, anchors[fi] - 64)
                whi = min(nxt if nxt > anchors[fi] else len(xs), anchors[fi] + 2 * len(us) + 256)
            else:
                wlo, whi = lo, min(nxt, lo + 2 * len(us) + 256)
            matched = {}
            if whi > wlo:
                for i, j in align(xs[wlo:whi], us):
                    matched[j] = wlo + i
            good = [i for j, i in matched.items() if size_eq(xs[i], us[j])]
            if anchors[fi] is None and len(good) < max(1, len(us) // 3):
                matched = {}  # too weak to trust
            if matched:
                lo = max(matched.values()) + 1
            if splits:
                splits.write(f'{names[fi][:-2]}.s ({rname})\n')
                runs = []
                for j, (name, _) in enumerate(funcs):
                    o = X[matched[j]][3] if j in matched else '?'
                    if runs and runs[-1][0] == o:
                        runs[-1][2] = name; runs[-1][3] += 1
                    else:
                        runs.append([o, name, name, 1])
                for o, a, b, n in runs:
                    splits.write(f'    {o:40s} {n:4d} funcs  {a} .. {b}\n')
            for j, (name, size) in enumerate(funcs):
                if j in matched:
                    xa, xsz, xn, xo = X[matched[j]]
                    if size_eq(xsz, size):
                        nb = all(size_eq(X[matched[jj]][1], funcs[jj][1]) for jj in (j - 1, j + 1)
                                 if jj in matched)
                        conf = 'exact' if nb else 'size'
                    else:
                        conf = 'fuzzy'
                    out.write(f'{rname}\t{name}\t{size:X}\t{xn}\t{xsz:X}\t{xo}\t{conf}\n')
                else:
                    out.write(f'{rname}\t{name}\t{size:X}\t\t\t\tnone\n')


if __name__ == '__main__':
    main()
