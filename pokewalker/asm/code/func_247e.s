	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_247e

func_247e:
	mov.w	#0xf8f0,r0                        ; 247e: 7900f8f0
	mov.w	r0,@0xf7be:16                     ; 2482: 6b80f7be
	rts                                     ; 2486: 5470
