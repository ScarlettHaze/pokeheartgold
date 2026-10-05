"""Boot guard for every code: nothing runs until the game has finished starting up.

At power-on the ARM9 binary is still compressed (0x020041BA-0x020BA314, unpacking backwards to 0x02111EF8),
and 0x02111860-0x02111EF8 holds the autoload data that start-up copies into ITCM/DTCM before .bss is
cleared. Emulator cheat engines run codes every frame from power-on, so an early write corrupts start-up.
The guard requires:
  1. the last-unpacked ARM9 word to hold its unpacked value  (5 020041BC F0003094)
  2. the SaveData pointer at 0x0211186C to be a real heap address 0x02200000-0x023FFFFF
     (before .bss is cleared that word holds autoload data 0xE51C1008).
"""
import re
GUARD = ['520041BC F0003094', '4211186C 021FFFFF', '3211186C 02400000']


def depth_ok(words):
    """Return False if any write could run with fewer than the 3 guard conditions active."""
    i, depth = 0, 0
    while i < len(words):
        a, b = words[i], words[i + 1]; i += 2; t = a >> 28
        if t in (3, 4, 5, 6, 7, 8, 9, 0xA):
            depth += 1
        elif t == 0xD:
            s = (a >> 24) & 0xF
            if s == 0: depth -= 1
            elif s == 2:
                if i < len(words): return False      # D2 before the end would drop the guard
                depth = 0
            elif s == 1: depth -= 1                  # D1 end-repeat, unused here
        elif t == 0xE:
            if depth < 3: return False
            i += (b + 7) // 8 * 2
        elif t in (0, 1, 2, 0xB, 0xC, 0xF) or (t == 0xD and ((a >> 24) & 0xF) in (3, 4, 5, 6, 7, 8, 9, 0xA, 0xB, 0xC)):
            if depth < 3: return False
        if depth < 3 and t == 0xD and ((a >> 24) & 0xF) == 0 and i < len(words) and (words[i] >> 28) != 0xD:
            return False
    return True


def guard(text):
    toks = text.split()
    if ' '.join(toks[:6]) == ' '.join(' '.join(GUARD).split()):
        return text
    out = ' '.join(GUARD) + ' ' + ' '.join(toks)
    w = [int(t, 16) for t in out.split()]
    assert depth_ok(w), text[:80]
    return out


def guard_xml(path_in, path_out):
    t = open(path_in).read()
    t = re.sub(r'<codes>([^<]*)</codes>', lambda m: '<codes>%s</codes>' % guard(m.group(1)), t)
    open(path_out, 'w').write(t)
