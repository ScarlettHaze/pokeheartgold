	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_985e

func_985e:
	mov.b	#0x8,r0l                          ; 985e: f808
	jsr	@func_69b8:24                       ; 9860: 5e0069b8
	jsr	@func_b3c0:24                       ; 9864: 5e00b3c0
	bra	loc_98ba:8                          ; 9868: 4050
