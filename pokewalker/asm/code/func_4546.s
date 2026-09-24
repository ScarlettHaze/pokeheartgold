	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_4546

func_4546:
	mov.w	r3,@-er7                          ; 4546: 6df3
	mov.w	r4,@-er7                          ; 4548: 6df4
	mov.l	er5,@-er7                         ; 454a: 01006df5
	mov.l	er6,@-er7                         ; 454e: 01006df6
	subs	#2,er7                             ; 4552: 1b87
	mov.w	r0,r5                             ; 4554: 0d05
	mov.w	e0,r6                             ; 4556: 0d86
	mov.b	r1l,r3l                           ; 4558: 0c9b
	mov.b	r1h,@er7                          ; 455a: 68f1
	mov.w	e1,e5                             ; 455c: 0d9d
	mov.b	@0xf793:16,r4l                    ; 455e: 6a0cf793
	mov.b	#0x88,r4h                         ; 4562: f488
	mulxu.b	r4h,r4                          ; 4564: 5044
	add.w	#0xcf0c,r4                        ; 4566: 7914cf0c
	mov.w	#0x84,r0                          ; 456a: 79000084
	add.w	r4,r0                             ; 456e: 0940
	jsr	@func_552e:24                       ; 4570: 5e00552e
	mov.b	r0l,r3h                           ; 4574: 0c83
	beq	loc_457e:8                          ; 4576: 4706
	cmp.b	#0x1b,r3l                         ; 4578: ab1b
	beq	loc_478c:16                         ; 457a: 5870020e
loc_457e:
	cmp.b	#0x19,r3h                         ; 457e: a319
	bne	loc_45a4:8                          ; 4580: 4622
	mov.b	@0xf793:16,r0l                    ; 4582: 6a08f793
	extu.w	r0                               ; 4586: 1750
	inc.w	#1,r0                             ; 4588: 0b50
	exts.l	er0                              ; 458a: 17f0
	mov.w	#0x17,r1                          ; 458c: 79010017
	divxs.w	r1,er0                          ; 4590: 01d05310
	mov.w	e0,r0                             ; 4594: 0d80
	mov.b	r0l,@0xf793:16                    ; 4596: 6a88f793
	mov.b	r0l,r4l                           ; 459a: 0c8c
	mov.b	#0x88,r4h                         ; 459c: f488
	mulxu.b	r4h,r4                          ; 459e: 5044
	add.w	#0xcf0c,r4                        ; 45a0: 7914cf0c
loc_45a4:
	cmp.b	#0xa,r3l                          ; 45a4: ab0a
	bls	loc_45bc:8                          ; 45a6: 4314
	mov.w	r6,e0                             ; 45a8: 0d68
	sub.w	e6,e6                             ; 45aa: 19ee
	sub.b	r1l,r1l                           ; 45ac: 1899
loc_45ae:
	mov.w	e0,r0                             ; 45ae: 0d80
	mov.b	r1l,@er0                          ; 45b0: 6889
	inc.w	#1,e0                             ; 45b2: 0b58
	inc.w	#1,e6                             ; 45b4: 0b5e
	cmp.w	#0x88,e6                          ; 45b6: 792e0088
	bcs	loc_45ae:8                          ; 45ba: 45f2
loc_45bc:
	mov.b	r3l,@(0x84:16,er6)                ; 45bc: 6eeb0084
	mov.w	e5,@(0xe:16,er6)                  ; 45c0: 6fed000e
	mov.l	@0xf788:16,er0                    ; 45c4: 01006b00f788
	mov.l	er0,@er6                          ; 45ca: 010069e0
	mov.w	@0xf7a0:16,r0                     ; 45ce: 6b00f7a0
	mov.w	r0,@(0x78:16,er6)                 ; 45d2: 6fe00078
	mov.l	@0xf79c:16,er0                    ; 45d6: 01006b00f79c
	mov.l	er0,@(0x7c:16,er6)                ; 45dc: 01006fe0007c
	mov.w	@er5,r0                           ; 45e2: 6950
	mov.w	r0,@(0xa:16,er6)                  ; 45e4: 6fe0000a
	sub.w	e6,e6                             ; 45e8: 19ee
loc_45ea:
	mov.w	#0x10,r0                          ; 45ea: 79000010
	add.w	r5,r0                             ; 45ee: 0950
	add.w	e6,r0                             ; 45f0: 09e0
	mov.w	#0x20,r1                          ; 45f2: 79010020
	add.w	r6,r1                             ; 45f6: 0961
	add.w	e6,r1                             ; 45f8: 09e1
	mov.b	@er0,r0l                          ; 45fa: 6808
	mov.b	r0l,@er1                          ; 45fc: 6898
	inc.w	#1,e6                             ; 45fe: 0b5e
	cmp.w	#0x16,e6                          ; 4600: 792e0016
	blt	loc_45ea:8                          ; 4604: 4de4
	mov.b	@(0x26:16,er5),r0l                ; 4606: 6e580026
	mov.b	r0l,@(0x77:16,er6)                ; 460a: 6ee80077
	mov.b	@(0xd:16,er5),r0l                 ; 460e: 6e58000d
	and.b	#0x1f,r0l                         ; 4612: e81f
	mov.b	@(0x85:16,er6),r0h                ; 4614: 6e600085
	and.b	#0xe0,r0h                         ; 4618: e0e0
	and.b	#0x1f,r0l                         ; 461a: e81f
	or.b	r0l,r0h                            ; 461c: 1480
	mov.b	r0h,@(0x85:16,er6)                ; 461e: 6ee00085
	mov.b	@(0xd:16,er5),r0l                 ; 4622: 6e58000d
	rotl.b	r0l                              ; 4626: 1288
	rotl.b	r0l                              ; 4628: 1288
	rotl.b	r0l                              ; 462a: 1288
	and.b	#0x3,r0l                          ; 462c: e803
	mov.b	r0l,r1l                           ; 462e: 0c89
	mov.w	#0x85,r0                          ; 4630: 79000085
	add.w	r6,r0                             ; 4634: 0960
	mov.w	#0x102,r2                         ; 4636: 79020102
	jsr	@func_b924:24                       ; 463a: 5e00b924
	mov.w	#0x85,r0                          ; 463e: 79000085
	add.w	r6,r0                             ; 4642: 0960
	mov.b	@(0xe:16,er5),r1l                 ; 4644: 6e59000e
	bld	#0x1,r1l                            ; 4648: 7719
	bst	#0x7,@er0                           ; 464a: 7d006770
	mov.b	@er7,r0l                          ; 464e: 6878
	bne	loc_467a:8                          ; 4650: 4628
	mov.b	@(0x27:16,er5),r0l                ; 4652: 6e580027
	mov.b	r0l,@(0x76:16,er6)                ; 4656: 6ee80076
	sub.w	e6,e6                             ; 465a: 19ee
loc_465c:
	mov.w	#0x28,r0                          ; 465c: 79000028
	add.w	r5,r0                             ; 4660: 0950
	add.w	e6,r0                             ; 4662: 09e0
	mov.w	#0x4c,r1                          ; 4664: 7901004c
	add.w	r6,r1                             ; 4668: 0961
	add.w	e6,r1                             ; 466a: 09e1
	mov.b	@er0,r0l                          ; 466c: 6808
	mov.b	r0l,@er1                          ; 466e: 6898
	inc.w	#1,e6                             ; 4670: 0b5e
	cmp.w	#0x2a,e6                          ; 4672: 792e002a
	bge	loc_4698:8                          ; 4676: 4c20
	bra	loc_465c:8                          ; 4678: 40e2
loc_467a:
	mov.w	#D_bf06,r0                        ; 467a: 7900bf06
	jsr	@func_552e:24                       ; 467e: 5e00552e
	mov.b	r0l,@(0x76:16,er6)                ; 4682: 6ee80076
	mov.w	#D_bf50,r0                        ; 4686: 7900bf50
	mov.w	#0x2a,r1                          ; 468a: 7901002a
	mov.w	#0x4c,e0                          ; 468e: 7908004c
	add.w	r6,e0                             ; 4692: 0968
	jsr	@func_5384:24                       ; 4694: 5e005384
loc_4698:
	mov.b	@(0x11:16,er7),r0l                ; 4698: 6e780011
	cmp.b	#0x1,r0l                          ; 469c: a801
	bcs	loc_46a4:8                          ; 469e: 4504
	cmp.b	#0x3,r0l                          ; 46a0: a803
	bls	loc_46ac:8                          ; 46a2: 4308
loc_46a4:
	cmp.b	#0x4,r0l                          ; 46a4: a804
	bne	loc_4756:16                         ; 46a6: 586000ac
	bra	loc_46fc:8                          ; 46aa: 4050
loc_46ac:
	extu.w	r0                               ; 46ac: 1750
	dec.w	#1,r0                             ; 46ae: 1b50
	mov.w	#0x10,e0                          ; 46b0: 79080010
	mulxu.w	e0,er0                          ; 46b4: 5280
	mov.w	#0x52,r1                          ; 46b6: 79010052
	add.w	r5,r1                             ; 46ba: 0951
	add.w	r0,r1                             ; 46bc: 0901
	mov.w	@er1,r1                           ; 46be: 6911
	mov.w	r1,@(0xc:16,er6)                  ; 46c0: 6fe1000c
	mov.w	#0x52,r1                          ; 46c4: 79010052
	add.w	r5,r1                             ; 46c8: 0951
	add.w	r0,r1                             ; 46ca: 0901
	mov.b	@(0xd:16,er1),r1l                 ; 46cc: 6e19000d
	and.b	#0x1f,r1l                         ; 46d0: e91f
	mov.b	@(0x86:16,er6),r1h                ; 46d2: 6e610086
	and.b	#0xe0,r1h                         ; 46d6: e1e0
	and.b	#0x1f,r1l                         ; 46d8: e91f
	or.b	r1l,r1h                            ; 46da: 1491
	mov.b	r1h,@(0x86:16,er6)                ; 46dc: 6ee10086
	add.w	#0x52,r5                          ; 46e0: 79150052
	add.w	r0,r5                             ; 46e4: 0905
	mov.b	@(0xd:16,er5),r5l                 ; 46e6: 6e5d000d
	rotl.b	r5l                              ; 46ea: 128d
	rotl.b	r5l                              ; 46ec: 128d
	rotl.b	r5l                              ; 46ee: 128d
	and.b	#0x3,r5l                          ; 46f0: ed03
	mov.w	#0x86,r0                          ; 46f2: 79000086
	add.w	r6,r0                             ; 46f6: 0960
	mov.b	r5l,r1l                           ; 46f8: 0cd9
	bra	loc_474e:8                          ; 46fa: 4052
loc_46fc:
	cmp.b	#0xf,r3l                          ; 46fc: ab0f
	beq	loc_4704:8                          ; 46fe: 4704
	cmp.b	#0x10,r3l                         ; 4700: ab10
	bne	loc_4710:8                          ; 4702: 460c
loc_4704:
	mov.w	#0xc,e0                           ; 4704: 7908000c
	add.w	r6,e0                             ; 4708: 0968
	mov.w	#D_bf08,r0                        ; 470a: 7900bf08
	bra	loc_471a:8                          ; 470e: 400a
loc_4710:
	mov.w	#0xc,e0                           ; 4710: 7908000c
	add.w	r6,e0                             ; 4714: 0968
	mov.w	#0xba44,r0                        ; 4716: 7900ba44
loc_471a:
	mov.w	#0x2,r1                           ; 471a: 79010002
	jsr	@func_5384:24                       ; 471e: 5e005384
	mov.w	#D_bf0d,r0                        ; 4722: 7900bf0d
	jsr	@func_552e:24                       ; 4726: 5e00552e
	mov.b	r0l,r5l                           ; 472a: 0c8d
	and.b	#0x1f,r0l                         ; 472c: e81f
	mov.b	@(0x86:16,er6),r0h                ; 472e: 6e600086
	and.b	#0xe0,r0h                         ; 4732: e0e0
	and.b	#0x1f,r0l                         ; 4734: e81f
	or.b	r0l,r0h                            ; 4736: 1480
	mov.b	r0h,@(0x86:16,er6)                ; 4738: 6ee00086
	mov.b	r5l,r0l                           ; 473c: 0cd8
	mov.b	#0x20,r1l                         ; 473e: f920
	sub.b	r0h,r0h                           ; 4740: 1800
	divxu.b	r1l,r0                          ; 4742: 5190
	and.b	#0x3,r0l                          ; 4744: e803
	mov.b	r0l,r1l                           ; 4746: 0c89
	mov.w	#0x86,r0                          ; 4748: 79000086
	add.w	r6,r0                             ; 474c: 0960
loc_474e:
	mov.w	#0x102,r2                         ; 474e: 79020102
	jsr	@func_b924:24                       ; 4752: 5e00b924
loc_4756:
	mov.w	r6,e0                             ; 4756: 0d68
	mov.w	r4,r0                             ; 4758: 0d40
	mov.w	#0x88,r1                          ; 475a: 79010088
	jsr	@func_524e:24                       ; 475e: 5e00524e
	mov.b	@0xf793:16,r0l                    ; 4762: 6a08f793
	extu.w	r0                               ; 4766: 1750
	inc.w	#1,r0                             ; 4768: 0b50
	exts.l	er0                              ; 476a: 17f0
	mov.w	#0x17,r1                          ; 476c: 79010017
	divxs.w	r1,er0                          ; 4770: 01d05310
	mov.w	e0,r0                             ; 4774: 0d80
	mov.b	r0l,@0xf793:16                    ; 4776: 6a88f793
	mov.w	#0x18,e1                          ; 477a: 79090018
	mov.w	#0xf780,r1                        ; 477e: 7901f780
	mov.l	#0x2560156,er0                    ; 4782: 7a0002560156
	jsr	@func_50d8:24                       ; 4788: 5e0050d8
loc_478c:
	adds	#2,er7                             ; 478c: 0b87
	jmp	@loc_8abc:24                        ; 478e: 5a008abc
