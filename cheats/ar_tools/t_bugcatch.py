"""From the contest battle (bugbat): throw Sport Balls until caught. mode none|all. Saves caught_<mode>."""
import sys
from harness import *
mode = sys.argv[1]
allc = load_codes(os.path.join(D, 'new_hg_eu_cheats_100pct.xml'))
TUE = '021D1064 00000002 021D1080 00000002'
BUG = ['Bug-Catching Contest Always 1st Place', 'Rare Bug-Catching Contest Pokemon Appear More Often', 'Unlimited Sport Balls']
e = get_emu(); e.load('bugbat'); e.set_codes([TUE] + ([allc[n] for n in BUG] if mode == 'all' else []))
CTX = 0x022C33A4
e.step(240)
ims = []
for t in range(int(sys.argv[2]) if len(sys.argv) > 2 else 3):
    e.touch(30, 165, hold=6, wait=10)
    for k in range(12):
        e.step(80); ims.append(Image.open(e.shot('c_'+mode)).copy().resize((128, 192)))
    if e.r16(CTX + 0x2D40) != 154: break
e.save('caught_%s' % mode)
cols = 12
W = Image.new('RGB', (128 * cols, 192 * ((len(ims) + cols - 1) // cols)))
[W.paste(im, ((i % cols) * 128, (i // cols) * 192)) for i, im in enumerate(ims)]
W.save('shots/catch_%s.png' % mode); print('done')
