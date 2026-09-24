	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_3c76

func_3c76:
	subs	#4,er7                             ; 3c76: 1b97
	jsr	@func_247e:24                       ; 3c78: 5e00247e
	mov.w	#0x14,r0                          ; 3c7c: 79000014
	jsr	@func_2488:24                       ; 3c80: 5e002488
	mov.w	r0,r5                             ; 3c84: 0d05
	mov.w	r7,e0                             ; 3c86: 0d78
	mov.b	@0xf7cf:16,r1l                    ; 3c88: 6a09f7cf
	exts.w	r1                               ; 3c8c: 17d1
	shll.w	r1                               ; 3c8e: 1011
	shll.w	r1                               ; 3c90: 1011
	mov.w	#0xcebc,r0                        ; 3c92: 7900cebc
	add.w	r1,r0                             ; 3c96: 0910
	mov.w	#0x4,r1                           ; 3c98: 79010004
	jsr	@func_5384:24                       ; 3c9c: 5e005384
	mov.w	#0x8f8c,r0                        ; 3ca0: 79008f8c
	mov.w	#0x14,r1                          ; 3ca4: 79010014
	mov.w	r5,e0                             ; 3ca8: 0d58
	jsr	@func_5384:24                       ; 3caa: 5e005384
	sub.b	r6l,r6l                           ; 3cae: 18ee
loc_3cb0:
	extu.w	r6                               ; 3cb0: 1756
	mov.w	r6,r0                             ; 3cb2: 0d60
	shll.w	r0                               ; 3cb4: 1010
	add.w	r5,r0                             ; 3cb6: 0950
	mov.w	@er7,e0                           ; 3cb8: 6978
	mov.w	@er0,r0                           ; 3cba: 6900
	cmp.w	r0,e0                             ; 3cbc: 1d08
	bne	loc_3cce:8                          ; 3cbe: 460e
	mov.b	r6l,r1l                           ; 3cc0: 0ce9
	mov.b	#0xf,r1h                          ; 3cc2: f10f
	mov.w	#0x3000,r0                        ; 3cc4: 79003000
	jsr	@func_1c26:24                       ; 3cc8: 5e001c26
	bra	loc_3cd4:8                          ; 3ccc: 4006
loc_3cce:
	inc	r6l                                 ; 3cce: 0a0e
	cmp.b	#0xa,r6l                          ; 3cd0: ae0a
	bcs	loc_3cb0:8                          ; 3cd2: 45dc
loc_3cd4:
	adds	#4,er7                             ; 3cd4: 0b97
	rts                                     ; 3cd6: 5470
