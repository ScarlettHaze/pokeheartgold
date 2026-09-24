	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_9c48

func_9c48:
	sub.b	r0l,r0l                           ; 9c48: 1888
	mov.b	r0l,@0xf7ce:16                    ; 9c4a: 6a88f7ce
	mov.b	@0xf797:16,r0l                    ; 9c4e: 6a08f797
	bld	#0x0,r0l                            ; 9c52: 7708
	bcc	loc_9cea:16                         ; 9c54: 58400092
	mov.w	#D_bf7a,r0                        ; 9c58: 7900bf7a
	jsr	@func_552e:24                       ; 9c5c: 5e00552e
	mov.b	r0l,r6l                           ; 9c60: 0c8e
	jsr	@func_247e:24                       ; 9c62: 5e00247e
	mov.w	#0x68,r0                          ; 9c66: 79000068
	jsr	@func_2488:24                       ; 9c6a: 5e002488
	mov.b	r6l,r1l                           ; 9c6e: 0ce9
	jsr	@func_1d7a:24                       ; 9c70: 5e001d7a
	mov.b	r0l,r0l                           ; 9c74: 0c88
	bne	loc_9cea:8                          ; 9c76: 4672
	mov.w	#0xb800,r0                        ; 9c78: 7900b800
	jsr	@func_552e:24                       ; 9c7c: 5e00552e
	btst	#0x5,r0l                           ; 9c80: 7358
	bne	loc_9cea:8                          ; 9c82: 4666
	jsr	@func_247e:24                       ; 9c84: 5e00247e
	mov.w	#0x4,r0                           ; 9c88: 79000004
	jsr	@func_2488:24                       ; 9c8c: 5e002488
	mov.w	r0,r6                             ; 9c90: 0d06
	mov.w	r0,e0                             ; 9c92: 0d08
	mov.w	#D_bf44,r0                        ; 9c94: 7900bf44
	mov.w	#0x4,r1                           ; 9c98: 79010004
	jsr	@func_5384:24                       ; 9c9c: 5e005384
	mov.w	@er6,e6                           ; 9ca0: 696e
	mov.w	e6,r0                             ; 9ca2: 0de0
	mov.b	r0h,r0l                           ; 9ca4: 0c08
	sub.b	r0h,r0h                           ; 9ca6: 1800
	mov.w	e6,r1                             ; 9ca8: 0de1
	mov.b	r1l,r1h                           ; 9caa: 0c91
	sub.b	r1l,r1l                           ; 9cac: 1899
	or.w	r1,r0                              ; 9cae: 6410
	extu.l	er0                              ; 9cb0: 1770
	mov.l	@0xf79c:16,er1                    ; 9cb2: 01006b01f79c
	cmp.l	er0,er1                           ; 9cb8: 1f81
	bcs	loc_9cea:8                          ; 9cba: 452e
	jsr	@func_25d0:24                       ; 9cbc: 5e0025d0
	sub.l	er1,er1                           ; 9cc0: 1a91
	mov.b	#0x64,r1l                         ; 9cc2: f964
	jsr	@func_b94e:24                       ; 9cc4: 5e00b94e
	sub.l	er0,er0                           ; 9cc8: 1a80
	mov.b	@(0x2:16,er6),r0l                 ; 9cca: 6e680002
	cmp.l	er1,er0                           ; 9cce: 1f90
	bls	loc_9cea:8                          ; 9cd0: 4318
	mov.b	#0x4,r0l                          ; 9cd2: f804
	mov.b	r0l,@0xf7ce:16                    ; 9cd4: 6a88f7ce
	jsr	@func_25d0:24                       ; 9cd8: 5e0025d0
	shlr.w	r0                               ; 9cdc: 1110
	shlr.w	r0                               ; 9cde: 1110
	shlr.w	r0                               ; 9ce0: 1110
	and.b	#0x1,r0l                          ; 9ce2: e801
	add.b	#0x3,r0l                          ; 9ce4: 8803
	jmp	@loc_9d8c:24                        ; 9ce6: 5a009d8c
loc_9cea:
	jsr	@func_247e:24                       ; 9cea: 5e00247e
	mov.w	#0x30,r0                          ; 9cee: 79000030
	jsr	@func_2488:24                       ; 9cf2: 5e002488
	mov.w	r0,e0                             ; 9cf6: 0d08
	mov.w	#0xce8c,r0                        ; 9cf8: 7900ce8c
	mov.w	#0x30,r1                          ; 9cfc: 79010030
	jsr	@func_5384:24                       ; 9d00: 5e005384
	jsr	@func_25d0:24                       ; 9d04: 5e0025d0
	sub.l	er1,er1                           ; 9d08: 1a91
	mov.b	#0x64,r1l                         ; 9d0a: f964
	jsr	@func_b94e:24                       ; 9d0c: 5e00b94e
	mov.b	r1l,r6h                           ; 9d10: 0c96
	jsr	@func_247e:24                       ; 9d12: 5e00247e
	mov.w	#0xbe,r0                          ; 9d16: 790000be
	jsr	@func_2488:24                       ; 9d1a: 5e002488
	mov.w	r0,r5                             ; 9d1e: 0d05
	mov.w	r0,e0                             ; 9d20: 0d08
	mov.w	#0x8f00,r0                        ; 9d22: 79008f00
	mov.w	#0xbe,r1                          ; 9d26: 790100be
	jsr	@func_5384:24                       ; 9d2a: 5e005384
	sub.b	r6l,r6l                           ; 9d2e: 18ee
	bra	loc_9d74:8                          ; 9d30: 4042
loc_9d32:
	mov.b	r6l,r0l                           ; 9d32: 0ce8
	extu.w	r0                               ; 9d34: 1750
	mov.w	r0,e6                             ; 9d36: 0d0e
	shll.w	r0                               ; 9d38: 1010
	mov.w	#0x82,r1                          ; 9d3a: 79010082
	jsr	@func_4f50:24                       ; 9d3e: 5e004f50
	bcs	loc_9d72:8                          ; 9d42: 452e
	mov.w	#0x88,r0                          ; 9d44: 79000088
	add.w	r5,r0                             ; 9d48: 0950
	add.w	e6,r0                             ; 9d4a: 09e0
	mov.b	@er0,r0l                          ; 9d4c: 6808
	cmp.b	r0l,r6h                           ; 9d4e: 1c86
	bcc	loc_9d72:8                          ; 9d50: 4420
	mov.b	r6l,r0l                           ; 9d52: 0ce8
	add.b	#0x1,r0l                          ; 9d54: 8801
	mov.b	r0l,@0xf7ce:16                    ; 9d56: 6a88f7ce
	jsr	@func_25d0:24                       ; 9d5a: 5e0025d0
	shlr.w	r0                               ; 9d5e: 1110
	shlr.w	r0                               ; 9d60: 1110
	shlr.w	r0                               ; 9d62: 1110
	and.b	#0x1,r0l                          ; 9d64: e801
	neg.b	r6l                               ; 9d66: 178e
	add.b	r0l,r6l                           ; 9d68: 088e
	add.b	#0x3,r6l                          ; 9d6a: 8e03
	mov.b	r6l,@0xf7d2:16                    ; 9d6c: 6a8ef7d2
	bra	loc_9d90:8                          ; 9d70: 401e
loc_9d72:
	inc	r6l                                 ; 9d72: 0a0e
loc_9d74:
	cmp.b	#0x3,r6l                          ; 9d74: ae03
	bcs	loc_9d32:8                          ; 9d76: 45ba
	mov.b	#0x3,r0l                          ; 9d78: f803
	mov.b	r0l,@0xf7ce:16                    ; 9d7a: 6a88f7ce
	jsr	@func_25d0:24                       ; 9d7e: 5e0025d0
	shlr.w	r0                               ; 9d82: 1110
	shlr.w	r0                               ; 9d84: 1110
	shlr.w	r0                               ; 9d86: 1110
	and.b	#0x1,r0l                          ; 9d88: e801
	add.b	#0x1,r0l                          ; 9d8a: 8801
loc_9d8c:
	mov.b	r0l,@0xf7d2:16                    ; 9d8c: 6a88f7d2
loc_9d90:
	rts                                     ; 9d90: 5470
