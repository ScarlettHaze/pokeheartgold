	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_6c88

func_6c88:
	sub.b	r0l,r0l                           ; 6c88: 1888
	mov.b	r0l,@0xf7ce:16                    ; 6c8a: 6a88f7ce
	mov.b	r0l,@0xf7cf:16                    ; 6c8e: 6a88f7cf
	rts                                     ; 6c92: 5470
