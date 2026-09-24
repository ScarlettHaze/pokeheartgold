	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_245e

func_245e:
	mov.b	#0x9e,r0l                         ; 245e: f89e
	mov.b	r0l,@TCSRWD1:8                    ; 2460: 38b1
	mov.b	#0xa2,r0l                         ; 2462: f8a2
	mov.b	r0l,@TCSRWD1:8                    ; 2464: 38b1
	mov.b	#0x8e,r0l                         ; 2466: f88e
	mov.b	r0l,@TCSRWD1:8                    ; 2468: 38b1
	rts                                     ; 246a: 5470
