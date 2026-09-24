	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_49ae

func_49ae:
	mov.w	#D_bd40,r2                        ; 49ae: 7902bd40
	mov.w	r0,e0                             ; 49b2: 0d08
	mov.w	r2,r0                             ; 49b4: 0d20
	mov.w	#0x188,r1                         ; 49b6: 79010188
	jsr	@func_524e:24                       ; 49ba: 5e00524e
	rts                                     ; 49be: 5470
