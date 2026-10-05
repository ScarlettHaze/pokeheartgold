"""Hook SafariZoneAreaSet_GetObjectsInArea during a Safari encounter: print the area's object counts/levels."""
import sys, struct
from harness import *
import walk as W
allc = load_codes(os.path.join(D, 'new_hg_eu_cheats_100pct.xml'))
mode = sys.argv[1]
e = get_emu(); e.load('saf4'); e.set_codes([allc['Safari Zone Objects Count as Fully Waited']] if mode == 'code' else [])
F = 0x02097694
SHRUB = int(sys.argv[2])
info = []
def ret(a, s):
    o = info[-1]['out']
    info[-1]['levels'] = [e.r8(o + i) for i in range(8)]
edited = []
def ent(a, s):
    r = e.mem.register_arm9
    if not edited:   # test-only: put 3 Shrubbery (plains) objects in this area, placed today (0 days waited)
        ar = r.r0 + 0x7A * r.r1
        e.mem.write_byte(ar + 1, 3)
        for k in range(3):
            for j, v in enumerate((SHRUB, 2 + k, 0, 2)): e.mem.write_byte(ar + 2 + 4 * k + j, v)
        e.mem.write_byte(r.r0 + 0x7A * 6 + e.r8(ar), 0)
        edited.append(e.r8(ar))
    info.append(dict(area=r.r1, out=r.r2, lr=r.lr, set=r.r0))
    e.mem.register_exec(r.lr & ~1, ret)
e.mem.register_exec(F, ent)
W.walk(e, 79, 87, 80)
for i in range(60):
    W.walk(e, 79, 85 if i % 2 == 0 else 87, 40)
    if info and 'levels' in info[-1]: break
print('area_no', edited); print('INFO', [(d['area'], hex(d['out']), d.get('levels')) for d in info])
if info:
    s = info[0]['set']; a = info[0]['area']
    print('areaLevels raw', [e.r8(s + k) for k in range(0, 8)])
