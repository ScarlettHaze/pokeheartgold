	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_7a0a
	.global loc_7a2a

func_7a0a:
	subs	#2,er7                             ; 7a0a: 1b87
	mov.l	er3,@-er7                         ; 7a0c: 01006df3
	mov.l	er4,@-er7                         ; 7a10: 01006df4
	mov.l	er5,@-er7                         ; 7a14: 01006df5
	mov.l	er6,@-er7                         ; 7a18: 01006df6
	mov.w	@(0x12:16,er7),r6                 ; 7a1c: 6f760012
	mov.w	r6,@-er7                          ; 7a20: 6df6
	mov.l	er2,@(0x12:16,er7)                ; 7a22: 01006ff20012
	rts                                     ; 7a28: 5470
loc_7a2a:
	mov.l	@er7+,er6                         ; 7a2a: 01006d76
	mov.l	@er7+,er5                         ; 7a2e: 01006d75
	mov.l	@er7+,er4                         ; 7a32: 01006d74
	mov.l	@er7+,er3                         ; 7a36: 01006d73
	mov.l	@er7+,er2                         ; 7a3a: 01006d72
	rts                                     ; 7a3e: 5470
