	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_ad6e

func_ad6e:
	mov.b	#0x3,r0l                          ; ad6e: f803
	bra	loc_ad7c:8                          ; ad70: 400a
