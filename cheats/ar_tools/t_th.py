"""Trainer House: follow the receptionist, accept, save (emulator copy only), then battle. Snapshots."""
import sys
from harness import *
import walk as W
mode = sys.argv[1]
allc = load_codes(os.path.join(D, 'new_hg_eu_cheats_100pct.xml'))
HELP = ['You Take Half Damage', "Your Pokemon Can't Faint (HP Stops at 1)", 'Infinite PP']
e = get_emu(); e.load(sys.argv[2]); e.step(2)
e.set_codes([allc[n] for n in HELP] + ([allc['Battle Points x2']] if mode == 'code' else []))
bp = []
def f(a, s): bp.append((e.mem.register_arm9.r0, e.r16(e.mem.register_arm9.r0), e.mem.register_arm9.r1))
e.mem.register_exec(0x0202D424, f)
ims = []
def shot(): ims.append(Image.open(e.shot('th' + mode + sys.argv[4])).copy().resize((128, 192)))
for tok in sys.argv[3].split(';'):
    if tok.startswith('W'):
        x, z = map(int, tok[1:].split(',')); print('walk', W.walk(e, x, z), W.pos(e)); continue
    if tok.startswith('T'):
        x, y = map(int, tok[1:].split(',')); e.touch(x, y, hold=6, wait=60); shot(); continue
    if tok.startswith('w'): 
        for k in range(int(tok[1:])): e.step(120); shot()
    elif tok.startswith('F'):   # fight loop
        for t in range(int(tok[1:])):
            e.touch(128, 90, hold=6, wait=40); e.touch(64, 70, hold=6, wait=40)
            for k in range(5): e.press('A', hold=4, wait=60)
            shot()
            if bp: break
    else:
        for c in tok: e.press({'A': 'A', 'B': 'B', 'U': 'UP', 'D': 'DOWN'}[c], hold=4, wait=60); shot()
e.step(200); shot()
e.save(sys.argv[4])
print('BP', [(hex(a), v, n) for a, v, n in bp], 'now', e.r16(bp[0][0]) if bp else None)
cols = 10
WW = Image.new('RGB', (128 * cols, 192 * ((len(ims) + cols - 1) // cols)))
[WW.paste(im, ((i % cols) * 128, (i // cols) * 192)) for i, im in enumerate(ims)]
WW.save('shots/th_%s.png' % mode)
