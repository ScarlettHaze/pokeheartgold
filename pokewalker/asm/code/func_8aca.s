	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_8aca

func_8aca:
	mov.w	r0,r5                             ; 8aca: 0d05
	jsr	@func_247e:24                       ; 8acc: 5e00247e
	mov.w	#0x30,r0                          ; 8ad0: 79000030
	jsr	@func_2488:24                       ; 8ad4: 5e002488
	mov.w	r0,r3                             ; 8ad8: 0d03
	mov.w	#0x34,r0                          ; 8ada: 79000034
	jsr	@func_2488:24                       ; 8ade: 5e002488
	mov.w	r0,r4                             ; 8ae2: 0d04
	sub.b	r2l,r2l                           ; 8ae4: 18aa
	sub.w	e0,e0                             ; 8ae6: 1988
loc_8ae8:
	extu.w	r2                               ; 8ae8: 1752
	mov.w	r2,r0                             ; 8aea: 0d20
	shll.w	r0                               ; 8aec: 1010
	add.w	r5,r0                             ; 8aee: 0950
	mov.w	e0,@er0                           ; 8af0: 6988
	inc	r2l                                 ; 8af2: 0a0a
	cmp.b	#0x2,r2l                          ; 8af4: aa02
	bcs	loc_8ae8:8                          ; 8af6: 45f0
	mov.b	@0xf7b6:16,r0l                    ; 8af8: 6a08f7b6
	bld	#0x2,r0l                            ; 8afc: 7728
	bcc	loc_8b06:8                          ; 8afe: 4406
	mov.w	@er5,r0                           ; 8b00: 6950
	bset	#0x0,r0l                           ; 8b02: 7008
	mov.w	r0,@er5                           ; 8b04: 69d0
loc_8b06:
	mov.w	#0xce8c,r0                        ; 8b06: 7900ce8c
	mov.w	#0x30,r1                          ; 8b0a: 79010030
	mov.w	r3,e0                             ; 8b0e: 0d38
	jsr	@func_5384:24                       ; 8b10: 5e005384
	mov.w	#0xcebc,r0                        ; 8b14: 7900cebc
	mov.w	#0x34,r1                          ; 8b18: 79010034
	mov.w	r4,e0                             ; 8b1c: 0d48
	jsr	@func_5384:24                       ; 8b1e: 5e005384
	sub.b	r2l,r2l                           ; 8b22: 18aa
loc_8b24:
	extu.w	r2                               ; 8b24: 1752
	mov.w	r2,r0                             ; 8b26: 0d20
	mov.w	#0x10,e0                          ; 8b28: 79080010
	mulxu.w	e0,er0                          ; 8b2c: 5280
	add.w	r3,r0                             ; 8b2e: 0930
	mov.w	@er0,e0                           ; 8b30: 6908
	beq	loc_8b48:8                          ; 8b32: 4714
	mov.w	#0x2,r0                           ; 8b34: 79000002
	mov.b	r2l,r1l                           ; 8b38: 0ca9
loc_8b3a:
	dec.b	r1l                               ; 8b3a: 1a09
	bmi	loc_8b42:8                          ; 8b3c: 4b04
	shll.w	r0                               ; 8b3e: 1010
	bra	loc_8b3a:8                          ; 8b40: 40f8
loc_8b42:
	mov.w	@er5,e0                           ; 8b42: 6958
	or.w	r0,e0                              ; 8b44: 6408
	mov.w	e0,@er5                           ; 8b46: 69d8
loc_8b48:
	inc	r2l                                 ; 8b48: 0a0a
	cmp.b	#0x3,r2l                          ; 8b4a: aa03
	bcs	loc_8b24:8                          ; 8b4c: 45d6
	sub.b	r2l,r2l                           ; 8b4e: 18aa
loc_8b50:
	extu.w	r2                               ; 8b50: 1752
	mov.w	r2,r0                             ; 8b52: 0d20
	shll.w	r0                               ; 8b54: 1010
	shll.w	r0                               ; 8b56: 1010
	add.w	r4,r0                             ; 8b58: 0940
	mov.w	@er0,e0                           ; 8b5a: 6908
	beq	loc_8b72:8                          ; 8b5c: 4714
	mov.w	#0x40,r0                          ; 8b5e: 79000040
	mov.b	r2l,r1l                           ; 8b62: 0ca9
loc_8b64:
	dec.b	r1l                               ; 8b64: 1a09
	bmi	loc_8b6c:8                          ; 8b66: 4b04
	shll.w	r0                               ; 8b68: 1010
	bra	loc_8b64:8                          ; 8b6a: 40f8
loc_8b6c:
	mov.w	@er5,e0                           ; 8b6c: 6958
	or.w	r0,e0                              ; 8b6e: 6408
	mov.w	e0,@er5                           ; 8b70: 69d8
loc_8b72:
	inc	r2l                                 ; 8b72: 0a0a
	cmp.b	#0x3,r2l                          ; 8b74: aa03
	bcs	loc_8b50:8                          ; 8b76: 45d8
	add.w	#0xc,r4                           ; 8b78: 7914000c
	sub.b	r2l,r2l                           ; 8b7c: 18aa
loc_8b7e:
	extu.w	r2                               ; 8b7e: 1752
	mov.w	r2,r0                             ; 8b80: 0d20
	shll.w	r0                               ; 8b82: 1010
	shll.w	r0                               ; 8b84: 1010
	add.w	r4,r0                             ; 8b86: 0940
	mov.w	@er0,e0                           ; 8b88: 6908
	beq	loc_8ba4:8                          ; 8b8a: 4718
	mov.w	#0x1,r0                           ; 8b8c: 79000001
	mov.b	r2l,r1l                           ; 8b90: 0ca9
loc_8b92:
	dec.b	r1l                               ; 8b92: 1a09
	bmi	loc_8b9a:8                          ; 8b94: 4b04
	shll.w	r0                               ; 8b96: 1010
	bra	loc_8b92:8                          ; 8b98: 40f8
loc_8b9a:
	mov.w	@(0x2:16,er5),e0                  ; 8b9a: 6f580002
	or.w	r0,e0                              ; 8b9e: 6408
	mov.w	e0,@(0x2:16,er5)                  ; 8ba0: 6fd80002
loc_8ba4:
	inc	r2l                                 ; 8ba4: 0a0a
	cmp.b	#0xa,r2l                          ; 8ba6: aa0a
	bcs	loc_8b7e:8                          ; 8ba8: 45d4
	mov.w	#0xb800,r0                        ; 8baa: 7900b800
	jsr	@func_552e:24                       ; 8bae: 5e00552e
	mov.b	r0l,r2l                           ; 8bb2: 0c8a
	btst	#0x5,r0l                           ; 8bb4: 7358
	beq	loc_8bbe:8                          ; 8bb6: 4706
	mov.w	@er5,r1                           ; 8bb8: 6951
	bset	#0x4,r1l                           ; 8bba: 7049
	mov.w	r1,@er5                           ; 8bbc: 69d1
loc_8bbe:
	btst	#0x4,r2l                           ; 8bbe: 734a
	beq	loc_8bc8:8                          ; 8bc0: 4706
	mov.w	@er5,r0                           ; 8bc2: 6950
	bset	#0x5,r0l                           ; 8bc4: 7058
	mov.w	r0,@er5                           ; 8bc6: 69d0
loc_8bc8:
	btst	#0x6,r2l                           ; 8bc8: 736a
	beq	loc_8bd0:8                          ; 8bca: 4704
	bset	#0x1,@er5                          ; 8bcc: 7d507010
loc_8bd0:
	rts                                     ; 8bd0: 5470
