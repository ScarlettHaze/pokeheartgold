	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_1c80

func_1c80:
	mov.b	r0l,r4l                           ; 1c80: 0c8c
	mov.b	r0h,r2h                           ; 1c82: 0c02
	mov.b	r1l,r2l                           ; 1c84: 0c9a
	jsr	@func_247e:24                       ; 1c86: 5e00247e
	mov.w	#0x180,r0                         ; 1c8a: 79000180
	jsr	@func_2488:24                       ; 1c8e: 5e002488
	mov.w	r0,r3                             ; 1c92: 0d03
	mov.w	r0,e0                             ; 1c94: 0d08
	mov.w	#D_bd48,r0                        ; 1c96: 7900bd48
	mov.w	#0x180,r1                         ; 1c9a: 79010180
	jsr	@func_5384:24                       ; 1c9e: 5e005384
	mov.b	r2l,r1l                           ; 1ca2: 0ca9
	mov.w	r3,e0                             ; 1ca4: 0d38
	mov.w	#0x1060,r0                        ; 1ca6: 79001060
	jsr	@func_18b6:24                       ; 1caa: 5e0018b6
	mov.w	r3,e0                             ; 1cae: 0d38
	mov.b	r2h,r0h                           ; 1cb0: 0c20
	mov.b	r4l,r0l                           ; 1cb2: 0cc8
	mov.w	#0x1060,r1                        ; 1cb4: 79011060
	jsr	@func_80ac:24                       ; 1cb8: 5e0080ac
	rts                                     ; 1cbc: 5470
