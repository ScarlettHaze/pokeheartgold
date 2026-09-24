	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_3546

func_3546:
	mov.w	#0xf,r1                           ; 3546: 7901000f
	mov.w	#0x2730,r0                        ; 354a: 79002730
	jmp	@loc_364e:24                        ; 354e: 5a00364e
