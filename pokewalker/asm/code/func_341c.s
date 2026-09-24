	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_341c
	.global loc_3480
	.global loc_34ae

func_341c:
	mov.b	@0xf7d8:16,r0l                    ; 341c: 6a08f7d8
	shlr.b	r0l                              ; 3420: 1108
	and.b	#0x3,r0l                          ; 3422: e803
	beq	loc_342e:8                          ; 3424: 4708
	cmp.b	#0x1,r0l                          ; 3426: a801
	beq	loc_348c:8                          ; 3428: 4762
	jmp	@loc_367c:24                        ; 342a: 5a00367c
loc_342e:
	mov.b	@0xf7d2:16,r0l                    ; 342e: 6a08f7d2
	cmp.b	#0x4,r0l                          ; 3432: a804
	bne	loc_3454:8                          ; 3434: 461e
	mov.b	#0xb,r0l                          ; 3436: f80b
	jsr	@func_36f2:24                       ; 3438: 5e0036f2
	mov.w	e4,r1                             ; 343c: 0dc1
	mov.w	#0x1bf0,r0                        ; 343e: 79001bf0
	add.w	r5,r0                             ; 3442: 0950
	mov.w	r6,e0                             ; 3444: 0d68
	jsr	@er3                                ; 3446: 5d30
	mov.w	r6,e0                             ; 3448: 0d68
	mov.w	#0x2010,r1                        ; 344a: 79012010
	mov.w	#0x28,r0                          ; 344e: 79000028
	jsr	@er4                                ; 3452: 5d40
loc_3454:
	mov.b	@0xf7d2:16,r0l                    ; 3454: 6a08f7d2
	cmp.b	#0x4,r0l                          ; 3458: a804
	bcs	loc_367c:16                         ; 345a: 5850021e
	mov.b	@0xf7ce:16,r0l                    ; 345e: 6a08f7ce
	cmp.b	#0x4,r0l                          ; 3462: a804
	bcc	loc_3476:8                          ; 3464: 4410
	mov.b	r0l,r1l                           ; 3466: 0c89
	add.b	#0xff,r1l                         ; 3468: 89ff
	mov.b	#0x5,r1h                          ; 346a: f105
	mov.w	#0x2000,r0                        ; 346c: 79002000
	jsr	@func_1bc6:24                       ; 3470: 5e001bc6
	bra	loc_3480:8                          ; 3474: 400a
loc_3476:
	mov.b	#0x5,r1l                          ; 3476: f905
	mov.w	#0x2000,r0                        ; 3478: 79002000
	jsr	@func_1b40:24                       ; 347c: 5e001b40
loc_3480:
	mov.w	#0xe,r1                           ; 3480: 7901000e
	mov.w	#0x2330,r0                        ; 3484: 79002330
	jmp	@loc_364e:24                        ; 3488: 5a00364e
loc_348c:
	mov.b	@0xf7d2:16,r0l                    ; 348c: 6a08f7d2
	cmp.b	#0x4,r0l                          ; 3490: a804
	bne	loc_349a:8                          ; 3492: 4606
	mov.b	#0xc,r0l                          ; 3494: f80c
	jsr	@func_36f2:24                       ; 3496: 5e0036f2
loc_349a:
	mov.b	@0xf7d2:16,r0l                    ; 349a: 6a08f7d2
	cmp.b	#0x4,r0l                          ; 349e: a804
	bcs	loc_367c:16                         ; 34a0: 585001d8
	mov.b	#0x5,r1l                          ; 34a4: f905
	mov.w	#0x2000,r0                        ; 34a6: 79002000
	jsr	@func_1a58:24                       ; 34aa: 5e001a58
loc_34ae:
	mov.w	#0xe,r1                           ; 34ae: 7901000e
	mov.w	#0x2430,r0                        ; 34b2: 79002430
	jmp	@loc_364e:24                        ; 34b6: 5a00364e
