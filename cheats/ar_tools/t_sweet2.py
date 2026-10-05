"""Emulator-only: Raticate's first move -> Sweet Scent; use it on the path (not grass) on Route 35."""
import sys, struct, pkm
from harness import *
from PIL import Image
mode, stage = sys.argv[1], sys.argv[2]
allc = load_codes(os.path.join(D, 'new_hg_eu_cheats_100pct.xml'))
e = get_emu(); e.load(os.environ.get('ST','r35')); e.step(2)
a0, raw0, (pid0, _, _, _) = pkm.mon(e, 5)
hits = [x for x in range(0x02200000, 0x02400000, 4) if e.r32(x) == pid0]
print('copies', [hex(x) for x in hits])
for a in hits:
    raw = pkm.rd(e, a, 0xEC); pid, plain, party, ok = pkm.decode(raw)
    if ok:
        struct.pack_into('<H', plain, 0x20, 230)           # move 1 = Sweet Scent (test only)
        pkm.wr(e, a, pkm.encode(pid, plain, party, raw))
e.set_codes([allc['Sweet Scent and Honey Always Work']] if mode == 'code' else [])
e.touch(60, 76, hold=6, wait=150); e.touch(190, 124, hold=6, wait=90)
Image.open(e.shot('ss')).save('shots/sweet_menu.png')
if stage == 'menu': sys.exit()
x, y = map(int, stage.split(','))
e.touch(x, y, hold=6, wait=4); Image.open(e.shot('ss')).save('shots/sweet_tap.png'); e.step(56)
ims = []
for t in range(10):
    e.step(90); ims.append(Image.open(e.shot('ss')).copy().resize((128, 192)))
    if t in (3, 6): e.press('A', hold=4, wait=20)
W = Image.new('RGB', (128 * 10, 192)); [W.paste(im, (i * 128, 0)) for i, im in enumerate(ims)]
W.save('shots/sweet_%s.png' % mode); print('done')
