"""Day Care: take back a Pokemon (test-only: party count 6->5 in RAM so there is room), read its level/Exp."""
import sys, struct
from harness import *
import pkm
mode, seq = sys.argv[1], sys.argv[2]
allc = load_codes(os.path.join(D, 'new_hg_eu_cheats_100pct.xml'))
e = get_emu(); e.load('dc1'); e.step(2)
cands = [a for a in range(0x02200000, 0x02400000, 4) if e.r32(a) == 6 and e.r32(a + 4) == 6
         and pkm.decode(pkm.rd(e, a + 8, 0xEC))[3]]
print('party copies', [hex(a) for a in cands])
for a in cands: e.mem.write_long(a + 4, 5)
e.set_codes([allc['Day Care Pokemon Do Not Gain Exp']] if mode == 'code' else [])
ims = []
for k in seq:
    if k == '.': e.step(60)
    else: e.press({'A': 'A', 'B': 'B', 'D': 'DOWN', 'U': 'UP'}[k], hold=4, wait=50)
    ims.append(Image.open(e.shot('dc')).copy().crop((0, 0, 256, 192)).resize((128, 96)))
for a in cands:
    n = e.r32(a + 4)
    raw = pkm.rd(e, a + 8 + 5 * 0xEC, 0xEC); pid, plain, party, ok = pkm.decode(raw)
    print(hex(a), 'count', n, 'slot6 ok', ok, 'species', struct.unpack_from('<H', plain, 0)[0],
          'level', party[4], 'exp', struct.unpack_from('<I', plain, 8)[0])
cols = 8
W = Image.new('RGB', (128 * cols, 96 * ((len(ims) + cols - 1) // cols)))
[W.paste(im, ((i % cols) * 128, (i // cols) * 96)) for i, im in enumerate(ims)]
W.save('shots/dc2_%s.png' % mode)
