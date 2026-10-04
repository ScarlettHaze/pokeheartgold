import sys
from harness import *
from PIL import Image
codes = load_codes()
MON = 0x0227C358
e = get_emu()
for mode in ['none', 'Items Sell for Full Price']:
    e.set_codes([]); e.load('f2clerk'); e.set_codes([] if mode == 'none' else [codes[mode]])
    m0 = e.r32(MON); ims = []
    for k in "A A DOWN A W120 T192,93 W60 S A W60 S A W60 S A W60 S A W60 B W60 B W60 B W60".split():
        if k == 'S': ims.append(Image.open(e.shot('sell')).resize((128, 192)))
        elif k.startswith('W'): e.step(int(k[1:]))
        elif k.startswith('T'): x, y = map(int, k[1:].split(',')); e.touch(x, y, hold=6, wait=40)
        else: e.step(4, [k]); e.step(50)
    print('SELL', mode, m0, e.r32(MON), e.r32(MON) - m0)
    W2 = Image.new('RGB', (128 * len(ims), 192))
    for i, im in enumerate(ims): W2.paste(im, (i * 128, 0))
    W2.save('shots/sell_%d.png' % (mode != 'none'))
