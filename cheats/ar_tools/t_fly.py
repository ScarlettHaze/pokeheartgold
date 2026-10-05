import sys
from harness import *
import new100
mode = sys.argv[1]
e = get_emu(); e.load('flymenu')
e.set_codes([new100.fly_indoors().text()] if mode == 'code' else [])
e.step(10); e.touch(60, 30, hold=6, wait=150); e.shot('fly_' + mode)
e.step(200); e.shot('fly2_' + mode)
