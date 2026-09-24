	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_8d02

func_8d02:
	mov.b	#0x4,r0l                          ; 8d02: f804
	jsr	@func_9c40:24                       ; 8d04: 5e009c40
	mov.b	r0l,r0l                           ; 8d08: 0c88
	beq	loc_8d2a:8                          ; 8d0a: 471e
	mov.w	@0xf7d0:16,r0                     ; 8d0c: 6b00f7d0
	jsr	@func_8c62:24                       ; 8d10: 5e008c62
	mov.b	r0l,r0l                           ; 8d14: 0c88
	beq	loc_8d24:8                          ; 8d16: 470c
	jsr	@func_974e:24                       ; 8d18: 5e00974e
	mov.b	#0x1,r0l                          ; 8d1c: f801
	jsr	@func_69b8:24                       ; 8d1e: 5e0069b8
	bra	loc_8d54:8                          ; 8d22: 4030
loc_8d24:
	mov.b	#0x2,r0l                          ; 8d24: f802
	jsr	@func_36f2:24                       ; 8d26: 5e0036f2
loc_8d2a:
	mov.b	#0x8,r0l                          ; 8d2a: f808
	jsr	@func_9c40:24                       ; 8d2c: 5e009c40
	mov.b	r0l,r0l                           ; 8d30: 0c88
	beq	loc_8d5e:8                          ; 8d32: 472a
	mov.w	@0xf7d0:16,r0                     ; 8d34: 6b00f7d0
	jsr	@func_8bd2:24                       ; 8d38: 5e008bd2
	mov.b	r0l,r0l                           ; 8d3c: 0c88
	beq	loc_8d58:8                          ; 8d3e: 4718
	mov.w	@0xf7d2:16,r0                     ; 8d40: 6b00f7d2
	beq	loc_8d54:8                          ; 8d44: 470e
	jsr	@func_9108:24                       ; 8d46: 5e009108
	mov.b	#0xb,r0l                          ; 8d4a: f80b
	jsr	@func_69b8:24                       ; 8d4c: 5e0069b8
	mov.b	#0x2,r0l                          ; 8d50: f802
	bra	loc_8d82:8                          ; 8d52: 402e
loc_8d54:
	mov.b	#0x1,r0l                          ; 8d54: f801
	bra	loc_8d82:8                          ; 8d56: 402a
loc_8d58:
	mov.b	#0x2,r0l                          ; 8d58: f802
	jsr	@func_36f2:24                       ; 8d5a: 5e0036f2
loc_8d5e:
	mov.b	#0x2,r0l                          ; 8d5e: f802
	jsr	@func_9c40:24                       ; 8d60: 5e009c40
	mov.b	r0l,r0l                           ; 8d64: 0c88
	beq	loc_8d86:8                          ; 8d66: 471e
	mov.w	@0xf7d2:16,r0                     ; 8d68: 6b00f7d2
	beq	loc_8d76:8                          ; 8d6c: 4708
	jsr	@func_9108:24                       ; 8d6e: 5e009108
	mov.b	#0xb,r0l                          ; 8d72: f80b
	bra	loc_8d7c:8                          ; 8d74: 4006
loc_8d76:
	jsr	@func_6a1c:24                       ; 8d76: 5e006a1c
	sub.b	r0l,r0l                           ; 8d7a: 1888
loc_8d7c:
	jsr	@func_69b8:24                       ; 8d7c: 5e0069b8
	sub.b	r0l,r0l                           ; 8d80: 1888
loc_8d82:
	jsr	@func_36f2:24                       ; 8d82: 5e0036f2
loc_8d86:
	rts                                     ; 8d86: 5470
