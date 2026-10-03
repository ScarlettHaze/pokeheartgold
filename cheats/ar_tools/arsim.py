"""Minimal Action Replay DS interpreter for verification."""
import struct

class Mem:
    def __init__(self):
        self.m = {}  # addr -> byte
    def load(self, base, data):
        for i, b in enumerate(data):
            self.m[base + i] = b
    def r8(self, a): return self.m.get(a, 0)
    def r16(self, a): return self.r8(a) | self.r8(a + 1) << 8
    def r32(self, a): return self.r16(a) | self.r16(a + 2) << 16
    def w8(self, a, v): self.m[a] = v & 0xFF; self.writes.add(a)
    def w16(self, a, v): self.w8(a, v); self.w8(a + 1, v >> 8)
    def w32(self, a, v): self.w16(a, v); self.w16(a + 2, v >> 16)

def run(code, mem, keys=0x3FF):
    toks = code.split()
    words = [int(t, 16) for t in toks]
    mem.writes = set()
    offset = 0; data = 0
    stack = []  # condition results
    exec_ = True
    i = 0
    n = len(words)
    while i < n:
        a, b = words[i], words[i + 1]; i += 2
        t = a >> 28
        if t == 0xE:
            ln = b
            payload = []
            nw = (ln + 7) // 8 * 2
            for k in range(nw):
                payload.append(words[i + k])
            i += nw
            if exec_:
                bs = b''.join(struct.pack('<I', w) for w in payload)[:ln]
                base = (a & 0x0FFFFFFF) + offset
                for k, v in enumerate(bs):
                    mem.w8(base + k, v)
            continue
        if t == 0xD:
            sub = (a >> 24) & 0xF
            if sub == 0:
                if stack: exec_ = stack.pop()
            elif sub == 2:
                stack = []; exec_ = True; offset = 0; data = 0
            elif sub == 3:
                if exec_: offset = b
            elif sub == 0xC:
                if exec_: offset += b
            else:
                raise NotImplementedError(hex(a))
            continue
        if t in (3, 4, 5, 6, 7, 8, 9, 0xA):
            addr = a & 0x0FFFFFFF
            if addr == 0: addr = offset
            if t == 5: cond = mem.r32(addr) == b
            elif t == 6: cond = mem.r32(addr) != b
            elif t == 9:
                if a == 0x94000130: cond = ((~(b >> 16)) & keys) == (b & 0xFFFF)  # key: pressed bits are 0
                else: cond = ((~(b >> 16)) & mem.r16(addr)) == (b & 0xFFFF)
            elif t == 0xA: cond = ((~(b >> 16)) & mem.r16(addr)) != (b & 0xFFFF)
            else: raise NotImplementedError(hex(a))
            stack.append(exec_)
            exec_ = exec_ and cond
            continue
        if t == 0xB:
            if exec_: offset = mem.r32((a & 0x0FFFFFFF) + offset)
            continue
        if not exec_:
            continue
        addr = (a & 0x0FFFFFFF) + offset
        if t == 0: mem.w32(addr, b)
        elif t == 1: mem.w16(addr, b)
        elif t == 2: mem.w8(addr, b)
        else: raise NotImplementedError(hex(a))
    return mem
