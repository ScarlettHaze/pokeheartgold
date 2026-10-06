import re, glob, os, collections
def cheats(path):
    t = open(path, encoding='utf-8', errors='replace').read()
    out = []
    for m in re.finditer(r'<cheat>(.*?)</cheat>', t, re.S):
        b = m.group(1)
        n = re.search(r'<name>([^<]*)</name>', b); c = re.search(r'<codes>([^<]*)</codes>', b)
        note = re.search(r'<note>([^<]*)</note>', b)
        if n and c: out.append((n.group(1).replace('&amp;', '&').strip(), ' '.join(c.group(1).split()).upper(), note.group(1) if note else ''))
    return out
files = sorted(f for f in glob.glob('arc/*.xml'))
# reference: cheats.xml (the IPKE section is in it) + current packs
ref = {}
for f in ['cheats.xml', '/home/user/pokeheartgold/cheats/new_hg_eu_cheats_100pct.xml', '/home/user/pokeheartgold/cheats/new_hg_eu_cheats_4.xml']:
    for n, c, _ in cheats(f): ref.setdefault(c, n); ref.setdefault('N:' + n.lower(), c)
G = '520041BC F0003094 4211186C 021FFFFF 3211186C 02400000 '
allc = collections.OrderedDict()
for f in files:
    cs = cheats(f)
    print('%-40s %3d cheats, guarded %d' % (os.path.basename(f), len(cs), sum(c.startswith(G) for _, c, _ in cs)))
    for n, c, note in cs:
        allc.setdefault((n, c), (f, note))
print('unique (name,code):', len(allc))
names = collections.defaultdict(set)
for (n, c), (f, note) in allc.items(): names[n].add(c)
new = []
for n, cs in names.items():
    for c in cs:
        core = c[len(G):] if c.startswith(G) else c
        if c in ref or core in ref or (G + core) in ref: continue
        new.append((n, c))
print('NOT in cheats.xml or current packs:', len(new))
for n, c in sorted(new): print('  ', n, '|', c[:90])
print('=====')
refnames = set(k[2:] for k in ref if k.startswith('N:'))
bynames = collections.defaultdict(list)
for n, c in new: bynames[n].append(c)
for n in sorted(bynames, key=str.lower):
    print(('  ' if n.lower() in refnames else '* ') + n, len(bynames[n]))
