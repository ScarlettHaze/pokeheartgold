import struct
from harness import *
from PIL import Image
codes = load_codes()
e = get_emu()
e.load('field0')
b = bytes(e.mem.read(0x02200000, 0x023FFFFF, 1, False))
cands = [0x02200000 + i for i in range(0, len(b) - 2, 2) if struct.unpack_from('<H', b, i)[0] == 5000]
for mode in ['none', 'Free Game Corner Prizes']:
    e.set_codes([]); e.load('gcprize'); e.set_codes([] if mode == 'none' else [codes[mode]])
    before = {c: e.r16(c) for c in cands}
    ims = []
    for k in "A W60 A W60 A W60 A W60 A W60 A W60 A W60 B W60 B W60 B W60".split():
        if k.startswith('W'): e.step(int(k[1:]))
        else: e.step(4, [k]); e.step(30)
        ims.append(Image.open(e.shot('gc')).resize((128, 192)))
    changed = [(hex(c), before[c], e.r16(c)) for c in cands if e.r16(c) != before[c]]
    print('COINS', mode, changed[:5])
    W2 = Image.new('RGB', (128 * 10, 192 * 2))
    for i, im in enumerate(ims[:20]): W2.paste(im, ((i % 10) * 128, (i // 10) * 192))
    W2.save('shots/gc_%d.png' % (mode != 'none'))
