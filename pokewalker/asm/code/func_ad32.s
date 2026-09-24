	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_ad32

func_ad32:
	mov.w	#D_bf7a,e0                        ; ad32: 7908bf7a
	jmp	@loc_adea:24                        ; ad36: 5a00adea
