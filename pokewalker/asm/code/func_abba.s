	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_abba
	.global loc_abc0
	.global loc_abc8
	.global loc_abce

func_abba:
	mov.b	@0xf7d3:16,r0l                    ; abba: 6a08f7d3
	beq	loc_ac1c:8                          ; abbe: 475c
loc_abc0:
	mov.w	#D_bfa2,r0                        ; abc0: 7900bfa2
	jsr	@func_37c6:24                       ; abc4: 5e0037c6
loc_abc8:
	mov.b	@0xf7ce:16,r0l                    ; abc8: 6a08f7ce
	inc	r0l                                 ; abcc: 0a08
loc_abce:
	mov.b	r0l,@0xf7ce:16                    ; abce: 6a88f7ce
	sub.b	r0l,r0l                           ; abd2: 1888
	mov.b	r0l,@0xf7d0:16                    ; abd4: 6a88f7d0
	bra	loc_ac1c:8                          ; abd8: 4042
