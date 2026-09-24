	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_1f1c

func_1f1c:
	mov.w	r0,r2                             ; 1f1c: 0d02
	sub.b	r1l,r1l                           ; 1f1e: 1899
	bra	loc_1f36:8                          ; 1f20: 4014
loc_1f22:
	extu.w	r1                               ; 1f22: 1751
	mov.w	r1,r0                             ; 1f24: 0d10
	shll.w	r0                               ; 1f26: 1010
	shll.w	r0                               ; 1f28: 1010
	add.w	r2,r0                             ; 1f2a: 0920
	mov.w	@er0,e0                           ; 1f2c: 6908
	bne	loc_1f34:8                          ; 1f2e: 4604
	mov.b	r1l,r0l                           ; 1f30: 0c98
	bra	loc_1f3c:8                          ; 1f32: 4008
loc_1f34:
	inc	r1l                                 ; 1f34: 0a09
loc_1f36:
	cmp.b	#0x3,r1l                          ; 1f36: a903
	bcs	loc_1f22:8                          ; 1f38: 45e8
	mov.b	#0x3,r0l                          ; 1f3a: f803
loc_1f3c:
	rts                                     ; 1f3c: 5470
