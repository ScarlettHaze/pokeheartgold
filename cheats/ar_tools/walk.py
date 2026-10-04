import sys, struct
from emu import *
ZFIRST = True
_cache = {}
def player_obj(e):
    a = _cache.get('a')
    if a and e.r32(a + 8) == 0xFF and (e.r32(a) & 1) and 0x02000000 <= e.r32(a + 0xB4) < 0x02400000:
        return a
    b = bytes(e.mem.read(0x02200000, 0x022FFFFF, 1, False))
    for i in range(0, len(b) - 0x100, 4):
        if struct.unpack_from('<I', b, i + 8)[0] == 0xFF:
            mgr = struct.unpack_from('<I', b, i + 0xB4)[0]
            x, z = struct.unpack_from('<I', b, i + 0x64)[0], struct.unpack_from('<I', b, i + 0x6C)[0]
            if 0x02000000 <= mgr < 0x02400000 and x < 4096 and z < 4096 and (struct.unpack_from('<I', b, i)[0] & 1) and struct.unpack_from('<I', b, i + 0x0C)[0] < 1000:
                _cache['a'] = 0x02200000 + i
                return _cache['a']
    return None
def pos(e):
    a = player_obj(e)
    return (e.r32(a + 0x64), e.r32(a + 0x6C)) if a else (None, None)
def walk(e, tx, tz, maxsteps=200):
    for _ in range(maxsteps):
        x, z = pos(e)
        if (x, z) == (tx, tz): return True
        if ZFIRST and z != tz: d = 'DOWN' if tz > z else 'UP'
        elif x != tx: d = 'RIGHT' if tx > x else 'LEFT'
        else: d = 'DOWN' if tz > z else 'UP'
        moved = False
        for _ in range(40):
            e.step(1, [d])
            if pos(e) != (x, z): moved = True; break
        e.step(8)
        if not moved:
            return False
    return pos(e) == (tx, tz)
