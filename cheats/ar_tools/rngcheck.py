"""Strict HGSS wild-encounter RNG check (Method K): recover the seed from PID+IVs, step back past failed PID
attempts and the nature roll, and check that the frame before it is the slot roll the game used.
usage: rngcheck.py lg_*.log   (uses the CAUGHT lines: file + logged slot roll)"""
import sys, re, struct
import pkm
M, A = 0x41C64E6D, 0x6073
MI, AI = 0xEEB9EB65, 0x0A3561A1      # inverse: s = s'*MI + AI
nxt = lambda s: (s * M + A) & 0xFFFFFFFF
prv = lambda s: (s * MI + AI) & 0xFFFFFFFF
def check(fn, roll):
    raw = open(fn, 'rb').read()
    pid, plain, _, ok = pkm.decode(raw + bytes(0x64))
    iv = struct.unpack_from('<I', plain, 0x30)[0]
    iv1, iv2 = iv & 0x7FFF, (iv >> 15) & 0x7FFF
    nature = pid % 25
    res = []
    for lo in range(0x10000):
        s1 = ((pid & 0xFFFF) << 16) | lo                 # state that produced PID low half
        s2 = nxt(s1)
        if s2 >> 16 != pid >> 16: continue
        s3 = nxt(s2); s4 = nxt(s3)
        if (s3 >> 16) & 0x7FFF != iv1 or (s4 >> 16) & 0x7FFF != iv2: continue
        # v(-n) = output of the n-th call before PID-low. k failed PID pairs, then nature, then slot.
        st = [s1]
        for _ in range(130): st.append(prv(st[-1]))
        v = lambda n: st[n] >> 16
        for k in range(60):
            if v(2 * k + 1) % 25 != nature: continue
            if any(((v(2 * jj - 1) << 16) | v(2 * jj)) % 25 == nature for jj in range(1, k + 1)): continue
            res.append((v(2 * k + 2) % 100, k))
    return res
for log in sys.argv[1:]:
    for line in open(log):
        m = re.match(r"CAUGHT (\S+) (\S+) slot roll (\S+)", line)
        if not m: continue
        fn, roll = m.group(1), m.group(3)
        r = check(fn, roll)
        rolls = sorted(set(x for x, _ in r))
        verdict = 'MATCH' if roll != 'None' and int(roll) in rolls else ('n/a' if roll == 'None' else 'MISMATCH')
        print('%-34s game roll %-4s RNG-implied slot roll(s) %-10s -> %s' % (fn, roll, rolls, verdict))
