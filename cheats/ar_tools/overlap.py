import re, codes, arsim
U = '/root/.claude/uploads/3a2744e6-c4f1-55d8-a4af-a2807de25ca2/'
def writes_static(code):
    """Collect absolute addresses of 0/1/2/E writes with offset 0 (ignores pointer-relative writes)."""
    toks = code.split(); w = [int(t, 16) for t in toks]; i = 0; out = set(); rel = False
    while i < len(w):
        a, b = w[i], w[i + 1]; i += 2; t = a >> 28
        if t == 0xB or (t == 0xD and ((a >> 24) & 0xF) in (3, 0xC)): rel = True
        if t == 0xD and ((a >> 24) & 0xF) == 2: rel = False
        if t == 0xE:
            n = (b + 7) // 8 * 2
            if not rel: out |= set(range(a & 0x0FFFFFFF, (a & 0x0FFFFFFF) + b))
            i += n; continue
        if t in (0, 1, 2) and not rel:
            out |= set(range(a & 0x0FFFFFFF, (a & 0x0FFFFFFF) + {0: 4, 1: 2, 2: 1}[t]))
    return out

def cheats_from_xml(text):
    res = []
    for m in re.finditer(r'<name>([^<]*)</name>\s*(?:<note>[^<]*</note>\s*)?<codes>([^<]*)</codes>', text):
        if m.group(2).strip(): res.append((m.group(1), m.group(2)))
    return res

mine = [(n, c) for f in codes.FOLDERS for n, no, c in f['cheats']]
prev = []
for fn in ['425f4fe1-new_hg_eu_cheats.xml', 'd6892103-new_hg_eu_cheats_2.xml', 'ba2a6cb6-new_hg_eu_cheats_3.xml', 'd66a0148-battle_codes.xml']:
    prev += [('[prev] ' + n, c) for n, c in cheats_from_xml(open(U + fn).read())]
db = [('[db] ' + n, c) for n, c in cheats_from_xml(open('rev10.xml').read())]
W = {n: writes_static(c) for n, c in mine + prev + db}
for n, c in mine:
    hits = []
    for n2, c2 in mine + prev + db:
        if n2 == n: continue
        inter = W[n] & W[n2]
        if inter: hits.append((n2, hex(min(inter))))
    if hits: print(n, '->', hits[:8])
