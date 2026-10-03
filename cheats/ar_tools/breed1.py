from hg import *

def iv5_cheat():
    c = Cheat()
    c.patch(None, 0x0206C306, asm('sub sp, #0x18', 0x0206C306))
    c.patch(None, 0x0206C482, asm('add sp, #0x18', 0x0206C482))
    for a in (0x0206C34A, 0x0206C374, 0x0206C39E, 0x0206C3BE, 0x0206C47E):
        reg = 'r6' if R().u16(a) == 0x2E03 else 'r5'
        assert R().u16(a) in (0x2E03, 0x2D03)
        c.patch(None, a, asm('cmp %s, #5' % reg, a))
    return c

def run(c, forced=None, seed=1):
    e = Emu(cheats=[c] if c else [])
    log = e.alloc(b'\0' * 64)
    # SetMonData stub: append r1 (data id) and value byte to log
    e.stub(0x0206EC40, code=asm('''
ldr r3, lp
ldr r0, [r3]
strb r1, [r3, r0]
adds r0, #1
ldrb r2, [r2]
strb r2, [r3, r0]
adds r0, #1
str r0, [r3]
bx lr
.align 2
lp: .word %d''' % log, 0x0206EC40))
    e.w32(log, 4)
    # GetBoxMonData: return (r0 parent marker) + r1
    e.stub(0x0206E640, code=asm('ldrb r0, [r0]; adds r0, r0, r1; bx lr', 0x0206E640))
    p0 = e.alloc(b'\x00' * 4); p1 = e.alloc(b'\x80' * 4)
    e.stub(0x0206BDB0, code=asm('cmp r1, #0; beq lzero; ldr r0, lito; bx lr; lzero: ldr r0, litz; bx lr; .align 2; litz: .word %d; lito: .word %d' % (p0, p1), 0x0206BDB0))
    if forced is None:
        e.stub(0x0206D39C, 0)
    else:
        e.stub(0x0206D39C, code=asm('movs r3, #%d; strb r3, [r1]; movs r3, #1; strb r3, [r2]; movs r0, #1; bx lr' % forced, 0x0206D39C))
    e.stub(0x0202551C, code=asm('b .', 0x0202551C))  # assert -> hang
    # seed LCRandom state
    e.call(sym('SetLCRNGSeed')[0] if 'SetLCRNGSeed' in S() else sym('SetLCRandomSeed')[0], (seed,))
    egg = e.alloc(b'\0' * 16); dc = e.alloc(b'\0' * 16)
    sp0 = e.sp
    e.call(0x0206C304, (egg, dc), regs={4: 0x44, 5: 0x55, 6: 0x66, 7: 0x77})
    regs = [e.u.reg_read(r) for r in (UC_ARM_REG_R4, UC_ARM_REG_R5, UC_ARM_REG_R6, UC_ARM_REG_R7, UC_ARM_REG_SP)]
    n = e.r32(log) - 4
    sets = [(e.r8(log + 4 + i), e.r8(log + 5 + i)) for i in range(0, n, 2)]
    return sets, regs == [0x44, 0x55, 0x66, 0x77, sp0]

if __name__ == '__main__':
    c = iv5_cheat(); print(c.text())
    for seed in range(1, 6):
        s0, ok0 = run(None, seed=seed); s1, ok1 = run(c, seed=seed); s2, ok2 = run(c, forced=3, seed=seed)
        def fmt(s): return [(hex(a), 'P1' if v & 0x80 else 'P0') for a, v in s]
        print('seed', seed, 'orig', len(s0), ok0, '| 5IV', len(s1), len(set(a for a, v in s1)), ok1, fmt(s1), '| powerItem', len(s2), len(set(a for a, v in s2)), ok2, fmt(s2)[0])
