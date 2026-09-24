	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_b3cc

func_b3cc:
	mov.b	@0xf7cf:16,r0l                    ; b3cc: 6a08f7cf
	bne	loc_b41c:8                          ; b3d0: 464a
	mov.b	#0x4,r0l                          ; b3d2: f804
	jsr	@func_9c40:24                       ; b3d4: 5e009c40
	mov.b	r0l,r0l                           ; b3d8: 0c88
	beq	loc_b3fe:8                          ; b3da: 4722
	mov.b	@0xf7ce:16,r0l                    ; b3dc: 6a08f7ce
	bne	loc_b3f2:8                          ; b3e0: 4610
	mov.b	#0x1,r0l                          ; b3e2: f801
	jsr	@func_36f2:24                       ; b3e4: 5e0036f2
	jsr	@func_974e:24                       ; b3e8: 5e00974e
	mov.b	#0x1,r0l                          ; b3ec: f801
	jmp	@loc_b486:24                        ; b3ee: 5a00b486
loc_b3f2:
	dec.b	r0l                               ; b3f2: 1a08
	mov.b	r0l,@0xf7ce:16                    ; b3f4: 6a88f7ce
	mov.b	#0x2,r0l                          ; b3f8: f802
	jsr	@func_36f2:24                       ; b3fa: 5e0036f2
loc_b3fe:
	mov.b	#0x8,r0l                          ; b3fe: f808
	jsr	@func_9c40:24                       ; b400: 5e009c40
	mov.b	r0l,r0l                           ; b404: 0c88
	beq	loc_b41c:8                          ; b406: 4714
	mov.b	@0xf7ce:16,r0l                    ; b408: 6a08f7ce
	cmp.b	#0x7,r0l                          ; b40c: a807
	bcc	loc_b41c:8                          ; b40e: 440c
	inc	r0l                                 ; b410: 0a08
	mov.b	r0l,@0xf7ce:16                    ; b412: 6a88f7ce
	mov.b	#0x2,r0l                          ; b416: f802
	jsr	@func_36f2:24                       ; b418: 5e0036f2
loc_b41c:
	mov.b	#0x2,r0l                          ; b41c: f802
	jsr	@func_9c40:24                       ; b41e: 5e009c40
	mov.b	r0l,r0l                           ; b422: 0c88
	beq	loc_b48a:8                          ; b424: 4764
	mov.b	@0xf7cf:16,r0l                    ; b426: 6a08f7cf
	beq	loc_b436:8                          ; b42a: 470a
	cmp.b	#0x1,r0l                          ; b42c: a801
	beq	loc_b44e:8                          ; b42e: 471e
	cmp.b	#0x2,r0l                          ; b430: a802
	bne	loc_b48a:8                          ; b432: 4656
	bra	loc_b47a:8                          ; b434: 4044
loc_b436:
	mov.l	@0xf780:16,er0                    ; b436: 01006b00f780
	cmp.l	#0x98967f,er0                     ; b43c: 7a200098967f
	bcs	loc_b47a:8                          ; b442: 4536
	mov.b	#0x1,r0l                          ; b444: f801
	mov.b	r0l,@0xf7cf:16                    ; b446: 6a88f7cf
	sub.b	r0l,r0l                           ; b44a: 1888
	bra	loc_b474:8                          ; b44c: 4026
loc_b44e:
	mov.w	#0xce84,r6                        ; b44e: 7906ce84
	add.w	#0x4,r6                           ; b452: 79160004
	mov.w	r6,e6                             ; b456: 0d6e
	mov.w	e6,r0                             ; b458: 0de0
	jsr	@func_552e:24                       ; b45a: 5e00552e
	btst	#0x0,r0l                           ; b45e: 7308
	bne	loc_b47a:8                          ; b460: 4618
	or.b	#0x1,r0l                           ; b462: c801
	mov.b	r0l,r1l                           ; b464: 0c89
	mov.w	e6,r0                             ; b466: 0de0
	jsr	@func_4fca:24                       ; b468: 5e004fca
	mov.b	#0x2,r0l                          ; b46c: f802
	mov.b	r0l,@0xf7cf:16                    ; b46e: 6a88f7cf
	mov.b	#0x7,r0l                          ; b472: f807
loc_b474:
	jsr	@func_36f2:24                       ; b474: 5e0036f2
	bra	loc_b48a:8                          ; b478: 4010
loc_b47a:
	sub.b	r0l,r0l                           ; b47a: 1888
	jsr	@func_36f2:24                       ; b47c: 5e0036f2
	jsr	@func_6a1c:24                       ; b480: 5e006a1c
	sub.b	r0l,r0l                           ; b484: 1888
loc_b486:
	jsr	@func_69b8:24                       ; b486: 5e0069b8
loc_b48a:
	rts                                     ; b48a: 5470
