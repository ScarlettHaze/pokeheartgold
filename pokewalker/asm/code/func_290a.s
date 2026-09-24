	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_290a

func_290a:
	mov.b	@0xf7b5:16,r0l                    ; 290a: 6a08f7b5
	bld	#0x2,r0l                            ; 290e: 7728
	bcc	loc_2936:8                          ; 2910: 4424
	mov.w	#0x14,r0                          ; 2912: 79000014
	bsr	func_289a:8                         ; 2916: 5582
	mov.b	r0l,r0l                           ; 2918: 0c88
	beq	loc_2926:8                          ; 291a: 470a
	mov.w	#0xf7b5,r0                        ; 291c: 7900f7b5
	bset	#0x1,@er0                          ; 2920: 7d007010
	bra	loc_292e:8                          ; 2924: 4008
loc_2926:
	mov.w	#0xf7b5,r0                        ; 2926: 7900f7b5
	bclr	#0x1,@er0                          ; 292a: 7d007210
loc_292e:
	mov.w	#0xf7b5,r0                        ; 292e: 7900f7b5
	bclr	#0x2,@er0                          ; 2932: 7d007220
loc_2936:
	rts                                     ; 2936: 5470
