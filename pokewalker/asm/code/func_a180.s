	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_a180

func_a180:
	bset	#0x2,@CKSTPR1:8                    ; a180: 7ffa7020
	mov.b	@0xf7b6:16,r0l                    ; a184: 6a08f7b6
	and.b	#0xe7,r0l                         ; a188: e8e7
	or.b	#0x8,r0l                           ; a18a: c808
	mov.b	r0l,@0xf7b6:16                    ; a18c: 6a88f7b6
	mov.w	#0xf06d,r0                        ; a190: 7900f06d
	bset	#0x0,@er0                          ; a194: 7d007000
	mov.b	#0x1e,r0l                         ; a198: f81e
	mov.b	r0l,@0xf7b0:16                    ; a19a: 6a88f7b0
	mov.w	#0xf7b5,r0                        ; a19e: 7900f7b5
	bclr	#0x7,@er0                          ; a1a2: 7d007270
	rts                                     ; a1a6: 5470
