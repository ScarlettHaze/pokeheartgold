	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_2cdc

func_2cdc:
	mov.b	r6l,r0l                           ; 2cdc: 0ce8
	extu.w	r0                               ; 2cde: 1750
	shll.w	r0                               ; 2ce0: 1010
	mov.b	@(0xbb12:16,er0),r0l              ; 2ce2: 6e08bb12
	mov.b	r0l,@0xf7d4:16                    ; 2ce6: 6a88f7d4
	mov.b	@0xf7d2:16,r0l                    ; 2cea: 6a08f7d2
	extu.w	r0                               ; 2cee: 1750
	shll.w	r0                               ; 2cf0: 1010
	mov.b	@(0xbb13:16,er0),r0l              ; 2cf2: 6e08bb13
	mov.b	r0l,@0xf7d5:16                    ; 2cf6: 6a88f7d5
	jsr	@func_369c:24                       ; 2cfa: 5e00369c
	mov.b	r0l,r0l                           ; 2cfe: 0c88
	bne	loc_30a4:16                         ; 2d00: 586003a0
	mov.b	@0xf7d2:16,r0l                    ; 2d04: 6a08f7d2
	mov.b	@0xf7d3:16,r0h                    ; 2d08: 6a00f7d3
	cmp.b	r0h,r0l                           ; 2d0c: 1c08
	bcs	loc_30a4:16                         ; 2d0e: 58500392
	mov.b	#0x38,r0l                         ; 2d12: f838
	mov.b	r0l,@0xf7d4:16                    ; 2d14: 6a88f7d4
	mov.b	#0x8,r0l                          ; 2d18: f808
	mov.b	r0l,@0xf7d5:16                    ; 2d1a: 6a88f7d5
	mov.b	@0xf7d1:16,r6l                    ; 2d1e: 6a0ef7d1
	mov.b	@0xf7d8:16,r0l                    ; 2d22: 6a08f7d8
	shlr.b	r0l                              ; 2d26: 1108
	shlr.b	r0l                              ; 2d28: 1108
	shlr.b	r0l                              ; 2d2a: 1108
	and.b	#0x3,r0l                          ; 2d2c: e803
	beq	loc_2d3c:8                          ; 2d2e: 470c
	cmp.b	#0x1,r0l                          ; 2d30: a801
	beq	loc_2d76:8                          ; 2d32: 4742
	cmp.b	#0x2,r0l                          ; 2d34: a802
	bne	loc_30a4:16                         ; 2d36: 5860036a
	bra	loc_2d6a:8                          ; 2d3a: 402e
loc_2d3c:
	cmp.b	#0x1,r6l                          ; 2d3c: ae01
	bls	loc_2d7c:8                          ; 2d3e: 433c
	mov.b	r6l,r0l                           ; 2d40: 0ce8
	dec.b	r0l                               ; 2d42: 1a08
	mov.b	r0l,@0xf7d1:16                    ; 2d44: 6a88f7d1
	mov.b	@0xf7d8:16,r0l                    ; 2d48: 6a08f7d8
	shlr.b	r0l                              ; 2d4c: 1108
	and.b	#0x3,r0l                          ; 2d4e: e803
	beq	loc_2d76:8                          ; 2d50: 4724
	cmp.b	#0x1,r0l                          ; 2d52: a801
	bne	loc_30a4:16                         ; 2d54: 5860034c
	mov.b	#0x2,r0l                          ; 2d58: f802
	mov.b	r0l,@0xf7cf:16                    ; 2d5a: 6a88f7cf
	mov.b	@0xf7d8:16,r0l                    ; 2d5e: 6a08f7d8
	and.b	#0x1f,r0l                         ; 2d62: e81f
	or.b	#0x20,r0l                          ; 2d64: c820
	jmp	@loc_2f06:24                        ; 2d66: 5a002f06
loc_2d6a:
	cmp.b	#0x2,r6l                          ; 2d6a: ae02
	bls	loc_2d7c:8                          ; 2d6c: 430e
	mov.b	r6l,r0l                           ; 2d6e: 0ce8
	add.b	#0xfe,r0l                         ; 2d70: 88fe
	mov.b	r0l,@0xf7d1:16                    ; 2d72: 6a88f7d1
loc_2d76:
	mov.b	#0x4,r0l                          ; 2d76: f804
	jmp	@loc_2ed2:24                        ; 2d78: 5a002ed2
loc_2d7c:
	sub.b	r0l,r0l                           ; 2d7c: 1888
	mov.b	r0l,@0xf7d1:16                    ; 2d7e: 6a88f7d1
	mov.b	#0xe,r0l                          ; 2d82: f80e
	jsr	@func_36f2:24                       ; 2d84: 5e0036f2
	mov.b	#0x7,r0l                          ; 2d88: f807
	mov.b	r0l,@0xf7cf:16                    ; 2d8a: 6a88f7cf
	sub.b	r0l,r0l                           ; 2d8e: 1888
	mov.b	r0l,@0xf7d2:16                    ; 2d90: 6a88f7d2
	mov.b	#0xa,r0l                          ; 2d94: f80a
	jmp	@loc_3082:24                        ; 2d96: 5a003082
