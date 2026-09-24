	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_4af2

func_4af2:
	jsr	@func_247e:24                       ; 4af2: 5e00247e
	mov.w	#0xc,r0                           ; 4af6: 7900000c
	jsr	@func_2488:24                       ; 4afa: 5e002488
	mov.w	r0,r6                             ; 4afe: 0d06
	mov.w	r0,e0                             ; 4b00: 0d08
	mov.w	#0xcebc,r0                        ; 4b02: 7900cebc
	mov.w	#0xc,r1                           ; 4b06: 7901000c
	jsr	@func_5384:24                       ; 4b0a: 5e005384
	mov.w	r6,r0                             ; 4b0e: 0d60
	jsr	@func_1f1c:24                       ; 4b10: 5e001f1c
	mov.b	r0l,@0xf7d6:16                    ; 4b14: 6a88f7d6
	mov.b	@0xf797:16,r0l                    ; 4b18: 6a08f797
	bld	#0x0,r0l                            ; 4b1c: 7708
	bcc	loc_4b26:8                          ; 4b1e: 4406
	jsr	@func_49c0:24                       ; 4b20: 5e0049c0
	bra	loc_4b9a:8                          ; 4b24: 4074
loc_4b26:
	mov.w	#0xbe,r0                          ; 4b26: 790000be
	jsr	@func_2488:24                       ; 4b2a: 5e002488
	mov.w	r0,r5                             ; 4b2e: 0d05
	mov.w	r0,e0                             ; 4b30: 0d08
	mov.w	#0xbe,r1                          ; 4b32: 790100be
	mov.w	#0x8f00,r0                        ; 4b36: 79008f00
	jsr	@func_5384:24                       ; 4b3a: 5e005384
	sub.b	r6l,r6l                           ; 4b3e: 18ee
loc_4b40:
	mov.b	r6l,r0l                           ; 4b40: 0ce8
	extu.w	r0                               ; 4b42: 1750
	mov.w	r0,e6                             ; 4b44: 0d0e
	shll.w	r0                               ; 4b46: 1010
	mov.w	#0xa0,r1                          ; 4b48: 790100a0
	jsr	@func_4f50:24                       ; 4b4c: 5e004f50
	bcs	loc_4b78:8                          ; 4b50: 4526
	jsr	@func_25d0:24                       ; 4b52: 5e0025d0
	shlr.w	r0                               ; 4b56: 1110
	shlr.w	r0                               ; 4b58: 1110
	shlr.w	r0                               ; 4b5a: 1110
	extu.w	r0                               ; 4b5c: 1750
	exts.l	er0                              ; 4b5e: 17f0
	mov.w	#0x64,r2                          ; 4b60: 79020064
	divxs.w	r2,er0                          ; 4b64: 01d05320
	mov.w	#0xb4,r0                          ; 4b68: 790000b4
	add.w	r5,r0                             ; 4b6c: 0950
	add.w	e6,r0                             ; 4b6e: 09e0
	mov.b	@er0,r1l                          ; 4b70: 6809
	extu.w	r1                               ; 4b72: 1751
	cmp.w	r1,e0                             ; 4b74: 1d18
	blt	loc_4b7e:8                          ; 4b76: 4d06
loc_4b78:
	inc	r6l                                 ; 4b78: 0a0e
	cmp.b	#0xa,r6l                          ; 4b7a: ae0a
	bcs	loc_4b40:8                          ; 4b7c: 45c2
loc_4b7e:
	cmp.b	#0x9,r6l                          ; 4b7e: ae09
	bls	loc_4b84:8                          ; 4b80: 4302
	mov.b	#0x9,r6l                          ; 4b82: fe09
loc_4b84:
	mov.b	r6l,@0xf7ce:16                    ; 4b84: 6a8ef7ce
	mov.b	r6l,r0l                           ; 4b88: 0ce8
	extu.w	r0                               ; 4b8a: 1750
	shll.w	r0                               ; 4b8c: 1010
	add.w	#0x8c,r5                          ; 4b8e: 7915008c
	add.w	r0,r5                             ; 4b92: 0905
	mov.w	@er5,r5                           ; 4b94: 6955
	mov.w	r5,@0xf7d8:16                     ; 4b96: 6b85f7d8
loc_4b9a:
	rts                                     ; 4b9a: 5470
