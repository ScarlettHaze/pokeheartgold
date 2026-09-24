	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_ad84

func_ad84:
	jsr	@func_ac1e:24                       ; ad84: 5e00ac1e
	jmp	@loc_aea8:24                        ; ad88: 5a00aea8
