"""Smash the same rock with different RNG timings, with and without the code. Shows each result screen."""
import sys
from harness import *
from PIL import Image
state, tag = sys.argv[1], sys.argv[2]
allc = load_codes(os.path.join(D, 'new_hg_eu_cheats_100pct.xml'))
e = get_emu(); ims = []
for mode in ('none', 'code'):
    for k in range(6):
        e.set_codes([]); e.load(state)
        e.set_codes([allc['Rock Smash Always Finds Something']] if mode == 'code' else [])
        e.step(1 + k * 37)
        e.press('A', hold=4, wait=60)
        for j in range(3): e.press('A', hold=4, wait=50)
        e.step(200); e.press('A', hold=4, wait=200)
        ims.append(Image.open(e.shot('rs')).copy().crop((0, 0, 256, 192)).resize((128, 96)))
        for j in range(4): e.press('B', hold=4, wait=40)
W = Image.new('RGB', (128 * 6, 192)); [W.paste(im, ((i % 6) * 128, (i // 6) * 96)) for i, im in enumerate(ims)]
W.save('shots/rocksmash_%s.png' % tag); print('ok')
