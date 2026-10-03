import sys
from emu import *
XA, ZA = 0x022A21D4, 0x022A21DC
ZFIRST = True
def pos(e): return e.r16(XA), e.r16(ZA)
def walk(e, tx, tz, maxsteps=200):
    for _ in range(maxsteps):
        x, z = pos(e)
        if (x, z) == (tx, tz): return True
        if ZFIRST and z != tz: d = 'DOWN' if tz > z else 'UP'
        elif x != tx: d = 'RIGHT' if tx > x else 'LEFT'
        else: d = 'DOWN' if tz > z else 'UP'
        for _ in range(40):
            e.step(1, [d])
            if pos(e) != (x, z): break
        e.step(6)
    return pos(e) == (tx, tz)
if __name__ == '__main__':
    e = Emu(); e.load(sys.argv[1])
    if len(sys.argv) > 5: e.set_codes(['1205DAA2 00000200'])
    print('start', pos(e))
    ok = walk(e, int(sys.argv[3]), int(sys.argv[4]))
    print('reached', ok, pos(e))
    e.set_codes(['1205DAA2 00001C20']); e.step(2); e.set_codes([])
    e.step(10)
    e.save(sys.argv[2]); e.shot('walk')
