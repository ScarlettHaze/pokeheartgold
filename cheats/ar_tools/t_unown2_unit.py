from hg import *
import new100, struct, collections
def run(c):
    e = Emu(ovs=[2], cheats=[c] if c else [])
    e.stub(0x022522B4, 0); e.stub(0x0202A14C, 0)
    # caught(form) = form < 20  (A..T caught, U..Z not)
    e.stub(0x02248418, code=asm('movs r0, #1; cmp r2, #20; blo k; movs r0, #0; k: bx lr', 0x02248418))
    e.stub(0x0201AACC, code=asm('ldr r2, hp; ldr r0, [r2]; adds r3, r0, #0x40; str r3, [r2]; bx lr; .align 2; hp: .word %d' % e.alloc(struct.pack('<I', 0x02310000)), 0x0201AACC))
    e.stub(0x0201AB0C, code=asm('bx lr', 0x0201AB0C))
    g = bytearray(0x40); g[0x12:0x16] = b'\1\1\1\1'
    gen = e.alloc(g)
    e.call(sym('SetLCRNGSeed')[0], (12345,))
    cnt = collections.Counter(e.call(0x02248444, (gen,)) for _ in range(400))
    return ''.join('ABCDEFGHIJKLMNOPQRSTUVWXYZ!?'[f] for f in sorted(cnt))
print('normal', run(None)); print('code  ', run(new100.unown_uncaught()))
