	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_974e

func_974e:
	sub.b	r0l,r0l                           ; 974e: 1888
	mov.b	r0l,@0xf7ce:16                    ; 9750: 6a88f7ce
	rts                                     ; 9754: 5470
