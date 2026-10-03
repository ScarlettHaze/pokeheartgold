from hg import *

def safeguard_cheat():
    c = Cheat()
    a, code = hook(c, 'perma_safeguard', '''
movs r1, #0x6f
lsls r1, r1, #2
cmp r0, #0
bne done
adds r2, r4, r1
ldr r3, [r2]
movs r0, #8
orrs r3, r0
str r3, [r2]
movs r0, #0
done:
bx lr
''')
    c.patch(12, 0x0224563E, asm('bl %d' % a, 0x0224563E), check_words=[0x0224563C, 0x02245640])
    return c

if __name__ == '__main__':
    c = safeguard_cheat(); print(c.text())
    for b in (0, 1, 2, 3):
        e = Emu(ovs=[12], cheats=[c])
        e.stub(0x0223AB1C, code=asm('movs r0, #1; ands r0, r1; bx lr', 0x0223AB1C))
        bs = e.alloc(b'\0' * 0x3000); ctx = e.alloc(b'\0' * 0x4000)
        e.w32(ctx + 0x94, b); e.w32(ctx + 0x1BC, 0x100); e.w32(ctx + 0x1C0, 0x200)
        p = e.call(0x02245528, (bs, ctx, 13))
        print(b, hex(p - ctx), hex(e.r32(ctx + 0x1BC)), hex(e.r32(ctx + 0x1C0)))
    for v in (12, 14, 11):
        e = Emu(ovs=[12], cheats=[c]); e.stub(0x0223AB1C, code=asm('movs r0, #1; ands r0, r1; bx lr', 0x0223AB1C))
        bs = e.alloc(b'\0' * 0x3000); ctx = e.alloc(b'\0' * 0x4000)
        print('var', v, hex(e.call(0x02245528, (bs, ctx, v)) - ctx), hex(e.r32(ctx + 0x1BC)))
