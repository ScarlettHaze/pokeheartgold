from harness import *
from PIL import Image
import new100
codes = load_codes(os.path.join(D, 'new_hg_eu_cheats_100pct.xml'))
skip = ['Sinnoh Sound Always On', 'Wild Pokemon Never Use Self-Destruct or Explosion', 'Wild Pokemon Never Use Self-Targeting Moves', "Opponent's Moves Always Miss", 'Your Damage x4', 'Your Damage x8', 'Prize Money x4', 'Prize Money x8', 'Pickup Always Finds an Item', 'Shopping Does Not Cost Money']
sel = [c for n, c in codes.items() if n not in skip]
print('codes', len(sel))
e = get_emu(); e.load('grass'); e.set_codes(sel)
ims = []
def cap(): ims.append(Image.open(e.shot('sm')).crop((0, 0, 256, 384)).resize((128, 192)))
for rnd in range(2):
    for i in range(30):
        e.step(16, ['RIGHT' if i % 2 else 'LEFT']); e.step(4)
    e.step(600); cap()
    e.touch(128, 80, hold=6, wait=40); e.touch(64, 110, hold=6, wait=40)
    for k in range(10):
        e.press('A', wait=60)
        if k % 3 == 2: cap()
    e.step(400); cap()
for t in range(6):
    e.step(300); cap()
e.press('X', wait=60); cap(); e.press('B', wait=60); cap()
e.save('smoke_end2')
W = Image.new('RGB', (128 * 10, 192 * ((len(ims) + 9) // 10)))
for j, im in enumerate(ims): W.paste(im, ((j % 10) * 128, (j // 10) * 192))
W.save('shots/smoke_all.png'); print('pc %08X' % e.pc())
