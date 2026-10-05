from hg import *
import new100, struct
for name, c in (('none', None), ('hoenn', new100.hoenn_sound()), ('sinnoh', new100.sinnoh_sound())):
    e = Emu(ovs=[2], cheats=[c] if c else []); e.stub(0x022522B4, 0)
    enc = bytearray(0x80); struct.pack_into('<4H', enc, 0x5C, 111, 222, 333, 444)
    ep = e.alloc(enc); sl = e.alloc(bytes(12 * 8))
    e.call(0x02246B00, [0, ep, sl])
    print(name, [e.r32(sl + 8 * i) for i in range(6)])
