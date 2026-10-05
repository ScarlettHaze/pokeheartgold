import sys
from emu import Emu
import warp, walk
TUE = '021D1064 00000002 021D1080 00000002'
st, out, m, x, z = sys.argv[1], sys.argv[2], *map(int, sys.argv[3:6])
e = Emu(); e.load(st)
e.mem.write_long(warp.PARAMS, m | (x << 16)); e.mem.write_long(warp.PARAMS + 4, z)
e.set_codes([warp.WARPCODE, TUE]); e.step(2)
e.step(10, ['SELECT']); e.step(4, ['SELECT', 'X']); e.step(10, ['SELECT']); e.step(300)
e.set_codes([TUE]); e.step(2)
from hg import R
o = R().read(0x021E6D56, 4, 1)
e.mem.write_short(0x021E6D56, o[0] | o[1] << 8); e.mem.write_short(0x021E6D58, o[2] | o[3] << 8)
e.save(out); print('POS', walk.pos(e))
