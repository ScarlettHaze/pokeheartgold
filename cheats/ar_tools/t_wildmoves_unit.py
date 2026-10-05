from hg import *
import new100, struct
def run(fn, slot, moves, unusable=0):
    c = fn(); h = new100.SLOTS[slot][0]
    e = Emu(ovs=[12], cheats=[c])
    ctx = e.alloc(bytes(0x3200)); d = e.alloc(bytes(0x40))
    for i, m in enumerate(moves): e.u.mem_write(d + 0xC + 2 * i, struct.pack('<H', m))
    e.u.mem_write(d + 0x22, struct.pack('<H', unusable))
    def md(m, eff, cat, rng): e.u.mem_write(ctx + 0x3DE + 16 * m, struct.pack('<HBBBBBBH', eff, cat, 0, 0, 0, 0, 0, rng))
    md(153, 7, 0, 0); md(120, 7, 0, 0); md(105, 32, 2, 0x10); md(33, 0, 0, 0); md(14, 50, 2, 0x10); md(45, 18, 2, 0)
    e.w32(e.sp + 0xC, ctx)
    out = ''
    for i in range(4):
        e.u.mem_write(0x02000F00, b'\xfe\xe7')
        e.u.reg_write(UC_ARM_REG_SP, e.sp); e.u.reg_write(UC_ARM_REG_LR, 0x02000F01)
        for r, v in ((0, 1 << i), (4, i), (6, d), (5, 0x77)): e.u.reg_write(REGS[r], v)
        e.u.emu_start(h | 1, 0x02000F00, count=400)
        z = (e.u.reg_read(UC_ARM_REG_CPSR) >> 30) & 1
        ok = e.u.reg_read(REGS[4]) == i and e.u.reg_read(REGS[5]) == 0x77 and e.u.reg_read(UC_ARM_REG_SP) == e.sp
        out += ('use ' if z else 'SKIP') + ('' if ok else '!REG') + ' '
    return out
M = [153, 105, 33, 14]   # Explosion, Recover, Tackle, Swords Dance
for f, s in ((new100.wild_no_explode, 'wildmoves'), (new100.wild_no_self_moves, 'wildmoves2'), (new100.wild_no_both, 'wildmoves3')):
    print(f.__name__.ljust(20), run(f, s, M), '| all banned:', run(f, s, [153, 120, 0, 0], unusable=0b1100))
