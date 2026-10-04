import sys, walk as W
from harness import *
mode, N = sys.argv[1], int(sys.argv[2])
codes = load_codes()
ONLY_KABUTO = '02066724 29002000 02066728 2001D101 0206672C 46C04770'
e = get_emu(); e.load('alph0')
cs = [ONLY_KABUTO] + ([codes['All Unown Forms in the Ruins of Alph']] if mode == 'code' else [])
e.set_codes(cs)
forms = []
def cb(addr, size):
    forms.append(e.mem.register_arm9.r0)
e.mem.register_exec(0x02248594, cb)
print(W.walk(e, 18, 21, 80), W.pos(e), flush=True)
L = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ!?'
i = 0; shots = 0
while len(forms) < N and i < 400:
    tx = 14 if i % 2 == 0 else 18
    ok = W.walk(e, tx, 21, 40); i += 1
    if not ok:
        e.step(700)
        if shots < 3: e.shot('unown_%s_%d' % (mode, shots)); shots += 1
        print('enc', len(forms), ''.join(L[f] if f < 28 else '#' for f in forms), W.pos(e), flush=True)
        for _ in range(3):
            e.touch(128, 176, hold=6, wait=60); e.press('A', hold=4, wait=60)
        e.step(300)
print(mode, 'FORMS', ''.join(L[f] if f < 28 else '#' for f in forms))
