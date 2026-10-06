from emu import Emu
e = Emu([])
prev = None
for f in range(0, 2400):
    e.step(1, ['A'] if (f // 30) % 6 == 0 and f > 900 else [])
    info = e.r32(0x02111A80) == 0x4F464E49
    mine = e.r32(0x020041BC) == 0xF0003094 and 0x02200000 <= e.r32(0x0211186C) < 0x02400000
    st = (info, mine)
    if st != prev: print('frame', f, 'INFO-guard open' if info else 'INFO-guard closed', '| my guard open' if mine else '| my guard closed', hex(e.r32(0x02111A80))); prev = st
