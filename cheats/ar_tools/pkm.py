"""Gen 4 party Pokemon read/modify in emulator RAM (test-only helper)."""
import struct
ORDERS = ['ABCD','ABDC','ACBD','ACDB','ADBC','ADCB','BACD','BADC','BCAD','BCDA','BDAC','BDCA',
          'CABD','CADB','CBAD','CBDA','CDAB','CDBA','DABC','DACB','DBAC','DBCA','DCAB','DCBA']

def _crypt(data, seed):
    out = bytearray(data)
    for i in range(0, len(data), 2):
        seed = (seed * 0x41C64E6D + 0x6073) & 0xFFFFFFFF
        w = struct.unpack_from('<H', data, i)[0] ^ (seed >> 16)
        struct.pack_into('<H', out, i, w)
    return out

def decode(raw):
    pid, _, chk = struct.unpack_from('<IHH', raw, 0)
    body = _crypt(raw[8:0x88], chk)
    order = ORDERS[((pid & 0x3E000) >> 13) % 24]
    blocks = {order[i]: body[i * 32:(i + 1) * 32] for i in range(4)}
    plain = blocks['A'] + blocks['B'] + blocks['C'] + blocks['D']
    party = _crypt(raw[0x88:0xEC], pid)
    ok = (sum(struct.unpack('<64H', bytes(plain))) & 0xFFFF) == chk
    return pid, bytearray(plain), bytearray(party), ok

def encode(pid, plain, party, raw):
    chk = sum(struct.unpack('<64H', bytes(plain))) & 0xFFFF
    order = ORDERS[((pid & 0x3E000) >> 13) % 24]
    body = b''.join(plain['ABCD'.index(c) * 32:('ABCD'.index(c) + 1) * 32] for c in order)
    out = bytearray(raw)
    struct.pack_into('<IHH', out, 0, pid, struct.unpack_from('<H', raw, 4)[0], chk)
    out[8:0x88] = _crypt(body, chk)
    out[0x88:0xEC] = _crypt(bytes(party), pid)
    return out

def rd(e, a, n):
    return bytes(e.r8(a + i) for i in range(n))

def wr(e, a, b):
    for i, x in enumerate(b): e.mem.write_byte(a + i, x)

_party = [None]
def find_party(e):
    if _party[0]: return _party[0]
    for a in range(0x02200000, 0x02400000, 4):
        if e.r32(a) == 6 and 1 <= e.r32(a + 4) <= 6:
            raw = rd(e, a + 8, 0xEC)
            pid, plain, party, ok = decode(raw)
            sp = struct.unpack_from('<H', plain, 0)[0]
            if ok and 0 < sp < 494 and party[4] <= 100 and party[4] > 0:
                _party[0] = a + 8
                return a + 8
    raise RuntimeError('party not found')

def mon(e, slot):
    a = find_party(e) + slot * 0xEC
    raw = rd(e, a, 0xEC)
    return a, raw, decode(raw)

def info(e, slot):
    a, raw, (pid, plain, party, ok) = mon(e, slot)
    sp, item = struct.unpack_from('<HH', plain, 0)
    exp = struct.unpack_from('<I', plain, 8)[0]
    evs = list(plain[0x10:0x16])
    return dict(species=sp, item=item, exp=exp, friend=plain[0x0C], level=party[4], hp=struct.unpack_from('<H', party, 6)[0], ok=ok, evs=evs)

def edit(e, slot, exp=None, friend=None, level=None, species=None, evs=None):
    a, raw, (pid, plain, party, ok) = mon(e, slot)
    if exp is not None: struct.pack_into('<I', plain, 8, exp)
    if friend is not None: plain[0x0C] = friend
    if level is not None: party[4] = level
    if species is not None: struct.pack_into('<H', plain, 0, species)
    if evs is not None: plain[0x10:0x16] = bytes(evs)
    wr(e, a, encode(pid, plain, party, raw))
