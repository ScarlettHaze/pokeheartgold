	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_6ba0

func_6ba0:
	mov.b	@0xf7ac:16,r0l                    ; 6ba0: 6a08f7ac
	and.b	#0x3,r0l                          ; 6ba4: e803
	bne	loc_6bf6:8                          ; 6ba6: 464e
	mov.b	@0xf7d1:16,r0l                    ; 6ba8: 6a08f7d1
	bld	#0x2,r0l                            ; 6bac: 7728
	bcs	loc_6bc2:8                          ; 6bae: 4512
	mov.b	@0xf7d0:16,r0l                    ; 6bb0: 6a08f7d0
	add.b	#0xfc,r0l                         ; 6bb4: 88fc
	mov.b	r0l,@0xf7d0:16                    ; 6bb6: 6a88f7d0
	cmp.b	#0x20,r0l                         ; 6bba: a820
	bhi	loc_6bde:8                          ; 6bbc: 4220
	mov.b	#0x20,r0l                         ; 6bbe: f820
	bra	loc_6bd2:8                          ; 6bc0: 4010
loc_6bc2:
	mov.b	@0xf7d0:16,r0l                    ; 6bc2: 6a08f7d0
	add.b	#0x4,r0l                          ; 6bc6: 8804
	mov.b	r0l,@0xf7d0:16                    ; 6bc8: 6a88f7d0
	cmp.b	#0x40,r0l                         ; 6bcc: a840
	bcs	loc_6bde:8                          ; 6bce: 450e
	mov.b	#0x40,r0l                         ; 6bd0: f840
loc_6bd2:
	mov.b	r0l,@0xf7d0:16                    ; 6bd2: 6a88f7d0
	mov.w	#0xf7d1,r0                        ; 6bd6: 7900f7d1
	bnot	#0x2,@er0                          ; 6bda: 7d007120
loc_6bde:
	mov.b	@0xf7b5:16,r0l                    ; 6bde: 6a08f7b5
	bmi	loc_6bf6:8                          ; 6be2: 4b12
	mov.b	#0x68,r0l                         ; 6be4: f868
	mov.b	r0l,@0xf7d0:16                    ; 6be6: 6a88f7d0
	mov.w	#0xf7d1,r0                        ; 6bea: 7900f7d1
	bclr	#0x1,@er0                          ; 6bee: 7d007210
	bclr	#0x2,@er0                          ; 6bf2: 7d007220
loc_6bf6:
	rts                                     ; 6bf6: 5470
