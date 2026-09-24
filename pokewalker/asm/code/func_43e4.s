	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_43e4

func_43e4:
	mov.w	r2,@-er7                          ; 43e4: 6df2
	jsr	@func_247e:24                       ; 43e6: 5e00247e
	mov.w	#0x180,r0                         ; 43ea: 79000180
	jsr	@func_2488:24                       ; 43ee: 5e002488
	mov.b	#0x5,r1l                          ; 43f2: f905
	mov.w	#0x2000,r0                        ; 43f4: 79002000
	jsr	@func_1a58:24                       ; 43f8: 5e001a58
	mov.w	#0xe,r1                           ; 43fc: 7901000e
	mov.w	#0xe30,r0                         ; 4400: 79000e30
	jsr	@func_2096:24                       ; 4404: 5e002096
	mov.b	@0xf7cf:16,r0l                    ; 4408: 6a08f7cf
	cmp.b	#0x10,r0l                         ; 440c: a810
	bcc	loc_4416:8                          ; 440e: 4406
	inc	r0l                                 ; 4410: 0a08
	mov.b	r0l,@0xf7cf:16                    ; 4412: 6a88f7cf
loc_4416:
	jsr	@func_369c:24                       ; 4416: 5e00369c
	mov.b	r0l,r0l                           ; 441a: 0c88
	bne	loc_4430:8                          ; 441c: 4612
	mov.b	@0xf7cf:16,r0l                    ; 441e: 6a08f7cf
	cmp.b	#0x8,r0l                          ; 4422: a808
	bls	loc_4430:8                          ; 4424: 430a
	jsr	@func_6a1c:24                       ; 4426: 5e006a1c
	sub.b	r0l,r0l                           ; 442a: 1888
	jsr	@func_69b8:24                       ; 442c: 5e0069b8
loc_4430:
	mov.w	@er7+,r2                          ; 4430: 6d72
	rts                                     ; 4432: 5470
