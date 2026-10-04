import sys
from harness import *
from PIL import Image
import new100
mode = sys.argv[1]
LOC35 = '6211186C 00000000 B211186C 00000000 000138F4 06060606 D2000000 00000000'
ALWAYS_ROAMER = '522483D4 B006D102 122483D4 0000E002 D2000000 00000000'
e = get_emu(); e.load('grass')
e.set_codes([LOC35, ALWAYS_ROAMER] + ([new100.roamer_stay().text()] if mode == 'code' else []))
ims = []
def cap(): ims.append(Image.open(e.shot('rt')).crop((0, 0, 256, 384)).resize((128, 192)))
for rnd in range(2):
    for i in range(30):
        e.step(16, ['RIGHT' if i % 2 else 'LEFT']); e.step(4)
    e.step(600); cap()
    if rnd == 0:
        for _ in range(3):
            e.touch(128, 176, hold=6, wait=60); e.press('A', hold=4, wait=60)
        e.step(300); cap()
for t in range(5):
    e.touch(128, 80, hold=6, wait=40); e.touch(192, 50, hold=6, wait=40)
    for k in range(6):
        e.press('A', wait=60)
        if k in (1, 3, 5): cap()
W = Image.new('RGB', (128 * min(10, len(ims)), 192 * ((len(ims) + 9) // 10)))
for j, im in enumerate(ims): W.paste(im, ((j % 10) * 128, (j // 10) * 192))
W.save('shots/roam_%s.png' % mode)
