	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_187e

func_187e:
	mov.w	#0xce8c,r0                        ; 187e: 7900ce8c
	sub.b	r1l,r1l                           ; 1882: 1899
	mov.w	#0x64,e0                          ; 1884: 79080064
	jmp	@func_5742:24                       ; 1888: 5a005742
