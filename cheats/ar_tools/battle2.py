from hg import *

def dmg_cheat(shift):
    c = Cheat()
    a, code = hook(c, 'dmg_mult', '''
ldr r0, [sp, #0x84]
adds r0, r0, #2
add r1, sp, #0xac
ldrb r2, [r1]
ldrb r3, [r1, #4]
lsls r2, r2, #31
bmi done
lsls r3, r3, #31
bpl done
lsls r0, r0, #%d
done:
add sp, #0x8c
pop {r4, r5, r6, r7, pc}
''' % shift)
    c.patch(12, 0x02257C1E, asm('bl %d' % a, 0x02257C1E), check_words=[0x02257C1C, 0x02257C20])
    return c

def test(c, shift):
    for att, tgt, dmg in [(0, 1, 50), (1, 0, 50), (0, 0, 50), (2, 3, 100), (3, 0, 7), (2, 1, 0)]:
        e = Emu(ovs=[12], cheats=[c])
        S = 0x023E0000
        e.w32(S + 0x84, dmg); e.w8(S + 0xac, att); e.w8(S + 0xb0, tgt)
        sentinel = 0x02000F00; e.u.mem_write(sentinel, b'\xfe\xe7')
        e.w32(S + 0x8c + 16, sentinel | 1)
        e.u.reg_write(UC_ARM_REG_SP, S)
        e.u.emu_start(0x02257C1E | 1, sentinel, count=1000)
        r0 = e.u.reg_read(UC_ARM_REG_R0); sp = e.u.reg_read(UC_ARM_REG_SP)
        exp = (dmg + 2) << shift if (att & 1) == 0 and (tgt & 1) == 1 else dmg + 2
        print(att, tgt, dmg, '->', r0, 'exp', exp, 'sp ok', sp == S + 0x8c + 0x14, 'OK' if r0 == exp else 'FAIL')

if __name__ == '__main__':
    for s in (1, 2, 3):
        c = dmg_cheat(s); print(c.text()); test(c, s)
