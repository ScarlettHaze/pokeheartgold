	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_3a4a

func_3a4a:
	mov.l	er1,@-er7                         ; 3a4a: 01006df1
	mov.l	er0,@-er7                         ; 3a4e: 01006df0
	jsr	@func_388c:24                       ; 3a52: 5e00388c
	mov.w	#0xf0f3,r0                        ; 3a56: 7900f0f3
	bclr	#0x0,@er0                          ; 3a5a: 7d007200
	mov.l	@er7+,er0                         ; 3a5e: 01006d70
	mov.l	@er7+,er1                         ; 3a62: 01006d71
	rte                                     ; 3a66: 5670
