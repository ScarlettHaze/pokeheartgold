	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_60da

func_60da:
	sub.w	#0x10,r7                          ; 60da: 79370010
	mov.w	r0,r6                             ; 60de: 0d06
	jsr	@func_247e:24                       ; 60e0: 5e00247e
	mov.w	#0x80,r0                          ; 60e4: 79000080
	jsr	@func_2488:24                       ; 60e8: 5e002488
	mov.w	r0,r5                             ; 60ec: 0d05
	mov.w	#0x80,r0                          ; 60ee: 79000080
	jsr	@func_2488:24                       ; 60f2: 5e002488
	mov.w	r0,r4                             ; 60f6: 0d04
	sub.b	r0l,r0l                           ; 60f8: 1888
	mov.b	r0l,r2l                           ; 60fa: 0c8a
	mov.w	r5,r3                             ; 60fc: 0d53
loc_60fe:
	mov.b	@er6,r0l                          ; 60fe: 6868
	exts.w	r0                               ; 6100: 17d0
	mov.w	r0,@er3                           ; 6102: 69b0
	inc	r2l                                 ; 6104: 0a0a
	inc.w	#1,r6                             ; 6106: 0b56
	inc.w	#2,r3                             ; 6108: 0bd3
	mov.b	@er6,r0l                          ; 610a: 6868
	exts.w	r0                               ; 610c: 17d0
	mov.w	r0,@er3                           ; 610e: 69b0
	inc	r2l                                 ; 6110: 0a0a
	inc.w	#1,r6                             ; 6112: 0b56
	inc.w	#2,r3                             ; 6114: 0bd3
	mov.b	r2l,r0l                           ; 6116: 0ca8
	cmp.b	#0x40,r0l                         ; 6118: a840
	bcs	loc_60fe:8                          ; 611a: 45e2
	sub.b	r6l,r6l                           ; 611c: 18ee
	sub.w	e0,e0                             ; 611e: 1988
loc_6120:
	mov.b	r6l,r0l                           ; 6120: 0ce8
	extu.w	r0                               ; 6122: 1750
	shll.w	r0                               ; 6124: 1010
	add.w	r4,r0                             ; 6126: 0940
	mov.w	e0,@er0                           ; 6128: 6988
	inc	r6l                                 ; 612a: 0a0e
	mov.b	r6l,r1l                           ; 612c: 0ce9
	extu.w	r1                               ; 612e: 1751
	shll.w	r1                               ; 6130: 1011
	add.w	r4,r1                             ; 6132: 0941
	mov.w	e0,@er1                           ; 6134: 6998
	inc	r6l                                 ; 6136: 0a0e
	cmp.b	#0x40,r6l                         ; 6138: ae40
	bcs	loc_6120:8                          ; 613a: 45e4
	mov.w	#0x1,r3                           ; 613c: 79030001
loc_6140:
	mov.b	#0x20,r6l                         ; 6140: fe20
	bra	loc_6146:8                          ; 6142: 4002
loc_6144:
	shlr.b	r6l                              ; 6144: 110e
loc_6146:
	xor.b	r6l,r3h                           ; 6146: 15e3
	cmp.b	r3h,r6l                           ; 6148: 1c3e
	bhi	loc_6144:8                          ; 614a: 42f8
	cmp.b	r3h,r3l                           ; 614c: 1c3b
	bcc	loc_6180:8                          ; 614e: 4430
	mov.b	r3h,r0l                           ; 6150: 0c38
	extu.w	r0                               ; 6152: 1750
	shll.w	r0                               ; 6154: 1010
	add.w	r5,r0                             ; 6156: 0950
	mov.w	r0,r6                             ; 6158: 0d06
	mov.b	r3l,r1l                           ; 615a: 0cb9
	extu.w	r1                               ; 615c: 1751
	shll.w	r1                               ; 615e: 1011
	add.w	r5,r1                             ; 6160: 0951
	mov.w	r1,e6                             ; 6162: 0d1e
	mov.w	@er1,r1                           ; 6164: 6911
	mov.w	@er0,e0                           ; 6166: 6908
	xor.w	r1,e0                             ; 6168: 6518
	mov.w	e0,@er0                           ; 616a: 6988
	mov.w	e6,r1                             ; 616c: 0de1
	mov.w	@er0,r0                           ; 616e: 6900
	mov.w	@er1,e0                           ; 6170: 6918
	xor.w	r0,e0                             ; 6172: 6508
	mov.w	e0,@er1                           ; 6174: 6998
	mov.w	e6,r0                             ; 6176: 0de0
	mov.w	@er0,r0                           ; 6178: 6900
	mov.w	@er6,e0                           ; 617a: 6968
	xor.w	r0,e0                             ; 617c: 6508
	mov.w	e0,@er6                           ; 617e: 69e8
loc_6180:
	inc	r3l                                 ; 6180: 0a0b
	cmp.b	#0x3f,r3l                         ; 6182: ab3f
	bcs	loc_6140:8                          ; 6184: 45ba
	mov.b	#0x40,r0l                         ; 6186: f840
	mov.b	r0l,@(0x1:16,er7)                 ; 6188: 6ef80001
	mov.b	#0x1,r2h                          ; 618c: f201
	jmp	@loc_62bc:24                        ; 618e: 5a0062bc
loc_6192:
	mov.b	@(0x1:16,er7),r0l                 ; 6192: 6e780001
	shlr.b	r0l                              ; 6196: 1108
	mov.b	r0l,@(0x1:16,er7)                 ; 6198: 6ef80001
	sub.b	r3h,r3h                           ; 619c: 1833
	mov.b	r3h,r2l                           ; 619e: 0c3a
	jmp	@loc_62b0:24                        ; 61a0: 5a0062b0
loc_61a4:
	mov.b	r2l,r0l                           ; 61a4: 0ca8
	extu.w	r0                               ; 61a6: 1750
	mov.w	r0,r6                             ; 61a8: 0d06
	add.w	#0x10,r0                          ; 61aa: 79100010
	shll.w	r0                               ; 61ae: 1010
	mov.w	@(0xbdd0:16,er0),e4               ; 61b0: 6f0cbdd0
	shll.w	r6                               ; 61b4: 1016
	mov.w	@(0xbdd0:16,er6),e3               ; 61b6: 6f6bbdd0
	mov.b	r3h,r3l                           ; 61ba: 0c3b
	jmp	@loc_629e:24                        ; 61bc: 5a00629e
loc_61c0:
	mov.b	r2h,r0l                           ; 61c0: 0c28
	add.b	r3l,r0l                           ; 61c2: 08b8
	extu.w	r0                               ; 61c4: 1750
	shll.w	r0                               ; 61c6: 1010
	mov.w	r0,r6                             ; 61c8: 0d06
	mov.b	r2l,r0l                           ; 61ca: 0ca8
	bne	loc_61d8:8                          ; 61cc: 460a
	mov.w	r5,r0                             ; 61ce: 0d50
	add.w	r6,r0                             ; 61d0: 0960
	mov.w	@er0,e6                           ; 61d2: 690e
	mov.w	r4,r0                             ; 61d4: 0d40
	bra	loc_61e8:8                          ; 61d6: 4010
loc_61d8:
	cmp.b	#0x10,r0l                         ; 61d8: a810
	bne	loc_61ee:8                          ; 61da: 4612
	mov.w	r4,r0                             ; 61dc: 0d40
	add.w	r6,r0                             ; 61de: 0960
	mov.w	@er0,r0                           ; 61e0: 6900
	neg.w	r0                                ; 61e2: 1790
	mov.w	r0,e6                             ; 61e4: 0d0e
	mov.w	r5,r0                             ; 61e6: 0d50
loc_61e8:
	add.w	r6,r0                             ; 61e8: 0960
	mov.w	@er0,e5                           ; 61ea: 690d
	bra	loc_625a:8                          ; 61ec: 406c
loc_61ee:
	mov.w	r4,r0                             ; 61ee: 0d40
	add.w	r6,r0                             ; 61f0: 0960
	mov.w	@er0,e0                           ; 61f2: 6908
	bne	loc_6216:8                          ; 61f4: 4620
	mov.w	r5,r0                             ; 61f6: 0d50
	add.w	r6,r0                             ; 61f8: 0960
	mov.w	@er0,r0                           ; 61fa: 6900
	mov.w	r0,e2                             ; 61fc: 0d0a
	mulxs.w	e4,er0                          ; 61fe: 01c052c0
	shll.l	er0                              ; 6202: 1030
	shll.l	er0                              ; 6204: 1030
	shll.l	er0                              ; 6206: 1030
	shll.l	er0                              ; 6208: 1030
	shll.l	er0                              ; 620a: 1030
	mov.w	e0,e6                             ; 620c: 0d8e
	mov.w	e2,r0                             ; 620e: 0da0
	mulxs.w	e3,er0                          ; 6210: 01c052b0
	bra	loc_624e:8                          ; 6214: 4038
loc_6216:
	mov.w	r5,r0                             ; 6216: 0d50
	add.w	r6,r0                             ; 6218: 0960
	mov.w	@er0,r0                           ; 621a: 6900
	mov.w	r0,e2                             ; 621c: 0d0a
	mulxs.w	e4,er0                          ; 621e: 01c052c0
	mov.w	r4,r1                             ; 6222: 0d41
	add.w	r6,r1                             ; 6224: 0961
	mov.w	@er1,r1                           ; 6226: 6911
	mov.w	r1,@(0x8:16,er7)                  ; 6228: 6ff10008
	mulxs.w	e3,er1                          ; 622c: 01c052b1
	sub.l	er1,er0                           ; 6230: 1a90
	shll.l	er0                              ; 6232: 1030
	shll.l	er0                              ; 6234: 1030
	shll.l	er0                              ; 6236: 1030
	shll.l	er0                              ; 6238: 1030
	shll.l	er0                              ; 623a: 1030
	mov.w	e0,e6                             ; 623c: 0d8e
	mov.w	@(0x8:16,er7),r0                  ; 623e: 6f700008
	mulxs.w	e4,er0                          ; 6242: 01c052c0
	mov.w	e2,r1                             ; 6246: 0da1
	mulxs.w	e3,er1                          ; 6248: 01c052b1
	add.l	er1,er0                           ; 624c: 0a90
loc_624e:
	shll.l	er0                              ; 624e: 1030
	shll.l	er0                              ; 6250: 1030
	shll.l	er0                              ; 6252: 1030
	shll.l	er0                              ; 6254: 1030
	shll.l	er0                              ; 6256: 1030
	mov.w	e0,e5                             ; 6258: 0d8d
loc_625a:
	mov.w	r5,r0                             ; 625a: 0d50
	add.w	r6,r0                             ; 625c: 0960
	mov.b	r3l,r1l                           ; 625e: 0cb9
	extu.w	r1                               ; 6260: 1751
	shll.w	r1                               ; 6262: 1011
	mov.w	r1,e2                             ; 6264: 0d1a
	add.w	r5,r1                             ; 6266: 0951
	mov.w	r1,@(0x8:16,er7)                  ; 6268: 6ff10008
	mov.w	@er1,r1                           ; 626c: 6911
	sub.w	e6,r1                             ; 626e: 19e1
	mov.w	r1,@er0                           ; 6270: 6981
	mov.w	e2,r0                             ; 6272: 0da0
	add.w	r4,r0                             ; 6274: 0940
	mov.w	r0,@(0x6:16,er7)                  ; 6276: 6ff00006
	mov.w	@er0,r0                           ; 627a: 6900
	sub.w	e5,r0                             ; 627c: 19d0
	mov.w	r4,r1                             ; 627e: 0d41
	add.w	r6,r1                             ; 6280: 0961
	mov.w	r0,@er1                           ; 6282: 6990
	mov.w	@(0x8:16,er7),r0                  ; 6284: 6f700008
	mov.w	@er0,e0                           ; 6288: 6908
	add.w	e6,e0                             ; 628a: 09e8
	mov.w	e0,@er0                           ; 628c: 6988
	mov.w	@(0x6:16,er7),r0                  ; 628e: 6f700006
	mov.w	@er0,e0                           ; 6292: 6908
	add.w	e5,e0                             ; 6294: 09d8
	mov.w	e0,@er0                           ; 6296: 6988
	mov.b	@(0xd:16,er7),r0l                 ; 6298: 6e78000d
	add.b	r0l,r3l                           ; 629c: 088b
loc_629e:
	cmp.b	#0x40,r3l                         ; 629e: ab40
	bcs	loc_61c0:16                         ; 62a0: 5850ff1c
	inc	r3h                                 ; 62a4: 0a03
	mov.b	@(0x1:16,er7),r0l                 ; 62a6: 6e780001
	mov.b	r2l,r0h                           ; 62aa: 0ca0
	add.b	r0l,r0h                           ; 62ac: 0880
	mov.b	r0h,r2l                           ; 62ae: 0c0a
loc_62b0:
	mov.b	r2h,r0l                           ; 62b0: 0c28
	cmp.b	r0l,r3h                           ; 62b2: 1c83
	bcs	loc_61a4:16                         ; 62b4: 5850feec
	mov.b	@(0xd:16,er7),r2h                 ; 62b8: 6e72000d
loc_62bc:
	mov.b	r2h,r0l                           ; 62bc: 0c28
	shll.b	r0l                              ; 62be: 1008
	mov.b	r0l,@(0xd:16,er7)                 ; 62c0: 6ef8000d
	cmp.b	#0x40,r0l                         ; 62c4: a840
	bls	loc_6192:16                         ; 62c6: 5830fec8
	sub.w	r6,r6                             ; 62ca: 1966
loc_62cc:
	mov.w	@er5,e6                           ; 62cc: 695e
	blt	loc_62d4:8                          ; 62ce: 4d04
	mov.w	e6,r0                             ; 62d0: 0de0
	bra	loc_62d8:8                          ; 62d2: 4004
loc_62d4:
	mov.w	e6,r0                             ; 62d4: 0de0
	neg.w	r0                                ; 62d6: 1790
loc_62d8:
	mov.w	@er4,e5                           ; 62d8: 694d
	blt	loc_62e0:8                          ; 62da: 4d04
	mov.w	e5,e0                             ; 62dc: 0dd8
	bra	loc_62e4:8                          ; 62de: 4004
loc_62e0:
	mov.w	e5,e0                             ; 62e0: 0dd8
	neg.w	e0                                ; 62e2: 1798
loc_62e4:
	add.w	e0,r0                             ; 62e4: 0980
	mov.w	@(0xf7e6:16,er6),e0               ; 62e6: 6f68f7e6
	add.w	r0,e0                             ; 62ea: 0908
	mov.w	e0,@(0xf7e6:16,er6)               ; 62ec: 6fe8f7e6
	inc.w	#2,r4                             ; 62f0: 0bd4
	inc.w	#2,r5                             ; 62f2: 0bd5
	inc.w	#2,r6                             ; 62f4: 0bd6
	mov.w	@er5,e5                           ; 62f6: 695d
	blt	loc_62fe:8                          ; 62f8: 4d04
	mov.w	e5,r0                             ; 62fa: 0dd0
	bra	loc_6302:8                          ; 62fc: 4004
loc_62fe:
	mov.w	e5,r0                             ; 62fe: 0dd0
	neg.w	r0                                ; 6300: 1790
loc_6302:
	mov.w	@er4,e6                           ; 6302: 694e
	blt	loc_630a:8                          ; 6304: 4d04
	mov.w	e6,e0                             ; 6306: 0de8
	bra	loc_630e:8                          ; 6308: 4004
loc_630a:
	mov.w	e6,e0                             ; 630a: 0de8
	neg.w	e0                                ; 630c: 1798
loc_630e:
	add.w	e0,r0                             ; 630e: 0980
	mov.w	@(0xf7e6:16,er6),e0               ; 6310: 6f68f7e6
	add.w	r0,e0                             ; 6314: 0908
	mov.w	e0,@(0xf7e6:16,er6)               ; 6316: 6fe8f7e6
	inc.w	#2,r4                             ; 631a: 0bd4
	inc.w	#2,r5                             ; 631c: 0bd5
	inc.w	#2,r6                             ; 631e: 0bd6
	cmp.w	#0x40,r6                          ; 6320: 79260040
	bcs	loc_62cc:8                          ; 6324: 45a6
	add.w	#0x10,r7                          ; 6326: 79170010
	rts                                     ; 632a: 5470
