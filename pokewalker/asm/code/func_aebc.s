	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_aebc

func_aebc:
	sub.b	r0l,r0l                           ; aebc: 1888
	mov.b	r0l,@0xf7ae:16                    ; aebe: 6a88f7ae
	mov.w	#0x10,e0                          ; aec2: 79080010
	mov.w	e0,@0xf7ce:16                     ; aec6: 6b88f7ce
	mov.b	r0l,@0xf7d0:16                    ; aeca: 6a88f7d0
	mov.b	r0l,@0xf7d1:16                    ; aece: 6a88f7d1
	sub.w	e0,e0                             ; aed2: 1988
	mov.w	e0,@0xf7d2:16                     ; aed4: 6b88f7d2
	mov.w	e0,@0xf7d4:16                     ; aed8: 6b88f7d4
	mov.w	e0,@0xf7d6:16                     ; aedc: 6b88f7d6
	mov.w	#0x8,r1                           ; aee0: 79010008
	mov.w	#0xf7d8,e0                        ; aee4: 7908f7d8
	mov.w	r1,r0                             ; aee8: 0d10
	jsr	@func_5384:24                       ; aeea: 5e005384
	mov.w	#0xf7b6,r0                        ; aeee: 7900f7b6
	bset	#0x1,@er0                          ; aef2: 7d007010
	rts                                     ; aef6: 5470
