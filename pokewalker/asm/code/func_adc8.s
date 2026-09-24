	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_adc8

func_adc8:
	mov.b	@0xf7ac:16,r0l                    ; adc8: 6a08f7ac
	extu.w	r0                               ; adcc: 1750
	shar.w	r0                               ; adce: 1190
	btst	#0x0,r0l                           ; add0: 7308
	bne	loc_aea8:16                         ; add2: 586000d2
	mov.w	#D_bf8a,e0                        ; add6: 7908bf8a
	jmp	@loc_aea2:24                        ; adda: 5a00aea2
