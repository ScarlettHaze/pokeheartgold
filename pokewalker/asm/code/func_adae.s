	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_adae

func_adae:
	mov.b	@0xf7ac:16,r0l                    ; adae: 6a08f7ac
	extu.w	r0                               ; adb2: 1750
	shar.w	r0                               ; adb4: 1190
	btst	#0x0,r0l                           ; adb6: 7308
	bne	loc_aea8:16                         ; adb8: 586000ec
	mov.w	#D_bf8a,e0                        ; adbc: 7908bf8a
	mov.w	#0x382d,r0                        ; adc0: 7900382d
	jmp	@loc_aea6:24                        ; adc4: 5a00aea6
