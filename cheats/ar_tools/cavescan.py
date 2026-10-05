import os, glob
from emu import Emu
e = Emu()
lo, hi = 0x02111C00, 0x02113000
res = {}
for st in sorted(glob.glob('states/*.dst')):
    n = os.path.basename(st)[:-4]
    e.load(n); e.step(30)
    nz = [a for a in range(lo, hi, 4) if e.r32(a)]
    res[n] = (hex(min(nz)) if nz else None, hex(max(nz)) if nz else None, len(nz))
    print(n, res[n], flush=True)
