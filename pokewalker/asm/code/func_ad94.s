	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_ad94

func_ad94:
	mov.b	@0xf7ac:16,r0l                    ; ad94: 6a08f7ac
	extu.w	r0                               ; ad98: 1750
	shar.w	r0                               ; ad9a: 1190
	btst	#0x0,r0l                           ; ad9c: 7308
	bne	loc_aea8:16                         ; ad9e: 58600106
	mov.w	#D_bf8a,e0                        ; ada2: 7908bf8a
	mov.w	#0x3806,r0                        ; ada6: 79003806
	jmp	@loc_aea6:24                        ; adaa: 5a00aea6
