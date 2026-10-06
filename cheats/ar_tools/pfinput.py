import sys, struct, glob, os
import pkm
for fn in sys.argv[1:]:
    raw = open(fn, 'rb').read()
    pid, plain, _, ok = pkm.decode(raw[:0x88] + bytes(0x64))
    f = bytes(raw[:8]) + bytes(plain)
    sp = struct.unpack_from('<H', f, 0x08)[0]
    iv = struct.unpack_from('<I', f, 0x38)[0]
    hp, at, df, se, sa, sd = [(iv >> (5 * k)) & 31 for k in range(6)]
    lvl = f[0x84] & 0x7F
    contest = os.path.basename(fn).startswith(('bug', 'ctl'))
    locs = [23, 24] if contest else [22]
    for loc in locs:
        print(os.path.basename(fn), '%08X' % pid, hp, at, df, sa, sd, se, sp, lvl, loc, 1 if contest else 0)
