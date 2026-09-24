	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_06de

func_06de:
	sub.w	r0,r0                             ; 06de: 1900
	mov.w	r0,@0xf78e:16                     ; 06e0: 6b80f78e
	mov.w	#0x18,e1                          ; 06e4: 79090018
	mov.w	#0xf780,r1                        ; 06e8: 7901f780
	mov.l	#0x2560156,er0                    ; 06ec: 7a0002560156
	jsr	@func_50d8:24                       ; 06f2: 5e0050d8
	jmp	@func_187e:24                       ; 06f6: 5a00187e
