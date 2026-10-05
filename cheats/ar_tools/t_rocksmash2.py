import sys
from harness import *
from PIL import Image
state, tag = sys.argv[1], sys.argv[2]
allc = load_codes(os.path.join(D, 'new_hg_eu_cheats_100pct.xml'))
e = get_emu(); rows = []
for mode in ('none', 'code'):
    for k in range(5):
        e.set_codes([]); e.load(state)
        e.set_codes([allc['Rock Smash Always Finds Something']] if mode == 'code' else [])
        e.step(1 + k * 37)
        e.press('A', hold=4, wait=60)
        e.press('A', hold=4, wait=50)       # "Yes" / continue
        frames = []
        for j in range(10):
            e.press('A', hold=2, wait=58)
            frames.append(Image.open(e.shot('rs')).copy().crop((0, 140, 256, 192)).resize((128, 26)))
        W = Image.new('RGB', (128 * 10, 26)); [W.paste(f, (i * 128, 0)) for i, f in enumerate(frames)]
        rows.append(W)
G = Image.new('RGB', (1280, 26 * len(rows) + 6), 'red')
for i, r in enumerate(rows): G.paste(r, (0, i * 26 + (6 if i >= 5 else 0)))
G.save('shots/rocksmash2_%s.png' % tag); print('ok')
