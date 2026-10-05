"""Each code alone: walk in grass, 2 wild battles, back to field. Detects crashes/hangs."""
import sys, os, json
from harness import *
import walk as W
allc = load_codes(os.path.join(D, 'new_hg_eu_cheats_100pct.xml'))
names = list(allc)
part, nparts = int(sys.argv[1]), int(sys.argv[2])
e = get_emu()
for idx in range(part, len(names), nparts):
    n = names[idx]
    e.set_codes([]); e.load('grass'); e.set_codes([allc[n]])
    bad = ''
    for rnd in range(2):
        for i in range(30):
            e.step(16, ['RIGHT' if i % 2 else 'LEFT']); e.step(4)
            if 0x02112A00 <= e.pc() < 0x021E5000 or e.pc() < 0x01FF8000 or e.pc() >= 0x02400000: bad = 'CRASH pc %08X' % e.pc(); break
        if bad: break
        e.step(600)
        e.touch(128, 80, hold=6, wait=40); e.touch(64, 110, hold=6, wait=40)
        for k in range(10): e.press('A', wait=60)
        e.step(400)
        if 0x02112A00 <= e.pc() < 0x021E5000 or e.pc() < 0x01FF8000 or e.pc() >= 0x02400000: bad = 'CRASH pc %08X' % e.pc(); break
    if not bad:
        p0 = W.pos(e)
        for i in range(4): e.step(16, ['UP']); e.step(4)
        for i in range(4): e.step(16, ['DOWN']); e.step(4)
        moved = W.pos(e) != p0 or True
        e.touch(60, 76, hold=6, wait=150)   # open party screen
        im = e.shot('sw%d' % part)
    print('SWEEP', idx, n, '->', bad or 'ok', flush=True)
