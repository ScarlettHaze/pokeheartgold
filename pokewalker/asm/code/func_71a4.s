	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_71a4

func_71a4:
	mov.b	r0l,r6l                           ; 71a4: 0c8e
	jsr	@func_247e:24                       ; 71a6: 5e00247e
	mov.w	#0x100,r0                         ; 71aa: 79000100
	jsr	@func_2488:24                       ; 71ae: 5e002488
	mov.w	r0,r5                             ; 71b2: 0d05
	mov.b	r6l,r6l                           ; 71b4: 0cee
	beq	loc_71c8:8                          ; 71b6: 4710
	mov.w	#D_bce4,e0                        ; 71b8: 7908bce4
	mov.b	#0x8,r1h                          ; 71bc: f108
	mov.b	r1h,r1l                           ; 71be: 0c19
	mov.w	#0x2c,r0                          ; 71c0: 7900002c
	jsr	@func_80ac:24                       ; 71c4: 5e0080ac
loc_71c8:
	mov.w	#D_bb74,r4                        ; 71c8: 7904bb74
	sub.w	r6,r6                             ; 71cc: 1966
loc_71ce:
	mov.w	r4,r0                             ; 71ce: 0d40
	add.w	r6,r0                             ; 71d0: 0960
	mov.w	r5,r1                             ; 71d2: 0d51
	add.w	r6,r1                             ; 71d4: 0961
	mov.b	@er0,r0l                          ; 71d6: 6808
	mov.b	r0l,@er1                          ; 71d8: 6898
	inc.w	#1,r6                             ; 71da: 0b56
	cmp.w	#0x100,r6                         ; 71dc: 79260100
	bcs	loc_71ce:8                          ; 71e0: 45ec
	mov.w	#D_bc94,e1                        ; 71e2: 7909bc94
	mov.w	r5,r0                             ; 71e6: 0d50
	add.w	#0x50,r0                          ; 71e8: 79100050
	mov.w	r0,e0                             ; 71ec: 0d08
	sub.w	r6,r6                             ; 71ee: 1966
	mov.b	#0x20,r1l                         ; 71f0: f920
loc_71f2:
	mov.w	e0,r4                             ; 71f2: 0d84
	add.w	r6,r4                             ; 71f4: 0964
	mov.w	e1,r3                             ; 71f6: 0d93
	add.w	r6,r3                             ; 71f8: 0963
	mov.b	@er3,r0l                          ; 71fa: 6838
	mov.b	#0x8,r0h                          ; 71fc: f008
	mulxu.b	r0h,r0                          ; 71fe: 5000
	mov.b	@er4,r0h                          ; 7200: 6840
	or.b	r0l,r0h                            ; 7202: 1480
	mov.b	r0h,@er4                          ; 7204: 68c0
	mov.b	@er3,r0l                          ; 7206: 6838
	sub.b	r0h,r0h                           ; 7208: 1800
	divxu.b	r1l,r0                          ; 720a: 5190
	mov.b	@(0x40:16,er4),r0h                ; 720c: 6e400040
	or.b	r0l,r0h                            ; 7210: 1480
	mov.b	r0h,@(0x40:16,er4)                ; 7212: 6ec00040
	inc.w	#1,r6                             ; 7216: 0b56
	cmp.w	#0x20,r6                          ; 7218: 79260020
	bcs	loc_71f2:8                          ; 721c: 45d4
	mov.w	r5,e0                             ; 721e: 0d58
	mov.b	r1l,r1h                           ; 7220: 0c91
	mov.w	#0x1020,r0                        ; 7222: 79001020
	jsr	@func_80ac:24                       ; 7226: 5e0080ac
	rts                                     ; 722a: 5470
