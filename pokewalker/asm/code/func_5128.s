	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_5128

func_5128:
	jsr	@RegSave_er2_er6:24                 ; 5128: 5e00ba42
	subs	#4,er7                             ; 512c: 1b97
	mov.w	r7,r4                             ; 512e: 0d74
	mov.w	r0,e5                             ; 5130: 0d0d
	mov.w	e0,e6                             ; 5132: 0d8e
	mov.w	r1,r5                             ; 5134: 0d15
	mov.w	e1,r6                             ; 5136: 0d96
	mov.w	r6,r1                             ; 5138: 0d61
	mov.w	r5,e0                             ; 513a: 0d58
	mov.w	e6,r0                             ; 513c: 0de0
	jsr	@func_5384:24                       ; 513e: 5e005384
	mov.w	r4,r3                             ; 5142: 0d43
	inc.w	#1,r3                             ; 5144: 0b53
	mov.b	#0x1,r0l                          ; 5146: f801
	mov.b	r0l,@er3                          ; 5148: 68b8
	sub.b	r0l,r0l                           ; 514a: 1888
	bra	loc_5160:8                          ; 514c: 4012
loc_514e:
	mov.b	r2l,r0l                           ; 514e: 0ca8
	extu.w	r0                               ; 5150: 1750
	add.w	r5,r0                             ; 5152: 0950
	mov.b	@er0,r0l                          ; 5154: 6808
	mov.b	@er3,r0h                          ; 5156: 6830
	add.b	r0l,r0h                           ; 5158: 0880
	mov.b	r0h,@er3                          ; 515a: 68b0
	mov.b	r2l,r0l                           ; 515c: 0ca8
	inc	r0l                                 ; 515e: 0a08
loc_5160:
	mov.b	r0l,r2l                           ; 5160: 0c8a
	extu.w	r0                               ; 5162: 1750
	cmp.w	r6,r0                             ; 5164: 1d60
	bcs	loc_514e:8                          ; 5166: 45e6
	mov.w	r6,r1                             ; 5168: 0d61
	mov.w	r5,e0                             ; 516a: 0d58
	mov.w	e5,r0                             ; 516c: 0dd0
	jsr	@func_5384:24                       ; 516e: 5e005384
	mov.b	#0x1,r0l                          ; 5172: f801
	mov.b	r0l,@er4                          ; 5174: 68c8
	sub.b	r0l,r0l                           ; 5176: 1888
	bra	loc_518c:8                          ; 5178: 4012
loc_517a:
	mov.b	r2l,r0l                           ; 517a: 0ca8
	extu.w	r0                               ; 517c: 1750
	add.w	r5,r0                             ; 517e: 0950
	mov.b	@er0,r0l                          ; 5180: 6808
	mov.b	@er4,r0h                          ; 5182: 6840
	add.b	r0l,r0h                           ; 5184: 0880
	mov.b	r0h,@er4                          ; 5186: 68c0
	mov.b	r2l,r0l                           ; 5188: 0ca8
	inc	r0l                                 ; 518a: 0a08
loc_518c:
	mov.b	r0l,r2l                           ; 518c: 0c8a
	extu.w	r0                               ; 518e: 1750
	cmp.w	r6,r0                             ; 5190: 1d60
	bcs	loc_517a:8                          ; 5192: 45e6
	sub.b	r0l,r0l                           ; 5194: 1888
	mov.b	r0l,r2l                           ; 5196: 0c8a
	mov.w	e5,e3                             ; 5198: 0ddb
	add.w	r6,e3                             ; 519a: 096b
	mov.w	e3,r0                             ; 519c: 0db0
	jsr	@func_552e:24                       ; 519e: 5e00552e
	mov.b	@er4,r0h                          ; 51a2: 6840
	cmp.b	r0l,r0h                           ; 51a4: 1c80
	bne	loc_51ae:8                          ; 51a6: 4606
	mov.b	r2l,r0l                           ; 51a8: 0ca8
	bset	#0x0,r0l                           ; 51aa: 7008
	mov.b	r0l,r2l                           ; 51ac: 0c8a
loc_51ae:
	mov.w	e6,e4                             ; 51ae: 0dec
	add.w	r6,e4                             ; 51b0: 096c
	mov.w	e4,r0                             ; 51b2: 0dc0
	jsr	@func_552e:24                       ; 51b4: 5e00552e
	mov.b	@er3,r0h                          ; 51b8: 6830
	cmp.b	r0l,r0h                           ; 51ba: 1c80
	bne	loc_51c4:8                          ; 51bc: 4606
	mov.b	r2l,r0l                           ; 51be: 0ca8
	bset	#0x1,r0l                           ; 51c0: 7018
	mov.b	r0l,r2l                           ; 51c2: 0c8a
loc_51c4:
	mov.b	r2l,r0l                           ; 51c4: 0ca8
	beq	loc_51d6:8                          ; 51c6: 470e
	cmp.b	#0x1,r0l                          ; 51c8: a801
	beq	loc_520c:8                          ; 51ca: 4740
	cmp.b	#0x2,r0l                          ; 51cc: a802
	beq	loc_5218:8                          ; 51ce: 4748
	cmp.b	#0x3,r0l                          ; 51d0: a803
	bne	loc_5248:8                          ; 51d2: 4674
	bra	loc_5230:8                          ; 51d4: 405a
loc_51d6:
	sub.b	r3l,r3l                           ; 51d6: 18bb
	mov.b	#0xff,r1l                         ; 51d8: f9ff
	bra	loc_51e6:8                          ; 51da: 400a
loc_51dc:
	mov.b	r3l,r0l                           ; 51dc: 0cb8
	extu.w	r0                               ; 51de: 1750
	add.w	r5,r0                             ; 51e0: 0950
	mov.b	r1l,@er0                          ; 51e2: 6889
	inc	r3l                                 ; 51e4: 0a0b
loc_51e6:
	mov.b	r3l,r0l                           ; 51e6: 0cb8
	extu.w	r0                               ; 51e8: 1750
	cmp.w	r6,r0                             ; 51ea: 1d60
	bcs	loc_51dc:8                          ; 51ec: 45ee
	mov.w	e5,r0                             ; 51ee: 0dd0
	mov.w	r6,r1                             ; 51f0: 0d61
	mov.w	r5,e0                             ; 51f2: 0d58
	bsr	func_524e:8                         ; 51f4: 5558
	mov.w	e3,r0                             ; 51f6: 0db0
	mov.b	#0xff,r1l                         ; 51f8: f9ff
	jsr	@func_4fca:24                       ; 51fa: 5e004fca
	mov.w	r6,r1                             ; 51fe: 0d61
	mov.w	r5,e0                             ; 5200: 0d58
	mov.w	e6,r0                             ; 5202: 0de0
	bsr	func_524e:8                         ; 5204: 5548
	mov.w	e4,r0                             ; 5206: 0dc0
	mov.b	#0xff,r1l                         ; 5208: f9ff
	bra	loc_5244:8                          ; 520a: 4038
loc_520c:
	mov.w	e5,r0                             ; 520c: 0dd0
	mov.w	r6,r1                             ; 520e: 0d61
	mov.w	r5,e0                             ; 5210: 0d58
	jsr	@func_5384:24                       ; 5212: 5e005384
	bra	loc_5238:8                          ; 5216: 4020
loc_5218:
	mov.w	e6,r0                             ; 5218: 0de0
	mov.w	r6,r1                             ; 521a: 0d61
	mov.w	r5,e0                             ; 521c: 0d58
	jsr	@func_5384:24                       ; 521e: 5e005384
	mov.w	r6,r1                             ; 5222: 0d61
	mov.w	r5,e0                             ; 5224: 0d58
	mov.w	e5,r0                             ; 5226: 0dd0
	bsr	func_524e:8                         ; 5228: 5524
	mov.b	@er3,r1l                          ; 522a: 6839
	mov.w	e3,r0                             ; 522c: 0db0
	bra	loc_5244:8                          ; 522e: 4014
loc_5230:
	mov.b	@er4,r0l                          ; 5230: 6848
	mov.b	r0h,r3l                           ; 5232: 0c0b
	cmp.b	r3l,r0l                           ; 5234: 1cb8
	beq	loc_5248:8                          ; 5236: 4710
loc_5238:
	mov.w	r6,r1                             ; 5238: 0d61
	mov.w	r5,e0                             ; 523a: 0d58
	mov.w	e6,r0                             ; 523c: 0de0
	bsr	func_524e:8                         ; 523e: 550e
	mov.w	e4,r0                             ; 5240: 0dc0
	mov.b	@er4,r1l                          ; 5242: 6849
loc_5244:
	jsr	@func_4fca:24                       ; 5244: 5e004fca
loc_5248:
	adds	#4,er7                             ; 5248: 0b97
	jmp	@RegRestore_er2_er6:24              ; 524a: 5a00ba62
