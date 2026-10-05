import sys
from harness import *
from PIL import Image
import new100
ims = []
for mode in ('none', 'code'):
    e = get_emu(); e.set_codes([]); e.load('safbat')
    e.set_codes([new100.safari_balls().text()] if mode == 'code' else [])
    for t in range(2):
        e.touch(128, 110, hold=6, wait=900)
        ims.append(Image.open(e.shot('sb')).crop((0, 0, 256, 192)))
W = Image.new('RGB', (256 * 4, 192))
for i, im in enumerate(ims): W.paste(im, (i * 256, 0))
W.save('shots/safball.png')
