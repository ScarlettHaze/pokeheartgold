	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_25c8

func_25c8:
	mov.l	er0,@0xf7c0:16                    ; 25c8: 01006b80f7c0
	rts                                     ; 25ce: 5470
