	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_a322

func_a322:
	bclr	#0x2,@IRR1:8                       ; a322: 7ff67220
	rte                                     ; a326: 5670
