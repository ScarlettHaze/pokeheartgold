	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_ad3a

func_ad3a:
	mov.b	@0xf7d3:16,r0l                    ; ad3a: 6a08f7d3
	bne	loc_aea8:16                         ; ad3e: 58600166
	mov.w	#D_bf7e,e0                        ; ad42: 7908bf7e
	jmp	@loc_adea:24                        ; ad46: 5a00adea
