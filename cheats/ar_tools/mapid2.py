import sys, struct, walk as W
from emu import Emu
e = Emu(); e.load(sys.argv[1]); e.step(2)
x, z = W.pos(e)
blob = bytes(e.mem.read(0x02000000, 0x023FFFFF, 1, False) if False else [])
for a in range(0x02000000, 0x02400000, 4):
    if e.r32(a + 8) == x and e.r32(a + 12) == z:
        print('%08X' % a, [e.r32(a + k) for k in range(0, 20, 4)])
