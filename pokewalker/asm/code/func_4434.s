	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_4434

func_4434:
	mov.w	r2,@-er7                          ; 4434: 6df2
	mov.w	r5,@-er7                          ; 4436: 6df5
	mov.w	r6,@-er7                          ; 4438: 6df6
	jsr	@func_247e:24                       ; 443a: 5e00247e
	mov.w	#0x100,r0                         ; 443e: 79000100
	jsr	@func_2488:24                       ; 4442: 5e002488
	mov.w	r0,r6                             ; 4446: 0d06
	mov.w	#0x2350,r5                        ; 4448: 79052350
	mov.w	r0,e0                             ; 444c: 0d08
	mov.w	r5,r0                             ; 444e: 0d50
	mov.w	#0x100,r1                         ; 4450: 79010100
	jsr	@func_5384:24                       ; 4454: 5e005384
	mov.w	r6,e0                             ; 4458: 0d68
	mov.w	#0x2020,r1                        ; 445a: 79012020
	mov.w	#0x1020,r0                        ; 445e: 79001020
	jsr	@func_80ac:24                       ; 4462: 5e0080ac
	mov.w	#0xf,r1                           ; 4466: 7901000f
	mov.w	#0x1030,r0                        ; 446a: 79001030
	jsr	@func_2096:24                       ; 446e: 5e002096
	mov.b	@0xf7cf:16,r0l                    ; 4472: 6a08f7cf
	cmp.b	#0x10,r0l                         ; 4476: a810
	bcc	loc_4480:8                          ; 4478: 4406
	inc	r0l                                 ; 447a: 0a08
	mov.b	r0l,@0xf7cf:16                    ; 447c: 6a88f7cf
loc_4480:
	jsr	@func_369c:24                       ; 4480: 5e00369c
	mov.b	r0l,r0l                           ; 4484: 0c88
	bne	loc_449a:8                          ; 4486: 4612
	mov.b	@0xf7cf:16,r0l                    ; 4488: 6a08f7cf
	cmp.b	#0x8,r0l                          ; 448c: a808
	bls	loc_449a:8                          ; 448e: 430a
	jsr	@func_6a1c:24                       ; 4490: 5e006a1c
	sub.b	r0l,r0l                           ; 4494: 1888
	jsr	@func_69b8:24                       ; 4496: 5e0069b8
loc_449a:
	jmp	@loc_4534:24                        ; 449a: 5a004534
