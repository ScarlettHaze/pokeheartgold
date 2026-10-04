import sys, walk as W
from emu import Emu
e = Emu(); e.load('saf4')
print(W.walk(e, 79, 87, 80), W.pos(e))
for i in range(60):
    tz = 85 if i % 2 == 0 else 87
    ok = W.walk(e, 79, tz, 40)
    p = W.pos(e)
    print(i, ok, p, flush=True)
    if not ok:
        break
e.step(600)
e.save('safbat'); e.shot('safbat')
