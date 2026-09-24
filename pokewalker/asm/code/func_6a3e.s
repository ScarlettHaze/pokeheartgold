	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_6a3e

func_6a3e:
	mov.b	@0xf7b6:16,r0l                    ; 6a3e: 6a08f7b6
	bld	#0x1,r0l                            ; 6a42: 7718
	bcs	loc_6a5e:8                          ; 6a44: 4518
	mov.b	#0x2,r0l                          ; 6a46: f802
	jsr	@func_9c40:24                       ; 6a48: 5e009c40
	mov.b	r0l,r0l                           ; 6a4c: 0c88
	bne	loc_6a58:8                          ; 6a4e: 4608
	mov.b	@0xf7b5:16,r0l                    ; 6a50: 6a08f7b5
	bld	#0x5,r0l                            ; 6a54: 7758
	bcc	loc_6ad6:8                          ; 6a56: 447e
loc_6a58:
	jsr	@func_694c:24                       ; 6a58: 5e00694c
	bra	loc_6ad6:8                          ; 6a5c: 4078
loc_6a5e:
	mov.b	@0xf7cf:16,r0l                    ; 6a5e: 6a08f7cf
	beq	loc_6a88:8                          ; 6a62: 4724
	mov.b	#0xe,r0l                          ; 6a64: f80e
	jsr	@func_9c40:24                       ; 6a66: 5e009c40
	mov.b	r0l,r0l                           ; 6a6a: 0c88
	beq	loc_6a7e:8                          ; 6a6c: 4710
	sub.b	r0l,r0l                           ; 6a6e: 1888
	mov.b	r0l,@0xf7cf:16                    ; 6a70: 6a88f7cf
	mov.b	@0xf7ce:16,r0l                    ; 6a74: 6a08f7ce
	jsr	@func_5d52:24                       ; 6a78: 5e005d52
	bra	loc_6ad6:8                          ; 6a7c: 4058
loc_6a7e:
	mov.b	@0xf7cf:16,r0l                    ; 6a7e: 6a08f7cf
	dec.b	r0l                               ; 6a82: 1a08
	mov.b	r0l,@0xf7cf:16                    ; 6a84: 6a88f7cf
loc_6a88:
	mov.b	#0x2,r0l                          ; 6a88: f802
	jsr	@func_9c40:24                       ; 6a8a: 5e009c40
	mov.b	r0l,r0l                           ; 6a8e: 0c88
	beq	loc_6aa4:8                          ; 6a90: 4712
	sub.b	r0l,r0l                           ; 6a92: 1888
	jsr	@func_36f2:24                       ; 6a94: 5e0036f2
	jsr	@func_974e:24                       ; 6a98: 5e00974e
	mov.b	#0x2,r0l                          ; 6a9c: f802
	mov.b	r0l,@0xf7aa:16                    ; 6a9e: 6a88f7aa
	bra	loc_6ad0:8                          ; 6aa2: 402c
loc_6aa4:
	mov.b	#0x4,r0l                          ; 6aa4: f804
	jsr	@func_9c40:24                       ; 6aa6: 5e009c40
	mov.b	r0l,r0l                           ; 6aaa: 0c88
	beq	loc_6ab8:8                          ; 6aac: 470a
	mov.b	#0x5,r0l                          ; 6aae: f805
	mov.b	r0l,@0xf7aa:16                    ; 6ab0: 6a88f7aa
	sub.b	r0l,r0l                           ; 6ab4: 1888
	bra	loc_6ac8:8                          ; 6ab6: 4010
loc_6ab8:
	mov.b	#0x8,r0l                          ; 6ab8: f808
	jsr	@func_9c40:24                       ; 6aba: 5e009c40
	mov.b	r0l,r0l                           ; 6abe: 0c88
	beq	loc_6ad6:8                          ; 6ac0: 4714
	sub.b	r0l,r0l                           ; 6ac2: 1888
	mov.b	r0l,@0xf7aa:16                    ; 6ac4: 6a88f7aa
loc_6ac8:
	jsr	@func_36f2:24                       ; 6ac8: 5e0036f2
	jsr	@func_974e:24                       ; 6acc: 5e00974e
loc_6ad0:
	mov.b	#0x1,r0l                          ; 6ad0: f801
	jsr	@func_69b8:24                       ; 6ad2: 5e0069b8
loc_6ad6:
	rts                                     ; 6ad6: 5470
