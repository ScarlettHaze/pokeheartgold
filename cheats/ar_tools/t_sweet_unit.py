from hg import *
import new100
c = new100.sweet_scent()
T, G = new100.SLOTS['sweet_task'][0], new100.SLOTS['sweet_gen'][0]
for tile, land, surf in ((0, 0, 0), (0, 25, 0), (0, 0, 10), (30, 25, 10)):
    e = Emu(ovs=[1, 2], cheats=[c])
    e.stub(0x02247F9C, tile); e.stub(0x0224762C, tile); e.stub(0x02248014, land); e.stub(0x02248020, surf)
    p = e.alloc(b'\x09\0\0\0')
    task = e.call(T, [0x02300000, 5])
    gen = e.call(G, [0x02300000, 5, p])
    print('tile=%d land=%d surf=%d -> task=%d gen_rate=%d encType=%d' % (tile, land, surf, task, gen, e.r8(p)))
