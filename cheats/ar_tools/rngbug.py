"""Strict RNG check for Bug Contest catches: from the RNG state at the start of the kept slot call, re-run
slot roll, level roll, then up to 4 x (nature, PID loop, IVs) until a 31 IV, and compare with the caught mon."""
import sys, re, struct
import pkm
M, A = 0x41C64E6D, 0x6073
TAB = [(10, 24, 36, 80), (13, 24, 36, 60), (11, 26, 36, 50), (14, 26, 36, 40), (12, 27, 30, 30),
       (15, 27, 30, 20), (48, 25, 32, 15), (46, 27, 34, 10), (123, 27, 28, 5), (127, 27, 28, 0)]   # Tuesday table (read from RAM)
for log in sys.argv[1:]:
    for line in open(log, errors='replace'):
        m = re.match(r"CAUGHT (\S+) (\S+) state (\S+)", line)
        if not m: continue
        fn, st = m.group(1), int(m.group(3), 16)
        raw = open(fn, 'rb').read()
        pid, plain, party, ok = pkm.decode(raw)
        sp = struct.unpack_from('<H', plain, 0)[0]; iv = struct.unpack_from('<I', plain, 0x30)[0] & 0x3FFFFFFF
        s = st
        def nxt():
            global s
            s = (s * M + A) & 0xFFFFFFFF
            return s >> 16
        roll = nxt() % 100
        i = next(k for k, t in enumerate(TAB) if roll >= t[3])
        spc, lo, hi, _ = TAB[i]
        lvl = nxt() % (hi - lo + 1) + lo
        for attempt in range(4):
            nature = nxt() % 25
            while True:
                p = nxt() | (nxt() << 16)
                if p % 25 == nature: break
            ivs = (nxt() & 0x7FFF) | ((nxt() & 0x7FFF) << 15)
            if any((ivs >> (5 * k)) & 31 == 31 for k in range(6)): break
        used = attempt + 1
        good = spc == sp and p == pid and ivs == iv and lvl == party[4]
        print('%-28s roll %2d -> species %d (caught %d) lvl %d (caught %d) PID %08X/%08X IVs %s -> %s' % (
            fn, roll, spc, sp, lvl, party[4], p, pid, 'match' if ivs == iv else 'differ', 'RNG-CONSISTENT' if good else 'NOT CONSISTENT') + '  (generation attempt %d of 4)' % used)
