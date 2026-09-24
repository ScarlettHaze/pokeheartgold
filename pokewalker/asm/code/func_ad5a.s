	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_ad5a

func_ad5a:
	mov.b	@0xf7d1:16,r0l                    ; ad5a: 6a08f7d1
	mov.b	@0xf7d2:16,r0h                    ; ad5e: 6a00f7d2
	cmp.b	r0h,r0l                           ; ad62: 1c08
	bne	loc_aea8:16                         ; ad64: 58600140
	mov.w	#D_bf86,e0                        ; ad68: 7908bf86
	bra	loc_adea:8                          ; ad6c: 407c
