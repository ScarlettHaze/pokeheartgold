"""Bug Contest: log species over N encounters (run from each). mode none|rare"""
import sys, re, collections
from harness import *
import walk
mode, N = sys.argv[1], int(sys.argv[2])
allc = load_codes(os.path.join(D, 'new_hg_eu_cheats_100pct.xml'))
TUE = '021D1064 00000002 021D1080 00000002'
e = get_emu(); e.load('park0')
e.set_codes([TUE] + ([allc['Rare Bug-Catching Contest Pokemon Appear More Often']] if mode == 'rare' else []))
walk.walk(e, 70, 42)
names = {int(v): n[8:] for n, v in re.findall(r'#define (SPECIES_\w+)\s+(\d+)', open('/home/user/pokeheartgold/include/constants/species.h').read())}
CTX = 0x022C33A4
cnt = collections.Counter(); got = 0; i = 0; seq = []
while got < N and i < 6000:
    e.step(16, ['RIGHT' if i % 2 else 'LEFT']); e.step(4); i += 1
    if e.r16(CTX + 0x2D40) == 154 and e.r16(CTX + 0x2D4C) == 76:
        e.step(300)
        sp = e.r16(CTX + 0x2D40 + 0xC0); cnt[names.get(sp, sp)] += 1; got += 1; seq.append(names.get(sp, sp))
        for _ in range(4):
            e.touch(128, 175, hold=6, wait=60); e.press('A', hold=4, wait=60)
        e.step(400)
        e.mem.write_short(CTX + 0x2D40, 0)
        walk.walk(e, 70, 42)
print('SPECIES', mode, got, dict(cnt)); print(seq)
