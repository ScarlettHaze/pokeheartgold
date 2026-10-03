from hg import *
MYSTERY = 0x0203BC10
STARTSCRIPT = 0x0203FE74

def pc_heal_cheat():
    c = Cheat()
    a, code = hook(c, 'pc_heal', '''
ldrh r1, [r5, #8]
lsrs r2, r1, #10
bcs is_pc
lsrs r2, r1, #9
bcs is_heal
ldr r1, lit_mz
bx r1
is_pc:
ldr r1, lit_pc
b start
is_heal:
ldr r1, lit_heal
start:
adds r0, r4, #0
movs r2, #0
bl %d
movs r0, #1
pop {r3, r4, r5, r6, r7, pc}
.align 2
lit_mz: .word %d
lit_pc: .word 2010
lit_heal: .word 2069
''' % (STARTSCRIPT, MYSTERY | 1))
    c.patch(1, 0x021E6D56, asm('bl %d' % a, 0x021E6D56), check_words=[0x021E6D54, 0x021E6D58])
    return c

if __name__ == '__main__':
    c = pc_heal_cheat(); print(c.text())
    a = ITCM_ALLOC['pc_heal']; print(dis(c.itcm[a][:0x24], a))
    for held, name in ((0x200, 'L'), (0x100, 'R'), (0, 'none'), (0x300, 'L+R'), (0x400, 'X')):
        e = Emu(ovs=[1], cheats=[c])
        log = e.alloc(b'\0' * 16)
        e.stub(STARTSCRIPT, code=asm('ldr r3, lg; str r0, [r3]; str r1, [r3, #4]; str r2, [r3, #8]; bx lr; .align 2; lg: .word %d' % log, STARTSCRIPT))
        e.stub(MYSTERY, 0x55)
        fi = e.alloc(b'\0' * 16); e.w16(fi + 8, held)
        # emulate being inside FieldInput_Process: stack holds r3-r7,lr(sentinel)
        S_ = 0x023E0000
        for i, v in enumerate([0x33, 0x44, 0x55, 0x66, 0x77]):
            e.w32(S_ + 4 * i, v)
        sentinel = 0x02000F00; e.u.mem_write(sentinel, b'\xfe\xe7'); e.w32(S_ + 20, sentinel | 1)
        e.u.reg_write(UC_ARM_REG_SP, S_); e.u.reg_write(UC_ARM_REG_R4, 0x1234); e.u.reg_write(UC_ARM_REG_R5, fi)
        e.u.reg_write(UC_ARM_REG_LR, 0x021E6D5A | 1)
        stop = [sentinel, 0x021E6D5A]
        e.u.mem_write(0x021E6D5A, b'\xfe\xe7')
        e.u.emu_start(a | 1, 0, count=200)
        pc = e.u.reg_read(UC_ARM_REG_PC); r0 = e.u.reg_read(UC_ARM_REG_R0)
        print(name, 'pc', hex(pc), 'r0', hex(r0), 'script', e.r32(log + 4), 'fs', hex(e.r32(log)), 'r4..', hex(e.u.reg_read(UC_ARM_REG_R4)))
