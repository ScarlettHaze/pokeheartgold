	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_1a0a

func_1a0a:
	mov.b	r0l,r4l                           ; 1a0a: 0c8c
	mov.b	r0h,r5h                           ; 1a0c: 0c05
	mov.b	r1l,r5l                           ; 1a0e: 0c9d
	jsr	@func_247e:24                       ; 1a10: 5e00247e
	mov.w	#0xc0,r0                          ; 1a14: 790000c0
	jsr	@func_2488:24                       ; 1a18: 5e002488
	mov.w	r0,r3                             ; 1a1c: 0d03
	mov.w	r0,e0                             ; 1a1e: 0d08
	mov.b	@0xf7ac:16,r0l                    ; 1a20: 6a08f7ac
	and.b	#0x1,r0l                          ; 1a24: e801
	mov.b	#0xc0,r0h                         ; 1a26: f0c0
	mulxu.b	r0h,r0                          ; 1a28: 5000
	add.w	#0xf400,r0                        ; 1a2a: 7910f400
	mov.w	#0xc0,r1                          ; 1a2e: 790100c0
	jsr	@func_5384:24                       ; 1a32: 5e005384
	mov.b	r5l,r5l                           ; 1a36: 0cdd
	beq	loc_1a44:8                          ; 1a38: 470a
	mov.w	r3,e0                             ; 1a3a: 0d38
	mov.w	#0x1820,r0                        ; 1a3c: 79001820
	jsr	@func_2178:24                       ; 1a40: 5e002178
loc_1a44:
	mov.w	r3,e1                             ; 1a44: 0d39
	mov.b	r5h,r0h                           ; 1a46: 0c50
	mov.b	r4l,r0l                           ; 1a48: 0cc8
	mov.w	#0x18,r1                          ; 1a4a: 79010018
	mov.w	#0x20,e0                          ; 1a4e: 79080020
	jsr	@func_82ea:24                       ; 1a52: 5e0082ea
	rts                                     ; 1a56: 5470
