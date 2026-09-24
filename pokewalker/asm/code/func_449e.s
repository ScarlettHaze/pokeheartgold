	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_449e

func_449e:
	mov.b	@0xf7cf:16,r1l                    ; 449e: 6a09f7cf
	mov.b	@0xf7ce:16,r0l                    ; 44a2: 6a08f7ce
	cmp.b	#0x5,r0l                          ; 44a6: a805
	beq	loc_44b8:8                          ; 44a8: 470e
	cmp.b	#0x2,r0l                          ; 44aa: a802
	beq	loc_44c6:8                          ; 44ac: 4718
	cmp.b	#0x0,r0l                          ; 44ae: a800
	beq	loc_44d8:8                          ; 44b0: 4726
	cmp.b	#0x6,r0l                          ; 44b2: a806
	bne	loc_44f2:8                          ; 44b4: 463c
	bra	loc_44e0:8                          ; 44b6: 4028
loc_44b8:
	sub.b	r0l,r0l                           ; 44b8: 1888
	mov.b	r0l,@0xf7cf:16                    ; 44ba: 6a88f7cf
	mov.b	#0x2,r0h                          ; 44be: f002
	mov.b	r0h,@0xf7ce:16                    ; 44c0: 6a80f7ce
	bra	loc_44ee:8                          ; 44c4: 4028
loc_44c6:
	cmp.b	#0x8,r1l                          ; 44c6: a908
	bls	loc_44f2:8                          ; 44c8: 4328
	sub.b	r0l,r0l                           ; 44ca: 1888
	mov.b	r0l,@0xf7cf:16                    ; 44cc: 6a88f7cf
	mov.b	#0x1,r0l                          ; 44d0: f801
	mov.b	r0l,@0xf7ce:16                    ; 44d2: 6a88f7ce
	bra	loc_44f2:8                          ; 44d6: 401a
loc_44d8:
	cmp.b	#0x9,r1l                          ; 44d8: a909
	bcs	loc_44f2:8                          ; 44da: 4516
	mov.b	#0x3,r0l                          ; 44dc: f803
	bra	loc_44e2:8                          ; 44de: 4002
loc_44e0:
	mov.b	#0x7,r0l                          ; 44e0: f807
loc_44e2:
	mov.b	r0l,@0xf7ce:16                    ; 44e2: 6a88f7ce
	sub.b	r0l,r0l                           ; 44e6: 1888
	mov.b	r0l,@0xf7cf:16                    ; 44e8: 6a88f7cf
	mov.b	#0x6,r0l                          ; 44ec: f806
loc_44ee:
	jsr	@func_36f2:24                       ; 44ee: 5e0036f2
loc_44f2:
	rts                                     ; 44f2: 5470
