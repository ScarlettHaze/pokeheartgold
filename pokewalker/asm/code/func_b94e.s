	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_b94e

func_b94e:
	mov.l	er2,@-er7                         ; b94e: 01006df2
	mov.w	e1,e1                             ; b952: 0d99
	bne	loc_b966:8                          ; b954: 4610
	mov.w	e0,r2                             ; b956: 0d82
	extu.l	er2                              ; b958: 1772
	divxu.w	r1,er2                          ; b95a: 5312
	mov.w	e2,e0                             ; b95c: 0da8
	divxu.w	r1,er0                          ; b95e: 5310
	mov.w	e0,r1                             ; b960: 0d81
	mov.w	r2,e0                             ; b962: 0d28
	bra	loc_b984:8                          ; b964: 401e
loc_b966:
	mov.l	er1,er2                           ; b966: 0f92
	mov.w	e0,r1                             ; b968: 0d81
	extu.l	er1                              ; b96a: 1771
	mov.w	#0x10,e0                          ; b96c: 79080010
loc_b970:
	rotxl.w	r0                              ; b970: 1210
	rotxl.l	er1                             ; b972: 1231
	sub.l	er2,er1                           ; b974: 1aa1
	bcc	loc_b97a:8                          ; b976: 4402
	add.l	er2,er1                           ; b978: 0aa1
loc_b97a:
	dec.w	#1,e0                             ; b97a: 1b58
	bne	loc_b970:8                          ; b97c: 46f2
	rotxl.w	r0                              ; b97e: 1210
	not.w	r0                                ; b980: 1710
	extu.l	er0                              ; b982: 1770
loc_b984:
	mov.l	@er7+,er2                         ; b984: 01006d72
	rts                                     ; b988: 5470
