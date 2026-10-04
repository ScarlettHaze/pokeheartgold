from hg import *
import new100
FN = 0x02097694
def run(cheat, days):
    e = Emu(cheats=[cheat] if cheat else [])
    aset = bytearray(0x2DC + 12)
    aset[0] = 0; aset[1] = 4
    for i, oid in enumerate([3, 3, 9, 0]):           # tree, tree, puddle, shrubbery
        aset[2 + 4 * i] = oid
    aset[0x2DC + 0] = days
    a = e.alloc(aset); out = e.alloc(bytes(8))
    e.call(FN, [a, 0, out])
    return list(e.u.mem_read(out, 8))
c = new100.safari_waited()
print(c.text())
for d in (0, 50, 255):
    print('days', d, 'normal', run(None, d), 'code', run(c, d))
