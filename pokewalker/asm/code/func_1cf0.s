	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_1cf0

func_1cf0:
	mov.b	r0l,r4h                           ; 1cf0: 0c84
	mov.b	r0h,r4l                           ; 1cf2: 0c0c
	mov.w	#0x1a90,r5                        ; 1cf4: 79051a90
	jsr	@func_247e:24                       ; 1cf8: 5e00247e
	mov.w	#0xc0,r0                          ; 1cfc: 790000c0
	jsr	@func_2488:24                       ; 1d00: 5e002488
	mov.w	r0,r6                             ; 1d04: 0d06
	mov.w	r0,e0                             ; 1d06: 0d08
	mov.w	r5,r0                             ; 1d08: 0d50
	mov.w	#0xc0,r1                          ; 1d0a: 790100c0
	jsr	@func_5384:24                       ; 1d0e: 5e005384
	mov.w	r6,e0                             ; 1d12: 0d68
	mov.b	r4l,r0h                           ; 1d14: 0cc0
	mov.b	r4h,r0l                           ; 1d16: 0c48
	mov.w	#0x1820,r1                        ; 1d18: 79011820
	jsr	@func_80ac:24                       ; 1d1c: 5e0080ac
	rts                                     ; 1d20: 5470
