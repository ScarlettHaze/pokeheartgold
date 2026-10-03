"""Generic scenario runner: t_scn.py state codes_mode script out_png
codes_mode: all | none | <exact name>; script: ';'-separated actions:
 P:KEY[+KEY]:hold:wait  T:x:y  W:n  S (snapshot)  V:name (save state)"""
import sys
from harness import *
from PIL import Image
codes = load_codes(os.environ.get('CODES_XML', XML))
skip = ["Opponent's Moves Always Miss", 'Your Damage x4', 'Your Damage x8', 'Prize Money x4', 'Prize Money x8', 'Pickup Always Finds an Item', 'Shopping Does Not Cost Money']
mode = sys.argv[2]
sel = [c for n, c in codes.items() if n not in skip] if mode == 'all' else ([] if mode == 'none' else [codes[m] for m in mode.split('|')])
e = get_emu(); e.load(sys.argv[1]); e.set_codes(sel)
ims = []
for a in sys.argv[3].split(';'):
    p = a.split(':')
    if p[0] == 'P':
        e.step(int(p[2]), p[1].split('+')); e.step(int(p[3]))
    elif p[0] == 'T': e.touch(int(p[1]), int(p[2]), hold=6, wait=int(p[3]) if len(p) > 3 else 30)
    elif p[0] == 'W': e.step(int(p[1]))
    elif p[0] == 'S': ims.append(Image.open(e.shot('scn')).resize((128, 192)))
    elif p[0] == 'V': e.save(p[1])
W = Image.new('RGB', (128 * min(10, len(ims)), 192 * ((len(ims) + 9) // 10)))
for i, im in enumerate(ims): W.paste(im, ((i % 10) * 128, (i // 10) * 192))
W.save(os.path.join(D, 'shots', sys.argv[4])); print('pc %08X' % e.pc())
