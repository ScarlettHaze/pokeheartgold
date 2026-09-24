	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_47ce

func_47ce:
	mov.b	@0xf7cf:16,r0l                    ; 47ce: 6a08f7cf
	beq	loc_47f0:8                          ; 47d2: 471c
	cmp.b	#0x1,r0l                          ; 47d4: a801
	beq	loc_4874:16                         ; 47d6: 5870009a
	cmp.b	#0x2,r0l                          ; 47da: a802
	beq	loc_48d0:16                         ; 47dc: 587000f0
	cmp.b	#0x3,r0l                          ; 47e0: a803
	beq	loc_4958:16                         ; 47e2: 58700172
	cmp.b	#0x4,r0l                          ; 47e6: a804
	bne	loc_499a:16                         ; 47e8: 586001ae
	jmp	@loc_4984:24                        ; 47ec: 5a004984
loc_47f0:
	mov.b	#0x2,r0l                          ; 47f0: f802
	jsr	@func_9c40:24                       ; 47f2: 5e009c40
	mov.b	r0l,r0l                           ; 47f6: 0c88
	beq	loc_4822:8                          ; 47f8: 4728
	mov.b	@0xf7d1:16,r0l                    ; 47fa: 6a08f7d1
	mov.b	@0xf7d4:16,r0h                    ; 47fe: 6a00f7d4
	cmp.b	r0h,r0l                           ; 4802: 1c08
	bne	loc_480c:8                          ; 4804: 4606
	mov.b	#0x1,r0l                          ; 4806: f801
	jmp	@loc_489e:24                        ; 4808: 5a00489e
loc_480c:
	sub.b	r0l,r0l                           ; 480c: 1888
	jsr	@func_36f2:24                       ; 480e: 5e0036f2
	mov.b	#0x1,r0l                          ; 4812: f801
	mov.b	r0l,@0xf7cf:16                    ; 4814: 6a88f7cf
	mov.b	#0x4,r0l                          ; 4818: f804
	mov.b	r0l,@0xf7d0:16                    ; 481a: 6a88f7d0
	jmp	@loc_499a:24                        ; 481e: 5a00499a
loc_4822:
	mov.b	#0x4,r0l                          ; 4822: f804
	jsr	@func_9c40:24                       ; 4824: 5e009c40
	mov.b	r0l,r0l                           ; 4828: 0c88
	beq	loc_484c:8                          ; 482a: 4720
	mov.b	@0xf7d1:16,r0l                    ; 482c: 6a08f7d1
	extu.w	r0                               ; 4830: 1750
	add.w	#0x5,r0                           ; 4832: 79100005
	exts.l	er0                              ; 4836: 17f0
	mov.w	#0x6,r1                           ; 4838: 79010006
	divxs.w	r1,er0                          ; 483c: 01d05310
	mov.w	e0,r0                             ; 4840: 0d80
	mov.b	r0l,@0xf7d1:16                    ; 4842: 6a88f7d1
	mov.b	#0x2,r0l                          ; 4846: f802
	jsr	@func_36f2:24                       ; 4848: 5e0036f2
loc_484c:
	mov.b	#0x8,r0l                          ; 484c: f808
	jsr	@func_9c40:24                       ; 484e: 5e009c40
	mov.b	r0l,r0l                           ; 4852: 0c88
	beq	loc_499a:16                         ; 4854: 58700142
	mov.b	@0xf7d1:16,r0l                    ; 4858: 6a08f7d1
	extu.w	r0                               ; 485c: 1750
	inc.w	#1,r0                             ; 485e: 0b50
	exts.l	er0                              ; 4860: 17f0
	mov.w	#0x6,r1                           ; 4862: 79010006
	divxs.w	r1,er0                          ; 4866: 01d05310
	mov.w	e0,r0                             ; 486a: 0d80
	mov.b	r0l,@0xf7d1:16                    ; 486c: 6a88f7d1
	mov.b	#0x2,r0l                          ; 4870: f802
	bra	loc_489e:8                          ; 4872: 402a
loc_4874:
	mov.b	@0xf7d0:16,r0l                    ; 4874: 6a08f7d0
	bne	loc_499a:16                         ; 4878: 5860011e
	jsr	@func_369c:24                       ; 487c: 5e00369c
	mov.b	r0l,r0l                           ; 4880: 0c88
	bne	loc_499a:16                         ; 4882: 58600114
	mov.b	@0xf7d1:16,r0l                    ; 4886: 6a08f7d1
	mov.b	@0xf7d3:16,r0h                    ; 488a: 6a00f7d3
	cmp.b	r0h,r0l                           ; 488e: 1c08
	bne	loc_48a6:8                          ; 4890: 4614
	mov.b	#0x2,r0l                          ; 4892: f802
	mov.b	r0l,@0xf7cf:16                    ; 4894: 6a88f7cf
	jsr	@func_4af2:24                       ; 4898: 5e004af2
	mov.b	#0x5,r0l                          ; 489c: f805
loc_489e:
	jsr	@func_36f2:24                       ; 489e: 5e0036f2
	jmp	@loc_499a:24                        ; 48a2: 5a00499a
loc_48a6:
	mov.b	#0x3,r0l                          ; 48a6: f803
	mov.b	r0l,@0xf7cf:16                    ; 48a8: 6a88f7cf
	mov.b	#0x4,r0l                          ; 48ac: f804
	jsr	@func_36f2:24                       ; 48ae: 5e0036f2
	mov.b	@0xf7d2:16,r0l                    ; 48b2: 6a08f7d2
	cmp.b	#0x2,r0l                          ; 48b6: a802
	bne	loc_48c2:8                          ; 48b8: 4608
	mov.b	@0xf7d1:16,r0l                    ; 48ba: 6a08f7d1
	mov.b	r0l,@0xf7d4:16                    ; 48be: 6a88f7d4
loc_48c2:
	mov.b	@0xf7d2:16,r0l                    ; 48c2: 6a08f7d2
	dec.b	r0l                               ; 48c6: 1a08
	mov.b	r0l,@0xf7d2:16                    ; 48c8: 6a88f7d2
	jmp	@loc_499a:24                        ; 48cc: 5a00499a
loc_48d0:
	mov.b	#0xe,r0l                          ; 48d0: f80e
	jsr	@func_9c40:24                       ; 48d2: 5e009c40
	mov.b	r0l,r0l                           ; 48d6: 0c88
	beq	loc_499a:16                         ; 48d8: 587000be
	mov.b	@0xf797:16,r0l                    ; 48dc: 6a08f797
	bld	#0x0,r0l                            ; 48e0: 7708
	bcs	loc_4968:16                         ; 48e2: 58500082
	mov.b	@0xf7d6:16,r6l                    ; 48e6: 6a0ef7d6
	cmp.b	#0x3,r6l                          ; 48ea: ae03
	bne	loc_4900:8                          ; 48ec: 4612
	mov.b	#0x1,r0l                          ; 48ee: f801
	mov.b	r0l,@0xf7d0:16                    ; 48f0: 6a88f7d0
	mov.b	@0xf7ce:16,r0l                    ; 48f4: 6a08f7ce
	jsr	@func_3a68:24                       ; 48f8: 5e003a68
	mov.b	#0x7,r0l                          ; 48fc: f807
	bra	loc_4974:8                          ; 48fe: 4074
loc_4900:
	mov.b	r6l,r0l                           ; 4900: 0ce8
	extu.w	r0                               ; 4902: 1750
	shll.w	r0                               ; 4904: 1010
	shll.w	r0                               ; 4906: 1010
	add.w	#0xcebc,r0                        ; 4908: 7910cebc
	mov.w	#0x2,r1                           ; 490c: 79010002
	mov.w	#0xf7d8,e0                        ; 4910: 7908f7d8
	jsr	@func_524e:24                       ; 4914: 5e00524e
	mov.b	@0xf7b6:16,r0l                    ; 4918: 6a08f7b6
	bld	#0x2,r0l                            ; 491c: 7728
	bcc	loc_4968:8                          ; 491e: 4448
	mov.w	#0xbe,r0                          ; 4920: 790000be
	jsr	@func_2488:24                       ; 4924: 5e002488
	mov.w	r0,r6                             ; 4928: 0d06
	mov.w	r0,e0                             ; 492a: 0d08
	mov.w	#0xbe,r1                          ; 492c: 790100be
	mov.w	#0x8f00,r0                        ; 4930: 79008f00
	jsr	@func_5384:24                       ; 4934: 5e005384
	sub.b	r0l,r0l                           ; 4938: 1888
	mov.w	r0,@-er7                          ; 493a: 6df0
	mov.w	#0x88,r0                          ; 493c: 79000088
	jsr	@func_2488:24                       ; 4940: 5e002488
	mov.w	r0,e0                             ; 4944: 0d08
	mov.w	r6,r0                             ; 4946: 0d60
	mov.w	@0xf7d8:16,e1                     ; 4948: 6b09f7d8
	mov.w	#0xb,r1                           ; 494c: 7901000b
	jsr	@func_4546:24                       ; 4950: 5e004546
	adds	#2,er7                             ; 4954: 0b87
	bra	loc_4968:8                          ; 4956: 4010
loc_4958:
	mov.b	#0xe,r0l                          ; 4958: f80e
	jsr	@func_9c40:24                       ; 495a: 5e009c40
	mov.b	r0l,r0l                           ; 495e: 0c88
	beq	loc_499a:8                          ; 4960: 4738
	mov.b	@0xf7d2:16,r0l                    ; 4962: 6a08f7d2
	bne	loc_497a:8                          ; 4966: 4612
loc_4968:
	sub.b	r0l,r0l                           ; 4968: 1888
	jsr	@func_36f2:24                       ; 496a: 5e0036f2
	jsr	@func_6a1c:24                       ; 496e: 5e006a1c
	sub.b	r0l,r0l                           ; 4972: 1888
loc_4974:
	jsr	@func_69b8:24                       ; 4974: 5e0069b8
	bra	loc_499a:8                          ; 4978: 4020
loc_497a:
	sub.b	r0l,r0l                           ; 497a: 1888
	jsr	@func_36f2:24                       ; 497c: 5e0036f2
	mov.b	#0x4,r0l                          ; 4980: f804
	bra	loc_4996:8                          ; 4982: 4012
loc_4984:
	mov.b	#0xe,r0l                          ; 4984: f80e
	jsr	@func_9c40:24                       ; 4986: 5e009c40
	mov.b	r0l,r0l                           ; 498a: 0c88
	beq	loc_499a:8                          ; 498c: 470c
	sub.b	r0l,r0l                           ; 498e: 1888
	jsr	@func_36f2:24                       ; 4990: 5e0036f2
	sub.b	r0l,r0l                           ; 4994: 1888
loc_4996:
	mov.b	r0l,@0xf7cf:16                    ; 4996: 6a88f7cf
loc_499a:
	rts                                     ; 499a: 5470
