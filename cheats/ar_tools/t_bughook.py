from harness import *
import walk
allc = load_codes(os.path.join(D, 'new_hg_eu_cheats_100pct.xml'))
e = get_emu(); e.load('park0')
e.set_codes(['021D1064 00000002 021D1080 00000002', allc['Rare Bug-Catching Contest Pokemon Appear More Often']])
walk.walk(e, 70, 42)
hits = []
def f1(a, s): hits.append(('func', e.mem.register_arm9.lr)); hits.append(('w5c', e.r32(0x02259B5C))); hits.append(('w60', e.r32(0x02259B60)))
def f2(a, s): hits.append(('cave', e.mem.register_arm9.lr))
def f3(a, s): hits.append(('caveret', e.mem.register_arm9.r0))
e.mem.register_exec(0x02259B50, f1); e.mem.register_exec(0x02112670, f2); e.mem.register_exec(0x0211268C, f3)
CTX = 0x022C33A4
for i in range(400):
    e.step(16, ['RIGHT' if i % 2 else 'LEFT']); e.step(4)
    if hits: e.step(200); break
print('HITS', [(n, hex(v)) for n, v in hits[:10]], i, e.r16(CTX + 0x2D40 + 0xC0))
print(' '.join('%04X' % e.r16(0x02112670 + i) for i in range(0, 0x20, 2)))
