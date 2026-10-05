from hg import *
import new100, struct
def seq_stub(e, addr, vals):
    # stub returning successive values from a table (counter in RAM)
    tbl = e.alloc(struct.pack('<%dI' % len(vals), *vals)); ctr = e.alloc(bytes(4))
    e.stub(addr, code=asm('ldr r2, c; ldr r3, [r2]; adds r1, r3, #4; str r1, [r2]; ldr r2, t; ldr r0, [r2, r3]; bx lr; .align 2; c: .word %d; t: .word %d' % (ctr, tbl), addr & ~1))
    return ctr
c = new100.swarm_more(); R_ = new100.SLOTS['swarmroll'][0]
for flag, vals in ((0, [5, 0, 1, 1]), (1, [5, 7, 0, 3]), (1, [5, 6, 7, 8, 9]), (1, [1])):
    e = Emu(ovs=[2], cheats=[c]); ctr = seq_stub(e, sym('EncounterSlot_WildMonSlotRoll_Land')[0] & ~1, vals); e.u.mem_write(new100.SWARM_FLAG, bytes([flag]))
    print('swarm flag', flag, 'rolls', vals, '-> slot', e.call(R_, []), 'calls', e.r32(ctr) // 4)
c = new100.bug_rare_more(); B = new100.SLOTS['bugrare'][0]
for vals in ((550, 4499, 15, 7), (12345, 210, 99, 50), (10119, 0)):
    e = Emu(ovs=[24], cheats=[c]); ctr = seq_stub(e, 0x0201FD44, list(vals))
    r = e.call(B, [])
    print('bug rolls %%100', [v % 100 for v in vals], '-> raw', r, '(%%100 = %d)' % (r % 100), 'calls', e.r32(ctr) // 4)
