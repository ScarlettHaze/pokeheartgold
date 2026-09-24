	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_06fa
	.global loc_0700

func_06fa:
	bclr	#0x2,@IRR2:8                       ; 06fa: 7ff77220
	rte                                     ; 06fe: 5670
loc_0700:
	mov.l	@er7+,er6                         ; 0700: 01006d76
	mov.l	@er7+,er5                         ; 0704: 01006d75
	mov.l	@er7+,er4                         ; 0708: 01006d74
	mov.w	@er7+,r3                          ; 070c: 6d73
	mov.l	@er7+,er2                         ; 070e: 01006d72
	rts                                     ; 0712: 5470
