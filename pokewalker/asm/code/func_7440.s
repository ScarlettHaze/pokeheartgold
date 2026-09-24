	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_7440

func_7440:
	jsr	@func_6574:24                       ; 7440: 5e006574
	bra	loc_74b8:8                          ; 7444: 4072
