	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_5d52

func_5d52:
	subs	#2,er7                             ; 5d52: 1b87
	mov.b	r0l,r6l                           ; 5d54: 0c8e
	sub.w	e6,e6                             ; 5d56: 19ee
	mov.b	r6l,@0xf7ce:16                    ; 5d58: 6a8ef7ce
	mov.b	r6l,r1l                           ; 5d5c: 0ce9
	extu.w	r1                               ; 5d5e: 1751
	shll.w	r1                               ; 5d60: 1011
	mov.w	@(0xbd84:16,er1),r1               ; 5d62: 6f11bd84
	mov.w	r1,@0xf7d2:16                     ; 5d66: 6b81f7d2
	mov.b	#0xc,r0l                          ; 5d6a: f80c
	jsr	@func_69b8:24                       ; 5d6c: 5e0069b8
	sub.w	r0,r0                             ; 5d70: 1900
	mov.w	r0,@0xf7a2:16                     ; 5d72: 6b80f7a2
	mov.b	r6l,r0l                           ; 5d76: 0ce8
	cmp.b	#0x1,r0l                          ; 5d78: a801
	beq	loc_5d98:8                          ; 5d7a: 471c
	cmp.b	#0x2,r0l                          ; 5d7c: a802
	beq	loc_5e08:16                         ; 5d7e: 58700086
	cmp.b	#0x3,r0l                          ; 5d82: a803
	beq	loc_5e0c:16                         ; 5d84: 58700084
	cmp.b	#0x4,r0l                          ; 5d88: a804
	beq	loc_5e10:16                         ; 5d8a: 58700082
	cmp.b	#0x7,r0l                          ; 5d8e: a807
	bne	loc_5e22:16                         ; 5d90: 5860008e
	jmp	@loc_5e1c:24                        ; 5d94: 5a005e1c
loc_5d98:
	mov.w	@0xf7a0:16,r0                     ; 5d98: 6b00f7a0
	cmp.w	#0x1194,r0                        ; 5d9c: 79201194
	bcc	loc_5db8:8                          ; 5da0: 4416
	mov.w	@0xf7a0:16,r0                     ; 5da2: 6b00f7a0
	extu.l	er0                              ; 5da6: 1770
	mov.w	#0x1f4,r1                         ; 5da8: 790101f4
	divxu.w	r1,er0                          ; 5dac: 5310
	mov.b	#0x9,r0h                          ; 5dae: f009
	sub.b	r0l,r0h                           ; 5db0: 1880
	mov.b	r0h,@0xf7cf:16                    ; 5db2: 6a80f7cf
	bra	loc_5dbe:8                          ; 5db6: 4006
loc_5db8:
	sub.b	r0l,r0l                           ; 5db8: 1888
	mov.b	r0l,@0xf7cf:16                    ; 5dba: 6a88f7cf
loc_5dbe:
	mov.b	@0xf7cf:16,r0l                    ; 5dbe: 6a08f7cf
	jsr	@func_1eee:24                       ; 5dc2: 5e001eee
	mov.w	r0,e6                             ; 5dc6: 0d0e
	jsr	@func_247e:24                       ; 5dc8: 5e00247e
	mov.w	#0xc,e5                           ; 5dcc: 790d000c
	mov.w	e5,r0                             ; 5dd0: 0dd0
	jsr	@func_2488:24                       ; 5dd2: 5e002488
	mov.w	r0,r5                             ; 5dd6: 0d05
	mov.w	r0,e0                             ; 5dd8: 0d08
	mov.w	#0xcebc,r0                        ; 5dda: 7900cebc
	mov.w	e5,r1                             ; 5dde: 0dd1
	jsr	@func_5384:24                       ; 5de0: 5e005384
	mov.w	r5,r0                             ; 5de4: 0d50
	jsr	@func_1f1c:24                       ; 5de6: 5e001f1c
	mov.b	r0l,r6h                           ; 5dea: 0c86
	cmp.b	#0x3,r0l                          ; 5dec: a803
	bcc	loc_5e28:8                          ; 5dee: 4438
	extu.w	r0                               ; 5df0: 1750
	shll.w	r0                               ; 5df2: 1010
	shll.w	r0                               ; 5df4: 1010
	add.w	r5,r0                             ; 5df6: 0950
	mov.w	e6,@er0                           ; 5df8: 698e
	mov.w	e5,r1                             ; 5dfa: 0dd1
	mov.w	r5,e0                             ; 5dfc: 0d58
	mov.w	#0xcebc,r0                        ; 5dfe: 7900cebc
	jsr	@func_524e:24                       ; 5e02: 5e00524e
	bra	loc_5e28:8                          ; 5e06: 4020
loc_5e08:
	mov.b	#0x32,r0l                         ; 5e08: f832
	bra	loc_5e12:8                          ; 5e0a: 4006
loc_5e0c:
	mov.b	#0x14,r0l                         ; 5e0c: f814
	bra	loc_5e12:8                          ; 5e0e: 4002
loc_5e10:
	mov.b	#0xa,r0l                          ; 5e10: f80a
loc_5e12:
	mov.b	r0l,@0xf7cf:16                    ; 5e12: 6a88f7cf
	jsr	@func_1f3e:24                       ; 5e16: 5e001f3e
	bra	loc_5e28:8                          ; 5e1a: 400c
loc_5e1c:
	jsr	@func_5c0a:24                       ; 5e1c: 5e005c0a
	bra	loc_5e28:8                          ; 5e20: 4006
loc_5e22:
	sub.b	r0l,r0l                           ; 5e22: 1888
	mov.b	r0l,@0xf7cf:16                    ; 5e24: 6a88f7cf
loc_5e28:
	jsr	@func_247e:24                       ; 5e28: 5e00247e
	mov.w	#0xbe,r0                          ; 5e2c: 790000be
	jsr	@func_2488:24                       ; 5e30: 5e002488
	mov.w	r0,r5                             ; 5e34: 0d05
	mov.w	r0,e0                             ; 5e36: 0d08
	mov.w	#0xbe,r1                          ; 5e38: 790100be
	mov.w	#0x8f00,r0                        ; 5e3c: 79008f00
	jsr	@func_5384:24                       ; 5e40: 5e005384
	sub.b	r0l,r0l                           ; 5e44: 1888
	mov.w	r0,@-er7                          ; 5e46: 6df0
	sub.b	r1h,r1h                           ; 5e48: 1811
	mov.b	@0xf797:16,r0l                    ; 5e4a: 6a08f797
	bld	#0x0,r0l                            ; 5e4e: 7708
	bst	#0x0,r1h                            ; 5e50: 6701
	mov.w	#0x88,r0                          ; 5e52: 79000088
	mov.w	r1,@(0x2:16,er7)                  ; 5e56: 6ff10002
	jsr	@func_2488:24                       ; 5e5a: 5e002488
	mov.w	r0,e0                             ; 5e5e: 0d08
	mov.w	e6,e1                             ; 5e60: 0de9
	mov.b	r6l,r1l                           ; 5e62: 0ce9
	add.b	#0x10,r1l                         ; 5e64: 8910
	mov.w	r5,r0                             ; 5e66: 0d50
	mov.b	@(0x2:16,er7),r1h                 ; 5e68: 6e710002
	jsr	@func_4546:24                       ; 5e6c: 5e004546
	adds	#2,er7                             ; 5e70: 0b87
	mov.b	r6l,r0l                           ; 5e72: 0ce8
	cmp.b	#0x2,r0l                          ; 5e74: a802
	bcs	loc_5e94:8                          ; 5e76: 451c
	cmp.b	#0x5,r0l                          ; 5e78: a805
	bhi	loc_5e94:8                          ; 5e7a: 4218
	jsr	@func_25d0:24                       ; 5e7c: 5e0025d0
	shlr.l	er0                              ; 5e80: 1130
	shlr.l	er0                              ; 5e82: 1130
	shlr.l	er0                              ; 5e84: 1130
	sub.l	er1,er1                           ; 5e86: 1a91
	mov.b	#0x3,r1l                          ; 5e88: f903
	jsr	@func_b94e:24                       ; 5e8a: 5e00b94e
	mov.b	r1l,@0xf7d0:16                    ; 5e8e: 6a89f7d0
	bra	loc_5e9a:8                          ; 5e92: 4006
loc_5e94:
	sub.b	r0l,r0l                           ; 5e94: 1888
	mov.b	r0l,@0xf7d0:16                    ; 5e96: 6a88f7d0
loc_5e9a:
	adds	#2,er7                             ; 5e9a: 0b87
	rts                                     ; 5e9c: 5470
