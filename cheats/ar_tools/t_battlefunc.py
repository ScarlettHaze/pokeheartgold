"""Functional battle tests. Test-only battle-RAM edits (never saved): enemy Attack +6 / your Defense -6 so
Nidorina's Scratch does real damage, and optional HP / status / move changes on your battler."""
import sys, struct
from harness import *
from PIL import Image
test, mode = sys.argv[1], sys.argv[2]
allc = load_codes(os.path.join(D, 'new_hg_eu_cheats_100pct.xml'))
CODE = {'half': 'You Take Half Damage', 'nofaint': "Your Pokemon Can't Faint (HP Stops at 1)",
        'boost': 'Your Stat Boosts Are Doubled', 'confuse': "Your Pokemon Can't Be Confused or Flinch"}[test]
e = get_emu(); e.load('grass'); e.set_codes([allc[CODE]] if mode == 'code' else [])
for i in range(30):
    e.step(16, ['RIGHT' if i % 2 else 'LEFT']); e.step(4)
e.step(600)
ctx = 0x022C33A4 if e.r16(0x022C33A4 + 0x2D40) == 154 else None
print('ctx', hex(ctx) if ctx else None)
B0, B1 = ctx + 0x2D40, ctx + 0x2D40 + 0xC0
HP = lambda b: struct.unpack('<i', bytes(e.r8(b + 0x4C + k) for k in range(4)))[0]
def setb(addr, v): e.mem.write_byte(addr, v & 0xFF)
def seti(addr, v): e.mem.write_long(addr, v & 0xFFFFFFFF)
# stat stages: statChanges[0..7] at +0x18, 6 = neutral
setb(B1 + 0x18 + 1, 12); setb(B0 + 0x18 + 2, 0)
if test == 'nofaint': seti(B0 + 0x4C, 30)
if test == 'boost': e.mem.write_short(B0 + 0xC + 2 * 3, 14)          # slot 4 -> Swords Dance (test only)
log = []
for turn in range(4):
    hp0 = HP(B0); atk0 = e.r8(B0 + 0x18 + 1)
    e.touch(128, 80, hold=6, wait=40)
    if test == 'nofaint': seti(B0 + 0x4C, 3)
    e.touch(192, 110 if test in ('boost', 'nofaint', 'confuse') else 50, hold=6, wait=10)   # slot 4 / Synthesis
    for k in range(12):
        if test == 'confuse':
            for f in range(54):
                st = e.r32(B0 + 0x70)
                seti(B0 + 0x70, (st & ~7) | 3)      # confused only, test only
                e.step(1, ['A'] if f < 4 else [])
        else:
            e.press('A', wait=50)
        if test == 'confuse' and k in (3, 6, 9): Image.open(e.shot('cf')).copy().crop((0, 140, 256, 192)).save('shots/conf_%s_%d_%d.png' % (mode, turn, k))
    msgs = Image.open(e.shot('bf')).copy()
    if test == 'confuse': msgs.crop((0, 140, 256, 192)).save('shots/conf_%s_%d.png' % (mode, turn))
    log.append((turn, hp0, HP(B0), atk0, e.r8(B0 + 0x18 + 1)))
    if HP(B0) <= 0: break
print('LOG', test, mode, log)
