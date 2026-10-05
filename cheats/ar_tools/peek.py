import sys
from harness import *
import walk
e = get_emu()
ims = []
for st in sys.argv[1:]:
    e.load(st); e.step(4)
    ims.append(Image.open(e.shot('pk')).copy().resize((128, 192)))
    print(st, walk.pos(e), hex(e.r32(0)) if False else '')
W = Image.new('RGB', (128 * len(ims), 192)); [W.paste(im, (i * 128, 0)) for i, im in enumerate(ims)]
W.save('shots/peek.png')
