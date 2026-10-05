from hg import *
import new100, struct
c = new100.half_damage(); print(c.text())
h = new100.SLOTS['halfdmg'][0]; off = R().u32(0x0224C9BC, 12) - 0x28
for atk, tgt, d in ((1, 0, -100), (1, 0, -1), (0, 1, -100), (3, 2, -51), (2, 0, -100)):
    e = Emu(ovs=[12], cheats=[c]); ctx = e.alloc(bytes(0x3200))
    e.w32(ctx + 0x64, atk); e.w32(ctx + 0x6c, tgt); e.w32(ctx + off, d & 0xFFFFFFFF)
    e.call(h, [0, ctx])
    print(atk, '->', tgt, d, '=>', struct.unpack('<i', e.u.mem_read(ctx + off, 4))[0], 'r4 ok', e.u.reg_read(UC_ARM_REG_R4) == ctx, 'r2', hex(e.u.reg_read(UC_ARM_REG_R2)))
