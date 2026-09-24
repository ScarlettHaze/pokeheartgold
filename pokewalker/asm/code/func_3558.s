	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_3558
	.global loc_3594

func_3558:
	mov.b	@0xf7ac:16,r0l                    ; 3558: 6a08f7ac
	and.b	#0x3,r0l                          ; 355c: e803
	beq	loc_356e:8                          ; 355e: 470e
	cmp.b	#0x1,r0l                          ; 3560: a801
	beq	loc_3576:8                          ; 3562: 4712
	cmp.b	#0x2,r0l                          ; 3564: a802
	beq	loc_3572:8                          ; 3566: 470a
	cmp.b	#0x3,r0l                          ; 3568: a803
	bne	loc_3578:8                          ; 356a: 460c
	bra	loc_3576:8                          ; 356c: 4008
loc_356e:
	mov.b	#0x13,r2l                         ; 356e: fa13
	bra	loc_3578:8                          ; 3570: 4006
loc_3572:
	mov.b	#0x15,r2l                         ; 3572: fa15
	bra	loc_3578:8                          ; 3574: 4002
loc_3576:
	mov.b	#0x14,r2l                         ; 3576: fa14
loc_3578:
	mov.w	#0x1e0,e4                         ; 3578: 790c01e0
	add.w	r5,e4                             ; 357c: 095c
	mov.w	e4,r0                             ; 357e: 0dc0
	mov.w	e6,r1                             ; 3580: 0de1
	mov.w	r6,e0                             ; 3582: 0d68
	jsr	@er3                                ; 3584: 5d30
	mov.w	r6,e0                             ; 3586: 0d68
	mov.w	#0x808,r1                         ; 3588: 79010808
	mov.b	#0xc,r0h                          ; 358c: f00c
	mov.b	r2l,r0l                           ; 358e: 0ca8
	jmp	@loc_366c:24                        ; 3590: 5a00366c
loc_3594:
	mov.w	#0x1e0,e4                         ; 3594: 790c01e0
	add.w	r5,e4                             ; 3598: 095c
	mov.w	e4,r0                             ; 359a: 0dc0
	mov.w	e6,r1                             ; 359c: 0de1
	mov.w	r6,e0                             ; 359e: 0d68
	jsr	@er3                                ; 35a0: 5d30
	mov.w	r6,e0                             ; 35a2: 0d68
	mov.w	#0x808,r1                         ; 35a4: 79010808
	mov.w	#0xc14,r0                         ; 35a8: 79000c14
	jmp	@loc_366c:24                        ; 35ac: 5a00366c
