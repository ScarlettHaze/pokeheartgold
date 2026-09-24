	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_4b9c

func_4b9c:
	mov.w	r5,@-er7                          ; 4b9c: 6df5
	mov.w	#0x280,r4                         ; 4b9e: 79040280
	jsr	@func_247e:24                       ; 4ba2: 5e00247e
	mov.w	#0x180,r0                         ; 4ba6: 79000180
	jsr	@func_2488:24                       ; 4baa: 5e002488
	mov.w	r0,r6                             ; 4bae: 0d06
	mov.w	r0,e0                             ; 4bb0: 0d08
	mov.b	@0xf7d2:16,r1l                    ; 4bb2: 6a09f7d2
	extu.w	r1                               ; 4bb6: 1751
	mov.w	#0x20,e1                          ; 4bb8: 79090020
	mulxu.w	e1,er1                          ; 4bbc: 5291
	mov.w	r4,r0                             ; 4bbe: 0d40
	add.w	r1,r0                             ; 4bc0: 0910
	mov.w	#0x20,r1                          ; 4bc2: 79010020
	jsr	@func_5384:24                       ; 4bc6: 5e005384
	mov.w	r6,e0                             ; 4bca: 0d68
	mov.w	#0x1008,r1                        ; 4bcc: 79011008
	mov.w	#0x40,r0                          ; 4bd0: 79000040
	jsr	@func_80ac:24                       ; 4bd4: 5e0080ac
	mov.w	#0x1950,r0                        ; 4bd8: 79001950
	add.w	r4,r0                             ; 4bdc: 0940
	mov.w	#0x80,r1                          ; 4bde: 79010080
	mov.w	r6,e0                             ; 4be2: 0d68
	jsr	@func_5384:24                       ; 4be4: 5e005384
	mov.w	r6,e0                             ; 4be8: 0d68
	mov.w	#0x1020,r1                        ; 4bea: 79011020
	mov.w	#0x20,r0                          ; 4bee: 79000020
	jsr	@func_80ac:24                       ; 4bf2: 5e0080ac
	mov.w	#0x19d0,r0                        ; 4bf6: 790019d0
	add.w	r4,r0                             ; 4bfa: 0940
	mov.w	#0x60,r1                          ; 4bfc: 79010060
	mov.w	r6,e0                             ; 4c00: 0d68
	jsr	@func_5384:24                       ; 4c02: 5e005384
	mov.w	r6,e0                             ; 4c06: 0d68
	mov.w	#0x1018,r1                        ; 4c08: 79011018
	mov.w	#0x48,r0                          ; 4c0c: 79000048
	jsr	@func_80ac:24                       ; 4c10: 5e0080ac
	mov.b	@0xf797:16,r0l                    ; 4c14: 6a08f797
	bld	#0x0,r0l                            ; 4c18: 7708
	bcc	loc_4c22:8                          ; 4c1a: 4406
	mov.w	#0xc83c,r0                        ; 4c1c: 7900c83c
	bra	loc_4c26:8                          ; 4c20: 4004
loc_4c22:
	mov.w	#0x8fbe,r0                        ; 4c22: 79008fbe
loc_4c26:
	mov.w	r0,e6                             ; 4c26: 0d0e
	mov.w	#0xc0,r1                          ; 4c28: 790100c0
	mov.w	r6,e0                             ; 4c2c: 0d68
	jsr	@func_5384:24                       ; 4c2e: 5e005384
	mov.w	r6,e0                             ; 4c32: 0d68
	mov.w	#0x1820,r1                        ; 4c34: 79011820
	sub.w	r0,r0                             ; 4c38: 1900
	jsr	@func_80ac:24                       ; 4c3a: 5e0080ac
	mov.b	@0xf7d0:16,r0l                    ; 4c3e: 6a08f7d0
	beq	loc_4c4a:8                          ; 4c42: 4706
	dec.b	r0l                               ; 4c44: 1a08
	mov.b	r0l,@0xf7d0:16                    ; 4c46: 6a88f7d0
loc_4c4a:
	mov.w	#0x18d0,r0                        ; 4c4a: 790018d0
	add.w	r4,r0                             ; 4c4e: 0940
	mov.w	#0x80,r1                          ; 4c50: 79010080
	mov.w	r6,e0                             ; 4c54: 0d68
	jsr	@func_5384:24                       ; 4c56: 5e005384
	sub.w	e6,e6                             ; 4c5a: 19ee
	mov.w	r6,r3                             ; 4c5c: 0d63
	add.w	#0x40,r3                          ; 4c5e: 79130040
loc_4c62:
	mov.w	e6,r5                             ; 4c62: 0de5
	mov.b	#0x10,r5h                         ; 4c64: f510
	mulxu.b	r5h,r5                          ; 4c66: 5055
	mov.b	@0xf7d4:16,r0l                    ; 4c68: 6a08f7d4
	extu.w	r0                               ; 4c6c: 1750
	cmp.w	r0,e6                             ; 4c6e: 1d0e
	bne	loc_4c7c:8                          ; 4c70: 460a
	mov.b	r5l,r0l                           ; 4c72: 0cd8
	mov.w	r3,e0                             ; 4c74: 0d38
	mov.w	#0x1010,r1                        ; 4c76: 79011010
	bra	loc_4c8e:8                          ; 4c7a: 4012
loc_4c7c:
	mov.b	@0xf7d1:16,r0l                    ; 4c7c: 6a08f7d1
	extu.w	r0                               ; 4c80: 1750
	cmp.w	r0,e6                             ; 4c82: 1d0e
	beq	loc_4c94:8                          ; 4c84: 470e
	mov.b	r5l,r0l                           ; 4c86: 0cd8
	mov.w	r6,e0                             ; 4c88: 0d68
	mov.b	#0x10,r1h                         ; 4c8a: f110
	mov.b	r1h,r1l                           ; 4c8c: 0c19
loc_4c8e:
	mov.b	#0x18,r0h                         ; 4c8e: f018
	jsr	@func_80ac:24                       ; 4c90: 5e0080ac
loc_4c94:
	inc.w	#1,e6                             ; 4c94: 0b5e
	cmp.w	#0x6,e6                           ; 4c96: 792e0006
	blt	loc_4c62:8                          ; 4c9a: 4dc6
	mov.b	@0xf7ac:16,r1l                    ; 4c9c: 6a09f7ac
	and.b	#0x3,r1l                          ; 4ca0: e903
	extu.w	r1                               ; 4ca2: 1751
	mov.b	@(0xbd82:16,er1),r1l              ; 4ca4: 6e19bd82
	mov.w	r6,e0                             ; 4ca8: 0d68
	mov.w	#0x1010,r0                        ; 4caa: 79001010
	jsr	@func_1dca:24                       ; 4cae: 5e001dca
	mov.w	r6,e0                             ; 4cb2: 0d68
	mov.b	@0xf7d1:16,r0l                    ; 4cb4: 6a08f7d1
	mov.b	#0x10,r0h                         ; 4cb8: f010
	mulxu.b	r0h,r0                          ; 4cba: 5000
	mov.w	#0x1010,r1                        ; 4cbc: 79011010
	mov.b	#0x18,r0h                         ; 4cc0: f018
	jsr	@func_80ac:24                       ; 4cc2: 5e0080ac
	mov.w	#0xf,r1                           ; 4cc6: 7901000f
	mov.w	#0x1730,r0                        ; 4cca: 79001730
	jsr	@func_2096:24                       ; 4cce: 5e002096
	mov.w	@er7+,r5                          ; 4cd2: 6d75
	rts                                     ; 4cd4: 5470
