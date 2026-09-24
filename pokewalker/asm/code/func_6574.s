	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_6574

func_6574:
	mov.b	@0xf7cf:16,r0l                    ; 6574: 6a08f7cf
	cmp.b	#0x3,r0l                          ; 6578: a803
	bcc	loc_65cc:8                          ; 657a: 4450
	mov.w	#0x838,r0                         ; 657c: 79000838
	jsr	@func_1936:24                       ; 6580: 5e001936
	sub.b	r6l,r6l                           ; 6584: 18ee
	mov.b	@0xf7ce:16,r0l                    ; 6586: 6a08f7ce
	bld	#0x1,r0l                            ; 658a: 7718
	bst	#0x0,r6l                            ; 658c: 670e
	mov.b	@0xf7cf:16,r0l                    ; 658e: 6a08f7cf
	bne	loc_65b6:8                          ; 6592: 4622
	mov.b	#0x7,r0l                          ; 6594: f807
	mov.b	@0xf7d0:16,r0h                    ; 6596: 6a00f7d0
	sub.b	r0h,r0l                           ; 659a: 1808
	mov.b	#0x3,r0h                          ; 659c: f003
	mulxu.b	r0h,r0                          ; 659e: 5000
	mov.b	#0x8,r6h                          ; 65a0: f608
	sub.b	r0l,r6h                           ; 65a2: 1886
	mov.b	r6l,r6l                           ; 65a4: 0cee
	beq	loc_65ae:8                          ; 65a6: 4706
	mov.b	r6h,r0l                           ; 65a8: 0c68
	sub.b	r1l,r1l                           ; 65aa: 1899
	bra	loc_65b2:8                          ; 65ac: 4004
loc_65ae:
	mov.b	r6h,r0l                           ; 65ae: 0c68
	mov.b	#0x1,r1l                          ; 65b0: f901
loc_65b2:
	mov.b	#0x8,r0h                          ; 65b2: f008
	bra	loc_65c8:8                          ; 65b4: 4012
loc_65b6:
	mov.b	r6l,r6l                           ; 65b6: 0cee
	beq	loc_65c2:8                          ; 65b8: 4708
	sub.b	r1l,r1l                           ; 65ba: 1899
	mov.w	#0x808,r0                         ; 65bc: 79000808
	bra	loc_65c8:8                          ; 65c0: 4006
loc_65c2:
	mov.b	#0x1,r1l                          ; 65c2: f901
	mov.b	#0x8,r0h                          ; 65c4: f008
	mov.b	r0h,r0l                           ; 65c6: 0c08
loc_65c8:
	jsr	@func_1a0a:24                       ; 65c8: 5e001a0a
loc_65cc:
	mov.b	@0xf7cf:16,r0l                    ; 65cc: 6a08f7cf
	cmp.b	#0x1,r0l                          ; 65d0: a801
	beq	loc_65e8:8                          ; 65d2: 4714
	cmp.b	#0x2,r0l                          ; 65d4: a802
	beq	loc_65fe:8                          ; 65d6: 4726
	cmp.b	#0x3,r0l                          ; 65d8: a803
	beq	loc_66ea:16                         ; 65da: 5870010c
	cmp.b	#0x4,r0l                          ; 65de: a804
	bne	loc_6734:16                         ; 65e0: 58600150
	jmp	@loc_66fc:24                        ; 65e4: 5a0066fc
loc_65e8:
	mov.b	#0x1,r1l                          ; 65e8: f901
	mov.w	#0x2002,r0                        ; 65ea: 79002002
	jsr	@func_1ab2:24                       ; 65ee: 5e001ab2
	mov.w	#0xe,r1                           ; 65f2: 7901000e
	mov.w	#0x2b30,r0                        ; 65f6: 79002b30
	jmp	@loc_6730:24                        ; 65fa: 5a006730
loc_65fe:
	mov.b	@0xf7d0:16,r6l                    ; 65fe: 6a0ef7d0
	add.b	#0x1,r6l                          ; 6602: 8e01
	mov.b	@0xf7d0:16,r6h                    ; 6604: 6a06f7d0
	shlr.b	r6h                              ; 6608: 1106
	add.b	#0x1,r6h                          ; 660a: 8601
	mov.b	@0xf7d1:16,r0l                    ; 660c: 6a08f7d1
	cmp.b	#0x2c,r0l                         ; 6610: a82c
	beq	loc_662c:8                          ; 6612: 4718
	cmp.b	#0x2d,r0l                         ; 6614: a82d
	beq	loc_6658:8                          ; 6616: 4740
	cmp.b	#0x2e,r0l                         ; 6618: a82e
	beq	loc_6682:8                          ; 661a: 4766
	cmp.b	#0x2f,r0l                         ; 661c: a82f
	beq	loc_66aa:16                         ; 661e: 58700088
	cmp.b	#0x30,r0l                         ; 6622: a830
	bne	loc_66de:16                         ; 6624: 586000b6
	jmp	@loc_66d2:24                        ; 6628: 5a0066d2
loc_662c:
	mov.b	r6l,r6h                           ; 662c: 0ce6
	cmp.b	#0x5,r6h                          ; 662e: a605
	bls	loc_6634:8                          ; 6630: 4302
	mov.b	#0x5,r6h                          ; 6632: f605
loc_6634:
	sub.b	r6l,r6l                           ; 6634: 18ee
	bra	loc_6650:8                          ; 6636: 4018
loc_6638:
	mov.b	r6l,r1l                           ; 6638: 0ce9
	extu.w	r1                               ; 663a: 1751
	mov.b	@(0xbe70:16,er1),r1l              ; 663c: 6e19be70
	mov.b	r6l,r0l                           ; 6640: 0ce8
	mov.b	#0x8,r0h                          ; 6642: f008
	mulxu.b	r0h,r0                          ; 6644: 5000
	add.b	#0x1c,r0l                         ; 6646: 881c
	sub.b	r0h,r0h                           ; 6648: 1800
	jsr	@func_6528:24                       ; 664a: 5e006528
	inc	r6l                                 ; 664e: 0a0e
loc_6650:
	cmp.b	r6h,r6l                           ; 6650: 1c6e
	bcc	loc_66de:16                         ; 6652: 58400088
	bra	loc_6638:8                          ; 6656: 40e0
loc_6658:
	mov.b	r6l,r6h                           ; 6658: 0ce6
	cmp.b	#0x4,r6h                          ; 665a: a604
	bls	loc_6660:8                          ; 665c: 4302
	mov.b	#0x4,r6h                          ; 665e: f604
loc_6660:
	sub.b	r6l,r6l                           ; 6660: 18ee
	bra	loc_667c:8                          ; 6662: 4018
loc_6664:
	mov.b	r6l,r1l                           ; 6664: 0ce9
	extu.w	r1                               ; 6666: 1751
	mov.b	@(0xbe70:16,er1),r1l              ; 6668: 6e19be70
	mov.b	r6l,r0l                           ; 666c: 0ce8
	mov.b	#0x8,r0h                          ; 666e: f008
	mulxu.b	r0h,r0                          ; 6670: 5000
	add.b	#0x1c,r0l                         ; 6672: 881c
	sub.b	r0h,r0h                           ; 6674: 1800
	jsr	@func_6528:24                       ; 6676: 5e006528
	inc	r6l                                 ; 667a: 0a0e
loc_667c:
	cmp.b	r6h,r6l                           ; 667c: 1c6e
	bcc	loc_66de:8                          ; 667e: 445e
	bra	loc_6664:8                          ; 6680: 40e2
loc_6682:
	cmp.b	#0x3,r6h                          ; 6682: a603
	bls	loc_6688:8                          ; 6684: 4302
	mov.b	#0x3,r6h                          ; 6686: f603
loc_6688:
	sub.b	r6l,r6l                           ; 6688: 18ee
	bra	loc_66a4:8                          ; 668a: 4018
loc_668c:
	mov.b	r6l,r1l                           ; 668c: 0ce9
	extu.w	r1                               ; 668e: 1751
	mov.b	@(0xbe71:16,er1),r1l              ; 6690: 6e19be71
	mov.b	r6l,r0l                           ; 6694: 0ce8
	mov.b	#0x8,r0h                          ; 6696: f008
	mulxu.b	r0h,r0                          ; 6698: 5000
	add.b	#0x24,r0l                         ; 669a: 8824
	sub.b	r0h,r0h                           ; 669c: 1800
	jsr	@func_6528:24                       ; 669e: 5e006528
	inc	r6l                                 ; 66a2: 0a0e
loc_66a4:
	cmp.b	r6h,r6l                           ; 66a4: 1c6e
	bcc	loc_66de:8                          ; 66a6: 4436
	bra	loc_668c:8                          ; 66a8: 40e2
loc_66aa:
	cmp.b	#0x2,r6h                          ; 66aa: a602
	bls	loc_66b0:8                          ; 66ac: 4302
	mov.b	#0x2,r6h                          ; 66ae: f602
loc_66b0:
	sub.b	r6l,r6l                           ; 66b0: 18ee
	bra	loc_66cc:8                          ; 66b2: 4018
loc_66b4:
	mov.b	r6l,r1l                           ; 66b4: 0ce9
	extu.w	r1                               ; 66b6: 1751
	mov.b	@(0xbe71:16,er1),r1l              ; 66b8: 6e19be71
	mov.b	r6l,r0l                           ; 66bc: 0ce8
	mov.b	#0x8,r0h                          ; 66be: f008
	mulxu.b	r0h,r0                          ; 66c0: 5000
	add.b	#0x24,r0l                         ; 66c2: 8824
	sub.b	r0h,r0h                           ; 66c4: 1800
	jsr	@func_6528:24                       ; 66c6: 5e006528
	inc	r6l                                 ; 66ca: 0a0e
loc_66cc:
	cmp.b	r6h,r6l                           ; 66cc: 1c6e
	bcc	loc_66de:8                          ; 66ce: 440e
	bra	loc_66b4:8                          ; 66d0: 40e2
loc_66d2:
	mov.b	@D_be72:16,r1l                    ; 66d2: 6a09be72
	mov.w	#0x2c,r0                          ; 66d6: 7900002c
	jsr	@func_6528:24                       ; 66da: 5e006528
loc_66de:
	mov.w	#0xf,r1                           ; 66de: 7901000f
	mov.b	@0xf7d1:16,r0h                    ; 66e2: 6a00f7d1
	mov.b	#0x30,r0l                         ; 66e6: f830
	bra	loc_6730:8                          ; 66e8: 4046
loc_66ea:
	mov.w	#0x420,r0                         ; 66ea: 79000420
	jsr	@func_1cf0:24                       ; 66ee: 5e001cf0
	mov.w	#0xf,r1                           ; 66f2: 7901000f
	mov.w	#0x3130,r0                        ; 66f6: 79003130
	bra	loc_6730:8                          ; 66fa: 4034
loc_66fc:
	mov.w	#0x420,r0                         ; 66fc: 79000420
	jsr	@func_1cf0:24                       ; 6700: 5e001cf0
	mov.b	@0xf7d3:16,r0l                    ; 6704: 6a08f7d3
	beq	loc_671a:8                          ; 6708: 4710
	extu.w	r0                               ; 670a: 1750
	mov.w	r0,e0                             ; 670c: 0d08
	mov.b	#0xd,r1l                          ; 670e: f90d
	mov.w	#0x2002,r0                        ; 6710: 79002002
	jsr	@func_1f6c:24                       ; 6714: 5e001f6c
	bra	loc_6728:8                          ; 6718: 400e
loc_671a:
	mov.b	#0xd,r1h                          ; 671a: f10d
	mov.b	@0xf7d2:16,r1l                    ; 671c: 6a09f7d2
	mov.w	#0x2000,r0                        ; 6720: 79002000
	jsr	@func_1c26:24                       ; 6724: 5e001c26
loc_6728:
	mov.w	#0xe,r1                           ; 6728: 7901000e
	mov.w	#0xf30,r0                         ; 672c: 79000f30
loc_6730:
	jsr	@func_2096:24                       ; 6730: 5e002096
loc_6734:
	mov.b	@0xf7d0:16,r0l                    ; 6734: 6a08f7d0
	inc	r0l                                 ; 6738: 0a08
	mov.b	r0l,@0xf7d0:16                    ; 673a: 6a88f7d0
	cmp.b	#0x8,r0l                          ; 673e: a808
	bcs	loc_676a:8                          ; 6740: 4528
	mov.b	@0xf7cf:16,r0l                    ; 6742: 6a08f7cf
	inc	r0l                                 ; 6746: 0a08
	mov.b	r0l,@0xf7cf:16                    ; 6748: 6a88f7cf
	sub.b	r0l,r0l                           ; 674c: 1888
	mov.b	r0l,@0xf7d0:16                    ; 674e: 6a88f7d0
	mov.b	@0xf7cf:16,r0l                    ; 6752: 6a08f7cf
	cmp.b	#0x2,r0l                          ; 6756: a802
	beq	loc_6760:8                          ; 6758: 4706
	cmp.b	#0x4,r0l                          ; 675a: a804
	bne	loc_676a:8                          ; 675c: 460c
	bra	loc_6764:8                          ; 675e: 4004
loc_6760:
	mov.b	#0x9,r0l                          ; 6760: f809
	bra	loc_6766:8                          ; 6762: 4002
loc_6764:
	mov.b	#0x6,r0l                          ; 6764: f806
loc_6766:
	jsr	@func_36f2:24                       ; 6766: 5e0036f2
loc_676a:
	mov.b	@0xf7cf:16,r0l                    ; 676a: 6a08f7cf
	cmp.b	#0x5,r0l                          ; 676e: a805
	bcs	loc_677c:8                          ; 6770: 450a
	jsr	@func_6a1c:24                       ; 6772: 5e006a1c
	sub.b	r0l,r0l                           ; 6776: 1888
	jsr	@func_69b8:24                       ; 6778: 5e0069b8
loc_677c:
	sub.w	r0,r0                             ; 677c: 1900
	jsr	@func_21fe:24                       ; 677e: 5e0021fe
	rts                                     ; 6782: 5470
