	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_18a8

func_18a8:
	mov.w	#0xcef0,r0                        ; 18a8: 7900cef0
	sub.b	r1l,r1l                           ; 18ac: 1899
	mov.w	#0x1c,e0                          ; 18ae: 7908001c
	jmp	@func_5742:24                       ; 18b2: 5a005742
