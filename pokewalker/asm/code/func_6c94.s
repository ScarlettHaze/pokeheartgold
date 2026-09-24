	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_6c94

func_6c94:
	mov.b	#0x4,r0l                          ; 6c94: f804
	jsr	@func_9c40:24                       ; 6c96: 5e009c40
	mov.b	r0l,r0l                           ; 6c9a: 0c88
	beq	loc_6cc2:8                          ; 6c9c: 4724
	mov.b	@0xf7cf:16,r0l                    ; 6c9e: 6a08f7cf
	bne	loc_6cb6:8                          ; 6ca2: 4612
	mov.b	#0x1,r0l                          ; 6ca4: f801
	jsr	@func_36f2:24                       ; 6ca6: 5e0036f2
	jsr	@func_974e:24                       ; 6caa: 5e00974e
	mov.b	#0x1,r0l                          ; 6cae: f801
	jsr	@func_69b8:24                       ; 6cb0: 5e0069b8
	bra	loc_6ce0:8                          ; 6cb4: 402a
loc_6cb6:
	sub.b	r0l,r0l                           ; 6cb6: 1888
	mov.b	r0l,@0xf7cf:16                    ; 6cb8: 6a88f7cf
	mov.b	#0x2,r0l                          ; 6cbc: f802
	jsr	@func_36f2:24                       ; 6cbe: 5e0036f2
loc_6cc2:
	mov.b	#0x8,r0l                          ; 6cc2: f808
	jsr	@func_9c40:24                       ; 6cc4: 5e009c40
	mov.b	r0l,r0l                           ; 6cc8: 0c88
	beq	loc_6ce0:8                          ; 6cca: 4714
	mov.b	@0xf7cf:16,r0l                    ; 6ccc: 6a08f7cf
	cmp.b	#0x1,r0l                          ; 6cd0: a801
	beq	loc_6ce0:8                          ; 6cd2: 470c
	mov.b	#0x1,r0l                          ; 6cd4: f801
	mov.b	r0l,@0xf7cf:16                    ; 6cd6: 6a88f7cf
	mov.b	#0x2,r0l                          ; 6cda: f802
	jsr	@func_36f2:24                       ; 6cdc: 5e0036f2
loc_6ce0:
	rts                                     ; 6ce0: 5470
