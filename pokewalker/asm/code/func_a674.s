	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_a674

func_a674:
	mov.w	r0,@-er7                          ; a674: 6df0
	mov.w	#0xf067,r0                        ; a676: 7900f067
	bclr	#0x1,@er0                          ; a67a: 7d007210
	mov.w	@er7+,r0                          ; a67e: 6d70
	rte                                     ; a680: 5670
