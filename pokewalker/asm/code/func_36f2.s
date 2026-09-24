	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_36f2

func_36f2:
	jsr	@RegSave_er2_er6:24                 ; 36f2: 5e00ba42
	subs	#4,er7                             ; 36f6: 1b97
	mov.w	#0xf7c4,r6                        ; 36f8: 7906f7c4
	mov.b	r0l,r5l                           ; 36fc: 0c8d
	mov.b	@0xf7c6:16,r0h                    ; 36fe: 6a00f7c6
	beq	loc_37c0:16                         ; 3702: 587000ba
	mov.w	#0xf0f2,r0                        ; 3706: 7900f0f2
	bclr	#0x0,@er0                          ; 370a: 7d007200
	mov.b	r5l,r1l                           ; 370e: 0cd9
	mov.w	#0x8cb0,r5                        ; 3710: 79058cb0
	mov.b	r1l,r0l                           ; 3714: 0c98
	extu.w	r0                               ; 3716: 1750
	shll.w	r0                               ; 3718: 1010
	shll.w	r0                               ; 371a: 1010
	add.w	r0,r5                             ; 371c: 0905
	mov.w	r7,e0                             ; 371e: 0d78
	mov.w	r5,r0                             ; 3720: 0d50
	mov.w	#0x4,r1                           ; 3722: 79010004
	jsr	@func_5384:24                       ; 3726: 5e005384
	mov.w	@er7,e6                           ; 372a: 697e
	mov.w	e6,r0                             ; 372c: 0de0
	mov.b	r0h,r0l                           ; 372e: 0c08
	sub.b	r0h,r0h                           ; 3730: 1800
	mov.w	e6,r1                             ; 3732: 0de1
	mov.b	r1l,r1h                           ; 3734: 0c91
	sub.b	r1l,r1l                           ; 3736: 1899
	or.w	r1,r0                              ; 3738: 6410
	mov.w	r0,e6                             ; 373a: 0d0e
	mov.w	#0x8cf0,r0                        ; 373c: 79008cf0
	add.w	r0,e6                             ; 3740: 090e
	mov.b	@(0x2:16,er7),r0l                 ; 3742: 6e780002
	cmp.b	#0xc0,r0l                         ; 3746: a8c0
	bhi	loc_37b8:8                          ; 3748: 426e
	mov.w	#0xf826,r0                        ; 374a: 7900f826
	mov.w	r0,@er6                           ; 374e: 69e0
	mov.b	@(0x2:16,er7),r1l                 ; 3750: 6e790002
	extu.w	r1                               ; 3754: 1751
	mov.w	e6,r0                             ; 3756: 0de0
	mov.w	@er6,e0                           ; 3758: 6968
	jsr	@func_5384:24                       ; 375a: 5e005384
	sub.w	r5,r5                             ; 375e: 1955
	bra	loc_3778:8                          ; 3760: 4016
loc_3762:
	mov.b	r5l,r1l                           ; 3762: 0cd9
	extu.w	r1                               ; 3764: 1751
	shll.w	r1                               ; 3766: 1011
	mov.w	@er6,r0                           ; 3768: 6960
	add.w	r0,r1                             ; 376a: 0901
	mov.b	@er1,r0l                          ; 376c: 6818
	add.b	r0l,r5h                           ; 376e: 0885
	mov.b	@(0x1:16,er1),r1l                 ; 3770: 6e190001
	add.b	r1l,r5h                           ; 3774: 0895
	inc	r5l                                 ; 3776: 0a0d
loc_3778:
	mov.b	@(0x2:16,er7),r0l                 ; 3778: 6e780002
	extu.w	r0                               ; 377c: 1750
	shlr.w	r0                               ; 377e: 1110
	mov.b	r5l,r1l                           ; 3780: 0cd9
	extu.w	r1                               ; 3782: 1751
	cmp.w	r0,r1                             ; 3784: 1d01
	bcs	loc_3762:8                          ; 3786: 45da
	mov.b	@(0x3:16,er7),r0l                 ; 3788: 6e780003
	cmp.b	r0l,r5h                           ; 378c: 1c85
	bne	loc_37a8:8                          ; 378e: 4618
	mov.b	@(0x2:16,er7),r0l                 ; 3790: 6e780002
	extu.w	r0                               ; 3794: 1750
	shlr.w	r0                               ; 3796: 1110
	shll.w	r0                               ; 3798: 1010
	mov.w	@er6,r1                           ; 379a: 6961
	add.w	r0,r1                             ; 379c: 0901
	mov.b	@(0xffff:16,er1),r1l              ; 379e: 6e19ffff
	and.b	#0x7f,r1l                         ; 37a2: e97f
	cmp.b	#0x7e,r1l                         ; 37a4: a97e
	bcc	loc_37ae:8                          ; 37a6: 4406
loc_37a8:
	sub.w	r0,r0                             ; 37a8: 1900
	mov.w	r0,@er6                           ; 37aa: 69e0
	bra	loc_37b8:8                          ; 37ac: 400a
loc_37ae:
	sub.w	r0,r0                             ; 37ae: 1900
	mov.w	r0,@0xf7c8:16                     ; 37b0: 6b80f7c8
	mov.w	r0,@0xf7ca:16                     ; 37b4: 6b80f7ca
loc_37b8:
	mov.w	#0xf0f2,r0                        ; 37b8: 7900f0f2
	bset	#0x0,@er0                          ; 37bc: 7d007000
loc_37c0:
	adds	#4,er7                             ; 37c0: 0b97
	jmp	@RegRestore_er2_er6:24              ; 37c2: 5a00ba62
