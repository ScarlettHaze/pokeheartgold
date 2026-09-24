	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_3a68

func_3a68:
	mov.b	#0x1,r0l                          ; 3a68: f801
	mov.b	r0l,@0xf7cf:16                    ; 3a6a: 6a88f7cf
	rts                                     ; 3a6e: 5470
