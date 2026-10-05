from hg import *
import new100, struct
c = new100.no_faint(); print(c.text())
h = new100.SLOTS['nofaint'][0]
for b, hp, calc in ((0, 50, -80), (0, 50, -10), (1, 50, -80), (2, 1, -5), (0, 0, -5), (0, 50, 30)):
    e = Emu(ovs=[12], cheats=[c]); e.stub(0x0224768C, b)
    ctx = e.alloc(bytes(0x3000))
    e.w32(ctx + 0x2D8C + b * 0xC0, hp); e.w32(ctx + 0x215C, calc)
    r = e.call(h, [0, ctx, 0])
    nc = struct.unpack('<i', e.u.mem_read(ctx + 0x215C, 4))[0]
    print('battler', b, 'hp', hp, 'hpCalc', calc, '-> ret', r, 'hpCalc', nc, 'final hp', hp + nc)
