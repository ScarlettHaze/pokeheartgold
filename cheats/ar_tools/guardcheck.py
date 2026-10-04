import codes, hg
r = hg.R()
bad = 0
for name, c in codes.OBJ.items():
    toks = c.text().split(); w = [int(t, 16) for t in toks]; i = 0
    while i < len(w):
        a, b = w[i], w[i + 1]; i += 2
        if a >> 28 == 0xE: i += (b + 7) // 8 * 2; continue
        if a >> 28 == 5:
            addr = a & 0x0FFFFFFF
            hits = []
            for ov in range(len(r.ovt)):
                ram, d = r.overlay(ov)
                if ram <= addr < ram + len(d) - 3 and r.u32(addr, ov) == b:
                    hits.append(ov)
            if len(hits) != 1:
                print('GUARD SHARED', name, hex(addr), hits); bad += 1
print('checked; problems:', bad)
