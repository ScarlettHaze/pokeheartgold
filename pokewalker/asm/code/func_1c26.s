	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_1c26

func_1c26:
	mov.w	r4,@-er7                          ; 1c26: 6df4
	mov.w	r5,@-er7                          ; 1c28: 6df5
	mov.l	er6,@-er7                         ; 1c2a: 01006df6
	mov.b	r0l,r4h                           ; 1c2e: 0c84
	mov.b	r0h,r4l                           ; 1c30: 0c0c
	mov.b	r1l,r5l                           ; 1c32: 0c9d
	mov.b	r1h,r2l                           ; 1c34: 0c1a
	jsr	@func_247e:24                       ; 1c36: 5e00247e
	mov.w	#0x180,e6                         ; 1c3a: 790e0180
	mov.w	e6,r0                             ; 1c3e: 0de0
	jsr	@func_2488:24                       ; 1c40: 5e002488
	mov.w	r0,r6                             ; 1c44: 0d06
	mov.b	r5l,r1l                           ; 1c46: 0cd9
	extu.w	r1                               ; 1c48: 1751
	mulxu.w	e6,er1                          ; 1c4a: 52e1
	mov.w	#0xa8be,r5                        ; 1c4c: 7905a8be
	add.w	r1,r5                             ; 1c50: 0915
	mov.w	e6,r1                             ; 1c52: 0de1
	mov.w	r0,e0                             ; 1c54: 0d08
	mov.w	r5,r0                             ; 1c56: 0d50
	jsr	@func_5384:24                       ; 1c58: 5e005384
	mov.b	r2l,r1l                           ; 1c5c: 0ca9
	mov.w	r6,e0                             ; 1c5e: 0d68
	mov.w	#0x1060,r0                        ; 1c60: 79001060
	jsr	@func_18b6:24                       ; 1c64: 5e0018b6
	mov.w	r6,e0                             ; 1c68: 0d68
	mov.b	r4l,r0h                           ; 1c6a: 0cc0
	mov.b	r4h,r0l                           ; 1c6c: 0c48
	mov.w	#0x1060,r1                        ; 1c6e: 79011060
	jsr	@func_80ac:24                       ; 1c72: 5e0080ac
	mov.l	@er7+,er6                         ; 1c76: 01006d76
	mov.w	@er7+,r5                          ; 1c7a: 6d75
	mov.w	@er7+,r4                          ; 1c7c: 6d74
	rts                                     ; 1c7e: 5470
