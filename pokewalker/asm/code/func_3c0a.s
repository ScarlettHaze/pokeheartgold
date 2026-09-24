	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_3c0a

func_3c0a:
	jsr	@func_247e:24                       ; 3c0a: 5e00247e
	mov.w	#0x40,r0                          ; 3c0e: 79000040
	jsr	@func_2488:24                       ; 3c12: 5e002488
	mov.w	r0,r5                             ; 3c16: 0d05
	mov.w	r0,e0                             ; 3c18: 0d08
	mov.w	#0x8f52,r0                        ; 3c1a: 79008f52
	mov.w	#0x30,r1                          ; 3c1e: 79010030
	jsr	@func_5384:24                       ; 3c22: 5e005384
	mov.w	r5,r0                             ; 3c26: 0d50
	add.w	#0x30,r0                          ; 3c28: 79100030
	mov.w	r0,e0                             ; 3c2c: 0d08
	mov.b	@0xf7cf:16,r1l                    ; 3c2e: 6a09f7cf
	exts.w	r1                               ; 3c32: 17d1
	mov.w	#0x10,e1                          ; 3c34: 79090010
	mulxu.w	e1,er1                          ; 3c38: 5291
	mov.w	#0xce8c,r0                        ; 3c3a: 7900ce8c
	add.w	r1,r0                             ; 3c3e: 0910
	mov.w	#0x10,r1                          ; 3c40: 79010010
	jsr	@func_5384:24                       ; 3c44: 5e005384
	sub.b	r6l,r6l                           ; 3c48: 18ee
loc_3c4a:
	extu.w	r6                               ; 3c4a: 1756
	mov.w	r6,r0                             ; 3c4c: 0d60
	mov.w	#0x10,e0                          ; 3c4e: 79080010
	mulxu.w	e0,er0                          ; 3c52: 5280
	add.w	r5,r0                             ; 3c54: 0950
	mov.w	@(0x30:16,er5),e0                 ; 3c56: 6f580030
	mov.w	@er0,r0                           ; 3c5a: 6900
	cmp.w	r0,e0                             ; 3c5c: 1d08
	bne	loc_3c6e:8                          ; 3c5e: 460e
	mov.b	r6l,r1l                           ; 3c60: 0ce9
	mov.b	#0x7,r1h                          ; 3c62: f107
	mov.w	#0x3000,r0                        ; 3c64: 79003000
	jsr	@func_1bc6:24                       ; 3c68: 5e001bc6
	bra	loc_3c74:8                          ; 3c6c: 4006
loc_3c6e:
	inc	r6l                                 ; 3c6e: 0a0e
	cmp.b	#0x3,r6l                          ; 3c70: ae03
	bcs	loc_3c4a:8                          ; 3c72: 45d6
loc_3c74:
	rts                                     ; 3c74: 5470
