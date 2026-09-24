	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_a4fe
	.global loc_a5d4

func_a4fe:
	mov.l	er0,er5                           ; a4fe: 0f85
	sub.l	er4,er4                           ; a500: 1ac4
	mov.b	#0x3c,r4l                         ; a502: fc3c
	mov.l	er4,er1                           ; a504: 0fc1
	jsr	@func_b94e:24                       ; a506: 5e00b94e
	mov.w	#0xa,r6                           ; a50a: 7906000a
	extu.w	r1                               ; a50e: 1751
	mov.w	r1,e6                             ; a510: 0d1e
	exts.l	er1                              ; a512: 17f1
	divxs.w	r6,er1                          ; a514: 01d05361
	mov.w	#0x10,e1                          ; a518: 79090010
	mulxu.w	e1,er1                          ; a51c: 5291
	mov.b	r1l,r3l                           ; a51e: 0c9b
	mov.w	e6,r0                             ; a520: 0de0
	exts.l	er0                              ; a522: 17f0
	divxs.w	r6,er0                          ; a524: 01d05360
	mov.w	e0,r0                             ; a528: 0d80
	or.b	r0l,r3l                            ; a52a: 148b
	mov.l	er5,er0                           ; a52c: 0fd0
	mov.l	er4,er1                           ; a52e: 0fc1
	jsr	@func_b94e:24                       ; a530: 5e00b94e
	mov.l	er0,er5                           ; a534: 0f85
	mov.l	er4,er1                           ; a536: 0fc1
	jsr	@func_b94e:24                       ; a538: 5e00b94e
	extu.w	r1                               ; a53c: 1751
	mov.w	r1,e6                             ; a53e: 0d1e
	exts.l	er1                              ; a540: 17f1
	divxs.w	r6,er1                          ; a542: 01d05361
	mov.w	#0x10,e1                          ; a546: 79090010
	mulxu.w	e1,er1                          ; a54a: 5291
	mov.b	r1l,r3h                           ; a54c: 0c93
	mov.w	e6,r0                             ; a54e: 0de0
	exts.l	er0                              ; a550: 17f0
	divxs.w	r6,er0                          ; a552: 01d05360
	mov.w	e0,r0                             ; a556: 0d80
	or.b	r0l,r3h                            ; a558: 1483
	mov.l	er5,er0                           ; a55a: 0fd0
	mov.l	er4,er1                           ; a55c: 0fc1
	jsr	@func_b94e:24                       ; a55e: 5e00b94e
	mov.l	er0,er5                           ; a562: 0f85
	sub.l	er1,er1                           ; a564: 1a91
	mov.b	#0x18,r1l                         ; a566: f918
	jsr	@func_b94e:24                       ; a568: 5e00b94e
	extu.w	r1                               ; a56c: 1751
	mov.w	r1,e6                             ; a56e: 0d1e
	exts.l	er1                              ; a570: 17f1
	divxs.w	r6,er1                          ; a572: 01d05361
	mov.w	#0x10,e1                          ; a576: 79090010
	mulxu.w	e1,er1                          ; a57a: 5291
	mov.b	r1l,r5l                           ; a57c: 0c9d
	mov.w	e6,r0                             ; a57e: 0de0
	exts.l	er0                              ; a580: 17f0
	divxs.w	r6,er0                          ; a582: 01d05360
	mov.w	e0,r0                             ; a586: 0d80
	or.b	r0l,r5l                            ; a588: 148d
	mov.b	r5l,r6l                           ; a58a: 0cde
	mov.b	r6l,@0xf7a6:16                    ; a58c: 6a8ef7a6
	mov.b	r3h,@0xf7a5:16                    ; a590: 6a83f7a5
	mov.b	r3l,@0xf7a4:16                    ; a594: 6a8bf7a4
	bset	#0x0,@CKSTPR1:8                    ; a598: 7ffa7000
	mov.w	#0xf06c,r0                        ; a59c: 7900f06c
	bclr	#0x7,@er0                          ; a5a0: 7d007270
	bset	#0x4,@er0                          ; a5a4: 7d007040
	bclr	#0x4,@er0                          ; a5a8: 7d007240
	mov.b	r3l,@RSECDR:16                    ; a5ac: 6a8bf068
	mov.b	r3h,@RMINDR:16                    ; a5b0: 6a83f069
	mov.b	r6l,@RHRDR:16                     ; a5b4: 6a8ef06a
	bset	#0x6,@er0                          ; a5b8: 7d007060
	bset	#0x3,@er0                          ; a5bc: 7d007030
	mov.b	#0x1c,r0l                         ; a5c0: f81c
	mov.b	r0l,@RTCCR2:16                    ; a5c2: 6a88f06d
	mov.b	#0x6d,r0l                         ; a5c6: f86d
	bset	#0x0,@er0                          ; a5c8: 7d007000
	mov.b	#0x6c,r0l                         ; a5cc: f86c
	bset	#0x7,@er0                          ; a5ce: 7d007070
	rts                                     ; a5d2: 5470
loc_a5d4:
	jsr	@RegSave_er2_er6:24                 ; a5d4: 5e00ba42
	sub.w	#0x6,r7                           ; a5d8: 79370006
	mov.w	r7,r6                             ; a5dc: 0d76
	mov.w	r0,r4                             ; a5de: 0d04
	mov.w	r1,r3                             ; a5e0: 0d13
loc_a5e2:
	sub.b	r1h,r1h                           ; a5e2: 1811
loc_a5e4:
	mov.b	@RSECDR:16,r0l                    ; a5e4: 6a08f068
	bmi	loc_a5e4:8                          ; a5e8: 4bfa
	mov.b	#0x3,r0l                          ; a5ea: f803
	mulxu.b	r1h,r0                          ; a5ec: 5010
	mov.w	r0,e1                             ; a5ee: 0d09
	add.w	r6,r0                             ; a5f0: 0960
	mov.b	@RSECDR:16,r1l                    ; a5f2: 6a09f068
	mov.b	r1l,@er0                          ; a5f6: 6889
loc_a5f8:
	mov.b	@RMINDR:16,r0l                    ; a5f8: 6a08f069
	bmi	loc_a5f8:8                          ; a5fc: 4bfa
	mov.w	e1,r0                             ; a5fe: 0d90
	inc.w	#1,r0                             ; a600: 0b50
	add.w	r6,r0                             ; a602: 0960
	mov.b	@RMINDR:16,r1l                    ; a604: 6a09f069
	mov.b	r1l,@er0                          ; a608: 6889
loc_a60a:
	mov.b	@RHRDR:16,r0l                     ; a60a: 6a08f06a
	bmi	loc_a60a:8                          ; a60e: 4bfa
	inc.w	#2,e1                             ; a610: 0bd9
	add.w	r6,e1                             ; a612: 0969
	mov.w	e1,r0                             ; a614: 0d90
	mov.b	@RHRDR:16,r1l                     ; a616: 6a09f06a
	mov.b	r1l,@er0                          ; a61a: 6889
	inc	r1h                                 ; a61c: 0a01
	cmp.b	#0x2,r1h                          ; a61e: a102
	bcs	loc_a5e4:8                          ; a620: 45c2
	mov.b	@er6,r0l                          ; a622: 6868
	mov.b	@(0x3:16,er6),r0h                 ; a624: 6e600003
	cmp.b	r0h,r0l                           ; a628: 1c08
	bne	loc_a5e2:8                          ; a62a: 46b6
	mov.b	@(0x1:16,er6),r0l                 ; a62c: 6e680001
	mov.b	@(0x4:16,er6),r0h                 ; a630: 6e600004
	cmp.b	r0h,r0l                           ; a634: 1c08
	bne	loc_a5e2:8                          ; a636: 46aa
	mov.b	@(0x2:16,er6),r0l                 ; a638: 6e680002
	mov.b	@(0x5:16,er6),r0h                 ; a63c: 6e600005
	cmp.b	r0h,r0l                           ; a640: 1c08
	bne	loc_a5e2:8                          ; a642: 469e
	mov.b	@er6,r0l                          ; a644: 6868
	mov.b	r0l,@er4                          ; a646: 68c8
	mov.w	e0,r0                             ; a648: 0d80
	mov.b	@(0x1:16,er6),r1l                 ; a64a: 6e690001
	mov.b	r1l,@er0                          ; a64e: 6889
	mov.b	@(0x2:16,er6),r0l                 ; a650: 6e680002
	mov.b	r0l,@er3                          ; a654: 68b8
	add.w	#0x6,r7                           ; a656: 79170006
	jmp	@RegRestore_er2_er6:24              ; a65a: 5a00ba62
