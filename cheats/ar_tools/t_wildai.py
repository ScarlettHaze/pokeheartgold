import sys
from harness import *
from PIL import Image
import new100
mode = sys.argv[1]
c = new100._wild_moves('    cmp r4, #0\n    beq next\n', 'wildmoves')
e = get_emu(); e.load('grass'); e.set_codes([c.text()] if mode == 'only0' else [])
for i in range(30):
    e.step(16, ['RIGHT' if i % 2 else 'LEFT']); e.step(4)
e.step(600)
ims = []
for t in range(5):
    e.touch(128, 80, hold=6, wait=40); e.touch(192, 50, hold=6, wait=40)   # Synthesis
    for k in range(8):
        e.press('A', wait=50)
        if k in (2, 4, 6): ims.append(Image.open(e.shot('wa')).crop((0, 140, 256, 192)))
W = Image.new('RGB', (256 * 3, 52 * 5))
for j, im in enumerate(ims): W.paste(im, ((j % 3) * 256, (j // 3) * 52))
W.save('shots/wildai_%s.png' % mode)
