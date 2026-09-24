	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_82ea
	.global loc_858a

func_82ea:
	mov.w	r3,@-er7                          ; 82ea: 6df3
	mov.w	r4,@-er7                          ; 82ec: 6df4
	mov.l	er5,@-er7                         ; 82ee: 01006df5
	mov.l	er6,@-er7                         ; 82f2: 01006df6
	sub.w	#0xc,r7                           ; 82f6: 7937000c
	mov.b	r0l,@(0xa:16,er7)                 ; 82fa: 6ef8000a
	mov.b	r0h,r6l                           ; 82fe: 0c0e
	mov.w	e0,e4                             ; 8300: 0d8c
	mov.b	r6l,r2l                           ; 8302: 0cea
	and.b	#0x7,r2l                          ; 8304: ea07
	mov.b	r2l,@(0xb:16,er7)                 ; 8306: 6efa000b
	mov.b	r6l,r2l                           ; 830a: 0cea
	exts.w	r2                               ; 830c: 17d2
	exts.l	er2                              ; 830e: 17f2
	mov.w	#0x8,e3                           ; 8310: 790b0008
	divxs.w	e3,er2                          ; 8314: 01d053b2
	mov.w	r2,e3                             ; 8318: 0d2b
	mov.b	r6l,r2l                           ; 831a: 0cea
	exts.w	r2                               ; 831c: 17d2
	add.w	r1,r2                             ; 831e: 0912
	add.w	#0x7,r2                           ; 8320: 79120007
	shlr.w	r2                               ; 8324: 1112
	shlr.w	r2                               ; 8326: 1112
	shlr.w	r2                               ; 8328: 1112
	mov.w	r2,e5                             ; 832a: 0d2d
	mov.w	e1,r6                             ; 832c: 0d96
	mov.b	#0x80,r1l                         ; 832e: f980
	mov.b	r1l,@SSER:16                      ; 8330: 6a89f0e3
	bclr	#0x0,@PDR1:8                       ; 8334: 7fd47200
	mov.w	e3,e1                             ; 8338: 0db9
	mov.b	@(0xa:16,er7),r1l                 ; 833a: 6e79000a
	exts.w	r1                               ; 833e: 17d1
	mov.w	r1,@er7                           ; 8340: 69f1
	add.w	e4,r1                             ; 8342: 09c1
	mov.w	r1,@(0x2:16,er7)                  ; 8344: 6ff10002
	dec.w	#1,r2                             ; 8348: 1b52
	mov.w	r2,e2                             ; 834a: 0d2a
	shll.w	e4                               ; 834c: 101c
	mov.w	e4,r4                             ; 834e: 0dc4
	mov.b	@(0xb:16,er7),r1l                 ; 8350: 6e79000b
	extu.w	r1                               ; 8354: 1751
	mov.w	r1,e6                             ; 8356: 0d1e
	mov.w	#0x8,e0                           ; 8358: 79080008
	sub.w	r1,e0                             ; 835c: 1918
	mov.w	e0,@(0x8:16,er7)                  ; 835e: 6ff80008
	jmp	@loc_856e:24                        ; 8362: 5a00856e
loc_8366:
	cmp.w	#0x8,e1                           ; 8366: 79290008
	bge	loc_8576:16                         ; 836a: 58c00208
	mov.w	e1,e1                             ; 836e: 0d99
	bge	loc_8378:8                          ; 8370: 4c06
	add.w	r4,r6                             ; 8372: 0946
	jmp	@loc_856c:24                        ; 8374: 5a00856c
loc_8378:
	mov.b	@(0xa:16,er7),r0l                 ; 8378: 6e78000a
	bge	loc_83ca:8                          ; 837c: 4c4c
	mov.w	e1,r0                             ; 837e: 0d90
	mov.b	r0l,r5l                           ; 8380: 0c8d
	bclr	#0x1,@PDR1:8                       ; 8382: 7fd47210
loc_8386:
	mov.b	@SSSR:16,r0l                      ; 8386: 6a08f0e4
	bld	#0x2,r0l                            ; 838a: 7728
	bcc	loc_8386:8                          ; 838c: 44f8
	mov.b	#0x10,r0l                         ; 838e: f810
	mov.b	r0l,@SSTDR:16                     ; 8390: 6a88f0eb
loc_8394:
	mov.b	@SSSR:16,r0l                      ; 8394: 6a08f0e4
	bld	#0x2,r0l                            ; 8398: 7728
	bcc	loc_8394:8                          ; 839a: 44f8
	sub.b	r0l,r0l                           ; 839c: 1888
	mov.b	r0l,@SSTDR:16                     ; 839e: 6a88f0eb
	cmp.b	#0x7,r5l                          ; 83a2: ad07
	bls	loc_83a8:8                          ; 83a4: 4302
	sleep                                   ; 83a6: 0180
loc_83a8:
	mov.b	@SSSR:16,r0l                      ; 83a8: 6a08f0e4
	bld	#0x2,r0l                            ; 83ac: 7728
	bcc	loc_83a8:8                          ; 83ae: 44f8
	mov.b	@0xf7e4:16,r0l                    ; 83b0: 6a08f7e4
	mov.b	#0x8,r0h                          ; 83b4: f008
	mulxu.b	r0h,r0                          ; 83b6: 5000
	add.b	r5l,r0l                           ; 83b8: 08d8
	add.b	#0xb0,r0l                         ; 83ba: 88b0
	mov.b	r0l,@SSTDR:16                     ; 83bc: 6a88f0eb
loc_83c0:
	mov.b	@SSSR:16,r0l                      ; 83c0: 6a08f0e4
	bld	#0x3,r0l                            ; 83c4: 7738
	bcs	loc_8422:8                          ; 83c6: 455a
	bra	loc_83c0:8                          ; 83c8: 40f6
loc_83ca:
	mov.w	e1,r0                             ; 83ca: 0d90
	mov.b	r0l,r5l                           ; 83cc: 0c8d
	mov.b	@(0xa:16,er7),r5h                 ; 83ce: 6e75000a
	bclr	#0x1,@PDR1:8                       ; 83d2: 7fd47210
loc_83d6:
	mov.b	@SSSR:16,r0l                      ; 83d6: 6a08f0e4
	bld	#0x2,r0l                            ; 83da: 7728
	bcc	loc_83d6:8                          ; 83dc: 44f8
	mov.b	r5h,r0l                           ; 83de: 0c58
	mov.b	#0x10,r1l                         ; 83e0: f910
	sub.b	r0h,r0h                           ; 83e2: 1800
	divxu.b	r1l,r0                          ; 83e4: 5190
	and.b	#0x7,r0l                          ; 83e6: e807
	add.b	#0x10,r0l                         ; 83e8: 8810
	mov.b	r0l,@SSTDR:16                     ; 83ea: 6a88f0eb
loc_83ee:
	mov.b	@SSSR:16,r0l                      ; 83ee: 6a08f0e4
	bld	#0x2,r0l                            ; 83f2: 7728
	bcc	loc_83ee:8                          ; 83f4: 44f8
	and.b	#0xf,r5h                          ; 83f6: e50f
	mov.b	r5h,@SSTDR:16                     ; 83f8: 6a85f0eb
	cmp.b	#0x7,r5l                          ; 83fc: ad07
	bls	loc_8402:8                          ; 83fe: 4302
	sleep                                   ; 8400: 0180
loc_8402:
	mov.b	@SSSR:16,r0l                      ; 8402: 6a08f0e4
	bld	#0x2,r0l                            ; 8406: 7728
	bcc	loc_8402:8                          ; 8408: 44f8
	mov.b	@0xf7e4:16,r0l                    ; 840a: 6a08f7e4
	mov.b	#0x8,r0h                          ; 840e: f008
	mulxu.b	r0h,r0                          ; 8410: 5000
	add.b	r5l,r0l                           ; 8412: 08d8
	add.b	#0xb0,r0l                         ; 8414: 88b0
	mov.b	r0l,@SSTDR:16                     ; 8416: 6a88f0eb
loc_841a:
	mov.b	@SSSR:16,r0l                      ; 841a: 6a08f0e4
	bld	#0x3,r0l                            ; 841e: 7738
	bcc	loc_841a:8                          ; 8420: 44f8
loc_8422:
	bset	#0x1,@PDR1:8                       ; 8422: 7fd47010
	mov.w	@er7,e4                           ; 8426: 697c
	jmp	@loc_855a:24                        ; 8428: 5a00855a
loc_842c:
	mov.w	e4,e4                             ; 842c: 0dcc
	blt	loc_8556:16                         ; 842e: 58d00124
	mov.w	r6,r3                             ; 8432: 0d63
	inc.w	#1,r3                             ; 8434: 0b53
	mov.b	@(0xb:16,er7),r0l                 ; 8436: 6e78000b
	bne	loc_8472:8                          ; 843a: 4636
	mov.b	@er6,r5l                          ; 843c: 686d
	mov.w	e6,r0                             ; 843e: 0de0
loc_8440:
	dec.b	r0l                               ; 8440: 1a08
	bmi	loc_8448:8                          ; 8442: 4b04
	shll.b	r5l                              ; 8444: 100d
	bra	loc_8440:8                          ; 8446: 40f8
loc_8448:
	mov.b	@SSSR:16,r0l                      ; 8448: 6a08f0e4
	bld	#0x2,r0l                            ; 844c: 7728
	bcc	loc_8448:8                          ; 844e: 44f8
	mov.b	r5l,@SSTDR:16                     ; 8450: 6a8df0eb
	mov.b	@er3,r3l                          ; 8454: 683b
	mov.w	e6,r0                             ; 8456: 0de0
loc_8458:
	dec.b	r0l                               ; 8458: 1a08
	bmi	loc_8460:8                          ; 845a: 4b04
	shll.b	r3l                              ; 845c: 100b
	bra	loc_8458:8                          ; 845e: 40f8
loc_8460:
	mov.b	r3l,r5l                           ; 8460: 0cbd
loc_8462:
	mov.b	@SSSR:16,r0l                      ; 8462: 6a08f0e4
	bld	#0x2,r0l                            ; 8466: 7728
	bcc	loc_8462:8                          ; 8468: 44f8
	mov.b	r5l,@SSTDR:16                     ; 846a: 6a8df0eb
	jmp	@loc_8556:24                        ; 846e: 5a008556
loc_8472:
	mov.w	e2,r0                             ; 8472: 0da0
	cmp.w	r0,e1                             ; 8474: 1d09
	bne	loc_84be:8                          ; 8476: 4646
	mov.w	r6,r0                             ; 8478: 0d60
	sub.w	r4,r0                             ; 847a: 1940
	mov.b	@er0,r0l                          ; 847c: 6808
	mov.b	@(0x9:16,er7),r0h                 ; 847e: 6e700009
loc_8482:
	dec.b	r0h                               ; 8482: 1a00
	bmi	loc_848a:8                          ; 8484: 4b04
	shlr.b	r0l                              ; 8486: 1108
	bra	loc_8482:8                          ; 8488: 40f8
loc_848a:
	mov.b	r0l,r5l                           ; 848a: 0c8d
loc_848c:
	mov.b	@SSSR:16,r0l                      ; 848c: 6a08f0e4
	bld	#0x2,r0l                            ; 8490: 7728
	bcc	loc_848c:8                          ; 8492: 44f8
	mov.b	r5l,@SSTDR:16                     ; 8494: 6a8df0eb
	mov.w	r6,r0                             ; 8498: 0d60
	sub.w	r4,r0                             ; 849a: 1940
	mov.b	@(0x1:16,er0),r0l                 ; 849c: 6e080001
	mov.b	@(0x9:16,er7),r0h                 ; 84a0: 6e700009
loc_84a4:
	dec.b	r0h                               ; 84a4: 1a00
	bmi	loc_84ac:8                          ; 84a6: 4b04
	shlr.b	r0l                              ; 84a8: 1108
	bra	loc_84a4:8                          ; 84aa: 40f8
loc_84ac:
	mov.b	r0l,r5l                           ; 84ac: 0c8d
loc_84ae:
	mov.b	@SSSR:16,r0l                      ; 84ae: 6a08f0e4
	bld	#0x2,r0l                            ; 84b2: 7728
	bcc	loc_84ae:8                          ; 84b4: 44f8
	mov.b	r5l,@SSTDR:16                     ; 84b6: 6a8df0eb
	jmp	@loc_8556:24                        ; 84ba: 5a008556
loc_84be:
	cmp.w	e3,e1                             ; 84be: 1db9
	beq	loc_8524:8                          ; 84c0: 4762
	mov.w	r6,r0                             ; 84c2: 0d60
	sub.w	r4,r0                             ; 84c4: 1940
	mov.w	#0x8,e0                           ; 84c6: 79080008
	sub.w	e6,e0                             ; 84ca: 19e8
	mov.b	@(0x1:16,er0),r0l                 ; 84cc: 6e080001
loc_84d0:
	dec.w	#1,e0                             ; 84d0: 1b58
	bmi	loc_84d8:8                          ; 84d2: 4b04
	shlr.b	r0l                              ; 84d4: 1108
	bra	loc_84d0:8                          ; 84d6: 40f8
loc_84d8:
	mov.b	@er6,r5l                          ; 84d8: 686d
	mov.w	e6,r1                             ; 84da: 0de1
loc_84dc:
	dec.b	r1l                               ; 84dc: 1a09
	bmi	loc_84e4:8                          ; 84de: 4b04
	shll.b	r5l                              ; 84e0: 100d
	bra	loc_84dc:8                          ; 84e2: 40f8
loc_84e4:
	or.b	r0l,r5l                            ; 84e4: 148d
loc_84e6:
	mov.b	@SSSR:16,r0l                      ; 84e6: 6a08f0e4
	bld	#0x2,r0l                            ; 84ea: 7728
	bcc	loc_84e6:8                          ; 84ec: 44f8
	mov.b	r5l,@SSTDR:16                     ; 84ee: 6a8df0eb
	mov.w	r6,r0                             ; 84f2: 0d60
	sub.w	r4,r0                             ; 84f4: 1940
	mov.w	#0x8,e0                           ; 84f6: 79080008
	sub.w	e6,e0                             ; 84fa: 19e8
	mov.b	@er0,r0l                          ; 84fc: 6808
loc_84fe:
	dec.w	#1,e0                             ; 84fe: 1b58
	bmi	loc_8506:8                          ; 8500: 4b04
	shlr.b	r0l                              ; 8502: 1108
	bra	loc_84fe:8                          ; 8504: 40f8
loc_8506:
	mov.b	@er3,r3l                          ; 8506: 683b
	mov.w	e6,r1                             ; 8508: 0de1
loc_850a:
	dec.b	r1l                               ; 850a: 1a09
	bmi	loc_8512:8                          ; 850c: 4b04
	shll.b	r3l                              ; 850e: 100b
	bra	loc_850a:8                          ; 8510: 40f8
loc_8512:
	or.b	r3l,r0l                            ; 8512: 14b8
	mov.b	r0l,r5l                           ; 8514: 0c8d
loc_8516:
	mov.b	@SSSR:16,r0l                      ; 8516: 6a08f0e4
	bld	#0x2,r0l                            ; 851a: 7728
	bcc	loc_8516:8                          ; 851c: 44f8
	mov.b	r5l,@SSTDR:16                     ; 851e: 6a8df0eb
	bra	loc_8556:8                          ; 8522: 4032
loc_8524:
	mov.b	@er6,r5l                          ; 8524: 686d
	mov.w	e6,r0                             ; 8526: 0de0
loc_8528:
	dec.b	r0l                               ; 8528: 1a08
	bmi	loc_8530:8                          ; 852a: 4b04
	shll.b	r5l                              ; 852c: 100d
	bra	loc_8528:8                          ; 852e: 40f8
loc_8530:
	mov.b	@SSSR:16,r0l                      ; 8530: 6a08f0e4
	bld	#0x2,r0l                            ; 8534: 7728
	bcc	loc_8530:8                          ; 8536: 44f8
	mov.b	r5l,@SSTDR:16                     ; 8538: 6a8df0eb
	mov.b	@er3,r3l                          ; 853c: 683b
	mov.w	e6,r0                             ; 853e: 0de0
loc_8540:
	dec.b	r0l                               ; 8540: 1a08
	bmi	loc_8548:8                          ; 8542: 4b04
	shll.b	r3l                              ; 8544: 100b
	bra	loc_8540:8                          ; 8546: 40f8
loc_8548:
	mov.b	r3l,r5l                           ; 8548: 0cbd
loc_854a:
	mov.b	@SSSR:16,r0l                      ; 854a: 6a08f0e4
	bld	#0x2,r0l                            ; 854e: 7728
	bcc	loc_854a:8                          ; 8550: 44f8
	mov.b	r5l,@SSTDR:16                     ; 8552: 6a8df0eb
loc_8556:
	inc.w	#1,e4                             ; 8556: 0b5c
	inc.w	#2,r6                             ; 8558: 0bd6
loc_855a:
	mov.w	@(0x2:16,er7),r0                  ; 855a: 6f700002
	cmp.w	r0,e4                             ; 855e: 1d0c
	blt	loc_842c:16                         ; 8560: 58d0fec8
loc_8564:
	mov.b	@SSSR:16,r0l                      ; 8564: 6a08f0e4
	bld	#0x3,r0l                            ; 8568: 7738
	bcc	loc_8564:8                          ; 856a: 44f8
loc_856c:
	inc.w	#1,e1                             ; 856c: 0b59
loc_856e:
	mov.w	e5,r0                             ; 856e: 0dd0
	cmp.w	r0,e1                             ; 8570: 1d09
	blt	loc_8366:16                         ; 8572: 58d0fdf0
loc_8576:
	mov.b	@SSSR:16,r0l                      ; 8576: 6a08f0e4
	bld	#0x3,r0l                            ; 857a: 7738
	bcc	loc_8576:8                          ; 857c: 44f8
	bset	#0x0,@PDR1:8                       ; 857e: 7fd47000
	add.w	#0xc,r7                           ; 8582: 7917000c
	jmp	@loc_8abc:24                        ; 8586: 5a008abc
loc_858a:
	jsr	@RegSave_er2_er6:24                 ; 858a: 5e00ba42
	mov.b	r0l,r5l                           ; 858e: 0c8d
	mov.w	e0,r4                             ; 8590: 0d84
	mov.b	#0x80,r1l                         ; 8592: f980
	mov.b	r1l,@SSER:16                      ; 8594: 6a89f0e3
	bclr	#0x0,@PDR1:8                       ; 8598: 7fd47200
	shlr.b	r0h                              ; 859c: 1100
	shlr.b	r0h                              ; 859e: 1100
	shlr.b	r0h                              ; 85a0: 1100
	mov.b	r0h,r6l                           ; 85a2: 0c0e
	mov.b	r5l,r6h                           ; 85a4: 0cd6
	bclr	#0x1,@PDR1:8                       ; 85a6: 7fd47210
loc_85aa:
	mov.b	@SSSR:16,r0l                      ; 85aa: 6a08f0e4
	bld	#0x2,r0l                            ; 85ae: 7728
	bcc	loc_85aa:8                          ; 85b0: 44f8
	mov.b	r6h,r0l                           ; 85b2: 0c68
	mov.b	#0x10,r1l                         ; 85b4: f910
	sub.b	r0h,r0h                           ; 85b6: 1800
	divxu.b	r1l,r0                          ; 85b8: 5190
	and.b	#0x7,r0l                          ; 85ba: e807
	add.b	#0x10,r0l                         ; 85bc: 8810
	mov.b	r0l,@SSTDR:16                     ; 85be: 6a88f0eb
loc_85c2:
	mov.b	@SSSR:16,r0l                      ; 85c2: 6a08f0e4
	bld	#0x2,r0l                            ; 85c6: 7728
	bcc	loc_85c2:8                          ; 85c8: 44f8
	and.b	#0xf,r6h                          ; 85ca: e60f
	mov.b	r6h,@SSTDR:16                     ; 85cc: 6a86f0eb
	cmp.b	#0x7,r6l                          ; 85d0: ae07
	bls	loc_85d6:8                          ; 85d2: 4302
	sleep                                   ; 85d4: 0180
loc_85d6:
	mov.b	@SSSR:16,r0l                      ; 85d6: 6a08f0e4
	bld	#0x2,r0l                            ; 85da: 7728
	bcc	loc_85d6:8                          ; 85dc: 44f8
	mov.b	@0xf7e4:16,r0l                    ; 85de: 6a08f7e4
	mov.b	#0x8,r0h                          ; 85e2: f008
	mulxu.b	r0h,r0                          ; 85e4: 5000
	add.b	r6l,r0l                           ; 85e6: 08e8
	add.b	#0xb0,r0l                         ; 85e8: 88b0
	mov.b	r0l,@SSTDR:16                     ; 85ea: 6a88f0eb
loc_85ee:
	mov.b	@SSSR:16,r0l                      ; 85ee: 6a08f0e4
	bld	#0x3,r0l                            ; 85f2: 7738
	bcc	loc_85ee:8                          ; 85f4: 44f8
	bset	#0x1,@PDR1:8                       ; 85f6: 7fd47010
	jmp	@loc_8750:24                        ; 85fa: 5a008750
loc_85fe:
	mov.b	@er4+,r6l                         ; 85fe: 6c4e
	cmp.b	#0x20,r6l                         ; 8600: ae20
	bne	loc_8678:8                          ; 8602: 4674
loc_8604:
	mov.b	@SSSR:16,r0l                      ; 8604: 6a08f0e4
	bld	#0x2,r0l                            ; 8608: 7728
	bcc	loc_8604:8                          ; 860a: 44f8
	sub.b	r0l,r0l                           ; 860c: 1888
	mov.b	r0l,@SSTDR:16                     ; 860e: 6a88f0eb
loc_8612:
	mov.b	@SSSR:16,r0l                      ; 8612: 6a08f0e4
	bld	#0x2,r0l                            ; 8616: 7728
	bcc	loc_8612:8                          ; 8618: 44f8
	sub.b	r0l,r0l                           ; 861a: 1888
	mov.b	r0l,@SSTDR:16                     ; 861c: 6a88f0eb
loc_8620:
	mov.b	@SSSR:16,r0l                      ; 8620: 6a08f0e4
	bld	#0x2,r0l                            ; 8624: 7728
	bcc	loc_8620:8                          ; 8626: 44f8
	sub.b	r0l,r0l                           ; 8628: 1888
	mov.b	r0l,@SSTDR:16                     ; 862a: 6a88f0eb
loc_862e:
	mov.b	@SSSR:16,r0l                      ; 862e: 6a08f0e4
	bld	#0x2,r0l                            ; 8632: 7728
	bcc	loc_862e:8                          ; 8634: 44f8
	sub.b	r0l,r0l                           ; 8636: 1888
	mov.b	r0l,@SSTDR:16                     ; 8638: 6a88f0eb
loc_863c:
	mov.b	@SSSR:16,r0l                      ; 863c: 6a08f0e4
	bld	#0x2,r0l                            ; 8640: 7728
	bcc	loc_863c:8                          ; 8642: 44f8
	sub.b	r0l,r0l                           ; 8644: 1888
	mov.b	r0l,@SSTDR:16                     ; 8646: 6a88f0eb
loc_864a:
	mov.b	@SSSR:16,r0l                      ; 864a: 6a08f0e4
	bld	#0x2,r0l                            ; 864e: 7728
	bcc	loc_864a:8                          ; 8650: 44f8
	sub.b	r0l,r0l                           ; 8652: 1888
	mov.b	r0l,@SSTDR:16                     ; 8654: 6a88f0eb
loc_8658:
	mov.b	@SSSR:16,r0l                      ; 8658: 6a08f0e4
	bld	#0x2,r0l                            ; 865c: 7728
	bcc	loc_8658:8                          ; 865e: 44f8
	sub.b	r0l,r0l                           ; 8660: 1888
	mov.b	r0l,@SSTDR:16                     ; 8662: 6a88f0eb
loc_8666:
	mov.b	@SSSR:16,r0l                      ; 8666: 6a08f0e4
	bld	#0x2,r0l                            ; 866a: 7728
	bcc	loc_8666:8                          ; 866c: 44f8
	sub.b	r0l,r0l                           ; 866e: 1888
	mov.b	r0l,@SSTDR:16                     ; 8670: 6a88f0eb
	jmp	@loc_874e:24                        ; 8674: 5a00874e
loc_8678:
	cmp.b	#0x39,r6l                         ; 8678: ae39
	bls	loc_86e6:8                          ; 867a: 436a
	add.b	#0xc9,r6l                         ; 867c: 8ec9
	mov.b	r6l,r6h                           ; 867e: 0ce6
	bclr	#0x0,@PDR1:8                       ; 8680: 7fd47200
	sub.b	r6l,r6l                           ; 8684: 18ee
loc_8686:
	mov.b	@SSSR:16,r0l                      ; 8686: 6a08f0e4
	bld	#0x2,r0l                            ; 868a: 7728
	bcc	loc_8686:8                          ; 868c: 44f8
	mov.b	#0x3,r0l                          ; 868e: f803
	mulxu.b	r6h,r0                          ; 8690: 5060
	mov.b	r6l,r1l                           ; 8692: 0ce9
	extu.w	r1                               ; 8694: 1751
	add.w	r1,r0                             ; 8696: 0910
	mov.b	@(0xbcf4:16,er0),r0l              ; 8698: 6e08bcf4
	mov.b	r0l,@SSTDR:16                     ; 869c: 6a88f0eb
loc_86a0:
	mov.b	@SSSR:16,r0l                      ; 86a0: 6a08f0e4
	bld	#0x2,r0l                            ; 86a4: 7728
	bcc	loc_86a0:8                          ; 86a6: 44f8
	mov.b	#0x3,r0l                          ; 86a8: f803
	mulxu.b	r6h,r0                          ; 86aa: 5060
	mov.b	r6l,r1l                           ; 86ac: 0ce9
	extu.w	r1                               ; 86ae: 1751
	add.w	r1,r0                             ; 86b0: 0910
	mov.b	@(0xbcf4:16,er0),r0l              ; 86b2: 6e08bcf4
	mov.b	r0l,@SSTDR:16                     ; 86b6: 6a88f0eb
	inc	r6l                                 ; 86ba: 0a0e
	cmp.b	#0x3,r6l                          ; 86bc: ae03
	bcs	loc_8686:8                          ; 86be: 45c6
loc_86c0:
	mov.b	@SSSR:16,r0l                      ; 86c0: 6a08f0e4
	bld	#0x2,r0l                            ; 86c4: 7728
	bcc	loc_86c0:8                          ; 86c6: 44f8
	sub.b	r0l,r0l                           ; 86c8: 1888
	mov.b	r0l,@SSTDR:16                     ; 86ca: 6a88f0eb
loc_86ce:
	mov.b	@SSSR:16,r0l                      ; 86ce: 6a08f0e4
	bld	#0x2,r0l                            ; 86d2: 7728
	bcc	loc_86ce:8                          ; 86d4: 44f8
	sub.b	r0l,r0l                           ; 86d6: 1888
	mov.b	r0l,@SSTDR:16                     ; 86d8: 6a88f0eb
loc_86dc:
	mov.b	@SSSR:16,r0l                      ; 86dc: 6a08f0e4
	bld	#0x3,r0l                            ; 86e0: 7738
	bcs	loc_874e:8                          ; 86e2: 456a
	bra	loc_86dc:8                          ; 86e4: 40f6
loc_86e6:
	add.b	#0xd0,r6l                         ; 86e6: 8ed0
	mov.b	r6l,r6h                           ; 86e8: 0ce6
	bclr	#0x0,@PDR1:8                       ; 86ea: 7fd47200
	sub.b	r6l,r6l                           ; 86ee: 18ee
loc_86f0:
	mov.b	@SSSR:16,r0l                      ; 86f0: 6a08f0e4
	bld	#0x2,r0l                            ; 86f4: 7728
	bcc	loc_86f0:8                          ; 86f6: 44f8
	mov.b	#0x3,r0l                          ; 86f8: f803
	mulxu.b	r6h,r0                          ; 86fa: 5060
	mov.b	r6l,r1l                           ; 86fc: 0ce9
	extu.w	r1                               ; 86fe: 1751
	add.w	r1,r0                             ; 8700: 0910
	mov.b	@(0xbcf4:16,er0),r0l              ; 8702: 6e08bcf4
	mov.b	r0l,@SSTDR:16                     ; 8706: 6a88f0eb
loc_870a:
	mov.b	@SSSR:16,r0l                      ; 870a: 6a08f0e4
	bld	#0x2,r0l                            ; 870e: 7728
	bcc	loc_870a:8                          ; 8710: 44f8
	mov.b	#0x3,r0l                          ; 8712: f803
	mulxu.b	r6h,r0                          ; 8714: 5060
	mov.b	r6l,r1l                           ; 8716: 0ce9
	extu.w	r1                               ; 8718: 1751
	add.w	r1,r0                             ; 871a: 0910
	mov.b	@(0xbcf4:16,er0),r0l              ; 871c: 6e08bcf4
	mov.b	r0l,@SSTDR:16                     ; 8720: 6a88f0eb
	inc	r6l                                 ; 8724: 0a0e
	cmp.b	#0x3,r6l                          ; 8726: ae03
	bcs	loc_86f0:8                          ; 8728: 45c6
loc_872a:
	mov.b	@SSSR:16,r0l                      ; 872a: 6a08f0e4
	bld	#0x2,r0l                            ; 872e: 7728
	bcc	loc_872a:8                          ; 8730: 44f8
	sub.b	r0l,r0l                           ; 8732: 1888
	mov.b	r0l,@SSTDR:16                     ; 8734: 6a88f0eb
loc_8738:
	mov.b	@SSSR:16,r0l                      ; 8738: 6a08f0e4
	bld	#0x2,r0l                            ; 873c: 7728
	bcc	loc_8738:8                          ; 873e: 44f8
	sub.b	r0l,r0l                           ; 8740: 1888
	mov.b	r0l,@SSTDR:16                     ; 8742: 6a88f0eb
loc_8746:
	mov.b	@SSSR:16,r0l                      ; 8746: 6a08f0e4
	bld	#0x3,r0l                            ; 874a: 7738
	bcc	loc_8746:8                          ; 874c: 44f8
loc_874e:
	add.b	#0x4,r5l                          ; 874e: 8d04
loc_8750:
	mov.b	@er4,r0l                          ; 8750: 6848
	bne	loc_85fe:16                         ; 8752: 5860fea8
loc_8756:
	mov.b	@SSSR:16,r0l                      ; 8756: 6a08f0e4
	bld	#0x3,r0l                            ; 875a: 7738
	bcc	loc_8756:8                          ; 875c: 44f8
	bset	#0x0,@PDR1:8                       ; 875e: 7fd47000
	jmp	@RegRestore_er2_er6:24              ; 8762: 5a00ba62
