from hg import *
import new100, struct
c = new100.swarm_more()
for active, onmap in ((1, 1), (1, 0), (0, 1)):
    e = Emu(ovs=[2], cheats=[c])
    e.stub(0x0202D9C4, 0x02300000); e.stub(0x0202D9E0, active); e.stub(0x0202D9A8, 0); e.stub(0x02097F6C, onmap)
    loc = e.alloc(struct.pack('<I', 39)); fs = e.alloc(bytes(0x40)); e.w32(fs + 0x20, loc)
    enc = e.alloc(bytes(0xC0)); e.u.mem_write(enc + 0xBC, struct.pack('<H', 333))
    a = e.alloc(bytes(8)); b = e.alloc(bytes(8))
    e.u.mem_write(new100.SWARM_FLAG, b'\x77')
    e.call(0x02246B58, [fs, enc, a, b])
    print('outbreak', active, 'on map', onmap, '-> flag', e.r8(new100.SWARM_FLAG), 'slots', e.r32(a), e.r32(b))
