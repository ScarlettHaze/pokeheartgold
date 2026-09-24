	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_3838

func_3838:
	mov.b	r0l,r5l                           ; 3838: 0c8d
	extu.w	r5                               ; 383a: 1755
	mov.w	r5,r0                             ; 383c: 0d50
	mov.b	@0xf7c6:16,r1l                    ; 383e: 6a09f7c6
	beq	loc_384e:8                          ; 3842: 470a
	cmp.b	#0x1,r1l                          ; 3844: a901
	beq	loc_385c:8                          ; 3846: 4714
	cmp.b	#0x2,r1l                          ; 3848: a902
	bne	loc_3884:8                          ; 384a: 4638
	bra	loc_386e:8                          ; 384c: 4020
loc_384e:
	mov.w	r0,@GRA:16                        ; 384e: 6b80f0f8
	mov.w	r0,@GRB:16                        ; 3852: 6b80f0fa
	mov.w	r0,@GRC:16                        ; 3856: 6b80f0fc
	bra	loc_3884:8                          ; 385a: 4028
loc_385c:
	mov.w	r0,@GRA:16                        ; 385c: 6b80f0f8
	extu.w	r5                               ; 3860: 1755
	shar.w	r5                               ; 3862: 1195
	mov.w	r5,@GRB:16                        ; 3864: 6b85f0fa
	mov.w	r0,@GRC:16                        ; 3868: 6b80f0fc
	bra	loc_3884:8                          ; 386c: 4016
loc_386e:
	mov.w	r0,@GRA:16                        ; 386e: 6b80f0f8
	extu.w	r5                               ; 3872: 1755
	mov.w	r5,r0                             ; 3874: 0d50
	shar.w	r0                               ; 3876: 1190
	mov.w	r0,@GRB:16                        ; 3878: 6b80f0fa
	extu.w	r5                               ; 387c: 1755
	shar.w	r5                               ; 387e: 1195
	mov.w	r5,@GRC:16                        ; 3880: 6b85f0fc
loc_3884:
	sub.w	r0,r0                             ; 3884: 1900
	mov.w	r0,@TCNT:16                       ; 3886: 6b80f0f6
	rts                                     ; 388a: 5470
