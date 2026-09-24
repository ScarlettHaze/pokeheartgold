	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_b8a6

func_b8a6:
	mov.w	r2,@-er7                          ; b8a6: 6df2
	mov.w	r6,@-er7                          ; b8a8: 6df6
	jsr	@func_247e:24                       ; b8aa: 5e00247e
	mov.w	#0xc0,r0                          ; b8ae: 790000c0
	jsr	@func_2488:24                       ; b8b2: 5e002488
	mov.w	r0,r6                             ; b8b6: 0d06
	mov.w	r0,e0                             ; b8b8: 0d08
	mov.w	#0x1910,r0                        ; b8ba: 79001910
	mov.w	#0xc0,r1                          ; b8be: 790100c0
	jsr	@func_5384:24                       ; b8c2: 5e005384
	mov.w	r6,e0                             ; b8c6: 0d68
	mov.w	#0x1820,r1                        ; b8c8: 79011820
	mov.w	#0x420,r0                         ; b8cc: 79000420
	jsr	@func_80ac:24                       ; b8d0: 5e0080ac
	mov.w	#0xd,r1                           ; b8d4: 7901000d
	mov.w	#0x4220,r0                        ; b8d8: 79004220
	jsr	@func_2096:24                       ; b8dc: 5e002096
	mov.w	#0x10e,r1                         ; b8e0: 7901010e
	mov.w	#0xf30,r0                         ; b8e4: 79000f30
	jsr	@func_2096:24                       ; b8e8: 5e002096
	mov.w	@er7+,r6                          ; b8ec: 6d76
	mov.w	@er7+,r2                          ; b8ee: 6d72
	rts                                     ; b8f0: 5470
