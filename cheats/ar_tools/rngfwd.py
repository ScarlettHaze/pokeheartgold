"""Strict check for each caught wild Pokemon: starting from the RNG state right after the slot roll the game used,
re-run the normal HGSS generation (nature roll, PID loop, 2 IV calls) and compare with the caught PID/IVs.
Also check that this RNG frame really gives the slot roll the game used (a forced slot would not)."""
import sys, re, struct
import pkm
M, A = 0x41C64E6D, 0x6073
for log in sys.argv[1:]:
    for line in open(log, errors='replace'):
        m = re.match(r"CAUGHT (\S+) (\S+) slot roll (\S+) state (\S+)", line)
        if not m: continue
        fn, roll, st = m.group(1), int(m.group(3)), int(m.group(4), 16)
        if roll == -1: roll = 99      # test-only fake: slot 11 returned directly (slot 11 = roll 99)
        raw = open(fn, 'rb').read()
        pid, plain, _, ok = pkm.decode(raw + bytes(0x64))
        iv = struct.unpack_from('<I', plain, 0x30)[0] & 0x3FFFFFFF
        frame_ok = (st >> 16) % 100 == roll
        s = st
        def nxt():
            global s
            s = (s * M + A) & 0xFFFFFFFF
            return s >> 16
        nature = nxt() % 25
        for _ in range(10000):
            p = nxt() | (nxt() << 16)
            if p % 25 == nature: break
        ivs = (nxt() & 0x7FFF) | ((nxt() & 0x7FFF) << 15)
        gen_ok = (p == pid and ivs == iv)
        print('%-30s slot roll %2d  frame gives %2d (%s)  regenerated PID %08X/IVs %s  -> %s' % (
            fn, roll, (st >> 16) % 100, 'ok' if frame_ok else 'NO', p, 'match' if ivs == iv else 'differ',
            'RNG-CONSISTENT' if frame_ok and gen_ok else 'NOT CONSISTENT'))
