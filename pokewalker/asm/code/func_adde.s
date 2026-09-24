	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_adde
	.global loc_adea

func_adde:
	mov.b	@0xf7d3:16,r0l                    ; adde: 6a08f7d3
	bne	loc_aea8:16                         ; ade2: 586000c2
	mov.w	#D_bf8c,e0                        ; ade6: 7908bf8c
loc_adea:
	mov.w	#0x820,r0                         ; adea: 79000820
	jmp	@loc_aea6:24                        ; adee: 5a00aea6
