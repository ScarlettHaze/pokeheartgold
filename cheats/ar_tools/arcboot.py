"""Boot from power-on with a non-overlapping set of archive codes; report field reached + menu active."""
import sys, json
from emu import Emu
from PIL import Image
exec(open('arcover.py').read().split("mine = {}")[0])
f, kind = sys.argv[1], sys.argv[2]
cs = cheats(f)
G2 = '52111A80 4F464E49'
sel, used = [], []
for n, c, _ in cs:
    g = c.startswith(G2)
    if (kind == 'info') != g: continue
    w = writes(c)
    if any(a < b + k and b < a + l for a, l in w for b, k in used): continue
    sel.append((n, c)); used += w
print('codes', len(sel), [n for n, _ in sel][:80])
e = Emu([c for _, c in sel])
for step in range(56):
    keys = ['A'] if (step >= 30 and step % 6 == 0 and step <= 48) else []
    e.step(4, keys); e.step(26)
e.step(400)
im = Image.open(e.shot('ab_' + kind)).convert('RGB')
px = im.getpixel((40, 192 + 40))
print('RESULT', kind, 'ACTIVE' if px[1] > 150 else 'NOT-FIELD', px, 'pc %08X' % e.pc())
im.save('shots/arcboot_%s.png' % kind)
