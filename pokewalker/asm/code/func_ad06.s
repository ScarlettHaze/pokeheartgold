	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_ad06

func_ad06:
	sub.w	#0x6,r7                           ; ad06: 79370006
	mov.w	#0x858a,r5                        ; ad0a: 7905858a
	mov.b	@0xf7ce:16,r0l                    ; ad0e: 6a08f7ce
	cmp.b	#0x12,r0l                         ; ad12: a812
	bhi	loc_aea8:16                         ; ad14: 58200190
	extu.w	r0                               ; ad18: 1750
	add.w	r0,r0                             ; ad1a: 0900
	mov.w	@(0xbf50:16,er0),r0               ; ad1c: 6f00bf50
	jmp	@er0                                ; ad20: 5900
