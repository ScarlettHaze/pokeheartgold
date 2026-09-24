	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_0426

func_0426:
	mov.w	#0x80,r6                          ; 0426: 79060080
	jsr	@func_247e:24                       ; 042a: 5e00247e
	mov.w	r6,r0                             ; 042e: 0d60
	jsr	@func_2488:24                       ; 0430: 5e002488
	mov.w	r0,r4                             ; 0434: 0d04
	mov.w	#0xd700,e4                        ; 0436: 790cd700
	mov.l	#0x528f00,er5                     ; 043a: 7a0500528f00
	mov.w	e5,e6                             ; 0440: 0dde
loc_0442:
	mov.w	r6,r1                             ; 0442: 0d61
	mov.w	r4,e0                             ; 0444: 0d48
	mov.w	e4,r0                             ; 0446: 0dc0
	jsr	@func_5384:24                       ; 0448: 5e005384
	mov.w	r6,r1                             ; 044c: 0d61
	mov.w	r4,e0                             ; 044e: 0d48
	mov.w	r5,r0                             ; 0450: 0d50
	jsr	@func_524e:24                       ; 0452: 5e00524e
	add.w	r6,e4                             ; 0456: 096c
	add.w	r6,r5                             ; 0458: 0965
	dec.w	#1,e6                             ; 045a: 1b5e
	bne	loc_0442:8                          ; 045c: 46e4
	mov.w	#0xd480,e4                        ; 045e: 790cd480
	mov.l	#0x5cc00,er5                      ; 0462: 7a050005cc00
	sub.w	e6,e6                             ; 0468: 19ee
	bra	loc_0486:8                          ; 046a: 401a
loc_046c:
	mov.w	r6,r1                             ; 046c: 0d61
	mov.w	r4,e0                             ; 046e: 0d48
	mov.w	e4,r0                             ; 0470: 0dc0
	jsr	@func_5384:24                       ; 0472: 5e005384
	mov.w	r6,r1                             ; 0476: 0d61
	mov.w	r4,e0                             ; 0478: 0d48
	mov.w	r5,r0                             ; 047a: 0d50
	jsr	@func_524e:24                       ; 047c: 5e00524e
	add.w	r6,e4                             ; 0480: 096c
	add.w	r6,r5                             ; 0482: 0965
	inc.w	#1,e6                             ; 0484: 0b5e
loc_0486:
	cmp.w	e5,e6                             ; 0486: 1dde
	bcs	loc_046c:8                          ; 0488: 45e2
	rts                                     ; 048a: 5470
