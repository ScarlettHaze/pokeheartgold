import re, glob, collections
exec(open('arcscan.py').read().split("files = sorted")[0])
def writes(code):
    w = [int(x, 16) for x in code.split()]; out = []; i = 0; off = 0
    while i + 1 < len(w):
        a, b = w[i], w[i + 1]; i += 2; t = a >> 28
        if t == 0: out.append(((a & 0x0FFFFFFF) + off, 4))
        elif t == 1: out.append(((a & 0x0FFFFFFF) + off, 2))
        elif t == 2: out.append(((a & 0x0FFFFFFF) + off, 1))
        elif t == 0xE: out.append(((a & 0x0FFFFFFF) + off, b)); i += (b + 7) // 8 * 2
        elif t == 0xB: off = 0  # rare; ignore pointer loads
    return out
mine = {}
for f in ['/home/user/pokeheartgold/cheats/new_hg_eu_cheats_100pct.xml', '/home/user/pokeheartgold/cheats/new_hg_eu_cheats_4.xml']:
    for n, c, _ in cheats(f): mine[n] = writes(c)
arc = {}
for f in sorted(glob.glob('arc/*.xml')):
    for n, c, _ in cheats(f):
        if n in mine: continue
        arc.setdefault(n, set()).update(writes(c))
hits = collections.defaultdict(set)
for n, ws in arc.items():
    for a, l in ws:
        for m, mws in mine.items():
            for b, k in mws:
                if a < b + k and b < a + l:
                    hits[n].add((m, hex(max(a, b))))
for n in sorted(hits):
    ms = sorted(set(m for m, _ in hits[n]))
    print(n, '->', ms[:4], sorted(set(x for _, x in hits[n]))[:3])
# cave usage in 0x02111C00-0x02112A64 by archive codes
print('--- archive codes writing into 0x02111C00-0x02112A64')
for n, ws in sorted(arc.items()):
    r = [(hex(a), l) for a, l in ws if 0x02111C00 <= a < 0x02112A64]
    if r: print(' ', n, r[:3])
