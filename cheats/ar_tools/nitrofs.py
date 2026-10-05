import struct
from hg import ROMS
rom = open(ROMS['eu'], 'rb').read()
fnt_off, fnt_size, fat_off, fat_size = struct.unpack_from('<4I', rom, 0x40)
def dir_entries(did):
    start, first, _ = struct.unpack_from('<IHH', rom, fnt_off + (did & 0xFFF) * 8)
    p = fnt_off + start; fid = first; out = []
    while True:
        b = rom[p]; p += 1
        if b == 0: break
        n = b & 0x7F; name = rom[p:p + n].decode(); p += n
        if b & 0x80:
            sub = struct.unpack_from('<H', rom, p)[0]; p += 2; out.append((name, 'dir', sub))
        else:
            out.append((name, 'file', fid)); fid += 1
    return out
def lookup(path):
    did = 0xF000
    parts = path.split('/')
    for i, part in enumerate(parts):
        for name, kind, v in dir_entries(did):
            if name == part:
                if kind == 'dir': did = v; break
                return v
        else:
            raise KeyError(path)
def file(fid):
    s, e = struct.unpack_from('<2I', rom, fat_off + fid * 8); return rom[s:e]
def narc_members(data):
    assert data[:4] == b'NARC'
    off = 0x10
    btaf_size, n = struct.unpack_from('<IH', data, off + 4)
    entries = [struct.unpack_from('<2I', data, off + 12 + 8 * i) for i in range(n)]
    off += btaf_size
    off += struct.unpack_from('<I', data, off + 4)[0]          # BTNF
    gmif = off + 8
    return [data[gmif + s:gmif + e] for s, e in entries]
