"""Test-only teleport: hold SELECT and press X in the overworld to warp to (map, x, z) stored at PARAMS."""
import sys
sys.path.insert(0, '.')
import hg
from hg import asm, Cheat
from emu import Emu
from PIL import Image
CAVE = 0x02112380
PARAMS = 0x021123F0
NFTE = 0x02055CD8
MYSTERY = 0x0203BC10
src = '''
ldrh r1, [r5, #8]
lsrs r2, r1, #3
bcs warp
ldr r1, lit_mz
bx r1
warp:
sub sp, #8
ldr r3, lit_p
ldrh r0, [r3, #4]
str r0, [sp]
ldrh r0, [r3, #6]
str r0, [sp, #4]
ldrh r1, [r3]
movs r2, #0
mvns r2, r2
ldrh r3, [r3, #2]
adds r0, r4, #0
bl %d
add sp, #8
movs r0, #1
pop {r3, r4, r5, r6, r7, pc}
.align 2
lit_mz: .word %d
lit_p: .word %d
''' % (NFTE, MYSTERY | 1, PARAMS)
code = asm(src, CAVE)
c = Cheat(); c.ecode(CAVE, code)
c.patch(1, 0x021E6D56, asm('bl %d' % CAVE, 0x021E6D56), check_words=[0x021E6D54, 0x021E6D58])
WARPCODE = c.text()

def teleport(e, mapid, x, z, d=0):
    import struct
    e.mem.write_long(PARAMS, mapid | (x << 16)); e.mem.write_long(PARAMS + 4, z | (d << 16))
    old = e.codes
    e.set_codes([WARPCODE]); e.step(2)
    e.step(10, ['SELECT']); e.step(4, ['SELECT', 'X']); e.step(10, ['SELECT'])
    e.step(300)
    e.set_codes([])
    # restore original instruction so later tests start clean
    from hg import R
    orig = R().read(0x021E6D56, 4, 1)
    e.mem.write_short(0x021E6D56, orig[0] | orig[1] << 8); e.mem.write_short(0x021E6D58, orig[2] | orig[3] << 8)
    e.set_codes([c for c in []])

if __name__ == '__main__':
    st, out, mapid, x, z = sys.argv[1], sys.argv[2], int(sys.argv[3]), int(sys.argv[4]), int(sys.argv[5])
    e = Emu(); e.load(st)
    teleport(e, mapid, x, z, int(sys.argv[6]) if len(sys.argv) > 6 else 0)
    e.save(out); e.shot('warp')
    import walk as W
    print('POS', W.pos(e))
