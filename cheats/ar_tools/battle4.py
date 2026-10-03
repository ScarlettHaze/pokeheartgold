from hg import *
SITES = [0x02244800, 0x022505A4, 0x0225062E]

def effect_cheat():
    c = Cheat()
    a, code = hook(c, 'effect_always', '''
ldr r1, [r5, #0x64]
lsls r1, r1, #31
bmi real
movs r0, #0
bx lr
real:
ldr r1, lit
bx r1
.align 2
lit: .word 0x0223BD99
''')
    for s in SITES:
        c.patch(12, s, asm('bl %d' % a, s), check_words=[s & ~3, (s & ~3) + 4] if s % 4 else [s])
    return c

if __name__ == '__main__':
    c = effect_cheat(); print(c.text())
    for att in range(4):
        e = Emu(ovs=[12], cheats=[c])
        e.stub(0x0223BD98, 77)
        ctx = e.alloc(b'\0' * 0x4000); e.w32(ctx + 0x64, att)
        print(att, e.call(ITCM_ALLOC['effect_always'], (0,), regs={5: ctx}))
    # full function test of BtlCmd_CheckEffectActivation: compare branch outcome
