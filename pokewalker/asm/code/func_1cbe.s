	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_1cbe

func_1cbe:
	mov.b	r0l,r4h                           ; 1cbe: 0c84
	mov.b	r0h,r4l                           ; 1cc0: 0c0c
	mov.w	#0x1910,r2                        ; 1cc2: 79021910
	jsr	@func_247e:24                       ; 1cc6: 5e00247e
	mov.w	#0xc0,r0                          ; 1cca: 790000c0
	jsr	@func_2488:24                       ; 1cce: 5e002488
	mov.w	r0,r3                             ; 1cd2: 0d03
	mov.w	r0,e0                             ; 1cd4: 0d08
	mov.w	r2,r0                             ; 1cd6: 0d20
	mov.w	#0xc0,r1                          ; 1cd8: 790100c0
	jsr	@func_5384:24                       ; 1cdc: 5e005384
	mov.w	r3,e0                             ; 1ce0: 0d38
	mov.b	r4l,r0h                           ; 1ce2: 0cc0
	mov.b	r4h,r0l                           ; 1ce4: 0c48
	mov.w	#0x1820,r1                        ; 1ce6: 79011820
	jsr	@func_80ac:24                       ; 1cea: 5e0080ac
	rts                                     ; 1cee: 5470
