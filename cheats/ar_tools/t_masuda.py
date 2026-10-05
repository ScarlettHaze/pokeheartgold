"""Masuda: test-only RAM: room in party + an egg waiting (egg PID set). Take the egg from the Day Care Man, compare PIDs."""
import sys, struct
from harness import *
import pkm
mode, seq = sys.argv[1], sys.argv[2]
EGGPID = int(sys.argv[3], 16) if len(sys.argv) > 3 else 0x12345678
allc = load_codes(os.path.join(D, 'new_hg_eu_cheats_100pct.xml'))
e = get_emu(); e.load('dcman'); e.step(2)
parties = [a for a in range(0x02200000, 0x02400000, 4) if e.r32(a) == 6 and e.r32(a + 4) == 6
           and pkm.decode(pkm.rd(e, a + 8, 0xEC))[3]]
party_pids = set(e.r32(a + 8 + i * 0xEC) for a in parties for i in range(6))
dcs = []
for a in range(0x02200000, 0x02400000, 4):
    p = e.r32(a)
    if p in party_pids or p == 0: continue
    raw = pkm.rd(e, a, 0x88)
    pid, plain, _, ok = pkm.decode(raw + bytes(0x64))
    if ok and struct.unpack_from('<H', plain, 0)[0] in range(1, 494):
        dcs.append((a, struct.unpack_from('<H', plain, 0)[0], plain[0x0F]))
print('boxmons', [(hex(a), s, l) for a, s, l in dcs][:10])
# daycare = two box mons 0xEC apart
dc = [a for a, s, l in dcs if any(b == a + 0xEC for b, _, _ in dcs)]
print('daycare', [hex(a) for a in dc])
for a in dc:
    print(' egg_pid was', hex(e.r32(a + 0x1D8)), 'langs', [l for b, s, l in dcs if b in (a, a + 0xEC)])
    e.mem.write_long(a + 0x1D8, EGGPID)
for a in parties: e.mem.write_long(a + 4, 5)
tid = None
e.set_codes([allc['Shiny Eggs More Often (Masuda Method Always On)']] if mode == 'code' else [])
ims = []
for k in seq:
    if k == '.': e.step(60)
    else: e.press({'A': 'A', 'B': 'B', 'D': 'DOWN', 'U': 'UP', 'R': 'RIGHT', 'L': 'LEFT'}[k], hold=4, wait=50)
    ims.append(Image.open(e.shot('ms')).copy().crop((0, 0, 256, 192)).resize((128, 96)))
for a in parties:
    raw = pkm.rd(e, a + 8 + 5 * 0xEC, 0xEC); pid, plain, party, ok = pkm.decode(raw)
    otid = struct.unpack_from('<I', plain, 0x0C - 0x0C + 0x0C)[0] if False else struct.unpack_from('<I', raw, 0)[0]
    print(hex(a), 'count', e.r32(a + 4), 'slot6 ok', ok, 'species', struct.unpack_from('<H', plain, 0)[0],
          'isEgg', (struct.unpack_from('<I', plain, 0x38)[0] >> 30) & 1, 'PID %08X' % pid)
x = EGGPID; chain = [x]
for i in range(4): x = (x * 1812433253 + 1) & 0xFFFFFFFF; chain.append(x)
print('stored egg PID chain', ['%08X' % c for c in chain])
cols = 8
W = Image.new('RGB', (128 * cols, 96 * ((len(ims) + cols - 1) // cols)))
[W.paste(im, ((i % cols) * 128, (i // cols) * 96)) for i, im in enumerate(ims)]
W.save('shots/ms_%s.png' % mode)
