	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_9698

func_9698:
	mov.l	er6,@-er7                         ; 9698: 01006df6
	mov.w	r0,e4                             ; 969c: 0d0c
	sub.w	e1,e1                             ; 969e: 1999
	mov.w	e4,r1                             ; 96a0: 0dc1
	inc.w	#2,r1                             ; 96a2: 0bd1
	sub.b	r6l,r6l                           ; 96a4: 18ee
	mov.w	r1,r5                             ; 96a6: 0d15
loc_96a8:
	mov.w	@er5,r0                           ; 96a8: 6950
	cmp.w	r0,e1                             ; 96aa: 1d09
	bcc	loc_96b0:8                          ; 96ac: 4402
	mov.w	r0,e1                             ; 96ae: 0d09
loc_96b0:
	inc	r6l                                 ; 96b0: 0a0e
	inc.w	#2,r5                             ; 96b2: 0bd5
	cmp.b	#0x1d,r6l                         ; 96b4: ae1d
	bcs	loc_96a8:8                          ; 96b6: 45f0
	sub.w	r5,r5                             ; 96b8: 1955
	mov.b	#0xff,r6h                         ; 96ba: f6ff
	mov.w	e4,r1                             ; 96bc: 0dc1
	add.w	#0xa,r1                           ; 96be: 7911000a
	sub.b	r6l,r6l                           ; 96c2: 18ee
loc_96c4:
	mov.b	r6l,r0l                           ; 96c4: 0ce8
	extu.w	r0                               ; 96c6: 1750
	mov.w	#D_bef8,r4                        ; 96c8: 7904bef8
	add.w	r0,r4                             ; 96cc: 0904
	mov.b	@er4,r0l                          ; 96ce: 6848
	extu.w	r0                               ; 96d0: 1750
	shll.w	r0                               ; 96d2: 1010
	add.w	r1,r0                             ; 96d4: 0910
	mov.w	@er0,e6                           ; 96d6: 690e
	cmp.w	#0x200,e6                         ; 96d8: 792e0200
	bcs	loc_96f2:8                          ; 96dc: 4514
	mov.w	r5,r0                             ; 96de: 0d50
	mov.w	r0,e0                             ; 96e0: 0d08
	add.w	r0,r0                             ; 96e2: 0900
	add.w	e0,r0                             ; 96e4: 0980
	mov.w	e6,e0                             ; 96e6: 0de8
	shll.w	e0                               ; 96e8: 1018
	cmp.w	e0,r0                             ; 96ea: 1d80
	bcc	loc_96f2:8                          ; 96ec: 4404
	mov.b	@er4,r6h                          ; 96ee: 6846
	mov.w	e6,r5                             ; 96f0: 0de5
loc_96f2:
	inc	r6l                                 ; 96f2: 0a0e
	cmp.b	#0xa,r6l                          ; 96f4: ae0a
	bcs	loc_96c4:8                          ; 96f6: 45cc
	mov.b	@0xf8ef:16,r0l                    ; 96f8: 6a08f8ef
	beq	loc_9712:8                          ; 96fc: 4714
	shll.w	r5                               ; 96fe: 1015
	shll.w	r5                               ; 9700: 1015
	mov.w	r5,r0                             ; 9702: 0d50
	extu.l	er0                              ; 9704: 1770
	mov.w	#0x3,r1                           ; 9706: 79010003
	divxu.w	r1,er0                          ; 970a: 5310
	cmp.w	r0,e1                             ; 970c: 1d09
	bls	loc_971a:8                          ; 970e: 430a
	bra	loc_9718:8                          ; 9710: 4006
loc_9712:
	shll.w	r5                               ; 9712: 1015
	cmp.w	r5,e1                             ; 9714: 1d59
	bls	loc_971a:8                          ; 9716: 4302
loc_9718:
	mov.b	#0xff,r6h                         ; 9718: f6ff
loc_971a:
	cmp.b	#0xff,r6h                         ; 971a: a6ff
	bne	loc_9732:8                          ; 971c: 4614
	sub.l	er0,er0                           ; 971e: 1a80
	mov.b	r0l,@0xf8ee:16                    ; 9720: 6a88f8ee
	mov.l	er0,@0xf8ea:16                    ; 9724: 01006b80f8ea
	mov.b	#0x1,r1l                          ; 972a: f901
	mov.b	r1l,@0xf8ef:16                    ; 972c: 6a89f8ef
	bra	loc_9748:8                          ; 9730: 4016
loc_9732:
	sub.b	r0l,r0l                           ; 9732: 1888
	mov.b	r0l,@0xf8ef:16                    ; 9734: 6a88f8ef
	mov.w	e4,r2                             ; 9738: 0dc2
	add.w	#0xa,r2                           ; 973a: 7912000a
	mov.w	r2,e0                             ; 973e: 0d28
	mov.b	r6h,r0l                           ; 9740: 0c68
	jsr	@func_9342:24                       ; 9742: 5e009342
	exts.l	er0                              ; 9746: 17f0
loc_9748:
	mov.l	@er7+,er6                         ; 9748: 01006d76
	rts                                     ; 974c: 5470
