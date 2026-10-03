"""Helpers for building AR codes for HeartGold (Europe) Rev 10 (IPKE AD102382)."""
import os, re, struct, pickle
from capstone import Cs, CS_ARCH_ARM, CS_MODE_THUMB, CS_MODE_ARM
from keystone import Ks, KS_ARCH_ARM, KS_MODE_THUMB, KS_MODE_ARM

D = os.path.dirname(os.path.abspath(__file__))
ROMS = {'eu': os.path.join(D, 'Pokemon - HeartGold Version (Europe).nds'),
        'us': os.path.join(D, 'Pokemon - HeartGold Version (USA).nds')}


def blz_decompress(data):
    """Nintendo bottom-LZ (backwards) decompression used for arm9/overlays."""
    data = bytearray(data)
    enc_len_and_hdr, inc_len = struct.unpack('<II', data[-8:])
    hdr_len = enc_len_and_hdr >> 24
    enc_len = enc_len_and_hdr & 0xFFFFFF
    out_len = len(data) + inc_len
    out = bytearray(out_len)
    out[:len(data)] = data
    src = len(data) - hdr_len
    dst = out_len
    stop = len(data) - enc_len
    while src > stop:
        src -= 1
        flags = data[src]
        for _ in range(8):
            if src <= stop:
                break
            if flags & 0x80:
                src -= 2
                v = data[src] | (data[src + 1] << 8)
                disp = (v & 0xFFF) + 3
                n = (v >> 12) + 3
                for _ in range(n):
                    dst -= 1
                    out[dst] = out[dst + disp]
            else:
                src -= 1
                dst -= 1
                out[dst] = data[src]
            flags = (flags << 1) & 0xFF
    return bytes(out)


class Rom:
    def __init__(self, which):
        self.path = ROMS[which]
        self.f = open(self.path, 'rb').read()
        h = self.f
        a9off, a9entry, a9ram, a9size = struct.unpack_from('<4I', h, 0x20)
        ovtoff, ovtsize = struct.unpack_from('<2I', h, 0x50)
        fatoff, fatsize = struct.unpack_from('<2I', h, 0x48)
        self.fat = [struct.unpack_from('<2I', h, fatoff + i * 8) for i in range(fatsize // 8)]
        raw9 = h[a9off:a9off + a9size]
        # The arm9 may be compressed; module params live at a9ram+0x?; detect via nitrocode footer
        # Find _start_ModuleParams: magic 0xDEC00621 0x2106C0DE
        idx = raw9.find(struct.pack('<II', 0xDEC00621, 0x2106C0DE))
        comp_end = struct.unpack_from('<I', raw9, idx - 0x14 + 0x14 - 0x14 + 0x14 - 4)[0] if False else None
        mp = idx - 0x1C
        autoload_list, autoload_list_end, autoload_start, static_bss_start, static_bss_end, compressed_static_end = \
            struct.unpack_from('<6I', raw9, mp)
        if compressed_static_end:
            n = compressed_static_end - a9ram
            arm9 = blz_decompress(raw9[:n]) + raw9[n:]
        else:
            arm9 = raw9
        self.arm9 = arm9
        self.arm9_ram = a9ram
        self.mp = (autoload_list, autoload_list_end, autoload_start)
        self.raw9 = raw9
        self.a9off = a9off
        self.ovt = []
        for i in range(ovtsize // 32):
            e = struct.unpack_from('<8I', h, ovtoff + i * 32)
            self.ovt.append(e)
        self._ov = {}

    def overlay(self, n):
        if n in self._ov:
            return self._ov[n]
        ovid, ram, size, bss, sinit, einit, fid, flag = self.ovt[n]
        s, e = self.fat[fid]
        raw = self.f[s:e]
        if flag & 0x01000000:
            data = blz_decompress(raw)
        else:
            data = raw
        self._ov[n] = (ram, data)
        return self._ov[n]

    def file_rom_range(self, ov):
        ovid, ram, size, bss, sinit, einit, fid, flag = self.ovt[ov]
        return self.fat[fid]

    def autoloads(self):
        """Return list of (ram, bytes) for ITCM/DTCM autoload blocks."""
        al, ale, ast = self.mp
        res = []
        p = ast - self.arm9_ram
        for a in range(al - self.arm9_ram, ale - self.arm9_ram, 12):
            ram, size, bss = struct.unpack_from('<3I', self.arm9, a)
            res.append((ram, self.arm9[p:p + size]))
            p += size
        return res

    def read(self, addr, n, ov=None):
        if ov is None:
            o = addr - self.arm9_ram
            if 0 <= o < len(self.arm9):
                return self.arm9[o:o + n]
            for ram, d in self.autoloads():
                if ram <= addr < ram + len(d):
                    return d[addr - ram:addr - ram + n]
            raise ValueError('addr %x not in arm9' % addr)
        ram, d = self.overlay(ov)
        return d[addr - ram:addr - ram + n]

    def u16(self, addr, ov=None):
        return struct.unpack('<H', self.read(addr, 2, ov))[0]

    def u32(self, addr, ov=None):
        return struct.unpack('<I', self.read(addr, 4, ov))[0]


# ---------------- symbols ----------------
SECTION_TO_OV = {}


def load_symbols(which='heartgoldus'):
    cache = os.path.join(D, which + '.syms.pkl')
    if os.path.exists(cache):
        return pickle.load(open(cache, 'rb'))
    syms = {}
    cur = None
    order = []
    for line in open(os.path.join(D, 'pokeheartgold-xmap', which + '.xMAP'), encoding='latin1'):
        if line.startswith('# .') and not line.strip().endswith('.bss'):
            n = line[2:].strip()
            if n == '.OVY_0' or order:
                order.append(n)
    secmap = {n: i for i, n in enumerate(order[:129])}
    for line in open(os.path.join(D, 'pokeheartgold-xmap', which + '.xMAP'), encoding='latin1'):
        if line.startswith('# .'):
            cur = line[2:].strip()
            continue
        m = re.match(r'\s+([0-9A-F]{8}) ([0-9A-F]{8}) (\.\w+)\s+(\S+)\s+\((.*)\)', line)
        if m and cur:
            addr, size, sect, name, obj = m.groups()
            if name.startswith('.') or name.startswith('$'):
                continue
            base = cur[:-4] if cur.endswith('.bss') else cur
            ov = secmap.get(base, None)
            syms.setdefault(name, []).append((int(addr, 16), int(size, 16), cur, ov, obj))
    pickle.dump(syms, open(cache, 'wb'))
    return syms


cs_t = Cs(CS_ARCH_ARM, CS_MODE_THUMB)
cs_a = Cs(CS_ARCH_ARM, CS_MODE_ARM)
ks_t = Ks(KS_ARCH_ARM, KS_MODE_THUMB)
ks_a = Ks(KS_ARCH_ARM, KS_MODE_ARM)


def dis(code, addr, thumb=True):
    cs = cs_t if thumb else cs_a
    out = []
    for i in cs.disasm(code, addr):
        out.append('%08X: %-10s %s %s' % (i.address, i.bytes.hex(), i.mnemonic, i.op_str))
    return '\n'.join(out)


def asm(src, addr, thumb=True):
    ks = ks_t if thumb else ks_a
    enc, _ = ks.asm(src, addr)
    b = bytearray(enc)
    if thumb:
        # keystone pads .align with Thumb-2 NOP (BF00) which ARMv5 cannot run: use mov r8,r8
        i = 0
        while i + 1 < len(b):
            hw = b[i] | b[i + 1] << 8
            if hw == 0xBF00:
                b[i:i + 2] = b'\xc0\x46'
            if (hw >> 11) in (0x1D, 0x1E, 0x1F):
                hw2 = b[i + 2] | b[i + 3] << 8
                ok = (hw >> 11) == 0x1E and (hw2 >> 11) in (0x1F, 0x1D)
                if not ok and '.word' not in src:
                    raise ValueError('non-ARMv5 thumb encoding at +%x: %04x %04x' % (i, hw, hw2))
                i += 4
                continue
            i += 2
    return bytes(b)


_rom = None
_syms = None


def R():
    global _rom
    if _rom is None:
        _rom = Rom('eu')
    return _rom


def S():
    global _syms
    if _syms is None:
        _syms = load_symbols()
    return _syms


def sym(name, ov='any'):
    v = S()[name]
    if ov != 'any':
        v = [x for x in v if x[3] == ov]
    assert len(v) == 1, (name, v)
    return v[0]


_byaddr = None


def where(addr, ov=None):
    """Return symbol containing addr (in given overlay or main)."""
    global _byaddr
    if _byaddr is None:
        _byaddr = []
        for n, lst in S().items():
            for a, sz, sec, o, obj in lst:
                _byaddr.append((a, sz, o, n))
    best = None
    for a, sz, o, n in _byaddr:
        if o == ov and a <= addr < a + max(sz, 1):
            best = (n, addr - a)
    return best


def regions():
    r = R()
    yield None, r.arm9_ram, r.arm9
    for ram, d in r.autoloads():
        yield 'itcm' if ram < 0x2000000 else 'dtcm', ram, d
    for n in range(len(r.ovt)):
        ram, d = r.overlay(n)
        yield n, ram, d


def find_bl(target):
    """Find all Thumb BL / BLX calls to target. Returns list of (ov, addr)."""
    res = []
    for ov, ram, d in regions():
        for i in range(0, len(d) - 3, 2):
            h1 = d[i] | d[i + 1] << 8
            h2 = d[i + 2] | d[i + 3] << 8
            if (h1 & 0xF800) == 0xF000 and (h2 & 0xE800) == 0xE800:
                off = ((h1 & 0x7FF) << 12) | ((h2 & 0x7FF) << 1)
                if off & 0x400000:
                    off -= 0x800000
                pc = ram + i + 4
                dest = pc + off
                if (h2 & 0xF800) == 0xE800:  # BLX -> ARM, align
                    dest &= ~3
                if dest == (target & ~1):
                    res.append((ov, ram + i))
    return res


def bytes_at(addr, n, ov=None):
    return R().read(addr, n, ov)


def D_(addr, n, ov=None, thumb=True):
    print(dis(bytes_at(addr, n, ov), addr, thumb))


def fn(name, ov='any', thumb=True, extra=0):
    a, sz, sec, o, obj = sym(name, ov)
    o2 = o if isinstance(o, int) else None
    print('%s @ %08X size %X ov %s (%s)' % (name, a, sz, o, obj))
    print(dis(bytes_at(a & ~1, sz + extra, o2), a & ~1, thumb))


# ---------------- AR code generation ----------------
class Cheat:
    """Builds an AR code from ROM patches. Overlay patches are guarded by a
    32-bit equality check on original code so they only apply when loaded."""

    def __init__(self):
        self.lines = []
        self.patched = {}  # (ov, addr) -> bytes (for simulation)

    def raw(self, a, b):
        self.lines.append('%08X %08X' % (a, b))

    def patch(self, ov, addr, new, check_words=None):
        """Patch bytes at addr in overlay ov (None=arm9 static).
        check_words: list of aligned addresses to verify (default: first aligned word overlapping)."""
        r = R()
        orig = r.read(addr, len(new), ov)
        assert len(orig) == len(new)
        if ov is not None:
            if check_words is None:
                check_words = [addr & ~3]
            for cw in check_words:
                self.raw(0x50000000 | (cw & 0x0FFFFFFF), r.u32(cw, ov))
        i = 0
        while i < len(new):
            a = addr + i
            if a % 4 == 0 and len(new) - i >= 4:
                self.raw(a & 0x0FFFFFFF, struct.unpack_from('<I', new, i)[0])
                i += 4
            elif a % 2 == 0 and len(new) - i >= 2:
                self.raw(0x10000000 | (a & 0x0FFFFFFF), struct.unpack_from('<H', new, i)[0])
                i += 2
            else:
                self.raw(0x20000000 | (a & 0x0FFFFFFF), new[i])
                i += 1
        if ov is not None:
            for _ in check_words:
                self.raw(0xD0000000, 0)
        self.patched[(ov, addr)] = new

    def text(self):
        lines = list(self.lines)
        # Collapse trailing D0s into a single D2 terminator
        while lines and lines[-1] == 'D0000000 00000000':
            lines.pop()
        lines.append('D2000000 00000000')
        return ' '.join(lines)


def patched_image(ov, patches):
    """Return (ram, bytearray) for region with patches applied [(addr, bytes)]."""
    r = R()
    if ov is None:
        ram, d = r.arm9_ram, bytearray(r.arm9)
    else:
        ram, d = r.overlay(ov)
        d = bytearray(d)
    for a, b in patches:
        d[a - ram:a - ram + len(b)] = b
    return ram, d


NOP = bytes.fromhex('c046')
MOV_R0_1_NOP = bytes.fromhex('0120c046')
MOV_R0_0_NOP = bytes.fromhex('0020c046')


# ---------------- ITCM code cave ----------------
ITCM_BASE = 0x01FFC000
ITCM_END = 0x02000000
_itcm_next = [ITCM_BASE]
ITCM_ALLOC = {}


def itcm_alloc(name, size):
    if name in ITCM_ALLOC:
        return ITCM_ALLOC[name]
    a = _itcm_next[0]
    ITCM_ALLOC[name] = a
    _itcm_next[0] = (a + size + 0x1F) & ~0x1F
    assert _itcm_next[0] <= ITCM_END
    return a


def _cheat_ecode(self, addr, data):
    data = bytes(data)
    n = len(data)
    pad = (-n) % 8
    data = data + b'\0' * pad
    self.raw(0xE0000000 | (addr & 0x0FFFFFFF), n)
    for i in range(0, len(data), 4):
        self.lines.append('%08X' % struct.unpack_from('<I', data, i)[0])
    self.itcm = getattr(self, 'itcm', {})
    self.itcm[addr] = bytes(data[:n])


def _cheat_text(self):
    # E-code data words are single tokens; regroup into pairs
    toks = []
    for l in self.lines:
        toks += l.split()
    while len(toks) >= 2 and toks[-2:] == ['D0000000', '00000000']:
        toks = toks[:-2]
    toks += ['D2000000', '00000000']
    assert len(toks) % 2 == 0
    return ' '.join(toks)


Cheat.ecode = _cheat_ecode
Cheat.text = _cheat_text


def hook(c, name, src, size_hint=0x100):
    """Assemble thumb src at a fresh ITCM slot and add E code. Returns address."""
    a = itcm_alloc(name, size_hint)
    code = asm(src, a)
    assert len(code) <= size_hint, (name, len(code))
    c.ecode(a, code)
    return a, code


# ---------------- emulation harness ----------------
from unicorn import Uc, UC_ARCH_ARM, UC_MODE_ARM, UC_MODE_THUMB, UcError
from unicorn.arm_const import *

REGS = [UC_ARM_REG_R0, UC_ARM_REG_R1, UC_ARM_REG_R2, UC_ARM_REG_R3, UC_ARM_REG_R4, UC_ARM_REG_R5,
        UC_ARM_REG_R6, UC_ARM_REG_R7, UC_ARM_REG_R8, UC_ARM_REG_R9, UC_ARM_REG_R10, UC_ARM_REG_R11, UC_ARM_REG_R12]


class Emu:
    def __init__(self, ovs=(), cheats=()):
        u = Uc(UC_ARCH_ARM, UC_MODE_ARM)
        u.mem_map(0x01FF8000, 0x8000)
        u.mem_map(0x02000000, 0x400000)
        u.mem_map(0x027E0000, 0x20000)
        u.mem_map(0x0, 0x1000)  # catch null derefs region readable
        r = R()
        u.mem_write(0x02000000, r.arm9)
        for ram, d in r.autoloads():
            u.mem_write(ram, d)
        for ov in ovs:
            ram, d = r.overlay(ov)
            u.mem_write(ram, d)
        self.u = u
        for c in cheats:
            self.apply(c)
        self.sp = 0x023F0000
        self.heap = 0x02300000

    def apply(self, c):
        for (ov, addr), b in c.patched.items():
            self.u.mem_write(addr, b)
        for addr, b in getattr(c, 'itcm', {}).items():
            self.u.mem_write(addr, b)

    def alloc(self, data):
        a = self.heap
        self.u.mem_write(a, bytes(data))
        self.heap = (a + len(data) + 0xF) & ~0xF
        return a

    def stub(self, addr, ret=None, code=None):
        """Replace function at addr (thumb) with 'movs r0,#ret; bx lr' or given thumb code."""
        if code is None:
            code = asm('ldr r0, v; bx lr; .align 2; v: .word %d' % (ret & 0xFFFFFFFF), addr & ~1)
        self.u.mem_write(addr & ~1, code)

    def call(self, addr, args=(), thumb=True, maxi=2000000, regs=None):
        u = self.u
        sentinel = 0x02000F00
        u.mem_write(sentinel, b'\xfe\xe7\xfe\xe7')
        sp = self.sp
        stack_args = list(args[4:])
        sp -= 4 * len(stack_args)
        for i, v in enumerate(stack_args):
            u.mem_write(sp + 4 * i, struct.pack('<I', v & 0xFFFFFFFF))
        for i, v in enumerate(args[:4]):
            u.reg_write(REGS[i], v & 0xFFFFFFFF)
        if regs:
            for k, v in regs.items():
                u.reg_write(REGS[k], v & 0xFFFFFFFF)
        u.reg_write(UC_ARM_REG_SP, sp)
        u.reg_write(UC_ARM_REG_LR, sentinel | 1)
        start = addr | 1 if thumb else addr
        u.emu_start(start, sentinel, count=maxi)
        return u.reg_read(UC_ARM_REG_R0)

    def r32(self, a):
        return struct.unpack('<I', self.u.mem_read(a, 4))[0]

    def r16(self, a):
        return struct.unpack('<H', self.u.mem_read(a, 2))[0]

    def r8(self, a):
        return self.u.mem_read(a, 1)[0]

    def w32(self, a, v):
        self.u.mem_write(a, struct.pack('<I', v & 0xFFFFFFFF))

    def w16(self, a, v):
        self.u.mem_write(a, struct.pack('<H', v & 0xFFFF))

    def w8(self, a, v):
        self.u.mem_write(a, bytes([v & 0xFF]))
