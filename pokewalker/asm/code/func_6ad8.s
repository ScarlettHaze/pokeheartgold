	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_6ad8

func_6ad8:
	mov.b	r0l,r5l                           ; 6ad8: 0c8d
	jsr	@func_247e:24                       ; 6ada: 5e00247e
	mov.w	#0x60,r0                          ; 6ade: 79000060
	jsr	@func_2488:24                       ; 6ae2: 5e002488
	mov.w	r0,r6                             ; 6ae6: 0d06
	mov.b	r5l,r1l                           ; 6ae8: 0cd9
	mov.b	#0x60,r1h                         ; 6aea: f160
	mulxu.b	r1h,r1                          ; 6aec: 5011
	mov.w	#0x670,r5                         ; 6aee: 79050670
	add.w	r1,r5                             ; 6af2: 0915
	mov.w	r0,e0                             ; 6af4: 0d08
	mov.w	r5,r0                             ; 6af6: 0d50
	mov.w	#0x60,r1                          ; 6af8: 79010060
	jsr	@func_5384:24                       ; 6afc: 5e005384
	mov.w	r6,e0                             ; 6b00: 0d68
	mov.w	#0x1018,r1                        ; 6b02: 79011018
	mov.w	#0x404,r0                         ; 6b06: 79000404
	jsr	@func_80ac:24                       ; 6b0a: 5e0080ac
	rts                                     ; 6b0e: 5470
