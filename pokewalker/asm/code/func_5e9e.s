	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_5e9e

func_5e9e:
	mov.b	#0x2,r0l                          ; 5e9e: f802
	jsr	@func_9c40:24                       ; 5ea0: 5e009c40
	mov.b	r0l,r0l                           ; 5ea4: 0c88
	beq	loc_5eda:8                          ; 5ea6: 4732
	mov.w	@0xf7d2:16,r0                     ; 5ea8: 6b00f7d2
	bld	#0x0,@er0                           ; 5eac: 7c007700
	bcc	loc_5ebe:8                          ; 5eb0: 440c
	jsr	@func_6a1c:24                       ; 5eb2: 5e006a1c
	sub.b	r0l,r0l                           ; 5eb6: 1888
	jsr	@func_69b8:24                       ; 5eb8: 5e0069b8
	bra	loc_5eda:8                          ; 5ebc: 401c
loc_5ebe:
	add.w	#0x4,r0                           ; 5ebe: 79100004
	mov.w	r0,@0xf7d2:16                     ; 5ec2: 6b80f7d2
	mov.b	@(0x1:16,er0),r0l                 ; 5ec6: 6e080001
	cmp.b	#0x10,r0l                         ; 5eca: a810
	beq	loc_5eda:8                          ; 5ecc: 470c
	mov.w	@0xf7d2:16,r0                     ; 5ece: 6b00f7d2
	mov.b	@(0x1:16,er0),r0l                 ; 5ed2: 6e080001
	jsr	@func_36f2:24                       ; 5ed6: 5e0036f2
loc_5eda:
	rts                                     ; 5eda: 5470
