	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_2f8c

func_2f8c:
	cmp.b	r6h,r6l                           ; 2f8c: 1c6e
	bcs	loc_30a4:16                         ; 2f8e: 58500112
	mov.w	#0xf7d8,r0                        ; 2f92: 7900f7d8
	bclr	#0x0,@er0                          ; 2f96: 7d007200
	mov.b	#0xb,r0l                          ; 2f9a: f80b
	mov.b	r0l,@0xf7cf:16                    ; 2f9c: 6a88f7cf
	sub.b	r0l,r0l                           ; 2fa0: 1888
	mov.b	r0l,@0xf7d2:16                    ; 2fa2: 6a88f7d2
	mov.b	#0x2,r0l                          ; 2fa6: f802
	jmp	@loc_3082:24                        ; 2fa8: 5a003082
