import sys, struct
from harness import *
codes = load_codes()
e = get_emu(); e.load('f2clerk')
b = bytes(e.mem.read(0x02200000, 0x023FFFFF, 1, False))
cands = [0x02200000 + i for i in range(0, len(b) - 4, 4) if struct.unpack_from('<I', b, i)[0] == 593506]
print('cands', [hex(c) for c in cands])
SEQ = "A A A A W30 A W60 A W60 A W60 B W60 B W60 B W60 B W60".split()
for mode in ['none', 'Everything in Shops Costs 1', 'Shopping Does Not Cost Money']:
    e.set_codes([]); e.load('f2clerk'); e.set_codes([] if mode == 'none' else [codes[mode]])
    for k in SEQ:
        if k.startswith('W'): e.step(int(k[1:]))
        else: e.step(4, [k]); e.step(50)
    print('MONEY', mode, [e.r32(c) for c in cands])
