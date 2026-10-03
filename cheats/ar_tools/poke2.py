from hg import *

def ability_cheat():
    c = Cheat()
    pts = [(0x02247878, 0xD10A, 'nop'), (0x022478FC, 0xD102, 'b 0x02247904'), (0x0224817A, 0xD107, 'nop'),
           (0x022485E0, 0xD101, 'b 0x022485E6'), (0x0224795A, 0xD01B, 'nop'), (0x02247988, 0xD104, 'nop'),
           (0x02247A6C, 0xD032, 'nop')]
    for a, orig, ins in pts:
        assert R().u16(a, 2) == orig, hex(a)
        new = NOP if ins == 'nop' else asm(ins, a)
        c.patch(2, a, new, check_words=[a & ~3])
    return c

def pickup_cheat(rare):
    c = Cheat()
    if rare:
        a, code = hook(c, 'pickup_rare', '''
push {r3, lr}
bl 0x0223BD98
movs r1, #1
ands r0, r1
adds r0, #98
pop {r3, pc}
''')
    c.patch(12, 0x0224410E, asm('movs r0, #0', 0x0224410E) + NOP, check_words=[0x0224410C, 0x02244110])
    if rare:
        c.patch(12, 0x0224411E, asm('bl %d' % a, 0x0224411E), check_words=[0x0224411C, 0x02244120])
    return c

if __name__ == '__main__':
    c = ability_cheat(); print(c.text())
    ram, d = patched_image(2, [(k[1], v) for k, v in c.patched.items()])
    for a in (0x02247878, 0x022478FC, 0x0224817A, 0x022485E0, 0x0224795A, 0x02247988, 0x02247A6C):
        print(dis(bytes(d[a - ram:a - ram + 2]), a))
    for r in (False, True):
        c = pickup_cheat(r); print(c.text())
    a = ITCM_ALLOC['pickup_rare']
    for v in (0, 1, 1234, 77777):
        e = Emu(ovs=[12], cheats=[c]); e.stub(0x0223BD98, v)
        print(v, e.call(a, (0,)))
