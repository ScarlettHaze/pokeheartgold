import hg, new100, codes
from overlap import writes_static, cheats_from_xml, mine, prev, db
r = hg.R()
new = [(n, f().text()) for n, f in new100.NEW.items()]
bad = 0
for name, t in new:
    w = [int(x, 16) for x in t.split()]; i = 0
    while i < len(w):
        a, b = w[i], w[i + 1]; i += 2
        if a >> 28 == 0xE: i += (b + 7) // 8 * 2; continue
        if a >> 28 == 5:
            addr = a & 0x0FFFFFFF
            hits = [ov for ov in range(len(r.ovt)) for ram, d in [r.overlay(ov)] if ram <= addr < ram + len(d) - 3 and r.u32(addr, ov) == b]
            if len(hits) != 1: print('GUARD', name, hex(addr), hits); bad += 1
W = {n: writes_static(c) for n, c in new + mine + prev + db}
for n, c in new:
    for n2, c2 in new + mine + prev + db:
        if n2 != n and W[n] & W[n2]:
            print('OVERLAP', n, '<->', n2, hex(min(W[n] & W[n2]))); bad += 1
print('problems', bad)
