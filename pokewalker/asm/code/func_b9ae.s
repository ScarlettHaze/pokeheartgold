	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_b9ae

func_b9ae:
	mov.l	er3,@-er7                         ; b9ae: 01006df3
	mov.l	er2,@-er7                         ; b9b2: 01006df2
	mov.w	e0,r2                             ; b9b6: 0d82
	mulxu.w	r1,er2                          ; b9b8: 5212
	mov.w	e1,r3                             ; b9ba: 0d93
	mulxu.w	r0,er3                          ; b9bc: 5203
	mulxu.w	r1,er0                          ; b9be: 5210
	add.w	r2,e0                             ; b9c0: 0928
	add.w	r3,e0                             ; b9c2: 0938
	mov.l	@er7+,er2                         ; b9c4: 01006d72
	mov.l	@er7+,er3                         ; b9c8: 01006d73
	rts                                     ; b9cc: 5470
