from hg import *
import struct, re

NEVERMISS_SRC = '''
lsls r1, r6, #31
bne enemy
movs r0, #1
lsls r0, r0, #10
bx lr
enemy:
ldr r1, lit
bx r1
.align 2
lit: .word 0x0223A7E1
'''
EXPSHARE_SRC = '''
push {r4, r5, r6, r7, lr}
sub sp, #8
adds r5, r0, #0
adds r6, r1, #0
lsrs r7, r2, #1
movs r0, #1
ands r7, r0
movs r4, #0
str r4, [sp]
loop:
adds r0, r5, #0
movs r1, #0
bl 0x0223A834
cmp r4, r0
bge done
adds r0, r5, #0
movs r1, #0
adds r2, r4, #0
bl 0x0223A880
str r0, [sp, #4]
movs r1, #5
movs r2, #0
bl 0x0206E540
cmp r0, #0
beq next
ldr r0, [sp, #4]
movs r1, #0x4c
movs r2, #0
bl 0x0206E540
cmp r0, #0
bne next
movs r0, #1
lsls r0, r4
ldr r1, [sp]
orrs r1, r0
str r1, [sp]
next:
adds r4, #1
b loop
done:
ldr r0, [sp]
lsls r1, r7, #2
adds r1, r6, r1
adds r1, #0xa4
str r0, [r1]
add sp, #8
pop {r4, r5, r6, r7, pc}
'''

def orig_words(name):
    U = '/root/.claude/uploads/3a2744e6-c4f1-55d8-a4af-a2807de25ca2/d66a0148-battle_codes.xml'
    t = open(U).read()
    m = re.search(r'<name>%s</name>\s*<note>[^<]*</note>\s*<codes>([^<]*)</codes>' % re.escape(name), t)
    w = [int(x, 16) for x in m.group(1).split()]
    return w

def blob(name, lo, hi):
    w = orig_words(name); mem = {}
    for i in range(0, len(w), 2):
        if w[i] >> 28 == 0 and lo <= w[i] < hi: mem[w[i]] = w[i + 1]
    return b''.join(struct.pack('<I', mem.get(x, 0)) for x in range(lo, hi, 4))

def nevermiss_fixed():
    c = Cheat()
    a, code = hook(c, 'fix_nevermiss', NEVERMISS_SRC)
    c.patch(12, 0x0224BCD0, asm('bl %d' % a, 0x0224BCD0), check_words=[0x0224BCC4, 0x0224BCC8])
    return c

def expshare_fixed():
    c = Cheat()
    a, code = hook(c, 'fix_expshare', EXPSHARE_SRC)
    tramp = asm('ldr r3, [pc, #0]; bx r3', 0x02250370) + struct.pack('<I', a | 1)
    c.patch(12, 0x02250370, tramp, check_words=[0x02250370, 0x02250374])
    c.patch(12, 0x0223E734, asm('movs r0, #1', 0x0223E734), check_words=[0x0223E6A0, 0x0223E6A4])
    c.patch(12, 0x0223E79E, asm('b 0x0223E7E2', 0x0223E79E), check_words=[0x0223E6A0, 0x0223E6A4])
    return c

if __name__ == '__main__':
    # check reassembly reproduces the original bytes when assembled at the original address
    print('nevermiss same:', asm(NEVERMISS_SRC, 0x02112400) == blob('Your Moves Never Miss', 0x02112400, 0x02112414))
    print('expshare same:', asm(EXPSHARE_SRC, 0x02112420) == blob('Exp. Share for the Whole Party (Gen 6 Style)', 0x02112420, 0x02112480))
    print('orig e79e write decodes to', dis(struct.pack('<H', 0xE020), 0x0223E79E))
    for f in (nevermiss_fixed, expshare_fixed):
        c = f(); print(f.__name__, c.text())
