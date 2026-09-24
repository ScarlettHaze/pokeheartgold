	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_9e72

func_9e72:
	jsr	@func_369c:24                       ; 9e72: 5e00369c
	mov.b	r0l,r0l                           ; 9e76: 0c88
	bne	loc_9f42:16                         ; 9e78: 586000c6
	mov.b	@0xf7cf:16,r0l                    ; 9e7c: 6a08f7cf
	beq	loc_9e92:8                          ; 9e80: 4710
	cmp.b	#0x1,r0l                          ; 9e82: a801
	beq	loc_9e9a:8                          ; 9e84: 4714
	cmp.b	#0x2,r0l                          ; 9e86: a802
	beq	loc_9eac:8                          ; 9e88: 4722
	cmp.b	#0x3,r0l                          ; 9e8a: a803
	bne	loc_9f42:16                         ; 9e8c: 586000b2
	bra	loc_9eca:8                          ; 9e90: 4038
loc_9e92:
	jsr	@func_9dce:24                       ; 9e92: 5e009dce
	jmp	@loc_9f42:24                        ; 9e96: 5a009f42
loc_9e9a:
	mov.b	@0xf7d5:16,r0l                    ; 9e9a: 6a08f7d5
	cmp.b	#0x4,r0l                          ; 9e9e: a804
	bls	loc_9f42:16                         ; 9ea0: 5830009e
	jsr	@func_2938:24                       ; 9ea4: 5e002938
	mov.b	#0x4,r0l                          ; 9ea8: f804
	bra	loc_9ec4:8                          ; 9eaa: 4018
loc_9eac:
	mov.b	#0xe,r0l                          ; 9eac: f80e
	jsr	@func_9c40:24                       ; 9eae: 5e009c40
	mov.b	r0l,r0l                           ; 9eb2: 0c88
	beq	loc_9f42:16                         ; 9eb4: 5870008a
	sub.b	r0l,r0l                           ; 9eb8: 1888
	jsr	@func_36f2:24                       ; 9eba: 5e0036f2
	jsr	@func_6a1c:24                       ; 9ebe: 5e006a1c
	sub.b	r0l,r0l                           ; 9ec2: 1888
loc_9ec4:
	jsr	@func_69b8:24                       ; 9ec4: 5e0069b8
	bra	loc_9f42:8                          ; 9ec8: 4078
loc_9eca:
	mov.b	@0xf7d6:16,r0l                    ; 9eca: 6a08f7d6
	beq	loc_9f42:8                          ; 9ece: 4772
	dec.b	r0l                               ; 9ed0: 1a08
	mov.b	r0l,@0xf7d6:16                    ; 9ed2: 6a88f7d6
	bne	loc_9f42:8                          ; 9ed6: 466a
	mov.b	@0xf7d2:16,r0l                    ; 9ed8: 6a08f7d2
	extu.w	r0                               ; 9edc: 1750
	dec.w	#1,r0                             ; 9ede: 1b50
	mov.b	@0xf7d1:16,r1l                    ; 9ee0: 6a09f7d1
	extu.w	r1                               ; 9ee4: 1751
	cmp.w	r0,r1                             ; 9ee6: 1d01
	blt	loc_9efc:8                          ; 9ee8: 4d12
	mov.b	#0x1,r0l                          ; 9eea: f801
	mov.b	r0l,@0xf7cf:16                    ; 9eec: 6a88f7cf
	mov.b	r0l,@0xf7d6:16                    ; 9ef0: 6a88f7d6
	sub.b	r0h,r0h                           ; 9ef4: 1800
	mov.b	r0h,@0xf7d5:16                    ; 9ef6: 6a80f7d5
	bra	loc_9f42:8                          ; 9efa: 4046
loc_9efc:
	sub.b	r0l,r0l                           ; 9efc: 1888
	mov.b	r0l,@0xf7cf:16                    ; 9efe: 6a88f7cf
	jsr	@func_25d0:24                       ; 9f02: 5e0025d0
	shlr.w	r0                               ; 9f06: 1110
	shlr.w	r0                               ; 9f08: 1110
	mov.b	@0xf7d1:16,r1l                    ; 9f0a: 6a09f7d1
	extu.w	r1                               ; 9f0e: 1751
	extu.w	r0                               ; 9f10: 1750
	mov.b	@(0xbf1e:16,er1),r1l              ; 9f12: 6e19bf1e
	divxu.b	r1l,r0                          ; 9f16: 5190
	add.b	#0x10,r0h                         ; 9f18: 8010
	mov.b	r0h,@0xf7d4:16                    ; 9f1a: 6a80f7d4
	mov.b	@0xf7d1:16,r0l                    ; 9f1e: 6a08f7d1
	inc	r0l                                 ; 9f22: 0a08
	mov.b	r0l,@0xf7d1:16                    ; 9f24: 6a88f7d1
	extu.w	r0                               ; 9f28: 1750
	mov.b	@(0xbf1a:16,er0),r0l              ; 9f2a: 6e08bf1a
	mov.b	r0l,@0xf7d5:16                    ; 9f2e: 6a88f7d5
	jsr	@func_25d0:24                       ; 9f32: 5e0025d0
	shll.w	r0                               ; 9f36: 1010
	shll.w	r0                               ; 9f38: 1010
	shll.w	r0                               ; 9f3a: 1010
	and.b	#0x3,r0h                          ; 9f3c: e003
	mov.b	r0h,@0xf7d3:16                    ; 9f3e: 6a80f7d3
loc_9f42:
	rts                                     ; 9f42: 5470
