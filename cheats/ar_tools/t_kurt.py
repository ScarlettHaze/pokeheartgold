"""Kurt x5: test-only RAM: Kurt holds 2 Red Apricorns (as if given yesterday). Talk to him and collect."""
import sys
from harness import *
mode = sys.argv[1]
allc = load_codes(os.path.join(D, 'new_hg_eu_cheats_100pct.xml'))
e = get_emu(); e.load('kurt1'); e.step(2)
got = []
def f(a, s):
    if not got: got.append(e.mem.register_arm9.r0)
e.mem.register_exec(0x02031BD0, f)
for i in range(4): e.press('A', hold=4, wait=40)
box = got[0]; print('box', hex(box), [e.r8(box + i) for i in range(9)])
e.load('kurt1'); e.step(2)
e.mem.write_byte(box + 7, 2); e.mem.write_byte(box + 8, 0)
LB = 493
before = {a: e.r16(a + 2) for a in range(0x02200000, 0x02400000, 4) if e.r16(a) == LB and e.r16(a + 2) < 1000}
e.set_codes([allc['Kurt Makes 5 Balls per Apricorn']] if mode == 'code' else [])
ims = []
for i in range(14):
    e.press('A', hold=4, wait=50); ims.append(Image.open(e.shot('k' + mode)).copy().crop((0, 0, 256, 192)).resize((128, 96)))
after_ = {a: e.r16(a + 2) for a in range(0x02200000, 0x02400000, 4) if e.r16(a) == LB and e.r16(a + 2) < 1000}
print('LEVEL BALL qty changes', [(hex(a), before.get(a), q) for a, q in after_.items() if before.get(a) != q])
print('after', [e.r8(box + i) for i in range(9)])
W = Image.new('RGB', (128 * 7, 96 * 2)); [W.paste(im, ((i % 7) * 128, (i // 7) * 96)) for i, im in enumerate(ims)]
W.save('shots/kurt_%s.png' % mode)
