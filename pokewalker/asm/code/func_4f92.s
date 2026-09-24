	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_4f92

func_4f92:
	mov.b	#0x80,r0l                         ; 4f92: f880
	mov.b	r0l,@SSER:16                      ; 4f94: 6a88f0e3
	mov.b	#0x86,r0l                         ; 4f98: f886
	mov.b	r0l,@SSMR:16                      ; 4f9a: 6a88f0e2
	rts                                     ; 4f9e: 5470
