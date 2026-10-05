import sys, os
from emu import Emu
from PIL import Image
mode = sys.argv[1]
codes = []
if mode == 'all':
    from harness import load_codes, D
    codes = list(load_codes(os.path.join(D, 'new_hg_eu_cheats_100pct.xml')).values())
elif mode == 'unguarded':
    from harness import load_codes, D
    codes = list(load_codes(os.path.join(D, 'unguarded_100pct.xml')).values())
e = Emu(codes); ims = []
for step in range(56):
    keys = ['A'] if (step >= 30 and step % 6 == 0) else []
    e.step(4, keys); e.step(26)
    if step in (10, 25, 40, 50, 55): ims.append(Image.open(e.shot('b2')).copy().resize((128, 192)))
e.step(200)
for d in ('DOWN', 'DOWN', 'LEFT', 'LEFT', 'UP'):
    e.step(30, [d]); e.step(10)
ims.append(Image.open(e.shot('b2')).copy().resize((128, 192)))
for k in range(4): e.press('B', hold=4, wait=30)
e.touch(125, 35, hold=6, wait=250); ims.append(Image.open(e.shot('b2')).copy().resize((128, 192)))
print(mode, 'pc %08X' % e.pc())
W = Image.new('RGB', (128 * len(ims), 192)); [W.paste(im, (i * 128, 0)) for i, im in enumerate(ims)]
W.save('shots/boot2_%s.png' % mode)
