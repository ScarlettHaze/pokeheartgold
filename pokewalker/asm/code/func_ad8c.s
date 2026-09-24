	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_ad8c

func_ad8c:
	jsr	@func_a962:24                       ; ad8c: 5e00a962
	jmp	@loc_aea8:24                        ; ad90: 5a00aea8
