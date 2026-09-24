	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_6b4c

func_6b4c:
	mov.b	@0xf7d1:16,r0l                    ; 6b4c: 6a08f7d1
	bld	#0x2,r0l                            ; 6b50: 7728
	bcs	loc_6b6a:8                          ; 6b52: 4516
	mov.b	@0xf7d0:16,r0l                    ; 6b54: 6a08f7d0
	add.b	#0xfc,r0l                         ; 6b58: 88fc
	mov.b	r0l,@0xf7d0:16                    ; 6b5a: 6a88f7d0
	cmp.b	#0x20,r0l                         ; 6b5e: a820
	bhi	loc_6b84:8                          ; 6b60: 4222
	mov.b	#0x20,r0l                         ; 6b62: f820
	mov.b	r0l,@0xf7d0:16                    ; 6b64: 6a88f7d0
	bra	loc_6b84:8                          ; 6b68: 401a
loc_6b6a:
	mov.b	@0xf7d0:16,r0l                    ; 6b6a: 6a08f7d0
	add.b	#0x4,r0l                          ; 6b6e: 8804
	mov.b	r0l,@0xf7d0:16                    ; 6b70: 6a88f7d0
	cmp.b	#0x60,r0l                         ; 6b74: a860
	bcs	loc_6b84:8                          ; 6b76: 450c
	mov.w	#0xf7d1,r0                        ; 6b78: 7900f7d1
	bset	#0x1,@er0                          ; 6b7c: 7d007010
	bclr	#0x2,@er0                          ; 6b80: 7d007220
loc_6b84:
	mov.b	@0xf7b5:16,r0l                    ; 6b84: 6a08f7b5
	bpl	loc_6b9e:8                          ; 6b88: 4a14
	mov.b	@0xf7d0:16,r0l                    ; 6b8a: 6a08f7d0
	cmp.b	#0x20,r0l                         ; 6b8e: a820
	bhi	loc_6b9e:8                          ; 6b90: 420c
	mov.w	#0xf7d1,r0                        ; 6b92: 7900f7d1
	bset	#0x2,@er0                          ; 6b96: 7d007020
	bset	#0x0,@er0                          ; 6b9a: 7d007000
loc_6b9e:
	rts                                     ; 6b9e: 5470
