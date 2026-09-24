	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_ad72

func_ad72:
	mov.b	#0x2,r0l                          ; ad72: f802
	bra	loc_ad7c:8                          ; ad74: 4006
