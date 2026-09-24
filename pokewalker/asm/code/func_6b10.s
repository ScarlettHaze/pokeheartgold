	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_6b10

func_6b10:
	jsr	@func_247e:24                       ; 6b10: 5e00247e
	mov.w	#0xc0,r0                          ; 6b14: 790000c0
	jsr	@func_2488:24                       ; 6b18: 5e002488
	mov.w	r0,r6                             ; 6b1c: 0d06
	mov.b	@0xf797:16,r0l                    ; 6b1e: 6a08f797
	bld	#0x0,r0l                            ; 6b22: 7708
	bcc	loc_6b2c:8                          ; 6b24: 4406
	mov.w	#0xc83c,r5                        ; 6b26: 7905c83c
	bra	loc_6b30:8                          ; 6b2a: 4004
loc_6b2c:
	mov.w	#0x8fbe,r5                        ; 6b2c: 79058fbe
loc_6b30:
	mov.w	r5,r0                             ; 6b30: 0d50
	mov.w	#0xc0,r1                          ; 6b32: 790100c0
	mov.w	r6,e0                             ; 6b36: 0d68
	jsr	@func_5384:24                       ; 6b38: 5e005384
	mov.w	r6,e0                             ; 6b3c: 0d68
	mov.w	#0x1820,r1                        ; 6b3e: 79011820
	mov.w	#0x1800,r0                        ; 6b42: 79001800
	jsr	@func_80ac:24                       ; 6b46: 5e0080ac
	rts                                     ; 6b4a: 5470
