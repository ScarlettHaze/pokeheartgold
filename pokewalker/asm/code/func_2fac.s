	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_2fac
	.global loc_2fb4

func_2fac:
	cmp.b	r6h,r6l                           ; 2fac: 1c6e
	bcs	loc_30a4:16                         ; 2fae: 585000f2
	mov.b	#0xc,r0l                          ; 2fb2: f80c
loc_2fb4:
	mov.b	r0l,@0xf7cf:16                    ; 2fb4: 6a88f7cf
	sub.b	r0l,r0l                           ; 2fb8: 1888
	mov.b	r0l,@0xf7d2:16                    ; 2fba: 6a88f7d2
	mov.b	#0x3,r0l                          ; 2fbe: f803
	jmp	@loc_3082:24                        ; 2fc0: 5a003082
