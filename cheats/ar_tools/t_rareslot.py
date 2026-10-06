"""Route 35 grass: log the land slot roll (LCRandom %% 100) for each encounter, with/without the code."""
import sys, collections
from harness import *
mode, N = sys.argv[1], int(sys.argv[2])
allc = load_codes(os.path.join(D, 'new_hg_eu_cheats_100pct.xml'))
e = get_emu(); e.load('grass')
e.set_codes([allc['Rare Wild Pokemon Appear More Often']] if mode == 'code' else [])
rolls = []; calls = [0]
def h(a, s):
    if e.r16(0x0224768C) == 0xB508 and e.r16(0x02247692) == 0x2164: rolls.append(e.mem.register_arm9.r1)
def hc(a, s): calls[0] += 1
e.mem.register_exec(0x02247698, h); e.mem.register_exec(0x02111EDC, hc)
CTX = 0x022C33A4
e.mem.write_short(CTX + 0x2D40, 0)
i = 0
while len(rolls) < N and i < 4000:
    e.step(16, ['RIGHT' if i % 2 else 'LEFT']); e.step(4); i += 1
    if e.r16(CTX + 0x2D40) == 154 and e.r16(CTX + 0x2D4C) == 76:
        e.step(300)
        for _ in range(3):
            e.touch(128, 176, hold=6, wait=60); e.press('A', hold=4, wait=60)
        e.step(400); e.mem.write_short(CTX + 0x2D40, 0)
        print('enc', len(rolls), rolls[-1:], flush=True)
SL = [20, 40, 50, 60, 70, 80, 85, 90, 94, 98, 99, 100]
slot = lambda r: next(k for k, t in enumerate(SL) if r < t)
c = collections.Counter(slot(r) for r in rolls)
print('RESULT', mode, 'rolls', len(rolls), 'rare(slot>=6)', sum(r >= 80 for r in rolls), 'slots', dict(sorted(c.items())), 'LCRandom calls in cave', calls[0])
