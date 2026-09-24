	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_6816

func_6816:
	jsr	@func_247e:24                       ; 6816: 5e00247e
	mov.w	#0xbe,r0                          ; 681a: 790000be
	jsr	@func_2488:24                       ; 681e: 5e002488
	mov.w	r0,r3                             ; 6822: 0d03
	mov.w	r0,e0                             ; 6824: 0d08
	mov.w	#0xbe,r1                          ; 6826: 790100be
	mov.w	#0x8f00,r0                        ; 682a: 79008f00
	jsr	@func_5384:24                       ; 682e: 5e005384
	mov.w	#0x38,r0                          ; 6832: 79000038
	jsr	@func_2488:24                       ; 6836: 5e002488
	mov.w	r0,r5                             ; 683a: 0d05
	mov.w	r0,e0                             ; 683c: 0d08
	mov.w	#0x38,r1                          ; 683e: 79010038
	mov.w	#0xf6c0,r0                        ; 6842: 7900f6c0
	jsr	@func_5384:24                       ; 6846: 5e005384
	mov.w	#0x88,r0                          ; 684a: 79000088
	jsr	@func_2488:24                       ; 684e: 5e002488
	mov.w	r0,r6                             ; 6852: 0d06
	mov.l	@(0x8:16,er5),er1                 ; 6854: 01006f510008
	mov.l	er1,@(0x4:16,er0)                 ; 685a: 01006f810004
	mov.w	@(0xc:16,er5),e0                  ; 6860: 6f58000c
	mov.w	e0,@(0x8:16,er0)                  ; 6864: 6f880008
	mov.w	@(0xe:16,er5),e0                  ; 6868: 6f58000e
	mov.w	e0,@(0xc:16,er0)                  ; 686c: 6f88000c
	mov.b	@(0x36:16,er5),r1l                ; 6870: 6e590036
	and.b	#0x1f,r1l                         ; 6874: e91f
	mov.b	@(0x86:16,er0),r1h                ; 6876: 6e010086
	and.b	#0xe0,r1h                         ; 687a: e1e0
	and.b	#0x1f,r1l                         ; 687c: e91f
	or.b	r1l,r1h                            ; 687e: 1491
	mov.b	r1h,@(0x86:16,er0)                ; 6880: 6e810086
	mov.b	@(0x36:16,er5),r1l                ; 6884: 6e590036
	rotl.b	r1l                              ; 6888: 1289
	rotl.b	r1l                              ; 688a: 1289
	rotl.b	r1l                              ; 688c: 1289
	and.b	#0x3,r1l                          ; 688e: e903
	add.w	#0x86,r0                          ; 6890: 79100086
	mov.w	#0x102,r2                         ; 6894: 79020102
	jsr	@func_b924:24                       ; 6898: 5e00b924
	mov.w	#0x86,r0                          ; 689c: 79000086
	add.w	r6,r0                             ; 68a0: 0960
	mov.b	@(0x36:16,er5),r1l                ; 68a2: 6e590036
	bld	#0x7,r1l                            ; 68a6: 7779
	bst	#0x7,@er0                           ; 68a8: 7d006770
	mov.w	@(0x4:16,er5),r0                  ; 68ac: 6f500004
	mov.w	r0,@(0x7a:16,er6)                 ; 68b0: 6fe0007a
	mov.l	@er5,er0                          ; 68b4: 01006950
	mov.l	er0,@(0x80:16,er6)                ; 68b8: 01006fe00080
	sub.b	r4l,r4l                           ; 68be: 18cc
loc_68c0:
	extu.w	r4                               ; 68c0: 1754
	mov.w	r4,e0                             ; 68c2: 0d48
	mov.w	#0x36,r0                          ; 68c4: 79000036
	add.w	r6,r0                             ; 68c8: 0960
	add.w	e0,r0                             ; 68ca: 0980
	mov.w	#0x10,r1                          ; 68cc: 79010010
	add.w	r5,r1                             ; 68d0: 0951
	add.w	e0,r1                             ; 68d2: 0981
	mov.b	@er1,r1l                          ; 68d4: 6819
	mov.b	r1l,@er0                          ; 68d6: 6889
	inc	r4l                                 ; 68d8: 0a0c
	cmp.b	#0x16,r4l                         ; 68da: ac16
	bcs	loc_68c0:8                          ; 68dc: 45e2
	sub.b	r4l,r4l                           ; 68de: 18cc
loc_68e0:
	extu.w	r4                               ; 68e0: 1754
	mov.w	r4,e0                             ; 68e2: 0d48
	mov.w	#0x10,r0                          ; 68e4: 79000010
	add.w	r6,r0                             ; 68e8: 0960
	add.w	e0,r0                             ; 68ea: 0980
	mov.w	#0x26,r1                          ; 68ec: 79010026
	add.w	r5,r1                             ; 68f0: 0951
	add.w	e0,r1                             ; 68f2: 0981
	mov.b	@er1,r1l                          ; 68f4: 6819
	mov.b	r1l,@er0                          ; 68f6: 6889
	inc	r4l                                 ; 68f8: 0a0c
	cmp.b	#0x12,r4l                         ; 68fa: ac12
	bcs	loc_68e0:8                          ; 68fc: 45e2
	mov.b	@0xf7d3:16,r0l                    ; 68fe: 6a08f7d3
	bne	loc_6938:8                          ; 6902: 4634
	mov.b	@0xf7d2:16,r5l                    ; 6904: 6a0df7d2
	cmp.b	#0xa,r5l                          ; 6908: ad0a
	bcc	loc_6938:8                          ; 690a: 442c
	mov.b	r5l,r1l                           ; 690c: 0cd9
	extu.w	r1                               ; 690e: 1751
	shll.w	r1                               ; 6910: 1011
	mov.w	#0x8c,r0                          ; 6912: 7900008c
	add.w	r3,r0                             ; 6916: 0930
	add.w	r1,r0                             ; 6918: 0910
	sub.b	r1l,r1l                           ; 691a: 1899
	mov.w	r1,@-er7                          ; 691c: 6df1
	sub.b	r1h,r1h                           ; 691e: 1811
	mov.b	@0xf797:16,r1l                    ; 6920: 6a09f797
	bld	#0x0,r1l                            ; 6924: 7709
	bst	#0x0,r1h                            ; 6926: 6701
	mov.b	r5l,r1l                           ; 6928: 0cd9
	add.b	#0x1,r1l                          ; 692a: 8901
	mov.w	@er0,e1                           ; 692c: 6909
	mov.w	r6,e0                             ; 692e: 0d68
	mov.w	r3,r0                             ; 6930: 0d30
	jsr	@func_4546:24                       ; 6932: 5e004546
	adds	#2,er7                             ; 6936: 0b87
loc_6938:
	rts                                     ; 6938: 5470
