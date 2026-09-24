	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_1eee

func_1eee:
	mov.b	r0l,r2l                           ; 1eee: 0c8a
	jsr	@func_247e:24                       ; 1ef0: 5e00247e
	mov.w	#0xbe,r0                          ; 1ef4: 790000be
	jsr	@func_2488:24                       ; 1ef8: 5e002488
	mov.w	r0,r3                             ; 1efc: 0d03
	mov.w	r0,e0                             ; 1efe: 0d08
	mov.w	#0xbe,r1                          ; 1f00: 790100be
	mov.w	#0x8f00,r0                        ; 1f04: 79008f00
	jsr	@func_5384:24                       ; 1f08: 5e005384
	extu.w	r2                               ; 1f0c: 1752
	shll.w	r2                               ; 1f0e: 1012
	mov.w	#0x8c,r0                          ; 1f10: 7900008c
	add.w	r3,r0                             ; 1f14: 0930
	add.w	r2,r0                             ; 1f16: 0920
	mov.w	@er0,r0                           ; 1f18: 6900
	rts                                     ; 1f1a: 5470
