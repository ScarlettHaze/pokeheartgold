	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_1b94

func_1b94:
	mov.b	r0l,r4h                           ; 1b94: 0c84
	mov.b	r0h,r4l                           ; 1b96: 0c0c
	jsr	@func_247e:24                       ; 1b98: 5e00247e
	mov.w	#0x10,r0                          ; 1b9c: 79000010
	jsr	@func_2488:24                       ; 1ba0: 5e002488
	mov.w	r0,r6                             ; 1ba4: 0d06
	mov.w	#0x488,r5                         ; 1ba6: 79050488
	mov.w	r0,e0                             ; 1baa: 0d08
	mov.w	r5,r0                             ; 1bac: 0d50
	mov.w	#0x10,r1                          ; 1bae: 79010010
	jsr	@func_5384:24                       ; 1bb2: 5e005384
	mov.w	r6,e0                             ; 1bb6: 0d68
	mov.b	r4l,r0h                           ; 1bb8: 0cc0
	mov.b	r4h,r0l                           ; 1bba: 0c48
	mov.w	#0x808,r1                         ; 1bbc: 79010808
	jsr	@func_80ac:24                       ; 1bc0: 5e0080ac
	rts                                     ; 1bc4: 5470
