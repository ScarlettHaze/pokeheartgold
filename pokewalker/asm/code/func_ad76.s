	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_ad76

func_ad76:
	mov.b	#0x1,r0l                          ; ad76: f801
	bra	loc_ad7c:8                          ; ad78: 4002
