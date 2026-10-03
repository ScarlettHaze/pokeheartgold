import codes, hg, arsim, itertools
from hg import R

r = R()
def image(ovs):
    m = arsim.Mem()
    m.load(r.arm9_ram, r.arm9)
    for ram, d in r.autoloads(): m.load(ram, d)
    for o in ovs:
        ram, d = r.overlay(o); m.load(ram, d)
    return m

# Rebuild cheat objects to get expected patches: re-run builders via codes module internals is complex;
# instead compare simulated writes to expected bytes derived from Cheat.patched recorded in codes.CHEAT_OBJS
fails = 0
for f in codes.FOLDERS:
    for name, note, code in f['cheats']:
        c = codes.OBJ[name]
        ovs = sorted({ov for (ov, a) in c.patched if ov is not None})
        # 1) correct overlay loaded: run twice (second frame must be stable)
        m = image(ovs)
        arsim.run(code, m); arsim.run(code, m)
        ok = True
        for (ov, a), b in c.patched.items():
            got = bytes(m.r8(a + i) for i in range(len(b)))
            if got != b: ok = False; print('  MISMATCH', name, hex(a), got.hex(), b.hex())
        for a, b in getattr(c, 'itcm', {}).items():
            got = bytes(m.r8(a + i) for i in range(len(b)))
            if got != b: ok = False; print('  ITCM MISMATCH', name, hex(a))
        # 2) wrong overlay in the same region: no writes outside ITCM/arm9
        for ov in ovs:
            ram, d = r.overlay(ov)
            others = [o for o in range(len(r.ovt)) if o != ov and r.ovt[o][1] < ram + len(d) and ram < r.ovt[o][1] + r.ovt[o][2] and o not in ovs]
            for o in others[:6]:
                m2 = image([o]); arsim.run(code, m2)
                bad = [a for a in m2.writes if ram <= a < ram + len(d)]
                if bad: ok = False; print('  WROTE INTO OTHER OVERLAY', name, 'ov', o, hex(min(bad)))
        print('OK ' if ok else 'BAD', name, ovs)
        fails += not ok
print('fails', fails)
