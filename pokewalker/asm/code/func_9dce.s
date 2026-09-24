	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_9dce

func_9dce:
	mov.b	#0x4,r0l                          ; 9dce: f804
	jsr	@func_9c40:24                       ; 9dd0: 5e009c40
	mov.b	r0l,r0l                           ; 9dd4: 0c88
	beq	loc_9dea:8                          ; 9dd6: 4712
	mov.b	@0xf7d0:16,r0l                    ; 9dd8: 6a08f7d0
	add.b	#0x3,r0l                          ; 9ddc: 8803
	and.b	#0x3,r0l                          ; 9dde: e803
	mov.b	r0l,@0xf7d0:16                    ; 9de0: 6a88f7d0
	mov.b	#0x2,r0l                          ; 9de4: f802
	jsr	@func_36f2:24                       ; 9de6: 5e0036f2
loc_9dea:
	mov.b	#0x8,r0l                          ; 9dea: f808
	jsr	@func_9c40:24                       ; 9dec: 5e009c40
	mov.b	r0l,r0l                           ; 9df0: 0c88
	beq	loc_9e06:8                          ; 9df2: 4712
	mov.b	@0xf7d0:16,r0l                    ; 9df4: 6a08f7d0
	add.b	#0x1,r0l                          ; 9df8: 8801
	and.b	#0x3,r0l                          ; 9dfa: e803
	mov.b	r0l,@0xf7d0:16                    ; 9dfc: 6a88f7d0
	mov.b	#0x2,r0l                          ; 9e00: f802
	jsr	@func_36f2:24                       ; 9e02: 5e0036f2
loc_9e06:
	mov.b	#0x2,r0l                          ; 9e06: f802
	jsr	@func_9c40:24                       ; 9e08: 5e009c40
	mov.b	r0l,r0l                           ; 9e0c: 0c88
	beq	loc_9e44:8                          ; 9e0e: 4734
	mov.b	@0xf7d5:16,r0l                    ; 9e10: 6a08f7d5
	beq	loc_9e44:8                          ; 9e14: 472e
	mov.b	@0xf7d0:16,r0l                    ; 9e16: 6a08f7d0
	mov.b	@0xf7d3:16,r0h                    ; 9e1a: 6a00f7d3
	cmp.b	r0h,r0l                           ; 9e1e: 1c08
	bne	loc_9e36:8                          ; 9e20: 4614
	mov.b	#0x3,r0l                          ; 9e22: f803
	jsr	@func_36f2:24                       ; 9e24: 5e0036f2
	mov.b	#0x3,r0l                          ; 9e28: f803
	mov.b	r0l,@0xf7cf:16                    ; 9e2a: 6a88f7cf
	mov.b	#0x10,r0l                         ; 9e2e: f810
	mov.b	r0l,@0xf7d6:16                    ; 9e30: 6a88f7d6
	bra	loc_9e70:8                          ; 9e34: 403a
loc_9e36:
	mov.b	@0xf7d1:16,r0l                    ; 9e36: 6a08f7d1
	bne	loc_9e64:8                          ; 9e3a: 4628
	mov.b	#0x4,r0l                          ; 9e3c: f804
	jsr	@func_36f2:24                       ; 9e3e: 5e0036f2
	bra	loc_9e70:8                          ; 9e42: 402c
loc_9e44:
	mov.b	@0xf7d4:16,r0l                    ; 9e44: 6a08f7d4
	beq	loc_9e52:8                          ; 9e48: 4708
	dec.b	r0l                               ; 9e4a: 1a08
	mov.b	r0l,@0xf7d4:16                    ; 9e4c: 6a88f7d4
	bra	loc_9e70:8                          ; 9e50: 401e
loc_9e52:
	mov.b	@0xf7d5:16,r0l                    ; 9e52: 6a08f7d5
	beq	loc_9e5e:8                          ; 9e56: 4706
	dec.b	r0l                               ; 9e58: 1a08
	mov.b	r0l,@0xf7d5:16                    ; 9e5a: 6a88f7d5
loc_9e5e:
	mov.b	@0xf7d5:16,r0l                    ; 9e5e: 6a08f7d5
	bne	loc_9e70:8                          ; 9e62: 460c
loc_9e64:
	mov.b	#0xe,r0l                          ; 9e64: f80e
	jsr	@func_36f2:24                       ; 9e66: 5e0036f2
	mov.b	#0x6,r0l                          ; 9e6a: f806
	jsr	@func_69b8:24                       ; 9e6c: 5e0069b8
loc_9e70:
	rts                                     ; 9e70: 5470
