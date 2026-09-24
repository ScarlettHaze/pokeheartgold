	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_4178

func_4178:
	subs	#2,er7                             ; 4178: 1b87
	mov.b	@0xf7cf:16,r6l                    ; 417a: 6a0ef7cf
	mov.b	@0xf7ce:16,r0l                    ; 417e: 6a08f7ce
	beq	loc_4190:8                          ; 4182: 470c
	cmp.b	#0x1,r0l                          ; 4184: a801
	beq	loc_41a4:8                          ; 4186: 471c
	cmp.b	#0x3,r0l                          ; 4188: a803
	bne	loc_429c:16                         ; 418a: 5860010e
	bra	loc_41c0:8                          ; 418e: 4030
loc_4190:
	cmp.b	#0x4,r6l                          ; 4190: ae04
	bls	loc_429c:16                         ; 4192: 58300106
	mov.b	#0x4,r0l                          ; 4196: f804
	mov.b	r0l,@0xf7ce:16                    ; 4198: 6a88f7ce
	sub.b	r0l,r0l                           ; 419c: 1888
	mov.b	r0l,@0xf7cf:16                    ; 419e: 6a88f7cf
	bra	loc_41b8:8                          ; 41a2: 4014
loc_41a4:
	mov.b	r6l,r6l                           ; 41a4: 0cee
	beq	loc_429c:16                         ; 41a6: 587000f2
	mov.b	#0x3,r0l                          ; 41aa: f803
	mov.b	r0l,@0xf7ce:16                    ; 41ac: 6a88f7ce
	sub.b	r0l,r0l                           ; 41b0: 1888
	mov.b	r0l,@0xf7cf:16                    ; 41b2: 6a88f7cf
	mov.b	#0x6,r0l                          ; 41b6: f806
loc_41b8:
	jsr	@func_36f2:24                       ; 41b8: 5e0036f2
	jmp	@loc_429c:24                        ; 41bc: 5a00429c
loc_41c0:
	jsr	@func_369c:24                       ; 41c0: 5e00369c
	mov.b	r0l,r0l                           ; 41c4: 0c88
	bne	loc_429c:16                         ; 41c6: 586000d2
	mov.b	@0xf7cf:16,r0l                    ; 41ca: 6a08f7cf
	cmp.b	#0x8,r0l                          ; 41ce: a808
	bls	loc_429c:16                         ; 41d0: 583000c8
	mov.w	#0xbe,e6                          ; 41d4: 790e00be
	mov.w	#func_2488,r6                     ; 41d8: 79062488
	mov.b	@0xf7d0:16,r0l                    ; 41dc: 6a08f7d0
	beq	loc_41ea:8                          ; 41e0: 4708
	cmp.b	#0x2,r0l                          ; 41e2: a802
	bne	loc_4292:16                         ; 41e4: 586000aa
	bra	loc_423a:8                          ; 41e8: 4050
loc_41ea:
	jsr	@func_247e:24                       ; 41ea: 5e00247e
	mov.w	e6,r0                             ; 41ee: 0de0
	jsr	@er6                                ; 41f0: 5d60
	mov.w	r0,r5                             ; 41f2: 0d05
	mov.w	e6,r1                             ; 41f4: 0de1
	mov.w	r0,e0                             ; 41f6: 0d08
	mov.w	#0x8f00,r0                        ; 41f8: 79008f00
	jsr	@func_5384:24                       ; 41fc: 5e005384
	mov.w	#0x10,r0                          ; 4200: 79000010
	jsr	@er6                                ; 4204: 5d60
	mov.w	r0,e0                             ; 4206: 0d08
	mov.w	#0xba44,r0                        ; 4208: 7900ba44
	mov.w	#0x10,r1                          ; 420c: 79010010
	jsr	@func_5384:24                       ; 4210: 5e005384
	mov.b	#0x4,r0l                          ; 4214: f804
	mov.w	r0,@-er7                          ; 4216: 6df0
	sub.b	r1h,r1h                           ; 4218: 1811
	mov.b	@0xf797:16,r0l                    ; 421a: 6a08f797
	bld	#0x0,r0l                            ; 421e: 7708
	bst	#0x0,r1h                            ; 4220: 6701
	mov.w	#0x88,r0                          ; 4222: 79000088
	mov.w	r1,@(0x2:16,er7)                  ; 4226: 6ff10002
	jsr	@er6                                ; 422a: 5d60
	mov.w	r0,e0                             ; 422c: 0d08
	mov.w	r5,r0                             ; 422e: 0d50
	sub.w	e1,e1                             ; 4230: 1999
	mov.b	@(0x2:16,er7),r1h                 ; 4232: 6e710002
	mov.b	#0x1d,r1l                         ; 4236: f91d
	bra	loc_428c:8                          ; 4238: 4052
loc_423a:
	jsr	@func_247e:24                       ; 423a: 5e00247e
	mov.w	e6,r0                             ; 423e: 0de0
	jsr	@er6                                ; 4240: 5d60
	mov.w	r0,r4                             ; 4242: 0d04
	mov.w	e6,r1                             ; 4244: 0de1
	mov.w	r0,e0                             ; 4246: 0d08
	mov.w	#0x8f00,r0                        ; 4248: 79008f00
	jsr	@func_5384:24                       ; 424c: 5e005384
	mov.w	#0x188,r0                         ; 4250: 79000188
	jsr	@er6                                ; 4254: 5d60
	mov.w	r0,r5                             ; 4256: 0d05
	mov.w	r0,e0                             ; 4258: 0d08
	mov.w	#D_bd40,r0                        ; 425a: 7900bd40
	mov.w	#0x188,r1                         ; 425e: 79010188
	jsr	@func_5384:24                       ; 4262: 5e005384
	sub.b	r0l,r0l                           ; 4266: 1888
	mov.w	r0,@-er7                          ; 4268: 6df0
	sub.b	r1h,r1h                           ; 426a: 1811
	mov.b	@0xf797:16,r0l                    ; 426c: 6a08f797
	bld	#0x0,r0l                            ; 4270: 7708
	bst	#0x0,r1h                            ; 4272: 6701
	mov.w	#0x88,r0                          ; 4274: 79000088
	mov.w	r1,@(0x2:16,er7)                  ; 4278: 6ff10002
	jsr	@er6                                ; 427c: 5d60
	mov.w	r0,e0                             ; 427e: 0d08
	mov.w	@(0x6:16,er5),e1                  ; 4280: 6f590006
	mov.w	r4,r0                             ; 4284: 0d40
	mov.b	@(0x2:16,er7),r1h                 ; 4286: 6e710002
	mov.b	#0x1c,r1l                         ; 428a: f91c
loc_428c:
	jsr	@func_4546:24                       ; 428c: 5e004546
	adds	#2,er7                             ; 4290: 0b87
loc_4292:
	jsr	@func_6a1c:24                       ; 4292: 5e006a1c
	sub.b	r0l,r0l                           ; 4296: 1888
	jsr	@func_69b8:24                       ; 4298: 5e0069b8
loc_429c:
	adds	#2,er7                             ; 429c: 0b87
	rts                                     ; 429e: 5470
