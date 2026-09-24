	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_74bc

func_74bc:
	mov.w	#0x10,e6                          ; 74bc: 790e0010
	mov.w	#0x280,r3                         ; 74c0: 79030280
	jsr	@func_8a36:24                       ; 74c4: 5e008a36
	mov.w	#0xb800,r0                        ; 74c8: 7900b800
	jsr	@func_552e:24                       ; 74cc: 5e00552e
	mov.b	r0l,r4l                           ; 74d0: 0c8c
	jsr	@func_247e:24                       ; 74d2: 5e00247e
	mov.w	#0x180,r0                         ; 74d6: 79000180
	jsr	@func_2488:24                       ; 74da: 5e002488
	mov.w	r0,r5                             ; 74de: 0d05
	btst	#0x5,r4l                           ; 74e0: 735c
	beq	loc_7514:8                          ; 74e2: 4730
	mov.w	#0x1f0,r6                         ; 74e4: 790601f0
	add.w	r3,r6                             ; 74e8: 0936
	mov.w	r6,r0                             ; 74ea: 0d60
	mov.w	e6,r1                             ; 74ec: 0de1
	mov.w	r5,e0                             ; 74ee: 0d58
	jsr	@func_5384:24                       ; 74f0: 5e005384
	sub.w	r6,r6                             ; 74f4: 1966
loc_74f6:
	mov.w	r5,r0                             ; 74f6: 0d50
	add.w	r6,r0                             ; 74f8: 0960
	bset	#0x0,@er0                          ; 74fa: 7d007000
	inc.w	#1,r6                             ; 74fe: 0b56
	cmp.w	#0x10,r6                          ; 7500: 79260010
	blt	loc_74f6:8                          ; 7504: 4df0
	mov.w	r5,e0                             ; 7506: 0d58
	mov.b	#0x8,r1h                          ; 7508: f108
	mov.b	r1h,r1l                           ; 750a: 0c19
	mov.w	#0x3000,r0                        ; 750c: 79003000
	jsr	@func_80ac:24                       ; 7510: 5e0080ac
loc_7514:
	btst	#0x6,r4l                           ; 7514: 736c
	beq	loc_755e:8                          ; 7516: 4746
	mov.w	#D_bd40,r6                        ; 7518: 7906bd40
	mov.w	r6,r0                             ; 751c: 0d60
	mov.w	#0x8,r1                           ; 751e: 79010008
	mov.w	r5,e0                             ; 7522: 0d58
	jsr	@func_5384:24                       ; 7524: 5e005384
	mov.w	@(0x6:16,er5),r0                  ; 7528: 6f500006
	beq	loc_755e:8                          ; 752c: 4730
	mov.w	#0x218,r6                         ; 752e: 79060218
	add.w	r3,r6                             ; 7532: 0936
	mov.w	r6,r0                             ; 7534: 0d60
	mov.w	e6,r1                             ; 7536: 0de1
	mov.w	r5,e0                             ; 7538: 0d58
	jsr	@func_5384:24                       ; 753a: 5e005384
	sub.w	r6,r6                             ; 753e: 1966
loc_7540:
	mov.w	r5,r0                             ; 7540: 0d50
	add.w	r6,r0                             ; 7542: 0960
	bset	#0x0,@er0                          ; 7544: 7d007000
	inc.w	#1,r6                             ; 7548: 0b56
	cmp.w	#0x10,r6                          ; 754a: 79260010
	blt	loc_7540:8                          ; 754e: 4df0
	mov.w	r5,e0                             ; 7550: 0d58
	mov.b	#0x8,r1h                          ; 7552: f108
	mov.b	r1h,r1l                           ; 7554: 0c19
	mov.b	#0x30,r0h                         ; 7556: f030
	mov.b	r1h,r0l                           ; 7558: 0c18
	jsr	@func_80ac:24                       ; 755a: 5e0080ac
loc_755e:
	mov.w	#0x238,r6                         ; 755e: 79060238
	add.w	r3,r6                             ; 7562: 0936
	mov.w	r6,r0                             ; 7564: 0d60
	mov.w	#0x40,r1                          ; 7566: 79010040
	mov.w	r5,e0                             ; 756a: 0d58
	jsr	@func_5384:24                       ; 756c: 5e005384
	sub.w	r6,r6                             ; 7570: 1966
loc_7572:
	mov.w	r5,r0                             ; 7572: 0d50
	add.w	r6,r0                             ; 7574: 0960
	bset	#0x0,@er0                          ; 7576: 7d007000
	inc.w	#1,r6                             ; 757a: 0b56
	cmp.w	#0x40,r6                          ; 757c: 79260040
	blt	loc_7572:8                          ; 7580: 4df0
	btst	#0x0,r4l                           ; 7582: 730c
	beq	loc_7594:8                          ; 7584: 470e
	mov.w	r5,e0                             ; 7586: 0d58
	mov.b	#0x8,r1h                          ; 7588: f108
	mov.b	r1h,r1l                           ; 758a: 0c19
	mov.w	#0x3010,r0                        ; 758c: 79003010
	jsr	@func_80ac:24                       ; 7590: 5e0080ac
loc_7594:
	mov.w	r5,r0                             ; 7594: 0d50
	add.w	e6,r0                             ; 7596: 09e0
	mov.w	r0,e5                             ; 7598: 0d0d
	btst	#0x1,r4l                           ; 759a: 731c
	beq	loc_75ac:8                          ; 759c: 470e
	mov.w	e5,e0                             ; 759e: 0dd8
	mov.b	#0x8,r1h                          ; 75a0: f108
	mov.b	r1h,r1l                           ; 75a2: 0c19
	mov.w	#0x3018,r0                        ; 75a4: 79003018
	jsr	@func_80ac:24                       ; 75a8: 5e0080ac
loc_75ac:
	btst	#0x2,r4l                           ; 75ac: 732c
	beq	loc_75c4:8                          ; 75ae: 4714
	mov.w	r5,r0                             ; 75b0: 0d50
	add.w	#0x20,r0                          ; 75b2: 79100020
	mov.w	r0,e0                             ; 75b6: 0d08
	mov.b	#0x8,r1h                          ; 75b8: f108
	mov.b	r1h,r1l                           ; 75ba: 0c19
	mov.w	#0x3020,r0                        ; 75bc: 79003020
	jsr	@func_80ac:24                       ; 75c0: 5e0080ac
loc_75c4:
	btst	#0x3,r4l                           ; 75c4: 733c
	beq	loc_75dc:8                          ; 75c6: 4714
	mov.w	r5,r0                             ; 75c8: 0d50
	add.w	#0x30,r0                          ; 75ca: 79100030
	mov.w	r0,e0                             ; 75ce: 0d08
	mov.b	#0x8,r1h                          ; 75d0: f108
	mov.b	r1h,r1l                           ; 75d2: 0c19
	mov.w	#0x3028,r0                        ; 75d4: 79003028
	jsr	@func_80ac:24                       ; 75d8: 5e0080ac
loc_75dc:
	mov.w	#0x1e0,r6                         ; 75dc: 790601e0
	add.w	r3,r6                             ; 75e0: 0936
	mov.w	r6,r0                             ; 75e2: 0d60
	mov.w	e6,r1                             ; 75e4: 0de1
	mov.w	r5,e0                             ; 75e6: 0d58
	jsr	@func_5384:24                       ; 75e8: 5e005384
	mov.w	#0xce8c,r0                        ; 75ec: 7900ce8c
	mov.w	#0x30,r1                          ; 75f0: 79010030
	mov.w	e5,e0                             ; 75f4: 0dd8
	jsr	@func_5384:24                       ; 75f6: 5e005384
	sub.w	r6,r6                             ; 75fa: 1966
loc_75fc:
	mov.w	r6,r0                             ; 75fc: 0d60
	mov.w	#0x10,e0                          ; 75fe: 79080010
	mulxu.w	e0,er0                          ; 7602: 5280
	add.w	e5,r0                             ; 7604: 09d0
	mov.w	@er0,e0                           ; 7606: 6908
	beq	loc_761c:8                          ; 7608: 4712
	mov.b	r6l,r0l                           ; 760a: 0ce8
	mov.b	#0x8,r0h                          ; 760c: f008
	mulxu.b	r0h,r0                          ; 760e: 5000
	mov.w	r5,e0                             ; 7610: 0d58
	mov.b	#0x8,r1h                          ; 7612: f108
	mov.b	r1h,r1l                           ; 7614: 0c19
	mov.b	#0x38,r0h                         ; 7616: f038
	jsr	@func_80ac:24                       ; 7618: 5e0080ac
loc_761c:
	inc.w	#1,r6                             ; 761c: 0b56
	cmp.w	#0x3,r6                           ; 761e: 79260003
	blt	loc_75fc:8                          ; 7622: 4dd8
	mov.w	#0x208,r6                         ; 7624: 79060208
	add.w	r3,r6                             ; 7628: 0936
	mov.w	r6,r0                             ; 762a: 0d60
	mov.w	e6,r1                             ; 762c: 0de1
	mov.w	r5,e0                             ; 762e: 0d58
	jsr	@func_5384:24                       ; 7630: 5e005384
	mov.w	#0xcebc,r0                        ; 7634: 7900cebc
	mov.w	#0xc,r1                           ; 7638: 7901000c
	mov.w	e5,e0                             ; 763c: 0dd8
	jsr	@func_5384:24                       ; 763e: 5e005384
	sub.w	r6,r6                             ; 7642: 1966
loc_7644:
	mov.w	r6,r0                             ; 7644: 0d60
	shll.w	r0                               ; 7646: 1010
	shll.w	r0                               ; 7648: 1010
	add.w	e5,r0                             ; 764a: 09d0
	mov.w	@er0,e0                           ; 764c: 6908
	beq	loc_7664:8                          ; 764e: 4714
	mov.b	r6l,r0l                           ; 7650: 0ce8
	mov.b	#0x8,r0h                          ; 7652: f008
	mulxu.b	r0h,r0                          ; 7654: 5000
	add.b	#0x18,r0l                         ; 7656: 8818
	mov.w	r5,e0                             ; 7658: 0d58
	mov.b	#0x8,r1h                          ; 765a: f108
	mov.b	r1h,r1l                           ; 765c: 0c19
	mov.b	#0x38,r0h                         ; 765e: f038
	jsr	@func_80ac:24                       ; 7660: 5e0080ac
loc_7664:
	inc.w	#1,r6                             ; 7664: 0b56
	cmp.w	#0x3,r6                           ; 7666: 79260003
	blt	loc_7644:8                          ; 766a: 4dd8
	btst	#0x4,r4l                           ; 766c: 734c
	beq	loc_768e:8                          ; 766e: 471e
	mov.w	#0x228,r6                         ; 7670: 79060228
	add.w	r3,r6                             ; 7674: 0936
	mov.w	r6,r0                             ; 7676: 0d60
	mov.w	e6,r1                             ; 7678: 0de1
	mov.w	r5,e0                             ; 767a: 0d58
	jsr	@func_5384:24                       ; 767c: 5e005384
	mov.w	r5,e0                             ; 7680: 0d58
	mov.b	#0x8,r1h                          ; 7682: f108
	mov.b	r1h,r1l                           ; 7684: 0c19
	mov.w	#0x3830,r0                        ; 7686: 79003830
	jsr	@func_80ac:24                       ; 768a: 5e0080ac
loc_768e:
	mov.b	#0x1,r0l                          ; 768e: f801
	mov.w	r0,@-er7                          ; 7690: 6df0
	mov.l	@0xf79c:16,er1                    ; 7692: 01006b01f79c
	mov.w	#0x3058,r0                        ; 7698: 79003058
	jsr	@func_1fee:24                       ; 769c: 5e001fee
	adds	#2,er7                             ; 76a0: 0b87
	sub.w	r0,r0                             ; 76a2: 1900
	jsr	@func_21fe:24                       ; 76a4: 5e0021fe
	rts                                     ; 76a8: 5470
