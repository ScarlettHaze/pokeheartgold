	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_ad4a

func_ad4a:
	mov.b	@0xf7d3:16,r0l                    ; ad4a: 6a08f7d3
	bne	loc_aea8:16                         ; ad4e: 58600156
	mov.w	#D_bf82,e0                        ; ad52: 7908bf82
	jmp	@loc_adea:24                        ; ad56: 5a00adea
