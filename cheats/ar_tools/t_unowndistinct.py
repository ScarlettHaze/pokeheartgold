import sys
from harness import *
import walk as W
allc = load_codes(os.path.join(D, 'new_hg_eu_cheats_100pct.xml'))
mode = sys.argv[1]; N = 8
e = get_emu(); e.load('alph0')
ALLPUZ = '02066724 47702001'   # test only: every puzzle counts as solved
e.set_codes([ALLPUZ] + ([allc['Unown Is Always a Form You Have Not Caught']] if mode == 'code' else []))
forms = []
def cb(addr, size):
    forms.append(e.mem.register_arm9.r0)
e.mem.register_exec(0x02248594, cb)
W.walk(e, 18, 21, 80)
L = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ!?'; i = 0
while len(forms) < N and i < 600:
    n = len(forms)
    ok = W.walk(e, 14 if i % 2 == 0 else 18, 21, 40); i += 1
    if not ok:
        e.step(700)
        for _ in range(3):
            e.touch(128, 176, hold=6, wait=60); e.press('A', hold=4, wait=60)
        e.step(300)
print('iters', i, W.pos(e)); print('UNOWN', mode, ''.join(L[f] if f < 28 else '#' for f in forms))
