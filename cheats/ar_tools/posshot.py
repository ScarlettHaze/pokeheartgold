import sys, walk as W
from emu import Emu
e = Emu(); e.load(sys.argv[1]); e.step(2)
print('POS', W.pos(e)); e.shot('pos')
