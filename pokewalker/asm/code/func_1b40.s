	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_1b40

func_1b40:
	mov.w	r5,@-er7                          ; 1b40: 6df5
	mov.w	r6,@-er7                          ; 1b42: 6df6
	mov.b	r0l,r2l                           ; 1b44: 0c8a
	mov.b	r0h,r5l                           ; 1b46: 0c0d
	mov.b	r1l,r5h                           ; 1b48: 0c95
	jsr	@func_247e:24                       ; 1b4a: 5e00247e
	mov.w	#0x140,r0                         ; 1b4e: 79000140
	jsr	@func_2488:24                       ; 1b52: 5e002488
	mov.w	r0,r6                             ; 1b56: 0d06
	cmp.b	#0x30,r5l                         ; 1b58: ad30
	bne	loc_1b62:8                          ; 1b5a: 4606
	jsr	@func_88e2:24                       ; 1b5c: 5e0088e2
	bra	loc_1b66:8                          ; 1b60: 4004
loc_1b62:
	jsr	@func_8766:24                       ; 1b62: 5e008766
loc_1b66:
	mov.w	#0xc6fc,r0                        ; 1b66: 7900c6fc
	mov.w	#0x140,r1                         ; 1b6a: 79010140
	mov.w	r6,e0                             ; 1b6e: 0d68
	jsr	@func_5384:24                       ; 1b70: 5e005384
	mov.b	r5h,r1l                           ; 1b74: 0c59
	mov.w	r6,e0                             ; 1b76: 0d68
	mov.w	#0x1050,r0                        ; 1b78: 79001050
	jsr	@func_18b6:24                       ; 1b7c: 5e0018b6
	mov.w	r6,e0                             ; 1b80: 0d68
	mov.b	r5l,r0h                           ; 1b82: 0cd0
	mov.b	r2l,r0l                           ; 1b84: 0ca8
	mov.w	#0x1050,r1                        ; 1b86: 79011050
	jsr	@func_80ac:24                       ; 1b8a: 5e0080ac
	mov.w	@er7+,r6                          ; 1b8e: 6d76
	mov.w	@er7+,r5                          ; 1b90: 6d75
	rts                                     ; 1b92: 5470
