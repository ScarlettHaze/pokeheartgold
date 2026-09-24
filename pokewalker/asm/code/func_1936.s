	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_1936

func_1936:
	mov.b	r0l,r4h                           ; 1936: 0c84
	mov.b	r0h,r4l                           ; 1938: 0c0c
	jsr	@func_247e:24                       ; 193a: 5e00247e
	mov.w	#0xc0,r0                          ; 193e: 790000c0
	jsr	@func_2488:24                       ; 1942: 5e002488
	mov.w	r0,r3                             ; 1946: 0d03
	mov.b	@0xf7ac:16,r2l                    ; 1948: 6a0af7ac
	and.b	#0x1,r2l                          ; 194c: ea01
	mov.b	#0xc0,r2h                         ; 194e: f2c0
	mulxu.b	r2h,r2                          ; 1950: 5022
	add.w	#0x91be,r2                        ; 1952: 791291be
	mov.w	r0,e0                             ; 1956: 0d08
	mov.w	r2,r0                             ; 1958: 0d20
	mov.w	#0xc0,r1                          ; 195a: 790100c0
	jsr	@func_5384:24                       ; 195e: 5e005384
	mov.w	r3,e0                             ; 1962: 0d38
	mov.b	r4l,r0h                           ; 1964: 0cc0
	mov.b	r4h,r0l                           ; 1966: 0c48
	mov.w	#0x1820,r1                        ; 1968: 79011820
	jsr	@func_80ac:24                       ; 196c: 5e0080ac
	rts                                     ; 1970: 5470
