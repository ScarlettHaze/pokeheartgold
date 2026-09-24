	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_1af4

func_1af4:
	mov.b	r0l,r4l                           ; 1af4: 0c8c
	mov.b	r0h,r2l                           ; 1af6: 0c0a
	mov.b	r1l,r2h                           ; 1af8: 0c92
	jsr	@func_247e:24                       ; 1afa: 5e00247e
	mov.w	#0x140,r0                         ; 1afe: 79000140
	jsr	@func_2488:24                       ; 1b02: 5e002488
	mov.w	r0,r3                             ; 1b06: 0d03
	cmp.b	#0x30,r2l                         ; 1b08: aa30
	bne	loc_1b12:8                          ; 1b0a: 4606
	jsr	@func_88e2:24                       ; 1b0c: 5e0088e2
	bra	loc_1b16:8                          ; 1b10: 4004
loc_1b12:
	jsr	@func_8766:24                       ; 1b12: 5e008766
loc_1b16:
	mov.w	#D_bc00,r0                        ; 1b16: 7900bc00
	mov.w	#0x140,r1                         ; 1b1a: 79010140
	mov.w	r3,e0                             ; 1b1e: 0d38
	jsr	@func_5384:24                       ; 1b20: 5e005384
	mov.b	r2h,r1l                           ; 1b24: 0c29
	mov.w	r3,e0                             ; 1b26: 0d38
	mov.w	#0x1050,r0                        ; 1b28: 79001050
	jsr	@func_18b6:24                       ; 1b2c: 5e0018b6
	mov.w	r3,e0                             ; 1b30: 0d38
	mov.b	r2l,r0h                           ; 1b32: 0ca0
	mov.b	r4l,r0l                           ; 1b34: 0cc8
	mov.w	#0x1050,r1                        ; 1b36: 79011050
	jsr	@func_80ac:24                       ; 1b3a: 5e0080ac
	rts                                     ; 1b3e: 5470
