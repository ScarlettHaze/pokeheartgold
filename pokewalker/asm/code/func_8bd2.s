	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_8bd2
	.global loc_8c0e

func_8bd2:
	mov.w	r0,e1                             ; 8bd2: 0d09
	mov.b	@0xf7ce:16,r1l                    ; 8bd4: 6a09f7ce
	cmp.b	#0x9,r1l                          ; 8bd8: a909
	beq	loc_8bfe:8                          ; 8bda: 4722
	inc	r1l                                 ; 8bdc: 0a09
	sub.b	r1h,r1h                           ; 8bde: 1811
	bra	loc_8c06:8                          ; 8be0: 4024
loc_8be2:
	mov.b	r1l,r0l                           ; 8be2: 0c98
	mov.w	#0x1,e0                           ; 8be4: 79080001
loc_8be8:
	dec.b	r0l                               ; 8be8: 1a08
	bmi	loc_8bf0:8                          ; 8bea: 4b04
	shll.w	e0                               ; 8bec: 1018
	bra	loc_8be8:8                          ; 8bee: 40f8
loc_8bf0:
	and.w	e1,e0                             ; 8bf0: 6698
	beq	loc_8bfa:8                          ; 8bf2: 4706
	mov.b	r1l,@0xf7ce:16                    ; 8bf4: 6a89f7ce
	bra	loc_8c0a:8                          ; 8bf8: 4010
loc_8bfa:
	cmp.b	#0x9,r1l                          ; 8bfa: a909
	bne	loc_8c02:8                          ; 8bfc: 4604
loc_8bfe:
	mov.b	#0x1,r0l                          ; 8bfe: f801
	bra	loc_8c0c:8                          ; 8c00: 400a
loc_8c02:
	inc	r1l                                 ; 8c02: 0a09
	inc	r1h                                 ; 8c04: 0a01
loc_8c06:
	cmp.b	#0xa,r1h                          ; 8c06: a10a
	bcs	loc_8be2:8                          ; 8c08: 45d8
loc_8c0a:
	sub.b	r0l,r0l                           ; 8c0a: 1888
loc_8c0c:
	rts                                     ; 8c0c: 5470
loc_8c0e:
	mov.w	e6,@-er7                          ; 8c0e: 6dfe
	mov.w	r5,@-er7                          ; 8c10: 6df5
	mov.w	#0xa,e6                           ; 8c12: 790e000a
	mov.w	r0,r5                             ; 8c16: 0d05
	mov.b	@0xf7ce:16,r1l                    ; 8c18: 6a09f7ce
	extu.w	r1                               ; 8c1c: 1751
	inc.w	#1,r1                             ; 8c1e: 0b51
	exts.l	er1                              ; 8c20: 17f1
	divxs.w	e6,er1                          ; 8c22: 01d053e1
	mov.w	e1,r1                             ; 8c26: 0d91
	mov.b	r1l,@0xf7ce:16                    ; 8c28: 6a89f7ce
	sub.b	r1l,r1l                           ; 8c2c: 1899
loc_8c2e:
	mov.b	@0xf7ce:16,r0l                    ; 8c2e: 6a08f7ce
	mov.w	#0x1,e0                           ; 8c32: 79080001
loc_8c36:
	dec.b	r0l                               ; 8c36: 1a08
	bmi	loc_8c3e:8                          ; 8c38: 4b04
	shll.w	e0                               ; 8c3a: 1018
	bra	loc_8c36:8                          ; 8c3c: 40f8
loc_8c3e:
	and.w	r5,e0                             ; 8c3e: 6658
	bne	loc_8c5c:8                          ; 8c40: 461a
	mov.b	@0xf7ce:16,r0l                    ; 8c42: 6a08f7ce
	extu.w	r0                               ; 8c46: 1750
	inc.w	#1,r0                             ; 8c48: 0b50
	exts.l	er0                              ; 8c4a: 17f0
	divxs.w	e6,er0                          ; 8c4c: 01d053e0
	mov.w	e0,r0                             ; 8c50: 0d80
	mov.b	r0l,@0xf7ce:16                    ; 8c52: 6a88f7ce
	inc	r1l                                 ; 8c56: 0a09
	cmp.b	#0xa,r1l                          ; 8c58: a90a
	bcs	loc_8c2e:8                          ; 8c5a: 45d2
loc_8c5c:
	mov.w	@er7+,r5                          ; 8c5c: 6d75
	mov.w	@er7+,e6                          ; 8c5e: 6d7e
	rts                                     ; 8c60: 5470
