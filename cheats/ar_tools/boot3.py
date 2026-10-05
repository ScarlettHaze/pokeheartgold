"""Boot with a set of codes, reach the field, then report whether the touch menu is active (not dimmed)."""
import sys, os, json
from emu import Emu
from PIL import Image
from harness import load_codes, D
allc = load_codes(os.path.join(D, 'new_hg_eu_cheats_100pct.xml'))
names = json.loads(sys.argv[1]) if len(sys.argv) > 1 else list(allc)
e = Emu([allc[n] for n in names])
for step in range(56):
    keys = ['A'] if (step >= 30 and step % 6 == 0 and step <= 48) else []
    e.step(4, keys); e.step(26)
e.step(400)
im = Image.open(e.shot('b3')).convert('RGB')
# Pokedex icon area on the touch menu: bright green when active, dark when dimmed
px = im.getpixel((40, 192 + 40))
print('RESULT', 'ACTIVE' if px[1] > 150 else 'DIMMED', px, len(names))
im.save('shots/boot3_last.png')
e.touch(125, 35, hold=6, wait=250)
Image.open(e.shot('b3c')).save('shots/boot3_card_%d.png' % len(names))
for k in range(3): e.press('B', hold=4, wait=60)
e.step(100); Image.open(e.shot('b3d')).save('shots/boot3_back_%d.png' % len(names))
