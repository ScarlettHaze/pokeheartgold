"""Boot from power-on, press through to the field, record use of the hook memory each frame."""
import sys, struct
from emu import Emu
from PIL import Image
mode = sys.argv[1]
LO, HI = 0x02111C00, 0x02112A00
codes = []
if mode != 'none':
    from harness import load_codes, D
    import os
    codes = list(load_codes(os.path.join(D, 'new_hg_eu_cheats_100pct.xml')).values()) if mode == 'all' else [open(mode).read()]
e = Emu(codes)
first_use = {}
ims = []
def scan(fr):
    if mode != 'none': return
    for a in range(LO, HI, 4):
        if a not in first_use and e.r32(a):
            first_use[a] = fr
fr = 0
for step in range(160):
    if step < 30: keys = []
    else: keys = ['A'] if step % 6 == 0 else (['START'] if step % 6 == 3 else [])
    e.step(4, keys); e.step(26); fr += 30
    scan(fr)
    if step % 8 == 7: ims.append(Image.open(e.shot('boot_' + mode)).copy().resize((128, 192)))
print('pc %08X' % e.pc())
if mode == 'none':
    if first_use:
        print('USED', hex(min(first_use)), hex(max(first_use) + 4), 'words', len(first_use), 'first frame', min(first_use.values()))
    else:
        print('UNUSED during boot')
W = Image.new('RGB', (128 * 10, 192 * ((len(ims) + 9) // 10))); [W.paste(im, ((i % 10) * 128, (i // 10) * 192)) for i, im in enumerate(ims)]
W.save('shots/boot_%s.png' % mode)
e.save('boot_' + mode)
