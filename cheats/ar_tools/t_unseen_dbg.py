from harness import *
from hg import *
allc = load_codes(os.path.join(D, 'new_hg_eu_cheats_100pct.xml'))
e = get_emu(); e.load('grass'); e.set_codes([allc['Only Pokemon You Have Not Seen Appear']])
log = []
pts = {'GenRegular': sym('FieldSystem_GenerateRegularEncounter')[0] & ~1, 'site': 0x02247D6E, 'cave': 0x02111DC0,
       'repel': sym('EncounterGen_DoesRepelSuppressEncounter')[0] & ~1, 'GenNonShiny': sym('generateWildNonShinyAndAddToParty')[0] & ~1}
for k, a in pts.items():
    def f(addr, s, k=k): log.append((k, hex(e.mem.register_arm9.lr)))
    e.mem.register_exec(a, f)
CTX = 0x022C33A4
for i in range(30):
    e.step(16, ['RIGHT' if i % 2 else 'LEFT']); e.step(4)
    if e.r16(CTX + 0x2D40) == 154: break
print('i', i, log[:12])
