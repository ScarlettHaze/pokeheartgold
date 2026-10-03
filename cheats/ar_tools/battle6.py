from hg import *
CAPS = [13, 17, 19, 25, 31, 35, 35, 41, 50, 53, 54, 54, 55, 56, 59, 60, 88]
GETMONDATA = 0x0206E540
GETPROFILE = sym('BattleSystem_GetPlayerProfile')[0]
COUNTBADGES = sym('PlayerProfile_CountBadges')[0]

def levelcap_cheat():
    c = Cheat()
    tbl = ', '.join(str(x) for x in CAPS + [0, 0, 0])
    a, code = hook(c, 'levelcap', '''
push {r4, r5, r6, lr}
adds r6, r4, #0
bl %d
adds r5, r0, #0
ldr r0, [r6]
movs r1, #0
bl %d
bl %d
cmp r0, #16
bls ok
movs r0, #16
ok:
adr r1, table
ldrb r1, [r1, r0]
adds r0, r5, #0
cmp r0, r1
blo done
movs r0, #100
done:
pop {r4, r5, r6, pc}
.align 2
table: .byte %s
''' % (GETMONDATA, GETPROFILE, COUNTBADGES, tbl))
    c.patch(12, 0x02245A28, asm('bl %d' % a, 0x02245A28), check_words=[0x02245A28])
    return c

def popcount(x): return bin(x).count('1')

if __name__ == '__main__':
    c = levelcap_cheat(); print(c.text())
    a = ITCM_ALLOC['levelcap']; print(dis(c.itcm[a][:0x2c], a))
    import random
    fails = 0
    for jb, kb, lvl in [(0, 0, 12), (0, 0, 13), (0, 0, 14), (1, 0, 16), (1, 0, 17), (0xff, 0, 49), (0xff, 0, 50), (0xff, 1, 52), (0xff, 0xff, 87), (0xff, 0xff, 88), (0xff, 0xff, 100), (0x7f, 0, 40), (0x7f, 0, 41)]:
        e = Emu(ovs=[12], cheats=[c])
        e.stub(GETMONDATA, lvl)
        prof = e.alloc(b'\0' * 32); e.w8(prof + 26, jb); e.w8(prof + 31, kb)
        e.stub(GETPROFILE, prof)
        bs = e.alloc(b'\0' * 16); data = e.alloc(b'\0' * 64); e.w32(data, bs)
        r = e.call(a, (0, 0xa1, 0), regs={4: data, 5: 0x55, 6: 0x66})
        n = popcount(jb) + popcount(kb); cap = CAPS[n]
        exp = 100 if lvl >= cap else lvl
        r4 = e.u.reg_read(UC_ARM_REG_R4); r5 = e.u.reg_read(UC_ARM_REG_R5); r6 = e.u.reg_read(UC_ARM_REG_R6)
        ok = r == exp and r4 == data and r5 == 0x55 and r6 == 0x66
        fails += not ok
        print('badges', n, 'cap', cap, 'lvl', lvl, '->', r, 'OK' if ok else 'FAIL')
    print('fails', fails)
