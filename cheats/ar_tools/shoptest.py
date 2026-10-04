import sys
from harness import *
from PIL import Image
codes = load_codes()
mode = sys.argv[1]
sel = [] if mode == 'none' else [codes[mode]]
e = get_emu(); e.load(os.environ.get('SHOPSTATE','f2clerk')); e.set_codes(sel)
ims = []
def S(): ims.append(Image.open(e.shot('shop')).resize((128, 192)))
for k in sys.argv[2].split():
    if k == 'S': S()
    elif k.startswith('W'): e.step(int(k[1:]))
    elif k.startswith('T'):
        x, y = map(int, k[1:].split(',')); e.touch(x, y, hold=6, wait=40)
    else: e.step(4, [k]); e.step(50)
S()
W2 = Image.new('RGB', (128 * min(10, len(ims)), 192 * ((len(ims) + 9) // 10)))
for i, im in enumerate(ims): W2.paste(im, ((i % 10) * 128, (i // 10) * 192))
W2.save('shots/shop_%s.png' % sys.argv[3]); print('pc %08X' % e.pc())
