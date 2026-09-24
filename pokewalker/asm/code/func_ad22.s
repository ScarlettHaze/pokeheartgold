	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_ad22

func_ad22:
	mov.b	@0xf7cf:16,r0l                    ; ad22: 6a08f7cf
	bne	loc_aea8:16                         ; ad26: 5860017e
	mov.w	#D_bf76,e0                        ; ad2a: 7908bf76
	jmp	@loc_adea:24                        ; ad2e: 5a00adea
