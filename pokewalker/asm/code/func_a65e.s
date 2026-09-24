	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_a65e

func_a65e:
	mov.w	r0,@-er7                          ; a65e: 6df0
	mov.w	#0xf7b5,r0                        ; a660: 7900f7b5
	bset	#0x0,@er0                          ; a664: 7d007000
	mov.w	#0xf067,r0                        ; a668: 7900f067
	bclr	#0x0,@er0                          ; a66c: 7d007200
	mov.w	@er7+,r0                          ; a670: 6d70
	rte                                     ; a672: 5670
