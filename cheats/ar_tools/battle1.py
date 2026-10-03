from hg import *
FUNC = 0x0224BCC4

def opp_miss_cheat():
    c = Cheat()
    a, code = hook(c, 'opp_miss', '''
push {r4, lr}
movs r4, #1
tst r6, r4
beq normal
tst r3, r4
bne normal
ldr r1, lit
ldr r2, [r5, r1]
orrs r2, r4
str r2, [r5, r1]
movs r0, #1
lsls r0, r0, #10
pop {r4, pc}
normal:
bl 0x223a7e0
pop {r4, pc}
.align 2
lit: .word 0x216c
''')
    c.patch(12, 0x0224BCD0, asm('bl %d' % a, 0x0224BCD0), check_words=[0x0224BCD0])
    return c

if __name__ == '__main__':
    c = opp_miss_cheat()
    print(c.text())
    for att, tgt in [(1, 0), (0, 1), (3, 2), (1, 1), (2, 3), (1, 2)]:
        e = Emu(ovs=[12], cheats=[c])
        bs = e.alloc(b'\0' * 0x3000)
        ctx = e.alloc(b'\0' * 0x4000)
        r = e.call(FUNC, (bs, ctx, att, tgt, 33))
        print(att, '->', tgt, 'ret', r, 'missed', e.r32(ctx + 0x216c) & 1)
    # without cheat
    e = Emu(ovs=[12])
    bs = e.alloc(b'\0' * 0x3000); ctx = e.alloc(b'\0' * 0x4000)
    print('nocheat', e.call(FUNC, (bs, ctx, 1, 0, 33)), e.r32(ctx + 0x216c))

def both_cheat():
    c = Cheat()
    a, code = hook(c, 'acc_both', '''
push {r4, lr}
movs r4, #1
tst r6, r4
beq hit
tst r3, r4
bne normal
ldr r1, lit
ldr r2, [r5, r1]
orrs r2, r4
str r2, [r5, r1]
hit:
movs r0, #1
lsls r0, r0, #10
pop {r4, pc}
normal:
bl 0x223a7e0
pop {r4, pc}
.align 2
lit: .word 0x216c
''')
    c.patch(12, 0x0224BCD0, asm('bl %d' % a, 0x0224BCD0), check_words=[0x0224BCD0])
    return c
