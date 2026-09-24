	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_409a

func_409a:
	add.w	#0x238,r5                         ; 409a: 79150238
	add.w	e6,r5                             ; 409e: 09e5
	bra	loc_40ac:8                          ; 40a0: 400a
