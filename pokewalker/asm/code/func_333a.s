	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_333a

func_333a:
	mov.b	@0xf7d8:16,r0l                    ; 333a: 6a08f7d8
	shlr.b	r0l                              ; 333e: 1108
	shlr.b	r0l                              ; 3340: 1108
	shlr.b	r0l                              ; 3342: 1108
	and.b	#0x3,r0l                          ; 3344: e803
	beq	loc_3356:8                          ; 3346: 470e
	cmp.b	#0x1,r0l                          ; 3348: a801
	beq	loc_3394:8                          ; 334a: 4748
	cmp.b	#0x2,r0l                          ; 334c: a802
	beq	loc_33d4:16                         ; 334e: 58700082
	jmp	@loc_367c:24                        ; 3352: 5a00367c
loc_3356:
	mov.b	@0xf7d2:16,r0l                    ; 3356: 6a08f7d2
	cmp.b	#0x4,r0l                          ; 335a: a804
	bne	loc_337c:8                          ; 335c: 461e
	mov.b	#0xb,r0l                          ; 335e: f80b
	jsr	@func_36f2:24                       ; 3360: 5e0036f2
	mov.w	e4,r1                             ; 3364: 0dc1
	mov.w	#0x1bf0,r0                        ; 3366: 79001bf0
	add.w	r5,r0                             ; 336a: 0950
	mov.w	r6,e0                             ; 336c: 0d68
	jsr	@er3                                ; 336e: 5d30
	mov.w	r6,e0                             ; 3370: 0d68
	mov.w	#0x2010,r1                        ; 3372: 79012010
	mov.w	#0x28,r0                          ; 3376: 79000028
	jsr	@er4                                ; 337a: 5d40
loc_337c:
	mov.b	@0xf7d2:16,r0l                    ; 337c: 6a08f7d2
	cmp.b	#0x4,r0l                          ; 3380: a804
	bcs	loc_367c:16                         ; 3382: 585002f6
	mov.b	#0x5,r1l                          ; 3386: f905
	mov.w	#0x2000,r0                        ; 3388: 79002000
	jsr	@func_1a58:24                       ; 338c: 5e001a58
	jmp	@loc_3480:24                        ; 3390: 5a003480
loc_3394:
	mov.b	@0xf7d2:16,r0l                    ; 3394: 6a08f7d2
	cmp.b	#0x4,r0l                          ; 3398: a804
	bne	loc_33a2:8                          ; 339a: 4606
	mov.b	#0xc,r0l                          ; 339c: f80c
	jsr	@func_36f2:24                       ; 339e: 5e0036f2
loc_33a2:
	mov.b	@0xf7d2:16,r0l                    ; 33a2: 6a08f7d2
	cmp.b	#0x4,r0l                          ; 33a6: a804
	bcs	loc_367c:16                         ; 33a8: 585002d0
	mov.b	@0xf7ce:16,r0l                    ; 33ac: 6a08f7ce
	cmp.b	#0x4,r0l                          ; 33b0: a804
	bcc	loc_33c6:8                          ; 33b2: 4412
	mov.b	r0l,r1l                           ; 33b4: 0c89
	add.b	#0xff,r1l                         ; 33b6: 89ff
	mov.b	#0x5,r1h                          ; 33b8: f105
	mov.w	#0x2000,r0                        ; 33ba: 79002000
	jsr	@func_1bc6:24                       ; 33be: 5e001bc6
	jmp	@loc_34ae:24                        ; 33c2: 5a0034ae
loc_33c6:
	mov.b	#0x5,r1l                          ; 33c6: f905
	mov.w	#0x2000,r0                        ; 33c8: 79002000
	jsr	@func_1b40:24                       ; 33cc: 5e001b40
	jmp	@loc_34ae:24                        ; 33d0: 5a0034ae
loc_33d4:
	mov.b	@0xf7d2:16,r0l                    ; 33d4: 6a08f7d2
	cmp.b	#0x4,r0l                          ; 33d8: a804
	bne	loc_33fa:8                          ; 33da: 461e
	mov.b	#0xd,r0l                          ; 33dc: f80d
	jsr	@func_36f2:24                       ; 33de: 5e0036f2
	mov.w	e4,r1                             ; 33e2: 0dc1
	mov.w	#0x1c70,r0                        ; 33e4: 79001c70
	add.w	r5,r0                             ; 33e8: 0950
	mov.w	r6,e0                             ; 33ea: 0d68
	jsr	@er3                                ; 33ec: 5d30
	mov.w	r6,e0                             ; 33ee: 0d68
	mov.w	#0x2010,r1                        ; 33f0: 79012010
	mov.w	#0x28,r0                          ; 33f4: 79000028
	jsr	@er4                                ; 33f8: 5d40
loc_33fa:
	mov.b	@0xf7d2:16,r0l                    ; 33fa: 6a08f7d2
	cmp.b	#0x4,r0l                          ; 33fe: a804
	bcs	loc_367c:16                         ; 3400: 58500278
	mov.w	#0xd,r1                           ; 3404: 7901000d
	mov.w	#0x2520,r0                        ; 3408: 79002520
	jsr	@func_2096:24                       ; 340c: 5e002096
	mov.w	#0xe,r1                           ; 3410: 7901000e
	mov.w	#0x2630,r0                        ; 3414: 79002630
	jmp	@loc_364e:24                        ; 3418: 5a00364e
