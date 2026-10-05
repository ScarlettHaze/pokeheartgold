"""Emulator-only test: party slot 5 becomes an egg about to hatch (RAM only, never saved)."""
import sys, struct, pkm
from harness import *
from PIL import Image
import new100
mode = sys.argv[1]
FAST = '9206CDBA 00004281 1206CDBA 00004289 D2000000 00000000'   # DB "Fast Egg Hatch v2", test only
e = get_emu(); e.load('outside'); e.step(2)
a, raw, (pid, plain, party, ok) = pkm.mon(e, 5)
iv = struct.unpack_from('<I', plain, 0x30)[0] | (1 << 30)
struct.pack_into('<I', plain, 0x30, iv); plain[0x0C] = 0
pkm.wr(e, a, pkm.encode(pid, plain, party, raw))
print('egg set', pkm.info(e, 5))
e.set_codes([FAST] + ([new100.skip_hatch_anim().text()] if mode == 'code' else []))
ims = []; frames = 0
for i in range(400):
    e.step(16, ['RIGHT' if i % 2 else 'LEFT']); e.step(4); frames += 20
    if ((struct.unpack_from('<I', pkm.mon(e, 5)[2][1], 0x30)[0] >> 30) & 1) == 0:
        break
    if i % 40 == 39: pass
print('egg flag cleared after', frames, 'frames; egg bit now', (struct.unpack_from('<I', pkm.mon(e, 5)[2][1], 0x30)[0] >> 30) & 1, pkm.info(e, 5))
e.save('hatch_after_' + mode)
for t in range(8):
    e.step(120); ims.append(Image.open(e.shot('h')).copy())
    e.press('A', hold=4, wait=30)
W = Image.new('RGB', (256 * len(ims), 384)); [W.paste(im, (i * 256, 0)) for i, im in enumerate(ims)]
W.resize((128 * len(ims), 192)).save('shots/hatch_%s.png' % mode)
print('FINAL egg bit', (struct.unpack_from('<I', pkm.mon(e, 5)[2][1], 0x30)[0] >> 30) & 1, 'frames used by presses', 8 * 154)
