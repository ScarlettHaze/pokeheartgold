"""Emulator-only: badges -> 0 and lead's OT ID changed (so it counts as traded); see if it obeys."""
import sys, struct, pkm
from harness import *
from PIL import Image
mode = sys.argv[1]
allc = load_codes(os.path.join(D, 'new_hg_eu_cheats_100pct.xml'))
e = get_emu(); e.load('grass'); e.step(2)
profs = [a - 0x10 for a in range(0x02200000, 0x02400000, 4) if e.r32(a) == 0x076AE571 and e.r32(a + 4) == 593506]
print('profiles', [hex(p) for p in profs], [(e.r8(p + 0x1A), e.r8(p + 0x1F)) for p in profs])
for prof in profs:
    e.mem.write_byte(prof + 0x1A, 0); e.mem.write_byte(prof + 0x1F, 0)
a, raw, (pid, plain, party, ok) = pkm.mon(e, 0)
struct.pack_into('<I', plain, 4, 0x12345678)
pkm.wr(e, a, pkm.encode(pid, plain, party, raw))
e.set_codes([allc['Traded Pokemon Always Obey']] if mode == 'code' else [])
for i in range(30):
    e.step(16, ['RIGHT' if i % 2 else 'LEFT']); e.step(4)
e.step(600)
ims = []
for t in range(4):
    e.touch(128, 80, hold=6, wait=40); e.touch(192, 110, hold=6, wait=10)   # Aromatherapy
    for k in range(8):
        e.press('A', wait=50)
        if k in (1, 3): ims.append(Image.open(e.shot('ob')).copy().crop((0, 140, 256, 192)))
W = Image.new('RGB', (512, 52 * 4)); [W.paste(im, ((i % 2) * 256, (i // 2) * 52)) for i, im in enumerate(ims)]
W.save('shots/obey_%s.png' % mode); print('done')
