"""Rare Wild code: per land slot roll, log each cave attempt (raw %% 100) and the final kept value."""
import sys, collections
from harness import *
allc = load_codes(os.path.join(D, 'new_hg_eu_cheats_100pct.xml'))
e = get_emu(); e.load('grass'); e.set_codes([allc['Rare Wild Pokemon Appear More Often']])
A = 0x02111ECC
att = []; res = []
def a1(a, s): att.append(e.mem.register_arm9.r1)                  # after blx: r1 = roll %% 100 for this attempt
def fin(a, s):
    if e.r16(0x0224768C) == 0xB508 and e.r16(0x02247692) == 0x2164:
        res.append((e.mem.register_arm9.r1, list(att))); att.clear()
e.mem.register_exec(A + 0x1C, a1); e.mem.register_exec(0x02247698, fin)
CTX = 0x022C33A4; e.mem.write_short(CTX + 0x2D40, 0)
i = 0
N = int(sys.argv[1])
while len(res) < N and i < 8000:
    e.step(16, ['RIGHT' if i % 2 else 'LEFT']); e.step(4); i += 1
    if e.r16(CTX + 0x2D40) == 154 and e.r16(CTX + 0x2D4C) == 76:
        e.step(300)
        for _ in range(3):
            e.touch(128, 176, hold=6, wait=60); e.press('A', hold=4, wait=60)
        e.step(400); e.mem.write_short(CTX + 0x2D40, 0)
for r, a in res: print('kept', r, 'attempts', a)
print('RESULT encounters', len(res), 'rare kept', sum(r >= 80 for r, _ in res), 'avg attempts', sum(len(a) for _, a in res) / max(1, len(res)))
