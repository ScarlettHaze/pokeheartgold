	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_3088
	.global loc_30a4

func_3088:
	cmp.b	r6h,r6l                           ; 3088: 1c6e
	bcs	loc_30a4:8                          ; 308a: 4518
	mov.b	#0xe,r0l                          ; 308c: f80e
	jsr	@func_36f2:24                       ; 308e: 5e0036f2
	mov.b	#0x7,r0l                          ; 3092: f807
	mov.b	r0l,@0xf7cf:16                    ; 3094: 6a88f7cf
	sub.b	r0l,r0l                           ; 3098: 1888
	mov.b	r0l,@0xf7d2:16                    ; 309a: 6a88f7d2
	mov.b	#0xa,r0l                          ; 309e: f80a
	mov.b	r0l,@0xf7d3:16                    ; 30a0: 6a88f7d3
loc_30a4:
	rts                                     ; 30a4: 5470
