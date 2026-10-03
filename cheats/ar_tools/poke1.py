from hg import *

def friendship_cheat():
    c = Cheat()
    t = bytearray(R().read(0x020FF524, 30))
    for i in range(30):
        if t[i] < 0x80:
            t[i] = 80
    t += R().read(0x020FF524 + 30, 2)  # pad to word with original bytes
    c.patch(None, 0x020FF524, bytes(t))
    return c

def friend_evo_cheat():
    c = Cheat()
    for a in (0x02070F76, 0x02070F8C, 0x02070FA2):
        assert R().u16(a) == 0x28DC
        c.patch(None, a, asm('cmp r0, #0', a))
    return c

def iv_breed_cheat():
    import breed1
    return breed1.iv5_cheat()

def any_breed_cheat():
    c = Cheat()
    c.patch(None, 0x0206CC28, asm('ldrh r0, [r0, #0x18]; b 0x0206CC38', 0x0206CC28))
    c.patch(None, 0x0206CC82, MOV_R0_1_NOP)
    return c

def tutor_cheat():
    c = Cheat()
    c.patch(1, 0x02202C06, asm('movs r0, #0', 0x02202C06), check_words=[0x02202C04])
    return c

def relearner_cheat():
    c = Cheat()
    a, code = hook(c, 'heartscale', '''
has:
cmp r1, #93
bne has_real
movs r0, #1
bx lr
has_real:
ldr r3, lit_has
bx r3
take:
cmp r1, #93
bne take_real
movs r0, #1
bx lr
take_real:
ldr r3, lit_take
bx r3
.align 2
lit_has: .word 0x020784B1
lit_take: .word 0x02078435
''')
    take = a + 12
    assert code[12:14] == bytes.fromhex('5d29')
    c.patch(None, 0x0204EB2E, asm('bl %d' % a, 0x0204EB2E))
    c.patch(None, 0x0204EA7E, asm('bl %d' % take, 0x0204EA7E))
    return c

if __name__ == '__main__':
    for f in (friendship_cheat, friend_evo_cheat, any_breed_cheat, tutor_cheat, relearner_cheat):
        c = f(); print(f.__name__, c.text())
    c = relearner_cheat(); a = ITCM_ALLOC['heartscale']; print(dis(c.itcm[a], a))
    # emulate both hooks
    for which, entry, target in (('has', a, 0x020784B0), ('take', a + 12, 0x02078434)):
        for item in (93, 92, 4):
            e = Emu(cheats=[c]); e.stub(target, 0x77)
            print(which, item, hex(e.call(entry, (0x1234, item, 1, 4))))
    # verify any-breed disasm
    c = any_breed_cheat(); ram, d = patched_image(None, list(c.patched.items()) and [(k[1], v) for k, v in c.patched.items()])
    print(dis(bytes(d[0x206CC24 - ram:0x206CC40 - ram]), 0x206CC24))
    print(dis(bytes(d[0x206CC7E - ram:0x206CC90 - ram]), 0x206CC7E))
    print(R().read(0x020FF524, 32).hex(), friendship_cheat().patched[(None, 0x020FF524)].hex())
