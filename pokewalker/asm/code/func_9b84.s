	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_9b84

func_9b84:
	sub.b	r0l,r0l                           ; 9b84: 1888
	mov.b	r0l,@0xf798:16                    ; 9b86: 6a88f798
	bld	#0x0,@PDRB:8                        ; 9b8a: 7ede7700
	bcc	loc_9baa:8                          ; 9b8e: 441a
	mov.w	#0xf798,r0                        ; 9b90: 7900f798
	bset	#0x1,@er0                          ; 9b94: 7d007010
	mov.b	@0xf7bb:16,r0l                    ; 9b98: 6a08f7bb
	beq	loc_9bae:8                          ; 9b9c: 4710
	mov.b	@0xf79b:16,r0l                    ; 9b9e: 6a08f79b
	inc	r0l                                 ; 9ba2: 0a08
	mov.b	r0l,@0xf79b:16                    ; 9ba4: 6a88f79b
	bra	loc_9bae:8                          ; 9ba8: 4004
loc_9baa:
	mov.b	r0l,@0xf79b:16                    ; 9baa: 6a88f79b
loc_9bae:
	mov.b	@0xf7b5:16,r0l                    ; 9bae: 6a08f7b5
	bld	#0x3,r0l                            ; 9bb2: 7738
	bcc	loc_9bc6:8                          ; 9bb4: 4410
	mov.w	#0xf798,r0                        ; 9bb6: 7900f798
	bset	#0x1,@er0                          ; 9bba: 7d007010
	mov.w	#0xf7b5,r0                        ; 9bbe: 7900f7b5
	bclr	#0x3,@er0                          ; 9bc2: 7d007230
loc_9bc6:
	bld	#0x2,@PDRB:8                        ; 9bc6: 7ede7720
	bcc	loc_9bd4:8                          ; 9bca: 4408
	mov.w	#0xf798,r0                        ; 9bcc: 7900f798
	bset	#0x2,@er0                          ; 9bd0: 7d007020
loc_9bd4:
	bld	#0x4,@PDRB:8                        ; 9bd4: 7ede7740
	bcc	loc_9be2:8                          ; 9bd8: 4408
	mov.w	#0xf798,r0                        ; 9bda: 7900f798
	bset	#0x3,@er0                          ; 9bde: 7d007030
loc_9be2:
	mov.b	@0xf798:16,r0l                    ; 9be2: 6a08f798
	mov.b	@0xf799:16,r0h                    ; 9be6: 6a00f799
	xor.b	r0h,r0l                           ; 9bea: 1508
	mov.b	@0xf798:16,r0h                    ; 9bec: 6a00f798
	and.b	r0l,r0h                           ; 9bf0: 1680
	mov.b	r0h,@0xf79a:16                    ; 9bf2: 6a80f79a
	mov.b	@0xf798:16,r0l                    ; 9bf6: 6a08f798
	mov.b	r0l,@0xf799:16                    ; 9bfa: 6a88f799
	mov.b	@0xf79a:16,r0l                    ; 9bfe: 6a08f79a
	beq	loc_9c20:8                          ; 9c02: 471c
	mov.b	#0x5a,r0l                         ; 9c04: f85a
	mov.b	r0l,@0xf7af:16                    ; 9c06: 6a88f7af
	sub.b	r0l,r0l                           ; 9c0a: 1888
	mov.b	r0l,@0xf7ae:16                    ; 9c0c: 6a88f7ae
	mov.b	@0xf7b6:16,r0l                    ; 9c10: 6a08f7b6
	and.b	#0x18,r0l                         ; 9c14: e818
	cmp.b	#0x10,r0l                         ; 9c16: a810
	beq	loc_9c20:8                          ; 9c18: 4706
	sub.b	r0l,r0l                           ; 9c1a: 1888
	mov.b	r0l,@0xf79a:16                    ; 9c1c: 6a88f79a
loc_9c20:
	mov.b	@0xf79b:16,r0l                    ; 9c20: 6a08f79b
	cmp.b	#0x8,r0l                          ; 9c24: a808
	bcs	loc_9c3e:8                          ; 9c26: 4516
	mov.b	@0xf7b6:16,r0l                    ; 9c28: 6a08f7b6
	and.b	#0x18,r0l                         ; 9c2c: e818
	cmp.b	#0x10,r0l                         ; 9c2e: a810
	beq	loc_9c3e:8                          ; 9c30: 470c
	jsr	@func_a29c:24                       ; 9c32: 5e00a29c
	mov.w	#0xf7b6,r0                        ; 9c36: 7900f7b6
	bset	#0x0,@er0                          ; 9c3a: 7d007000
loc_9c3e:
	rts                                     ; 9c3e: 5470
