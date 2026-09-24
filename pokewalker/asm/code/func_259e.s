	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_259e

func_259e:
	mov.b	#0x5e,r0l                         ; 259e: f85e
	mov.b	r0l,@TCSRWD1:8                    ; 25a0: 38b1
	sub.b	r0l,r0l                           ; 25a2: 1888
	mov.b	r0l,@TCWD:8                       ; 25a4: 38b3
	mov.b	#0x9e,r0l                         ; 25a6: f89e
	mov.b	r0l,@TCSRWD1:8                    ; 25a8: 38b1
	rts                                     ; 25aa: 5470
