import sys
import walk as W
from emu import Emu
from PIL import Image
e = Emu(); e.load(sys.argv[1])
import os
if os.environ.get('WALLS'): e.set_codes(['1205DAA2 00000200'])
W.ZFIRST = (sys.argv[5] == 'z') if len(sys.argv) > 5 else True
for t in [x for x in sys.argv[3].split(';') if x]:
    tx, tz = map(int, t.split(','))
    print('walk', (tx, tz), W.walk(e, tx, tz, 80), W.pos(e), flush=True)
if os.environ.get('WALLS'):
    e.set_codes(['1205DAA2 00001C20']); e.step(2); e.set_codes([])
ims = []
for k in sys.argv[4].split():
    if k.startswith('W'): e.step(int(k[1:]))
    elif k.startswith('T'):
        x, y = map(int, k[1:].split(',')); e.touch(x, y, hold=6, wait=40)
    elif k == 'S': ims.append(Image.open(e.shot('go')).resize((128, 192)))
    elif k.startswith('t'): e.step(2, [k[1:]]); e.step(10)   # tap = turn
    else: e.step(4, [k]); e.step(40)
print('end', W.pos(e))
e.save(sys.argv[2]); ims.append(Image.open(e.shot('go')).resize((128, 192)))
W2 = Image.new('RGB', (128 * min(10, len(ims)), 192 * ((len(ims) + 9) // 10)))
for i, im in enumerate(ims): W2.paste(im, ((i % 10) * 128, (i // 10) * 192))
W2.save('shots/go_grid.png')
