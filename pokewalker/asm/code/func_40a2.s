	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_40a2

func_40a2:
	add.w	#0x258,r5                         ; 40a2: 79150258
	bra	loc_40ac:8                          ; 40a6: 4004
