	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_a31c

func_a31c:
	bclr	#0x1,@IRR1:8                       ; a31c: 7ff67210
	rte                                     ; a320: 5670
