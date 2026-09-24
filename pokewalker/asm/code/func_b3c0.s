	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_b3c0

func_b3c0:
	sub.b	r0l,r0l                           ; b3c0: 1888
	mov.b	r0l,@0xf7cf:16                    ; b3c2: 6a88f7cf
	mov.b	r0l,@0xf7ce:16                    ; b3c6: 6a88f7ce
	rts                                     ; b3ca: 5470
