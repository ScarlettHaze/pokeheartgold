	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_1eca

func_1eca:
	mov.w	r0,r2                             ; 1eca: 0d02
	sub.b	r1l,r1l                           ; 1ecc: 1899
	bra	loc_1ee6:8                          ; 1ece: 4016
loc_1ed0:
	extu.w	r1                               ; 1ed0: 1751
	mov.w	r1,r0                             ; 1ed2: 0d10
	mov.w	#0x10,e0                          ; 1ed4: 79080010
	mulxu.w	e0,er0                          ; 1ed8: 5280
	add.w	r2,r0                             ; 1eda: 0920
	mov.w	@er0,e0                           ; 1edc: 6908
	bne	loc_1ee4:8                          ; 1ede: 4604
	mov.b	r1l,r0l                           ; 1ee0: 0c98
	bra	loc_1eec:8                          ; 1ee2: 4008
loc_1ee4:
	inc	r1l                                 ; 1ee4: 0a09
loc_1ee6:
	cmp.b	#0x3,r1l                          ; 1ee6: a903
	bcs	loc_1ed0:8                          ; 1ee8: 45e6
	mov.b	#0x3,r0l                          ; 1eea: f803
loc_1eec:
	rts                                     ; 1eec: 5470
