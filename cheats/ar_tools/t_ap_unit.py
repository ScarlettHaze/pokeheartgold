from hg import *
import new100, struct
def run(c):
    e = Emu(cheats=[c] if c else []); o = []
    for start, add in ((100, 50), (99990, 50)):
        p = e.alloc(bytes(0xB80)); e.w32(p + 0xB74, start)
        e.call(0x02031A38, [p, add]); o.append(e.r32(p + 0xB74))
    return o
print('normal', run(None), 'code', run(new100.ap_x2()))
