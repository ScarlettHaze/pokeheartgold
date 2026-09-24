	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_0078
	.global loc_009a

func_0078:
	bset	#0x2,@CKSTPR1:8                    ; 0078: 7ffa7020
	mov.b	#0xbf,r0l                         ; 007c: f8bf
	mov.b	r0l,@TMB1:16                      ; 007e: 6a88f0d0
	mov.b	#0xf8,r0l                         ; 0082: f8f8
	mov.b	r0l,@TCB1:16                      ; 0084: 6a88f0d1
	bclr	#0x2,@IRR2:8                       ; 0088: 7ff77220
	bset	#0x2,@IENR2:8                      ; 008c: 7ff47020
	mov.w	#0xf0d0,r0                        ; 0090: 7900f0d0
	bset	#0x6,@er0                          ; 0094: 7d007060
	rts                                     ; 0098: 5470
loc_009a:
	mov.b	@0xf8c4:16,r0l                    ; 009a: 6a08f8c4
	cmp.b	#0xf0,r0l                         ; 009e: a8f0
	beq	loc_0108:8                          ; 00a0: 4766
	cmp.b	#0xfe,r0l                         ; 00a2: a8fe
	beq	loc_011a:8                          ; 00a4: 4774
	cmp.b	#0xe0,r0l                         ; 00a6: a8e0
	beq	loc_0128:8                          ; 00a8: 477e
	cmp.b	#0x2a,r0l                         ; 00aa: a82a
	beq	loc_013a:16                         ; 00ac: 5870008a
	cmp.b	#0x2c,r0l                         ; 00b0: a82c
	beq	loc_0148:16                         ; 00b2: 58700092
	cmp.b	#0x38,r0l                         ; 00b6: a838
	beq	loc_017a:16                         ; 00b8: 587000be
	cmp.b	#0x4e,r0l                         ; 00bc: a84e
	beq	loc_0188:16                         ; 00be: 587000c6
	cmp.b	#0x5a,r0l                         ; 00c2: a85a
	beq	loc_0196:16                         ; 00c4: 587000ce
	cmp.b	#0x66,r0l                         ; 00c8: a866
	beq	loc_01b6:16                         ; 00ca: 587000e8
	cmp.b	#0x16,r0l                         ; 00ce: a816
	beq	loc_01ca:16                         ; 00d0: 587000f6
	cmp.b	#0xc0,r0l                         ; 00d4: a8c0
	beq	loc_01d8:16                         ; 00d6: 587000fe
	cmp.b	#0xc2,r0l                         ; 00da: a8c2
	beq	loc_01ee:16                         ; 00dc: 5870010e
	cmp.b	#0xc4,r0l                         ; 00e0: a8c4
	beq	loc_0206:16                         ; 00e2: 58700120
	cmp.b	#0xc6,r0l                         ; 00e6: a8c6
	beq	loc_021a:16                         ; 00e8: 5870012e
	cmp.b	#0xb8,r0l                         ; 00ec: a8b8
	beq	loc_022e:16                         ; 00ee: 5870013c
	cmp.b	#0xba,r0l                         ; 00f2: a8ba
	beq	loc_0242:16                         ; 00f4: 5870014a
	cmp.b	#0xbc,r0l                         ; 00f8: a8bc
	beq	loc_0256:16                         ; 00fa: 58700158
	cmp.b	#0xbe,r0l                         ; 00fe: a8be
	bne	loc_0282:16                         ; 0100: 5860017e
	jmp	@loc_026a:24                        ; 0104: 5a00026a
loc_0108:
	jsr	@func_7b72:24                       ; 0108: 5e007b72
	mov.b	#0x16,r0l                         ; 010c: f816
	mov.b	r0l,@0xf7b1:16                    ; 010e: 6a88f7b1
	jsr	@func_aa42:24                       ; 0112: 5e00aa42
	jmp	@loc_02a0:24                        ; 0116: 5a0002a0
loc_011a:
	mov.b	#0x17,r0l                         ; 011a: f817
	mov.b	r0l,@0xf7b1:16                    ; 011c: 6a88f7b1
	jsr	@func_aebc:24                       ; 0120: 5e00aebc
	jmp	@loc_02a0:24                        ; 0124: 5a0002a0
loc_0128:
	jsr	@func_7b72:24                       ; 0128: 5e007b72
	mov.w	#0xe10,r0                         ; 012c: 79000e10
	mov.w	r0,@0xf7a2:16                     ; 0130: 6b80f7a2
	mov.w	#0x101,r0                         ; 0134: 79000101
	bra	loc_0152:8                          ; 0138: 4018
loc_013a:
	mov.w	#0xe10,r0                         ; 013a: 79000e10
	mov.w	r0,@0xf7a2:16                     ; 013e: 6b80f7a2
	mov.w	#0x100,r0                         ; 0142: 79000100
	bra	loc_0152:8                          ; 0146: 400a
loc_0148:
	mov.w	#0xe10,r0                         ; 0148: 79000e10
	mov.w	r0,@0xf7a2:16                     ; 014c: 6b80f7a2
	sub.w	r0,r0                             ; 0150: 1900
loc_0152:
	jsr	@func_b1ae:24                       ; 0152: 5e00b1ae
	mov.b	@0xf797:16,r0h                    ; 0156: 6a00f797
	shlr.b	r0h                              ; 015a: 1100
	and.b	#0x3,r0h                          ; 015c: e003
	mov.b	r0h,r0l                           ; 015e: 0c08
	jsr	@func_3832:24                       ; 0160: 5e003832
	mov.b	@0xf797:16,r0h                    ; 0164: 6a00f797
	shlr.b	r0h                              ; 0168: 1100
	shlr.b	r0h                              ; 016a: 1100
	shlr.b	r0h                              ; 016c: 1100
	and.b	#0xf,r0h                          ; 016e: e00f
	mov.b	r0h,r0l                           ; 0170: 0c08
	jsr	@func_7c24:24                       ; 0172: 5e007c24
	jmp	@loc_0296:24                        ; 0176: 5a000296
loc_017a:
	sub.l	er0,er0                           ; 017a: 1a80
	mov.l	er0,@0xf784:16                    ; 017c: 01006b80f784
	jsr	@func_048c:24                       ; 0182: 5e00048c
	bra	loc_01a6:8                          ; 0186: 401e
loc_0188:
	jsr	@func_0636:24                       ; 0188: 5e000636
	mov.b	#0x10,r0l                         ; 018c: f810
	jsr	@func_69b8:24                       ; 018e: 5e0069b8
	mov.b	#0x5,r0l                          ; 0192: f805
	bra	loc_01c2:8                          ; 0194: 402c
loc_0196:
	jsr	@func_048c:24                       ; 0196: 5e00048c
	sub.b	r1l,r1l                           ; 019a: 1899
	mov.l	#0x6c8b800,er0                    ; 019c: 7a0006c8b800
	jsr	@func_5742:24                       ; 01a2: 5e005742
loc_01a6:
	mov.b	#0xf,r0l                          ; 01a6: f80f
	jsr	@func_69b8:24                       ; 01a8: 5e0069b8
	sub.b	r0l,r0l                           ; 01ac: 1888
	mov.b	r0l,@0xf7ce:16                    ; 01ae: 6a88f7ce
	jmp	@loc_0290:24                        ; 01b2: 5a000290
loc_01b6:
	jsr	@func_06de:24                       ; 01b6: 5e0006de
	mov.b	#0x10,r0l                         ; 01ba: f810
	jsr	@func_69b8:24                       ; 01bc: 5e0069b8
	mov.b	#0x6,r0l                          ; 01c0: f806
loc_01c2:
	mov.b	r0l,@0xf7ce:16                    ; 01c2: 6a88f7ce
	jmp	@loc_028e:24                        ; 01c6: 5a00028e
loc_01ca:
	mov.b	#0xd,r0l                          ; 01ca: f80d
	jsr	@func_69b8:24                       ; 01cc: 5e0069b8
	jsr	@func_632c:24                       ; 01d0: 5e00632c
	jmp	@loc_02a0:24                        ; 01d4: 5a0002a0
loc_01d8:
	mov.b	#0x11,r0l                         ; 01d8: f811
	jsr	@func_69b8:24                       ; 01da: 5e0069b8
	sub.b	r0l,r0l                           ; 01de: 1888
	mov.b	r0l,@0xf7ce:16                    ; 01e0: 6a88f7ce
	mov.b	r0l,@0xf7cf:16                    ; 01e4: 6a88f7cf
	mov.b	#0x3,r0h                          ; 01e8: f003
	jmp	@loc_027c:24                        ; 01ea: 5a00027c
loc_01ee:
	mov.b	#0x11,r0l                         ; 01ee: f811
	jsr	@func_69b8:24                       ; 01f0: 5e0069b8
	sub.b	r0l,r0l                           ; 01f4: 1888
	mov.b	r0l,@0xf7ce:16                    ; 01f6: 6a88f7ce
	mov.b	r0l,@0xf7cf:16                    ; 01fa: 6a88f7cf
	mov.b	r0l,@0xf7d0:16                    ; 01fe: 6a88f7d0
	jmp	@loc_02a0:24                        ; 0202: 5a0002a0
loc_0206:
	mov.b	#0x11,r0l                         ; 0206: f811
	jsr	@func_69b8:24                       ; 0208: 5e0069b8
	sub.b	r0l,r0l                           ; 020c: 1888
	mov.b	r0l,@0xf7ce:16                    ; 020e: 6a88f7ce
	mov.b	r0l,@0xf7cf:16                    ; 0212: 6a88f7cf
	mov.b	#0x2,r0h                          ; 0216: f002
	bra	loc_027c:8                          ; 0218: 4062
loc_021a:
	mov.b	#0x11,r0l                         ; 021a: f811
	jsr	@func_69b8:24                       ; 021c: 5e0069b8
	sub.b	r0l,r0l                           ; 0220: 1888
	mov.b	r0l,@0xf7ce:16                    ; 0222: 6a88f7ce
	mov.b	r0l,@0xf7cf:16                    ; 0226: 6a88f7cf
	mov.b	#0x1,r0h                          ; 022a: f001
	bra	loc_027c:8                          ; 022c: 404e
loc_022e:
	mov.b	#0x11,r0l                         ; 022e: f811
	jsr	@func_69b8:24                       ; 0230: 5e0069b8
	sub.b	r0l,r0l                           ; 0234: 1888
	mov.b	r0l,@0xf7ce:16                    ; 0236: 6a88f7ce
	mov.b	r0l,@0xf7cf:16                    ; 023a: 6a88f7cf
	mov.b	#0x4,r0h                          ; 023e: f004
	bra	loc_027c:8                          ; 0240: 403a
loc_0242:
	mov.b	#0x11,r0l                         ; 0242: f811
	jsr	@func_69b8:24                       ; 0244: 5e0069b8
	sub.b	r0l,r0l                           ; 0248: 1888
	mov.b	r0l,@0xf7ce:16                    ; 024a: 6a88f7ce
	mov.b	r0l,@0xf7cf:16                    ; 024e: 6a88f7cf
	mov.b	#0x5,r0h                          ; 0252: f005
	bra	loc_027c:8                          ; 0254: 4026
loc_0256:
	mov.b	#0x11,r0l                         ; 0256: f811
	jsr	@func_69b8:24                       ; 0258: 5e0069b8
	sub.b	r0l,r0l                           ; 025c: 1888
	mov.b	r0l,@0xf7ce:16                    ; 025e: 6a88f7ce
	mov.b	r0l,@0xf7cf:16                    ; 0262: 6a88f7cf
	mov.b	#0x6,r0h                          ; 0266: f006
	bra	loc_027c:8                          ; 0268: 4012
loc_026a:
	mov.b	#0x11,r0l                         ; 026a: f811
	jsr	@func_69b8:24                       ; 026c: 5e0069b8
	sub.b	r0l,r0l                           ; 0270: 1888
	mov.b	r0l,@0xf7ce:16                    ; 0272: 6a88f7ce
	mov.b	r0l,@0xf7cf:16                    ; 0276: 6a88f7cf
	mov.b	#0x7,r0h                          ; 027a: f007
loc_027c:
	mov.b	r0h,@0xf7d0:16                    ; 027c: 6a80f7d0
	bra	loc_02a0:8                          ; 0280: 401e
loc_0282:
	mov.b	@0xf7ad:16,r0l                    ; 0282: 6a08f7ad
	beq	loc_0296:8                          ; 0286: 470e
	mov.b	#0xe,r0l                          ; 0288: f80e
	jsr	@func_69b8:24                       ; 028a: 5e0069b8
loc_028e:
	sub.b	r0l,r0l                           ; 028e: 1888
loc_0290:
	mov.b	r0l,@0xf7cf:16                    ; 0290: 6a88f7cf
	bra	loc_02a0:8                          ; 0294: 400a
loc_0296:
	jsr	@func_6a1c:24                       ; 0296: 5e006a1c
	sub.b	r0l,r0l                           ; 029a: 1888
	jsr	@func_69b8:24                       ; 029c: 5e0069b8
loc_02a0:
	sub.b	r0l,r0l                           ; 02a0: 1888
	mov.b	r0l,@0xf7ae:16                    ; 02a2: 6a88f7ae
	jsr	@func_9328:24                       ; 02a6: 5e009328
	mov.w	#func_7882,r0                     ; 02aa: 79007882
	jsr	@func_693a:24                       ; 02ae: 5e00693a
	ldc	#0x0,ccr                            ; 02b2: 0700
	mov.w	#0xf7a6,r1                        ; 02b4: 7901f7a6
	mov.w	#0xf7a5,e0                        ; 02b8: 7908f7a5
	mov.w	#0xf7a4,r0                        ; 02bc: 7900f7a4
	jmp	@loc_a5d4:24                        ; 02c0: 5a00a5d4
