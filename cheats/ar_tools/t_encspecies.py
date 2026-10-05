"""Log wild species over N encounters on Route 35 for a set of codes (names from the pack, or raw code text)."""
import sys, json, struct, collections
from harness import *
allc = load_codes(os.path.join(D, 'new_hg_eu_cheats_100pct.xml'))
spec = json.loads(sys.argv[1]); N = int(sys.argv[2]); tag = sys.argv[3]
codes = [allc.get(s, s) for s in spec]
e = get_emu(); e.load('grass'); e.set_codes(codes)
names = {}
import re
for n, v in re.findall(r'#define (SPECIES_\w+)\s+(\d+)', open('/home/user/pokeheartgold/include/constants/species.h').read()):
    names[int(v)] = n[8:]
CTX = 0x022C33A4
cnt = collections.Counter(); got = 0; i = 0
while got < N and i < 4000:
    e.step(16, ['RIGHT' if i % 2 else 'LEFT']); e.step(4); i += 1
    if e.r16(CTX + 0x2D40) == 154 and e.r16(CTX + 0x2D4C) == 76:
        e.step(300)
        sp = e.r16(CTX + 0x2D40 + 0xC0)
        cnt[names.get(sp, sp)] += 1; got += 1
        for _ in range(3):
            e.touch(128, 176, hold=6, wait=60); e.press('A', hold=4, wait=60)
        e.step(400)
        e.mem.write_short(CTX + 0x2D40, 0)
print('SPECIES', tag, got, 'encounters', dict(cnt))
