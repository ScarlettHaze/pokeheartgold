	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_2ef2
	.global loc_2f06

func_2ef2:
	cmp.b	r6h,r6l                           ; 2ef2: 1c6e
	bcs	loc_30a4:16                         ; 2ef4: 585001ac
	mov.b	#0x2,r0l                          ; 2ef8: f802
	mov.b	r0l,@0xf7cf:16                    ; 2efa: 6a88f7cf
	mov.b	@0xf7d8:16,r0l                    ; 2efe: 6a08f7d8
	and.b	#0x1f,r0l                         ; 2f02: e81f
	or.b	#0x80,r0l                          ; 2f04: c880
loc_2f06:
	mov.b	r0l,@0xf7d8:16                    ; 2f06: 6a88f7d8
	jmp	@loc_30a4:24                        ; 2f0a: 5a0030a4
