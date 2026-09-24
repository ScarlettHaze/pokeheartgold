	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_ad7a
	.global loc_ad7c

func_ad7a:
	sub.b	r0l,r0l                           ; ad7a: 1888
loc_ad7c:
	jsr	@func_7d4a:24                       ; ad7c: 5e007d4a
	jmp	@loc_aea8:24                        ; ad80: 5a00aea8
