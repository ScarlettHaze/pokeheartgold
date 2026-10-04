from hg import *
import new100, struct
BPA, GSA, GSG = 0x0202D3F8, 0x0202D144, sym('GameStats_GetValue')[0]
def run(cheat):
    e = Emu(cheats=[cheat] if cheat else [])
    bp = e.alloc(struct.pack('<H', 100))
    out = [e.call(BPA, [bp, 10, 5])]
    e.u.mem_write(bp, struct.pack('<H', 9990)); out.append(e.call(BPA, [bp, 10, 5]))
    e.u.mem_write(bp, struct.pack('<H', 100)); out.append(e.call(BPA, [bp, 30, 6]))
    gs = e.alloc(bytes(0x400))
    for n in ('GameStats_Acquire', 'GameStats_Release'):
        e.stub(sym(n)[0], code=asm('bx lr', sym(n)[0] & ~1))
    e.stub(sym('GameStats_GetValue')[0], 0)
    a = sym('GameStats_SetValue')[0]; e.stub(a, code=asm('adds r0, r2, #0; bx lr', a & ~1))
    out += [e.call(GSA, [gs, 0x45, 10]), e.call(GSA, [gs, 0x45, 10]), e.call(GSA, [gs, 0x46, 10]), e.call(GSA, [gs, 0x0D, 10])]
    return out
print('labels: [100+10, 9990+10 cap, 100-30, statBPrecv, statBPrecv again, statBPspent, other stat]')
print('normal', run(None)); print('code  ', run(new100.bp_x2()))
