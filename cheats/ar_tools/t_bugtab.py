from harness import *
import walk
e = get_emu(); e.load('park0'); e.set_codes(['021D1064 00000002 021D1080 00000002'])
walk.walk(e, 70, 42)
got = []
def f(a, s):
    if not got: got.append(e.mem.register_arm9.r0)
e.mem.register_exec(0x02259B50, f)
for i in range(400):
    e.step(16, ['RIGHT' if i % 2 else 'LEFT']); e.step(4)
    if got: break
b = got[0]; print('bugContest', hex(b), 'balls', e.r16(b + 0x18))
for i in range(10):
    a = b + 0x20 + 8 * i
    print(i, e.r16(a), e.r8(a + 2), e.r8(a + 3), 'rate', e.r8(a + 4), 'score', e.r8(a + 5))
