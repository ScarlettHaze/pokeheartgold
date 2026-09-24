	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_703c

func_703c:
	jsr	@func_247e:24                       ; 703c: 5e00247e
	mov.w	#0x100,r0                         ; 7040: 79000100
	jsr	@func_2488:24                       ; 7044: 5e002488
	mov.w	r0,r5                             ; 7048: 0d05
	mov.w	#D_bb74,e1                        ; 704a: 7909bb74
	sub.w	e0,e0                             ; 704e: 1988
loc_7050:
	mov.w	e1,r0                             ; 7050: 0d90
	add.w	e0,r0                             ; 7052: 0980
	mov.w	r5,r1                             ; 7054: 0d51
	add.w	e0,r1                             ; 7056: 0981
	mov.b	@er0,r0l                          ; 7058: 6808
	mov.b	r0l,@er1                          ; 705a: 6898
	inc.w	#1,e0                             ; 705c: 0b58
	cmp.w	#0x100,e0                         ; 705e: 79280100
	bcs	loc_7050:8                          ; 7062: 45ec
	mov.w	#D_bc74,e5                        ; 7064: 790dbc74
	mov.w	r5,e1                             ; 7068: 0d59
	add.w	#0x50,e1                          ; 706a: 79190050
	sub.w	e0,e0                             ; 706e: 1988
	mov.b	#0x20,r2l                         ; 7070: fa20
loc_7072:
	mov.w	e1,r0                             ; 7072: 0d90
	add.w	e0,r0                             ; 7074: 0980
	mov.w	e5,r3                             ; 7076: 0dd3
	add.w	e0,r3                             ; 7078: 0983
	mov.b	@er3,r1l                          ; 707a: 6839
	mov.b	#0x8,r1h                          ; 707c: f108
	mulxu.b	r1h,r1                          ; 707e: 5011
	mov.b	@er0,r1h                          ; 7080: 6801
	or.b	r1l,r1h                            ; 7082: 1491
	mov.b	r1h,@er0                          ; 7084: 6881
	mov.b	@er3,r1l                          ; 7086: 6839
	sub.b	r1h,r1h                           ; 7088: 1811
	divxu.b	r2l,r1                          ; 708a: 51a1
	mov.b	@(0x40:16,er0),r1h                ; 708c: 6e010040
	or.b	r1l,r1h                            ; 7090: 1491
	mov.b	r1h,@(0x40:16,er0)                ; 7092: 6e810040
	inc.w	#1,e0                             ; 7096: 0b58
	cmp.w	#0x20,e0                          ; 7098: 79280020
	bcs	loc_7072:8                          ; 709c: 45d4
	mov.b	@0xf7ac:16,r0l                    ; 709e: 6a08f7ac
	extu.w	r0                               ; 70a2: 1750
	shar.w	r0                               ; 70a4: 1190
	shar.w	r0                               ; 70a6: 1190
	btst	#0x0,r0l                           ; 70a8: 7308
	beq	loc_710a:8                          ; 70aa: 475e
	mov.w	#D_bcd4,r3                        ; 70ac: 7903bcd4
	mov.w	r5,e1                             ; 70b0: 0d59
	add.w	#0xd8,e1                          ; 70b2: 791900d8
	sub.w	e0,e0                             ; 70b6: 1988
loc_70b8:
	mov.w	e1,r0                             ; 70b8: 0d90
	add.w	e0,r0                             ; 70ba: 0980
	mov.w	r3,r1                             ; 70bc: 0d31
	add.w	e0,r1                             ; 70be: 0981
	mov.b	@er1,r2l                          ; 70c0: 681a
	mov.b	#0x10,r2h                         ; 70c2: f210
	mulxu.b	r2h,r2                          ; 70c4: 5022
	mov.b	@er0,r1l                          ; 70c6: 6809
	or.b	r2l,r1l                            ; 70c8: 14a9
	mov.b	r1l,@er0                          ; 70ca: 6889
	inc.w	#1,e0                             ; 70cc: 0b58
	cmp.w	#0x10,e0                          ; 70ce: 79280010
	bcs	loc_70b8:8                          ; 70d2: 45e4
	mov.w	r5,e0                             ; 70d4: 0d58
	mov.b	#0x20,r1h                         ; 70d6: f120
	mov.b	r1h,r1l                           ; 70d8: 0c19
	mov.b	#0x10,r0h                         ; 70da: f010
	mov.b	r1h,r0l                           ; 70dc: 0c18
	jsr	@func_80ac:24                       ; 70de: 5e0080ac
	sub.w	e0,e0                             ; 70e2: 1988
loc_70e4:
	mov.w	r3,r0                             ; 70e4: 0d30
	add.w	e0,r0                             ; 70e6: 0980
	mov.b	@er0,r1l                          ; 70e8: 6809
	mov.b	#0x10,r0l                         ; 70ea: f810
	sub.b	r1h,r1h                           ; 70ec: 1811
	divxu.b	r0l,r1                          ; 70ee: 5181
	mov.w	r5,r0                             ; 70f0: 0d50
	add.w	e0,r0                             ; 70f2: 0980
	mov.b	r1l,@er0                          ; 70f4: 6889
	inc.w	#1,e0                             ; 70f6: 0b58
	cmp.w	#0x10,e0                          ; 70f8: 79280010
	bcs	loc_70e4:8                          ; 70fc: 45e6
	mov.w	r5,e0                             ; 70fe: 0d58
	mov.w	#0x808,r1                         ; 7100: 79010808
	mov.w	#func_302c,r0                     ; 7104: 7900302c
	bra	loc_7114:8                          ; 7108: 400a
loc_710a:
	mov.w	r5,e0                             ; 710a: 0d58
	mov.b	r2l,r1h                           ; 710c: 0ca1
	mov.b	r1h,r1l                           ; 710e: 0c19
	mov.b	#0x10,r0h                         ; 7110: f010
	mov.b	r1h,r0l                           ; 7112: 0c18
loc_7114:
	jsr	@func_80ac:24                       ; 7114: 5e0080ac
	rts                                     ; 7118: 5470
