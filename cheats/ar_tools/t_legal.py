"""Catch wild Pokemon with codes active and export them as .pk4 for PKHeX legality checks.
usage: t_legal.py tag state N 'code name|code name|...'   (test-only: Master Ball qty set to 99 in RAM)"""
import sys, re, struct
from harness import *
import pkm
tag, st, N = sys.argv[1], sys.argv[2], int(sys.argv[3])
names = [n for n in sys.argv[4].split('|') if n]
allc = load_codes(os.path.join(D, 'new_hg_eu_cheats_100pct.xml'))
extra = sys.argv[5].split('|') if len(sys.argv) > 5 else []
e = get_emu()
CODES = [allc[n] for n in names] + [x for x in extra if x]
spn = {int(v): n[8:] for n, v in re.findall(r'#define (SPECIES_\w+)\s+(\d+)', open('/home/user/pokeheartgold/include/constants/species.h').read())}
CTX = 0x022C33A4
rolls = []; rstate = []
def h(a, s):
    if e.r16(0x0224768C) == 0xB508 and e.r16(0x02247692) == 0x2164: rolls.append(e.mem.register_arm9.r1); rstate.append(e.r32(0x021D15A8))
e.mem.register_exec(0x02247698, h)
if tag == 'fake':
    def hf(a, s_): rolls.append(-1); rstate.append(e.r32(0x021D15A8))
    e.mem.register_exec(0x0224768C, hf)
os.makedirs('pk', exist_ok=True)
got = 0
for j in range(1, N + 1):
  e.load(st); e.step(2); e.set_codes(CODES); e.mem.write_short(CTX + 0x2D40, 0)
  seen_enc = 0; i = 0
  while i < 6000:
    e.step(16, ['RIGHT' if i % 2 else 'LEFT']); e.step(4); i += 1
    if e.r16(CTX + 0x2D40) == 154 and e.r16(CTX + 0x2D4C) == 76:
        seen_enc += 1
        if seen_enc <= j:           # run from the first j battles (the 1st is pre-decided in the savestate)
            e.step(300)
            for _ in range(3):
                e.touch(128, 176, hold=6, wait=60); e.press('A', hold=4, wait=60)
            e.step(400); e.mem.write_short(CTX + 0x2D40, 0); continue
        e.step(750)
        foe = CTX + 0x2D40 + 0xC0
        sp, pid = e.r16(foe), e.r32(foe + 0x68)
        for a in range(0x02200000, 0x02400000, 4):          # test-only: plenty of Master Balls
            if e.r32(a) == 0x00010001 and e.r32(a + 4) == 0 and e.r32(a - 4) == 0: e.mem.write_short(a + 2, 99)
        for x, y in [(30, 165), (191, 53), (64, 40), (128, 173)]:
            e.touch(x, y, hold=6, wait=120)
        ims = []
        def dexpage():
            im = Image.open(e.shot('lg' + tag)).convert('RGB')
            return sum(1 for x in range(0, 256, 4) if (lambda p: p[0] > 150 and p[2] < 110 and p[1] < 200)(im.getpixel((x, 3)))) > 40
        for k in range(40):
            e.press('A' if dexpage() else 'B', hold=4, wait=40)   # A closes the Pokedex page, B answers No to nicknaming
            if k % 4 == 0: ims.append(Image.open(e.shot('lg' + tag)).copy().resize((128, 192)))
        W = Image.new('RGB', (128 * len(ims), 192)); [W.paste(im, (j * 128, 0)) for j, im in enumerate(ims)]; W.save('shots/legal_%s.png' % tag)
        e.step(300)
        e.mem.write_short(CTX + 0x2D40, 0)
        hits = [a for a in range(0x02200000, 0x02400000, 4) if e.r32(a) == pid and pkm.decode(pkm.rd(e, a, 0x88) + bytes(0x64))[3]]
        if not hits:
            print('NOT CAUGHT?', spn.get(sp), hex(pid), flush=True); break
        def score(a):
            r = pkm.rd(e, a, 0x88); pid_, plain, _, ok = pkm.decode(r + bytes(0x64))
            f = bytes(r[:8]) + bytes(plain)                       # decrypted, file offsets
            return (f[0x83] == 1) + (struct.unpack_from('<H', f, 0x80)[0] != 0) + (struct.unpack_from('<H', f, 0x68)[0] != 0xFFFF), a
        best = max(score(a) for a in hits)
        raw = pkm.rd(e, best[1], 0x88)
        got += 1
        fn = 'pk/%s_%02d_%s.pk4' % (tag, got, spn.get(sp, sp))
        open(fn, 'wb').write(raw)
        print('CAUGHT', fn, hex(pid), 'slot roll', rolls[-1] if rolls else None, 'state %08X' % (rstate[-1] if rstate else 0), 'copies', len(hits), 'best', best, flush=True)
        break
print('DONE', tag, got, 'steps', i)
