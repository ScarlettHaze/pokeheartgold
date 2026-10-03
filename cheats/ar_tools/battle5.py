from hg import *

def multihit_cheat():
    c = Cheat()
    a, code = hook(c, 'multihit5', '''
lsls r2, r1, #31
bmi real
movs r0, #0x5c
bx lr
real:
ldr r2, lit
bx r2
lit: .word 0x022527CD
''')
    c.patch(12, 0x0223EC3E, asm('bl %d' % a, 0x0223EC3E), check_words=[0x0223EC3C, 0x0223EC40])
    return c

if __name__ == '__main__':
    c = multihit_cheat(); print(c.text()); print(dis(c.itcm[ITCM_ALLOC['multihit5']], ITCM_ALLOC['multihit5']))
    for att in range(4):
        for ab in (0x5c, 10):
            e = Emu(ovs=[12], cheats=[c])
            e.stub(0x022527CC, ab)
            e.stub(0x0223BD98, 1)     # random -> 1 => cnt 3
            e.stub(0x02245508, code=asm('bx lr', 0x02245508))
            e.stub(0x022454E8, 0)     # cnt arg 0, checkMultiHit 0
            ctx = e.alloc(b'\0' * 0x4000); e.w32(ctx + 0x64, att)
            e.call(0x0223EC10, (0, ctx))
            print('att', att, 'ability', hex(ab), 'hits', e.r8(ctx + 0x217c))
