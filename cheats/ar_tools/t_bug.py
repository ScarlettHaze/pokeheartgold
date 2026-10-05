"""Bug-Catching Contest driver. usage: t_bug.py state outstate codes(none|all) seq  (seq: A B U D L R . = 60f wait, T x,y; touch)"""
import sys
from harness import *
import walk
st, out, mode, seq = sys.argv[1:5]
TUE = '021D1064 00000002 021D1080 00000002'   # test-only: RTC weekday = Tuesday
allc = load_codes(os.path.join(D, 'new_hg_eu_cheats_100pct.xml'))
BUG = ['Bug-Catching Contest Always 1st Place', 'Rare Bug-Catching Contest Pokemon Appear More Often', 'Unlimited Sport Balls']
e = get_emu(); e.load(st); e.step(2)
e.set_codes([TUE] + ([allc[n] for n in BUG] if mode == 'all' else []))
ims = []
toks = seq.split(';')
for tok in toks:
    for k in (tok if not tok[:1] in 'TW' or not tok else [tok]):
        if k.startswith('W'):
            x, z = map(int, k[1:].split(',')); print('walk', walk.walk(e, x, z), walk.pos(e)); continue
        if k.startswith('T'):
            x, y = map(int, k[1:].split(',')); e.touch(x, y, hold=6, wait=60)
        elif k == '.': e.step(60)
        else: e.press({'A': 'A', 'B': 'B', 'D': 'DOWN', 'U': 'UP', 'R': 'RIGHT', 'L': 'LEFT', 'X': 'X'}[k], hold=4, wait=40)
        ims.append(Image.open(e.shot('bg')).copy().resize((128, 192)))
e.save(out); print('POS', walk.pos(e))
cols = 10
W = Image.new('RGB', (128 * cols, 192 * ((len(ims) + cols - 1) // cols)))
[W.paste(im, ((i % cols) * 128, (i // cols) * 192)) for i, im in enumerate(ims)]
W.save('shots/bug_%s.png' % out)
