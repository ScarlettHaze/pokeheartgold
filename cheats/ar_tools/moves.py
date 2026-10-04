import struct, pkm
from emu import Emu
e = Emu(); e.load('town')
for s in range(6):
    a, raw, (pid, plain, party, ok) = pkm.mon(e, s)
    print(s, struct.unpack_from('<H', plain, 0)[0], 'ability', plain[0x0D], 'moves', struct.unpack_from('<4H', plain, 0x20))
