"""Route 35 grass: N encounters; log species; with the code also log every seen-check (species, seen?)."""
import sys, re, collections
from harness import *
mode, N = sys.argv[1], int(sys.argv[2])
allc = load_codes(os.path.join(D, 'new_hg_eu_cheats_100pct.xml'))
e = get_emu(); e.load(sys.argv[3] if len(sys.argv) > 3 else 'grass')
e.set_codes([allc['Only Pokemon You Have Not Seen Appear']] if mode == 'code' else [])
names = {int(v): n[8:] for n, v in re.findall(r'#define (SPECIES_\w+)\s+(\d+)', open('/home/user/pokeheartgold/include/constants/species.h').read())}
A = 0x02111DC0
checks = []; cur = [None]
def hsp(a, s): cur[0] = e.mem.register_arm9.r3
def hres(a, s): checks.append((names.get(cur[0], cur[0]), e.mem.register_arm9.r0))
e.mem.register_exec(A + 0x10, hsp); e.mem.register_exec(A + 0x16, hres)
CTX = 0x022C33A4
e.mem.write_short(CTX + 0x2D40, 0)   # clear the stale battle data left in the savestate
cnt = collections.Counter(); got = 0; i = 0
while got < N and i < int(os.environ.get('MAXSTEP', '1500')):
    if i % 300 == 0: print('step', i, 'checks', len(checks), checks[-2:], flush=True)
    e.step(16, ['RIGHT' if i % 2 else 'LEFT']); e.step(4); i += 1
    if e.r16(CTX + 0x2D40) == 154 and e.r16(CTX + 0x2D4C) == 76:
        e.step(300)
        sp = e.r16(CTX + 0x2D40 + 0xC0); cnt[names.get(sp, sp)] += 1; got += 1
        print('ENC', got, 'step', i, names.get(sp, sp), 'last checks', checks[-3:], flush=True)
        for _ in range(3):
            e.touch(128, 176, hold=6, wait=60); e.press('A', hold=4, wait=60)
        e.step(400)
        e.mem.write_short(CTX + 0x2D40, 0)
print('STEPS', i, 'ENCOUNTERS', got, dict(cnt))
if mode == 'code':
    blocked = collections.Counter(n for n, r in checks if r); passed = collections.Counter(n for n, r in checks if not r)
    print('BLOCKED (seen)', dict(blocked)); print('PASSED (unseen)', dict(passed))
