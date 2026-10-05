import sys, json
from harness import *
import new100
names = json.loads(sys.argv[1])
codes = [new100.NEW[n]().text() for n in names]
e = get_emu(); e.load('grass'); e.set_codes(codes)
crash = False
for rnd in range(2):
    for i in range(30):
        e.step(16, ['RIGHT' if i % 2 else 'LEFT']); e.step(4)
        if 0x02112A00 <= e.pc() < 0x021E5000: crash = True; break
    if crash: break
    e.step(600)
    e.touch(128, 80, hold=6, wait=40); e.touch(64, 110, hold=6, wait=40)
    for k in range(10):
        e.press('A', wait=60)
    e.step(400)
    if 0x02112A00 <= e.pc() < 0x021E5000: crash = True; break
print('RESULT', 'CRASH' if crash else 'ok', 'pc %08X' % e.pc(), len(names))
