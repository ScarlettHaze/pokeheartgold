#!/usr/bin/env python3
"""Parse a Metrowerks linker .xMAP file into a flat symbol table.

Output columns (TSV): section, address, size, kind, name, object
  section - linker section / overlay name from the map ("main", "ITCM", "fieldmap", ...)
  kind    - "func" for .text symbols, otherwise the ELF section (.data, .rodata, .bss, ...)
  object  - "library.a member.o" or "file.o"
Mapping symbols ($a/$t/$d) and zero-sized labels are dropped.
"""
import argparse
import re
import sys

LINE_RE = re.compile(r'^\s+([0-9A-F]{8}) ([0-9A-F]{8}) (\S+)\s+(\S+)\s+\((.*)\)\s*$')
SECT_RE = re.compile(r'^# \.(\S+)$')


def parse(path):
    section = None
    with open(path, encoding='latin-1') as f:
        for line in f:
            if line.startswith('# Memory map'):
                break
            m = SECT_RE.match(line.rstrip('\n'))
            if m:
                section = m.group(1)
                continue
            if section is None:
                continue
            m = LINE_RE.match(line)
            if not m:
                continue
            addr, size, elfsec, name, obj = m.groups()
            if name.startswith('$') or name == elfsec:
                continue
            size = int(size, 16)
            if size == 0:
                continue
            kind = 'func' if elfsec in ('.text', '.itcm', '.init') else elfsec
            yield section, int(addr, 16), size, kind, name, ' '.join(obj.split())


def main():
    p = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    p.add_argument('xmap')
    p.add_argument('-o', '--output', default='-')
    p.add_argument('--funcs-only', action='store_true')
    args = p.parse_args()
    out = sys.stdout if args.output == '-' else open(args.output, 'w')
    out.write('section\taddress\tsize\tkind\tname\tobject\n')
    for sec, addr, size, kind, name, obj in parse(args.xmap):
        if args.funcs_only and kind != 'func':
            continue
        out.write(f'{sec}\t{addr:08X}\t{size:X}\t{kind}\t{name}\t{obj}\n')


if __name__ == '__main__':
    main()
