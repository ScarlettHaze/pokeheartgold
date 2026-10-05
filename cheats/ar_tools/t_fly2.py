from harness import *
from PIL import Image
import new100, walk as W
e = get_emu(); e.load('flymenu'); e.set_codes([new100.fly_indoors().text()])
e.step(10); e.touch(60, 30, hold=6, wait=150)
ims = []
e.touch(191, 55, hold=6, wait=60); ims.append(Image.open(e.shot('f')).copy())   # a nearby town icon
e.press('A', wait=60); ims.append(Image.open(e.shot('f')).copy())
e.press('A', wait=60); ims.append(Image.open(e.shot('f')).copy())
for t in range(4):
    e.step(150); ims.append(Image.open(e.shot('f')).copy())
print('POS', W.pos(e))
Wd = Image.new('RGB', (256 * len(ims), 384))
for i, im in enumerate(ims): Wd.paste(im, (i * 256, 0))
Wd.resize((128 * len(ims), 192)).save('shots/fly_trip.png')
