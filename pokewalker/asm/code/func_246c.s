	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_246c

func_246c:
	mov.b	#0x9e,r0l                         ; 246c: f89e
	mov.b	r0l,@TCSRWD1:8                    ; 246e: 38b1
	mov.b	#0xa6,r0l                         ; 2470: f8a6
	mov.b	r0l,@TCSRWD1:8                    ; 2472: 38b1
	mov.b	#0x8e,r0l                         ; 2474: f88e
	mov.b	r0l,@TCSRWD1:8                    ; 2476: 38b1
	mov.b	#0xf5,r0l                         ; 2478: f8f5
	mov.b	r0l,@TMWD:8                       ; 247a: 38b0
	rts                                     ; 247c: 5470
