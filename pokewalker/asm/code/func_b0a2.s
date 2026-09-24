	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_b0a2

func_b0a2:
	mov.w	#D_bf93,e0                        ; b0a2: 7908bf93
	mov.w	#0x808,r0                         ; b0a6: 79000808
	jmp	@loc_858a:24                        ; b0aa: 5a00858a
