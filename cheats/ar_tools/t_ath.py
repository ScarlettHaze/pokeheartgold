"""Pokeathlon: play the course with random taps/A; log PokeathlonSave_AddAthletePoints calls and AP before/after."""
import sys, random
from harness import *
mode, st, frames = sys.argv[1], sys.argv[2], int(sys.argv[3])
allc = load_codes(os.path.join(D, 'new_hg_eu_cheats_100pct.xml'))
e = get_emu(); e.load(st); e.step(2)
e.set_codes([allc['Athlete Points x2']] if mode == 'code' else [])
calls = []
def f(a, s):
    r = e.mem.register_arm9
    calls.append([r.r0, r.r1, e.r32(r.r0 + 0xB74)])
e.mem.register_exec(0x02031A38, f)
random.seed(1)
ims = []; t = 0
while t < frames:
    k = random.random()
    if k < 0.6:
        x, y = random.randint(20, 236), random.randint(20, 172); e.touch(x, y, hold=random.randint(2, 10), wait=4); t += 14
    elif k < 0.8:
        e.press('A', hold=3, wait=6); t += 9
    else:
        e.step(10, [random.choice(['LEFT', 'RIGHT', 'UP', 'DOWN'])]); t += 10
    if t % 6000 < 14 and len(ims) < 60: ims.append(Image.open(e.shot('at' + mode)).copy().resize((128, 192)))
    if calls and t > calls[0][-1] if False else False: break
e.step(200)
print('CALLS', [(hex(a), amt, before, e.r32(a + 0xB74)) for a, amt, before in calls])
e.save('pa_end_' + mode)
cols = 10
W = Image.new('RGB', (128 * cols, 192 * ((len(ims) + cols - 1) // cols)))
[W.paste(im, ((i % cols) * 128, (i // cols) * 192)) for i, im in enumerate(ims)]
W.save('shots/ath_%s.png' % mode)
