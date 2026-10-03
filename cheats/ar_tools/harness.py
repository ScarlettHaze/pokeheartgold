import sys, os, re, json
from emu import *
from PIL import Image, ImageChops, ImageStat

XML = os.path.join(D, 'new_hg_eu_cheats_4.xml')


def load_codes(path=XML):
    t = open(path).read()
    out = {}
    for m in re.finditer(r'<name>([^<]*)</name>\s*<note>[^<]*</note>\s*<codes>([^<]*)</codes>', t):
        out[m.group(1).replace('&amp;', '&')] = m.group(2)
    return out


def diff(a, b):
    ia, ib = Image.open(a).convert('RGB'), Image.open(b).convert('RGB')
    return sum(ImageStat.Stat(ImageChops.difference(ia, ib)).mean) / 3


_E = [None]


def get_emu():
    if _E[0] is None:
        _E[0] = Emu()
    return _E[0]


def run_scenario(scn, codes, tag, state):
    e = get_emu()
    e.set_codes([])
    e.load(state)
    e.e.input.keypad_update(0)
    e.set_codes(codes)
    shots = []
    for i, act in enumerate(scn):
        kind = act[0]
        if kind == 'press':
            e.press(*act[1], hold=act[2] if len(act) > 2 else 3, wait=act[3] if len(act) > 3 else 20)
        elif kind == 'wait':
            e.step(act[1])
        elif kind == 'hold':
            e.step(act[2], act[1])
        elif kind == 'touch':
            e.touch(act[1], act[2])
        elif kind == 'shot':
            shots.append(e.shot('%s_%s' % (tag, act[1])))
        elif kind == 'save':
            e.save(act[1])
    pc = e.pc()
    return shots, pc
