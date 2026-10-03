from hg import *

def rematch_cheat():
    c = Cheat()
    assert R().u16(0x0202F0FC) == 0x0FC0
    c.patch(None, 0x0202F0FC, asm('movs r0, #1', 0x0202F0FC))
    return c

def unown_cheat():
    c = Cheat()
    assert R().u16(0x022484C8, 2) == 0xD01A and R().u16(0x02248508, 2) == 0x2804
    c.patch(2, 0x022484C8, NOP, check_words=[0x022484C8])
    c.patch(2, 0x02248508, asm('cmp r0, #5', 0x02248508), check_words=[0x02248508])
    return c

def coins_cheat():
    c = Cheat()
    c.patch(22, 0x02259980, asm('movs r0, #0xc3; lsls r0, r0, #8', 0x02259980))
    c.patch(22, 0x022599DA, NOP + NOP, check_words=[0x022599D8, 0x022599DC])
    c.patch(22, 0x02259A06, NOP + NOP, check_words=[0x02259A04, 0x02259A08])
    return c

if __name__ == '__main__':
    for f in (rematch_cheat, unown_cheat, coins_cheat):
        c = f(); print(f.__name__, c.text())
        for (ov, a), b in c.patched.items():
            ram, d = patched_image(ov, [(a, b)])
            print('   ', dis(bytes(d[a - ram:a - ram + len(b)]), a).replace('\n', ' | '))
    # Unown: emulate form chooser with no puzzles solved; count distinct forms
    c = unown_cheat()
    import collections
    e = Emu(ovs=[2], cheats=[c])
    e.stub(0x022522B4, 0)            # radio not unown
    e.stub(0x0202A14C, 0)            # seen forms
    e.stub(0x02248418, 1)            # caught = TRUE
    heap = [0x02300000]
    e.stub(0x0201AACC, code=asm('ldr r2, hp; ldr r0, [r2]; adds r3, r0, #0x40; str r3, [r2]; bx lr; .align 2; hp: .word %d' % e.alloc(struct.pack('<I', 0x02310000)), 0x0201AACC))
    e.stub(0x0201AB0C, code=asm('bx lr', 0x0201AB0C))
    gen = e.alloc(b'\0' * 0x40)  # puzzle flags at +0x12..0x15 all 0, isSinjoh +0x11 = 0
    seen = collections.Counter()
    e.call(sym('SetLCRNGSeed')[0], (12345,))
    for i in range(3000):
        seen[e.call(0x02248444, (gen,))] += 1
    print('distinct forms', len(seen), sorted(seen))
