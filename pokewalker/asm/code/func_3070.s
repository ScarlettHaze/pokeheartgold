	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_3070
	.global loc_3076
	.global loc_3082

func_3070:
	cmp.b	r6h,r6l                           ; 3070: 1c6e
	bcs	loc_30a4:8                          ; 3072: 4530
	mov.b	#0x9,r0l                          ; 3074: f809
loc_3076:
	mov.b	r0l,@0xf7cf:16                    ; 3076: 6a88f7cf
	sub.b	r0l,r0l                           ; 307a: 1888
	mov.b	r0l,@0xf7d2:16                    ; 307c: 6a88f7d2
	mov.b	#0x6,r0l                          ; 3080: f806
loc_3082:
	mov.b	r0l,@0xf7d3:16                    ; 3082: 6a88f7d3
	bra	loc_30a4:8                          ; 3086: 401c
