from harness import *
from PIL import Image
import walk as W
codes = load_codes()
e = get_emu()
def snap(): return bytes(e.mem.read(0x02200000, 0x022FFFFF, 1, False))
e.set_codes([]); e.load('gotrepel')
b0 = snap()
e.touch(40, 105, hold=6, wait=150); e.step(60)
e.touch(30, 176, hold=10, wait=120); e.shot('rp_p2')
e.touch(64, 53, hold=10, wait=90); e.shot('rp_sel'); e.touch(48, 142, hold=10, wait=150)
e.step(120); e.shot('rp_after')
for _ in range(4): e.step(4, ['B']); e.step(60)
e.step(150); e.shot('rp_used')
b1 = snap()
c = [0x02200000 + i for i in range(len(b0)) if b0[i] == 0 and b1[i] == 100]
print('CAND', [hex(x) for x in c][:10])
e.save('repelon')
for mode in ['none', 'Infinite Repel']:
    e.set_codes([]); e.load('repelon'); e.set_codes([] if mode == 'none' else [codes[mode]])
    W._cache.clear(); print('pos0', W.pos(e))
    v0 = e.r8(0x02282BE9); steps = 0
    for i in range(30):
        p = W.pos(e)
        W.walk(e, 14 if p[0] != 14 else 15, 7, 3)
        if W.pos(e) != p: steps += 1
    print('REPEL', mode, 'counter', v0, '->', e.r8(0x02282BE9), 'tiles walked', steps, W.pos(e), flush=True)
