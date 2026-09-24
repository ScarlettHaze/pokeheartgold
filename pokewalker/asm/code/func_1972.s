	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_1972

func_1972:
	mov.b	r0l,r4h                           ; 1972: 0c84
	mov.b	r0h,r4l                           ; 1974: 0c0c
	jsr	@func_247e:24                       ; 1976: 5e00247e
	mov.w	#0xc0,r0                          ; 197a: 790000c0
	jsr	@func_2488:24                       ; 197e: 5e002488
	mov.w	r0,r6                             ; 1982: 0d06
	mov.b	@0xf7ac:16,r5l                    ; 1984: 6a0df7ac
	and.b	#0x1,r5l                          ; 1988: ed01
	mov.b	#0xc0,r5h                         ; 198a: f5c0
	mulxu.b	r5h,r5                          ; 198c: 5055
	add.w	#0x91be,r5                        ; 198e: 791591be
	mov.w	r0,e0                             ; 1992: 0d08
	mov.w	r5,r0                             ; 1994: 0d50
	mov.w	#0xc0,r1                          ; 1996: 790100c0
	jsr	@func_5384:24                       ; 199a: 5e005384
	mov.w	r6,e0                             ; 199e: 0d68
	mov.w	#0x1820,r0                        ; 19a0: 79001820
	jsr	@func_2178:24                       ; 19a4: 5e002178
	mov.w	r6,e0                             ; 19a8: 0d68
	mov.b	r4l,r0h                           ; 19aa: 0cc0
	mov.b	r4h,r0l                           ; 19ac: 0c48
	mov.w	#0x1820,r1                        ; 19ae: 79011820
	jsr	@func_80ac:24                       ; 19b2: 5e0080ac
	rts                                     ; 19b6: 5470
