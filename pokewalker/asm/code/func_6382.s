	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_6382

func_6382:
	mov.w	#0x28,e6                          ; 6382: 790e0028
	jsr	@func_247e:24                       ; 6386: 5e00247e
	mov.w	#0xbe,r0                          ; 638a: 790000be
	jsr	@func_2488:24                       ; 638e: 5e002488
	mov.w	#0x38,r0                          ; 6392: 79000038
	jsr	@func_2488:24                       ; 6396: 5e002488
	mov.w	r0,r4                             ; 639a: 0d04
	mov.w	r0,e0                             ; 639c: 0d08
	mov.w	#0x38,r1                          ; 639e: 79010038
	mov.w	#0xf6c0,r0                        ; 63a2: 7900f6c0
	jsr	@func_5384:24                       ; 63a6: 5e005384
	mov.w	e6,r0                             ; 63aa: 0de0
	jsr	@func_2488:24                       ; 63ac: 5e002488
	mov.w	r0,r6                             ; 63b0: 0d06
	mov.w	r0,e0                             ; 63b2: 0d08
	mov.w	#0xcec8,r0                        ; 63b4: 7900cec8
	mov.w	e6,r1                             ; 63b8: 0de1
	jsr	@func_5384:24                       ; 63ba: 5e005384
	mov.l	@0xf79c:16,er3                    ; 63be: 01006b03f79c
	mov.l	@er4,er0                          ; 63c4: 01006940
	add.l	er0,er3                           ; 63c8: 0a83
	mov.w	@0xf7a0:16,r0                     ; 63ca: 6b00f7a0
	mov.w	@(0x4:16,er4),e0                  ; 63ce: 6f480004
	add.w	e0,r0                             ; 63d2: 0980
	mov.w	#0xa,e0                           ; 63d4: 7908000a
	mulxu.w	e0,er0                          ; 63d8: 5280
	extu.l	er0                              ; 63da: 1770
	add.l	er0,er3                           ; 63dc: 0a83
	cmp.l	#0x4e20,er3                       ; 63de: 7a2300004e20
	bls	loc_63ec:8                          ; 63e4: 4306
	mov.l	#0x4e20,er3                       ; 63e6: 7a0300004e20
loc_63ec:
	sub.b	r5l,r5l                           ; 63ec: 18dd
loc_63ee:
	extu.w	r5                               ; 63ee: 1755
	mov.w	r5,r0                             ; 63f0: 0d50
	shll.w	r0                               ; 63f2: 1010
	shll.w	r0                               ; 63f4: 1010
	add.w	r6,r0                             ; 63f6: 0960
	mov.w	@er0,e0                           ; 63f8: 6908
	beq	loc_6402:8                          ; 63fa: 4706
	inc	r5l                                 ; 63fc: 0a0d
	cmp.b	#0xa,r5l                          ; 63fe: ad0a
	bcs	loc_63ee:8                          ; 6400: 45ec
loc_6402:
	sub.b	r0l,r0l                           ; 6402: 1888
	mov.b	r0l,@0xf7d3:16                    ; 6404: 6a88f7d3
	cmp.b	#0xa,r5l                          ; 6408: ad0a
	bcs	loc_6438:8                          ; 640a: 452c
	mov.l	er3,er0                           ; 640c: 0fb0
	sub.l	er1,er1                           ; 640e: 1a91
	mov.b	#0xc8,r1l                         ; 6410: f9c8
	jsr	@func_b94e:24                       ; 6412: 5e00b94e
	mov.b	r0l,@0xf7d3:16                    ; 6416: 6a88f7d3
	bne	loc_6422:8                          ; 641a: 4606
	mov.b	#0x1,r0l                          ; 641c: f801
	mov.b	r0l,@0xf7d3:16                    ; 641e: 6a88f7d3
loc_6422:
	mov.b	@0xf7d3:16,r0l                    ; 6422: 6a08f7d3
	cmp.b	#0x63,r0l                         ; 6426: a863
	bls	loc_6430:8                          ; 6428: 4306
	mov.b	#0x63,r0l                         ; 642a: f863
	mov.b	r0l,@0xf7d3:16                    ; 642c: 6a88f7d3
loc_6430:
	mov.b	@0xf7d3:16,r0l                    ; 6430: 6a08f7d3
	jsr	@func_1f3e:24                       ; 6434: 5e001f3e
loc_6438:
	cmp.l	#0x4e20,er3                       ; 6438: 7a2300004e20
	bcs	loc_6468:8                          ; 643e: 4528
	mov.b	#0x2c,r0l                         ; 6440: f82c
	mov.b	r0l,@0xf7d1:16                    ; 6442: 6a88f7d1
	mov.b	@0xf7d3:16,r0l                    ; 6446: 6a08f7d3
	bne	loc_6526:16                         ; 644a: 586000d8
	mov.l	@0xf79c:16,er0                    ; 644e: 01006b00f79c
	mov.l	@er4,er1                          ; 6454: 01006941
	cmp.l	er1,er0                           ; 6458: 1f90
	bls	loc_6462:8                          ; 645a: 4306
	sub.b	r0l,r0l                           ; 645c: 1888
	jmp	@loc_6508:24                        ; 645e: 5a006508
loc_6462:
	mov.b	#0x1,r0l                          ; 6462: f801
	jmp	@loc_6508:24                        ; 6464: 5a006508
loc_6468:
	cmp.l	#0x2710,er3                       ; 6468: 7a2300002710
	bcs	loc_6494:8                          ; 646e: 4524
	mov.b	#0x2d,r0l                         ; 6470: f82d
	mov.b	r0l,@0xf7d1:16                    ; 6472: 6a88f7d1
	mov.b	@0xf7d3:16,r0l                    ; 6476: 6a08f7d3
	bne	loc_6526:16                         ; 647a: 586000a8
	mov.l	@0xf79c:16,er0                    ; 647e: 01006b00f79c
	mov.l	@er4,er1                          ; 6484: 01006941
	cmp.l	er1,er0                           ; 6488: 1f90
	bls	loc_6490:8                          ; 648a: 4304
	mov.b	#0x2,r0l                          ; 648c: f802
	bra	loc_6508:8                          ; 648e: 4078
loc_6490:
	mov.b	#0x3,r0l                          ; 6490: f803
	bra	loc_6508:8                          ; 6492: 4074
loc_6494:
	cmp.l	#0x1388,er3                       ; 6494: 7a2300001388
	bcs	loc_64be:8                          ; 649a: 4522
	mov.b	#0x2e,r0l                         ; 649c: f82e
	mov.b	r0l,@0xf7d1:16                    ; 649e: 6a88f7d1
	mov.b	@0xf7d3:16,r0l                    ; 64a2: 6a08f7d3
	bne	loc_6526:8                          ; 64a6: 467e
	mov.l	@0xf79c:16,er0                    ; 64a8: 01006b00f79c
	mov.l	@er4,er1                          ; 64ae: 01006941
	cmp.l	er1,er0                           ; 64b2: 1f90
	bls	loc_64ba:8                          ; 64b4: 4304
	mov.b	#0x4,r0l                          ; 64b6: f804
	bra	loc_6508:8                          ; 64b8: 404e
loc_64ba:
	mov.b	#0x5,r0l                          ; 64ba: f805
	bra	loc_6508:8                          ; 64bc: 404a
loc_64be:
	cmp.l	#0x9c4,er3                        ; 64be: 7a23000009c4
	bcs	loc_64e8:8                          ; 64c4: 4522
	mov.b	#0x2f,r0l                         ; 64c6: f82f
	mov.b	r0l,@0xf7d1:16                    ; 64c8: 6a88f7d1
	mov.b	@0xf7d3:16,r0l                    ; 64cc: 6a08f7d3
	bne	loc_6526:8                          ; 64d0: 4654
	mov.l	@0xf79c:16,er0                    ; 64d2: 01006b00f79c
	mov.l	@er4,er1                          ; 64d8: 01006941
	cmp.l	er1,er0                           ; 64dc: 1f90
	bls	loc_64e4:8                          ; 64de: 4304
	mov.b	#0x6,r0l                          ; 64e0: f806
	bra	loc_6508:8                          ; 64e2: 4024
loc_64e4:
	mov.b	#0x7,r0l                          ; 64e4: f807
	bra	loc_6508:8                          ; 64e6: 4020
loc_64e8:
	mov.b	#0x30,r0l                         ; 64e8: f830
	mov.b	r0l,@0xf7d1:16                    ; 64ea: 6a88f7d1
	mov.b	@0xf7d3:16,r0l                    ; 64ee: 6a08f7d3
	bne	loc_6526:8                          ; 64f2: 4632
	mov.l	@0xf79c:16,er0                    ; 64f4: 01006b00f79c
	mov.l	@er4,er1                          ; 64fa: 01006941
	cmp.l	er1,er0                           ; 64fe: 1f90
	bls	loc_6506:8                          ; 6500: 4304
	mov.b	#0x8,r0l                          ; 6502: f808
	bra	loc_6508:8                          ; 6504: 4002
loc_6506:
	mov.b	#0x9,r0l                          ; 6506: f809
loc_6508:
	mov.b	r0l,@0xf7d2:16                    ; 6508: 6a88f7d2
	jsr	@func_1eee:24                       ; 650c: 5e001eee
	extu.w	r5                               ; 6510: 1755
	shll.w	r5                               ; 6512: 1015
	shll.w	r5                               ; 6514: 1015
	add.w	r6,r5                             ; 6516: 0965
	mov.w	r0,@er5                           ; 6518: 69d0
	mov.w	r6,e0                             ; 651a: 0d68
	mov.w	#0xcec8,r0                        ; 651c: 7900cec8
	mov.w	e6,r1                             ; 6520: 0de1
	jsr	@func_524e:24                       ; 6522: 5e00524e
loc_6526:
	rts                                     ; 6526: 5470
