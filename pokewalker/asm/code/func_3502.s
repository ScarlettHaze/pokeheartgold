	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_3502

func_3502:
	mov.w	#0xf,r1                           ; 3502: 7901000f
	mov.w	#0x2930,r0                        ; 3506: 79002930
	jmp	@loc_364e:24                        ; 350a: 5a00364e
