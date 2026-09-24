	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_499c

func_499c:
	mov.w	#D_bd40,r3                        ; 499c: 7903bd40
	mov.w	r0,e0                             ; 49a0: 0d08
	mov.w	r3,r0                             ; 49a2: 0d30
	mov.w	#0x188,r1                         ; 49a4: 79010188
	jsr	@func_5384:24                       ; 49a8: 5e005384
	rts                                     ; 49ac: 5470
