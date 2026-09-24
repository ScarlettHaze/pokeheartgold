	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_37c6

func_37c6:
	mov.w	r0,@0xf7c4:16                     ; 37c6: 6b80f7c4
	sub.w	r0,r0                             ; 37ca: 1900
	mov.w	r0,@0xf7c8:16                     ; 37cc: 6b80f7c8
	mov.w	r0,@0xf7ca:16                     ; 37d0: 6b80f7ca
	rts                                     ; 37d4: 5470
