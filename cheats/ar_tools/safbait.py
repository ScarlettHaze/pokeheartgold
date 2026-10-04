import sys
from harness import *
from PIL import Image
codes = load_codes()
mode = sys.argv[1]
e = get_emu(); e.load('safbat')
FORCE = '5225E1A0 7A61DC04 1225E1A0 000046C0 D2000000 00000000'
e.set_codes([FORCE] + ([codes['Safari Zone Pokemon Never Flee']] if mode == 'code' else []))
print('guard', hex(e.r32(0x0225E1A4)))
ims = []
for t in range(6):
    e.touch(40, 160, hold=6, wait=500)
    ims.append(Image.open(e.shot('sb')).resize((128, 192)))
    print(t, 'guard', hex(e.r32(0x0225E1A4)), flush=True)
W = Image.new('RGB', (128 * 6, 192 * 2))
for i, im in enumerate(ims): W.paste(im, ((i % 6) * 128, (i // 6) * 192))
W.save('shots/safbait_%s.png' % mode)
