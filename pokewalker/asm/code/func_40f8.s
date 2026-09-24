	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_40f8

func_40f8:
	mov.b	@0xf7cf:16,r1l                    ; 40f8: 6a09f7cf
	mov.b	@0xf7ce:16,r0l                    ; 40fc: 6a08f7ce
	beq	loc_410c:8                          ; 4100: 470a
	cmp.b	#0x1,r0l                          ; 4102: a801
	beq	loc_411e:8                          ; 4104: 4718
	cmp.b	#0x2,r0l                          ; 4106: a802
	bne	loc_4146:8                          ; 4108: 463c
	bra	loc_4130:8                          ; 410a: 4024
loc_410c:
	cmp.b	#0x4,r1l                          ; 410c: a904
	bls	loc_4146:8                          ; 410e: 4336
	mov.b	#0x1,r0l                          ; 4110: f801
	mov.b	r0l,@0xf7ce:16                    ; 4112: 6a88f7ce
	sub.b	r0l,r0l                           ; 4116: 1888
	mov.b	r0l,@0xf7cf:16                    ; 4118: 6a88f7cf
	bra	loc_4146:8                          ; 411c: 4028
loc_411e:
	mov.b	r1l,r1l                           ; 411e: 0c99
	beq	loc_4146:8                          ; 4120: 4724
	mov.b	#0x2,r0l                          ; 4122: f802
	mov.b	r0l,@0xf7ce:16                    ; 4124: 6a88f7ce
	sub.b	r0l,r0l                           ; 4128: 1888
	mov.b	r0l,@0xf7cf:16                    ; 412a: 6a88f7cf
	bra	loc_4142:8                          ; 412e: 4012
loc_4130:
	cmp.b	#0x8,r1l                          ; 4130: a908
	bls	loc_4146:8                          ; 4132: 4312
	sub.b	r0l,r0l                           ; 4134: 1888
	mov.b	r0l,@0xf7cf:16                    ; 4136: 6a88f7cf
	mov.b	#0x3,r0l                          ; 413a: f803
	mov.b	r0l,@0xf7ce:16                    ; 413c: 6a88f7ce
	mov.b	#0x6,r0l                          ; 4140: f806
loc_4142:
	jsr	@func_36f2:24                       ; 4142: 5e0036f2
loc_4146:
	rts                                     ; 4146: 5470
