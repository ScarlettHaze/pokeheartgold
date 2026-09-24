	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_72d0

func_72d0:
	mov.w	#0x10f,r1                         ; 72d0: 7901010f
	mov.w	#0x130,r0                         ; 72d4: 79000130
	bra	loc_733c:8                          ; 72d8: 4062
