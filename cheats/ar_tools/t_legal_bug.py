"""Bug Contest with the Rare code: catch the first rare-slot Pokemon with Sport Balls, export bugContest->mon."""
import sys, re, struct
from harness import *
import walk, pkm
tag, skip = sys.argv[1], int(sys.argv[2])
allc = load_codes(os.path.join(D, 'new_hg_eu_cheats_100pct.xml'))
TUE = '021D1064 00000002 021D1080 00000002'
e = get_emu(); e.load('park0')
e.set_codes([TUE, '52111A80 4F464E49 1206DB34 00004770 D2000000 00000000', *([] if tag.startswith('ctl') else [allc['Rare Bug-Catching Contest Pokemon Appear More Often']]), allc['Unlimited Sport Balls']])
walk.walk(e, 70, 42)
spn = {int(v): n[8:] for n, v in re.findall(r'#define (SPECIES_\w+)\s+(\d+)', open('/home/user/pokeheartgold/include/constants/species.h').read())}
CTX = 0x022C33A4; e.mem.write_short(CTX + 0x2D40, 0)
BC = []
ST = []
def f(a, s):
    lr = e.mem.register_arm9.lr
    if 0x02112600 <= lr < 0x02112700 or 0x02247E00 <= lr < 0x02247F00:   # called by the Rare cave or the game's caller
        if not BC: BC.append(e.mem.register_arm9.r0)
        ST.append(e.r32(0x021D15A8))
e.mem.register_exec(0x02259B50, f)
RARE = {48, 46, 123, 127}
def attempts(st):
    M, A = 0x41C64E6D, 0x6073
    x = [st]
    def nxt():
        x[0] = (x[0] * M + A) & 0xFFFFFFFF; return x[0] >> 16
    nxt(); nxt()
    for a in range(4):
        nat = nxt() % 25
        while True:
            p = nxt() | (nxt() << 16)
            if p % 25 == nat: break
        ivs = (nxt() & 0x7FFF) | ((nxt() & 0x7FFF) << 15)
        if any((ivs >> (5 * k)) & 31 == 31 for k in range(6)): return a + 1
    return 4
n = 0; i = 0
while i < 6000:
    e.step(16, ['RIGHT' if i % 2 else 'LEFT']); e.step(4); i += 1
    if e.r16(CTX + 0x2D40) == 154 and e.r16(CTX + 0x2D4C) == 76:
        e.step(750); sp = e.r16(CTX + 0x2D40 + 0xC0); n += 1
        kept = ST[-1] if ST else 0; ST.clear()
        att = attempts(kept)
        if (sp in RARE or tag.startswith('ctl')) and n > skip and att == 1:
            for t in range(15):
                e.touch(30, 165, hold=6, wait=60)
                for k in range(12): e.press('B', hold=4, wait=40)
                if e.r32(BC[0] + 0x10) and (e.r8(BC[0] + 0x17) & 1): break
                e.step(200)
            e.step(600)
            mon = e.r32(BC[0] + 0x10)
            raw = pkm.rd(e, mon, 0xEC); pid, plain, party, ok = pkm.decode(raw)
            print('caught flag', e.r8(BC[0] + 0x17) & 1, 'species', spn.get(struct.unpack_from('<H', plain, 0)[0]), 'ok', ok, flush=True)
            fn = 'pk/%s_%s.pk4' % (tag, spn.get(sp)); open(fn, 'wb').write(raw); print('CAUGHT', fn, hex(pid), 'state %08X' % kept); break
        for _ in range(4):
            e.touch(128, 175, hold=6, wait=60); e.press('A', hold=4, wait=60)
        e.step(400); e.mem.write_short(CTX + 0x2D40, 0); walk.walk(e, 70, 42)
print('DONE', n, i)
