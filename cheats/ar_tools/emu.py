"""Headless DeSmuME driver with a per-frame Action Replay engine."""
import os, struct
os.environ.setdefault('SDL_VIDEODRIVER', 'dummy')
os.environ.setdefault('SDL_AUDIODRIVER', 'dummy')
from desmume.emulator import DeSmuME
from desmume.controls import Keys, keymask

D = os.path.dirname(os.path.abspath(__file__))
ROM = os.path.join(D, 'Pokemon - HeartGold Version (Europe).nds')
ST = os.path.join(D, 'states')
os.makedirs(ST, exist_ok=True)
os.makedirs(os.path.join(D, 'shots'), exist_ok=True)

K = {'A': Keys.KEY_A, 'B': Keys.KEY_B, 'SELECT': Keys.KEY_SELECT, 'START': Keys.KEY_START,
     'RIGHT': Keys.KEY_RIGHT, 'LEFT': Keys.KEY_LEFT, 'UP': Keys.KEY_UP, 'DOWN': Keys.KEY_DOWN,
     'R': Keys.KEY_R, 'L': Keys.KEY_L, 'X': Keys.KEY_X, 'Y': Keys.KEY_Y}
# AR key register bits (0=pressed): A0 B1 SEL2 START3 R4 L5 U6 D7 R8 L9 ; X/Y in 0x027FFFA8
ARBIT = {'A': 0, 'B': 1, 'SELECT': 2, 'START': 3, 'RIGHT': 4, 'LEFT': 5, 'UP': 6, 'DOWN': 7, 'R': 8, 'L': 9}


class ARCode:
    def __init__(self, text):
        self.w = [int(t, 16) for t in text.split()]

    def run(self, mem, held):
        w = self.w
        i = 0; n = len(w)
        offset = 0; stack = []; ex = True
        keyreg = 0x3FF
        for k in held:
            if k in ARBIT:
                keyreg &= ~(1 << ARBIT[k])
        r32 = lambda a: mem.read(a, a, 4, False)
        r16 = lambda a: mem.read(a, a, 2, False)
        while i < n:
            a, b = w[i], w[i + 1]; i += 2
            t = a >> 28
            if t == 0xE:
                ln = b; nw = (ln + 7) // 8 * 2
                if ex:
                    bs = b''.join(struct.pack('<I', x) for x in w[i:i + nw])[:ln]
                    base = (a & 0x0FFFFFFF) + offset
                    for k in range(0, ln - ln % 4, 4):
                        mem.write_long(base + k, struct.unpack_from('<I', bs, k)[0])
                    for k in range(ln - ln % 4, ln):
                        mem.write_byte(base + k, bs[k])
                i += nw
                continue
            if t == 0xD:
                s = (a >> 24) & 0xF
                if s == 0:
                    if stack: ex = stack.pop()
                elif s == 2:
                    stack = []; ex = True; offset = 0
                elif s == 3:
                    if ex: offset = b
                elif s == 0xC:
                    if ex: offset += b
                else:
                    raise NotImplementedError(hex(a))
                continue
            if t in (5, 6, 9, 0xA):
                addr = a & 0x0FFFFFFF
                if addr == 0: addr = offset
                if t == 5: c = r32(addr) == b
                elif t == 6: c = r32(addr) != b
                elif t == 9:
                    v = keyreg if a == 0x94000130 else r16(addr)
                    c = ((~(b >> 16)) & v & 0xFFFF) == (b & 0xFFFF)
                else: c = ((~(b >> 16)) & r16(addr) & 0xFFFF) != (b & 0xFFFF)
                stack.append(ex); ex = ex and c
                continue
            if t == 0xB:
                if ex: offset = r32((a & 0x0FFFFFFF) + offset)
                continue
            if not ex: continue
            addr = (a & 0x0FFFFFFF) + offset
            if t == 0: mem.write_long(addr, b)
            elif t == 1: mem.write_short(addr, b & 0xFFFF)
            elif t == 2: mem.write_byte(addr, b & 0xFF)
            else: raise NotImplementedError(hex(a))


class Emu:
    def __init__(self, codes=()):
        self.e = DeSmuME()
        self.e.open(ROM)
        self.mem = self.e.memory
        self.codes = [ARCode(c) for c in codes]
        self.held = []
        self.frame = 0

    def set_codes(self, codes):
        self.codes = [ARCode(c) for c in codes]

    def step(self, n=1, keys=()):
        for k in keys:
            self.e.input.keypad_add_key(keymask(K[k]))
        for _ in range(n):
            for c in self.codes:
                c.run(self.mem, keys)
            self.e.cycle(with_joystick=False)
            self.frame += 1
        for k in keys:
            self.e.input.keypad_rm_key(keymask(K[k]))

    def press(self, *keys, hold=3, wait=10):
        self.step(hold, keys)
        self.step(wait)

    def touch(self, x, y, hold=4, wait=10):
        self.e.input.touch_set_pos(x, y)
        self.step(hold)
        self.e.input.touch_release()
        self.step(wait)

    def shot(self, name):
        p = os.path.join(D, 'shots', name + '.png')
        self.e.screenshot().save(p)
        return p

    def save(self, name):
        self.e.savestate.save_file(os.path.join(ST, name + '.dst'))

    def load(self, name):
        self.e.savestate.load_file(os.path.join(ST, name + '.dst'))

    def pc(self):
        return self.mem.register_arm9.pc

    def r32(self, a):
        return self.mem.read(a, a, 4, False)

    def r16(self, a):
        return self.mem.read(a, a, 2, False)

    def r8(self, a):
        return self.mem.read(a, a, 1, False)

    def frame_hash(self):
        return hash(bytes(self.e.display_buffer_as_rgbx()))
