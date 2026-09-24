	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_2972

func_2972:
	jsr	@func_369c:24                       ; 2972: 5e00369c
	mov.b	r0l,r0l                           ; 2976: 0c88
	bne	loc_2a94:16                         ; 2978: 58600118
	jsr	@func_25d0:24                       ; 297c: 5e0025d0
	shlr.l	er0                              ; 2980: 1130
	shlr.l	er0                              ; 2982: 1130
	shlr.l	er0                              ; 2984: 1130
	sub.l	er1,er1                           ; 2986: 1a91
	mov.b	#0x64,r1l                         ; 2988: f964
	jsr	@func_b94e:24                       ; 298a: 5e00b94e
	mov.b	r1l,r6l                           ; 298e: 0c9e
	mov.w	#D_bb36,e1                        ; 2990: 7909bb36
	mov.b	@0xf7d8:16,r0l                    ; 2994: 6a08f7d8
	rotl.b	r0l                              ; 2998: 1288
	rotl.b	r0l                              ; 299a: 1288
	rotl.b	r0l                              ; 299c: 1288
	and.b	#0x7,r0l                          ; 299e: e807
	mov.b	#0x3,r0h                          ; 29a0: f003
	mulxu.b	r0h,r0                          ; 29a2: 5000
	mov.w	r0,e4                             ; 29a4: 0d0c
	inc.w	#2,r0                             ; 29a6: 0bd0
	add.w	e1,r0                             ; 29a8: 0990
	mov.b	@er0,r0l                          ; 29aa: 6808
	cmp.b	r0l,r1l                           ; 29ac: 1c89
	bcc	loc_29ba:8                          ; 29ae: 440a
	mov.b	@0xf7d8:16,r0l                    ; 29b0: 6a08f7d8
	and.b	#0xe7,r0l                         ; 29b4: e8e7
	or.b	#0x10,r0l                          ; 29b6: c810
	bra	loc_29e8:8                          ; 29b8: 402e
loc_29ba:
	mov.w	e4,r0                             ; 29ba: 0dc0
	inc.w	#2,r0                             ; 29bc: 0bd0
	add.w	e1,r0                             ; 29be: 0990
	mov.b	@er0,r0l                          ; 29c0: 6808
	extu.w	r0                               ; 29c2: 1750
	mov.w	e4,e0                             ; 29c4: 0dc8
	inc.w	#1,e0                             ; 29c6: 0b58
	add.w	e1,e0                             ; 29c8: 0998
	mov.w	e0,r1                             ; 29ca: 0d81
	mov.b	@er1,r1l                          ; 29cc: 6819
	extu.w	r1                               ; 29ce: 1751
	add.w	r1,r0                             ; 29d0: 0910
	extu.w	r6                               ; 29d2: 1756
	cmp.w	r0,r6                             ; 29d4: 1d06
	bge	loc_29e2:8                          ; 29d6: 4c0a
	mov.b	@0xf7d8:16,r0l                    ; 29d8: 6a08f7d8
	and.b	#0xe7,r0l                         ; 29dc: e8e7
	or.b	#0x8,r0l                           ; 29de: c808
	bra	loc_29e8:8                          ; 29e0: 4006
loc_29e2:
	mov.b	@0xf7d8:16,r0l                    ; 29e2: 6a08f7d8
	and.b	#0xe7,r0l                         ; 29e6: e8e7
loc_29e8:
	mov.b	r0l,@0xf7d8:16                    ; 29e8: 6a88f7d8
	mov.b	#0x4,r0l                          ; 29ec: f804
	jsr	@func_9c40:24                       ; 29ee: 5e009c40
	mov.b	r0l,r0l                           ; 29f2: 0c88
	beq	loc_2a16:8                          ; 29f4: 4720
	mov.b	@0xf7d8:16,r0l                    ; 29f6: 6a08f7d8
	and.b	#0xf9,r0l                         ; 29fa: e8f9
	mov.b	r0l,@0xf7d8:16                    ; 29fc: 6a88f7d8
	shlr.b	r0l                              ; 2a00: 1108
	shlr.b	r0l                              ; 2a02: 1108
	shlr.b	r0l                              ; 2a04: 1108
	and.b	#0x3,r0l                          ; 2a06: e803
	beq	loc_2a12:8                          ; 2a08: 4708
	cmp.b	#0x2,r0l                          ; 2a0a: a802
	beq	loc_2a12:8                          ; 2a0c: 4704
	cmp.b	#0x1,r0l                          ; 2a0e: a801
	bne	loc_2a16:8                          ; 2a10: 4604
loc_2a12:
	mov.b	#0x3,r0l                          ; 2a12: f803
	bra	loc_2a64:8                          ; 2a14: 404e
loc_2a16:
	mov.b	#0x8,r0l                          ; 2a16: f808
	jsr	@func_9c40:24                       ; 2a18: 5e009c40
	mov.b	r0l,r0l                           ; 2a1c: 0c88
	beq	loc_2a72:8                          ; 2a1e: 4752
	mov.b	@0xf7d8:16,r0l                    ; 2a20: 6a08f7d8
	and.b	#0xf9,r0l                         ; 2a24: e8f9
	or.b	#0x2,r0l                           ; 2a26: c802
	mov.b	r0l,@0xf7d8:16                    ; 2a28: 6a88f7d8
	shlr.b	r0l                              ; 2a2c: 1108
	shlr.b	r0l                              ; 2a2e: 1108
	shlr.b	r0l                              ; 2a30: 1108
	and.b	#0x3,r0l                          ; 2a32: e803
	cmp.b	#0x2,r0l                          ; 2a34: a802
	beq	loc_2a42:8                          ; 2a36: 470a
	cmp.b	#0x1,r0l                          ; 2a38: a801
	beq	loc_2a58:8                          ; 2a3a: 471c
	cmp.b	#0x0,r0l                          ; 2a3c: a800
	bne	loc_2a72:8                          ; 2a3e: 4632
	bra	loc_2a62:8                          ; 2a40: 4020
loc_2a42:
	mov.b	#0xe,r0l                          ; 2a42: f80e
	jsr	@func_36f2:24                       ; 2a44: 5e0036f2
	mov.b	#0x7,r0l                          ; 2a48: f807
	mov.b	r0l,@0xf7cf:16                    ; 2a4a: 6a88f7cf
	sub.b	r0l,r0l                           ; 2a4e: 1888
	mov.b	r0l,@0xf7d2:16                    ; 2a50: 6a88f7d2
	mov.b	#0xa,r0l                          ; 2a54: f80a
	bra	loc_2a90:8                          ; 2a56: 4038
loc_2a58:
	sub.b	r0l,r0l                           ; 2a58: 1888
	jsr	@func_36f2:24                       ; 2a5a: 5e0036f2
	mov.b	#0x8,r0l                          ; 2a5e: f808
	bra	loc_2a84:8                          ; 2a60: 4022
loc_2a62:
	mov.b	#0x4,r0l                          ; 2a62: f804
loc_2a64:
	mov.b	r0l,@0xf7cf:16                    ; 2a64: 6a88f7cf
	sub.b	r0l,r0l                           ; 2a68: 1888
	mov.b	r0l,@0xf7d2:16                    ; 2a6a: 6a88f7d2
	mov.b	#0x8,r0l                          ; 2a6e: f808
	bra	loc_2a90:8                          ; 2a70: 401e
loc_2a72:
	mov.b	#0x2,r0l                          ; 2a72: f802
	jsr	@func_9c40:24                       ; 2a74: 5e009c40
	mov.b	r0l,r0l                           ; 2a78: 0c88
	beq	loc_2a94:8                          ; 2a7a: 4718
	mov.b	#0xf,r0l                          ; 2a7c: f80f
	jsr	@func_36f2:24                       ; 2a7e: 5e0036f2
	mov.b	#0xa,r0l                          ; 2a82: f80a
loc_2a84:
	mov.b	r0l,@0xf7cf:16                    ; 2a84: 6a88f7cf
	sub.b	r0l,r0l                           ; 2a88: 1888
	mov.b	r0l,@0xf7d2:16                    ; 2a8a: 6a88f7d2
	mov.b	#0x6,r0l                          ; 2a8e: f806
loc_2a90:
	mov.b	r0l,@0xf7d3:16                    ; 2a90: 6a88f7d3
loc_2a94:
	rts                                     ; 2a94: 5470
