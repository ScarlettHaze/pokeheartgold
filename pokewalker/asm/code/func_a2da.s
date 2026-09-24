	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_a2da

func_a2da:
	jsr	@func_3810:24                       ; a2da: 5e003810
	bclr	#0x2,@CKSTPR1:8                    ; a2de: 7ffa7220
	mov.w	#0xf06d,r0                        ; a2e2: 7900f06d
	bclr	#0x0,@er0                          ; a2e6: 7d007200
	mov.b	@0xf7b6:16,r0l                    ; a2ea: 6a08f7b6
	and.b	#0xe7,r0l                         ; a2ee: e8e7
	mov.b	r0l,@0xf7b6:16                    ; a2f0: 6a88f7b6
	rts                                     ; a2f4: 5470
