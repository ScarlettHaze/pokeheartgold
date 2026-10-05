import sys
from harness import *
from PIL import Image
import new100
mode = sys.argv[1]
e = get_emu(); e.load('grass')
e.set_codes([new100.infinite_pp().text(), new100.no_stat_drops().text()] if mode == 'code' else [])
for i in range(30):
    e.step(16, ['RIGHT' if i % 2 else 'LEFT']); e.step(4)
e.step(600)
ims = []
for t in range(3):
    e.touch(128, 80, hold=6, wait=40)
    if t == 0: ims.append(Image.open(e.shot('pp')).crop((0, 192, 256, 384)))
    e.touch(192, 50, hold=6, wait=40)
    for k in range(8):
        e.press('A', wait=50)
        if k in (3, 5): ims.append(Image.open(e.shot('pp')).crop((0, 140, 256, 192)))
for _ in range(3): e.press('A', wait=60)
e.step(300); e.touch(128, 80, hold=6, wait=60); ims.append(Image.open(e.shot('pp')).crop((0, 192, 256, 384)))
W = Image.new('RGB', (256 * 4, 192 * 2), 'white')
x = y = 0
for im in ims:
    W.paste(im, (x, y)); x += 256
    if x >= 1024: x = 0; y += im.size[1] if im.size[1] > 60 else 52
W.save('shots/ppstat_%s.png' % mode)
e.step(120); e.touch(128, 80, hold=6, wait=90); e.shot('ppfinal_' + mode)
