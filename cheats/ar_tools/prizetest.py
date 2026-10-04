import sys
from harness import *
from PIL import Image
codes = load_codes()
MON = 0x0227C358
e = get_emu()
R = codes['Trainers Always Ready for a Rematch']
for label, extra in [('base', []), ('x2', [codes['Prize Money x2']]), ('all', [c for n, c in codes.items() if n not in ("Opponent's Moves Always Miss", 'Your Damage x4', 'Your Damage x8', 'Prize Money x4', 'Prize Money x8', 'Pickup Always Finds an Item', 'Shopping Does Not Cost Money')])]:
    e.set_codes([]); e.load('irwin'); e.set_codes([R] + extra)
    m0 = e.r32(MON); ims = []
    e.step(4, ['A']); e.step(60); e.step(4, ['A']); e.step(60)
    for t in range(12):
        e.step(300)
        for _ in range(3): e.step(4, ['B']); e.step(40)
        e.touch(128, 80, hold=6, wait=40); e.touch(64, 110, hold=6, wait=40)
        for _ in range(6): e.step(4, ['A']); e.step(50)
        ims.append(Image.open(e.shot('pz')).resize((128, 192)))
    for _ in range(10): e.step(4, ['A']); e.step(60)
    e.step(200)
    ims.append(Image.open(e.shot('pz')).resize((128, 192)))
    print('PRIZE', label, m0, e.r32(MON), e.r32(MON) - m0, flush=True)
    W2 = Image.new('RGB', (128 * 13, 192))
    for i, im in enumerate(ims): W2.paste(im, (i * 128, 0))
    W2.save('shots/prize_%s.png' % label)
