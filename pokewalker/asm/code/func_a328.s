	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_a328

func_a328:
	bclr	#0x6,@IRR2:8                       ; a328: 7ff77260
	rte                                     ; a32c: 5670
