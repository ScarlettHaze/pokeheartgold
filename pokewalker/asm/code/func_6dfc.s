	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_6dfc

func_6dfc:
	mov.b	@0xf7ce:16,r0l                    ; 6dfc: 6a08f7ce
	beq	loc_6e0c:8                          ; 6e00: 470a
	cmp.b	#0x1,r0l                          ; 6e02: a801
	beq	loc_6e12:8                          ; 6e04: 470c
	cmp.b	#0x2,r0l                          ; 6e06: a802
	bne	loc_6e1c:8                          ; 6e08: 4612
	bra	loc_6e18:8                          ; 6e0a: 400c
loc_6e0c:
	jsr	@func_6c94:24                       ; 6e0c: 5e006c94
	bra	loc_6e1c:8                          ; 6e10: 400a
loc_6e12:
	jsr	@func_6ce2:24                       ; 6e12: 5e006ce2
	bra	loc_6e1c:8                          ; 6e16: 4004
loc_6e18:
	jsr	@func_6d6c:24                       ; 6e18: 5e006d6c
loc_6e1c:
	mov.b	#0x2,r0l                          ; 6e1c: f802
	jsr	@func_9c40:24                       ; 6e1e: 5e009c40
	mov.b	r0l,r0l                           ; 6e22: 0c88
	beq	loc_6e60:8                          ; 6e24: 473a
	mov.b	@0xf7ce:16,r0l                    ; 6e26: 6a08f7ce
	bne	loc_6e3e:8                          ; 6e2a: 4612
	sub.b	r0l,r0l                           ; 6e2c: 1888
	jsr	@func_36f2:24                       ; 6e2e: 5e0036f2
	mov.b	@0xf7cf:16,r0l                    ; 6e32: 6a08f7cf
	add.b	#0x1,r0l                          ; 6e36: 8801
	mov.b	r0l,@0xf7ce:16                    ; 6e38: 6a88f7ce
	bra	loc_6e60:8                          ; 6e3c: 4022
loc_6e3e:
	sub.b	r0l,r0l                           ; 6e3e: 1888
	jsr	@func_36f2:24                       ; 6e40: 5e0036f2
	jsr	@func_6a1c:24                       ; 6e44: 5e006a1c
	sub.b	r0l,r0l                           ; 6e48: 1888
	jsr	@func_69b8:24                       ; 6e4a: 5e0069b8
	mov.w	#0x18,e1                          ; 6e4e: 79090018
	mov.w	#0xf780,r1                        ; 6e52: 7901f780
	mov.l	#0x2560156,er0                    ; 6e56: 7a0002560156
	jsr	@func_50d8:24                       ; 6e5c: 5e0050d8
loc_6e60:
	rts                                     ; 6e60: 5470
