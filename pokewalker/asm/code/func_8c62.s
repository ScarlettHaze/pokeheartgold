	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_8c62

func_8c62:
	mov.w	r0,e1                             ; 8c62: 0d09
	mov.b	@0xf7ce:16,r1l                    ; 8c64: 6a09f7ce
	beq	loc_8c90:8                          ; 8c68: 4726
	mov.b	r1l,r0l                           ; 8c6a: 0c98
	dec.b	r0l                               ; 8c6c: 1a08
	mov.b	r0l,@0xf7ce:16                    ; 8c6e: 6a88f7ce
	sub.b	r1l,r1l                           ; 8c72: 1899
	bra	loc_8c9c:8                          ; 8c74: 4026
loc_8c76:
	mov.b	@0xf7ce:16,r0l                    ; 8c76: 6a08f7ce
	mov.w	#0x1,e0                           ; 8c7a: 79080001
loc_8c7e:
	dec.b	r0l                               ; 8c7e: 1a08
	bmi	loc_8c86:8                          ; 8c80: 4b04
	shll.w	e0                               ; 8c82: 1018
	bra	loc_8c7e:8                          ; 8c84: 40f8
loc_8c86:
	and.w	e1,e0                             ; 8c86: 6698
	bne	loc_8ca0:8                          ; 8c88: 4616
	mov.b	@0xf7ce:16,r0l                    ; 8c8a: 6a08f7ce
	bne	loc_8c94:8                          ; 8c8e: 4604
loc_8c90:
	mov.b	#0x1,r0l                          ; 8c90: f801
	bra	loc_8ca2:8                          ; 8c92: 400e
loc_8c94:
	dec.b	r0l                               ; 8c94: 1a08
	mov.b	r0l,@0xf7ce:16                    ; 8c96: 6a88f7ce
	inc	r1l                                 ; 8c9a: 0a09
loc_8c9c:
	cmp.b	#0xa,r1l                          ; 8c9c: a90a
	bcs	loc_8c76:8                          ; 8c9e: 45d6
loc_8ca0:
	sub.b	r0l,r0l                           ; 8ca0: 1888
loc_8ca2:
	rts                                     ; 8ca2: 5470
