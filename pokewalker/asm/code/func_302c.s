	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_302c
	.global loc_3044

func_302c:
	cmp.b	r6h,r6l                           ; 302c: 1c6e
	bcs	loc_30a4:8                          ; 302e: 4574
	mov.b	#0x10,r0l                         ; 3030: f810
	mov.b	r0l,@0xf7cf:16                    ; 3032: 6a88f7cf
	sub.b	r0l,r0l                           ; 3036: 1888
	mov.b	r0l,@0xf7d2:16                    ; 3038: 6a88f7d2
	mov.b	#0x6,r0l                          ; 303c: f806
	mov.b	r0l,@0xf7d3:16                    ; 303e: 6a88f7d3
	mov.b	#0x7,r0l                          ; 3042: f807
loc_3044:
	jsr	@func_36f2:24                       ; 3044: 5e0036f2
	bra	loc_30a4:8                          ; 3048: 405a
