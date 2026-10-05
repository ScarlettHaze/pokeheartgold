"""Day Care lady: talk, take back a Pokemon; compare with/without the code."""
import sys
from harness import *
mode = sys.argv[1]
allc = load_codes(os.path.join(D, 'new_hg_eu_cheats_100pct.xml'))
e = get_emu(); e.load('dc1'); e.step(2)
e.set_codes([allc['Day Care Pokemon Do Not Gain Exp']] if mode == 'code' else [])
ims = []
seq = sys.argv[2] if len(sys.argv) > 2 else 'AAAAAAAAAAAA'
for k in seq:
    if k == '.': e.step(60)
    else: e.press({'A': 'A', 'B': 'B', 'D': 'DOWN', 'U': 'UP'}[k], hold=4, wait=50)
    ims.append(Image.open(e.shot('dc')).copy().crop((0, 0, 256, 192)).resize((128, 96)))
cols = 8
W = Image.new('RGB', (128 * cols, 96 * ((len(ims) + cols - 1) // cols)))
[W.paste(im, ((i % cols) * 128, (i // cols) * 96)) for i, im in enumerate(ims)]
W.save('shots/dc_%s.png' % mode); print('done')
