	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_42a0

func_42a0:
	mov.b	@0xf7ce:16,r0l                    ; 42a0: 6a08f7ce
	beq	loc_42b4:8                          ; 42a4: 470e
	cmp.b	#0x4,r0l                          ; 42a6: a804
	beq	loc_42ba:8                          ; 42a8: 4710
	cmp.b	#0x1,r0l                          ; 42aa: a801
	beq	loc_42c0:8                          ; 42ac: 4712
	cmp.b	#0x3,r0l                          ; 42ae: a803
	bne	loc_42ca:8                          ; 42b0: 4618
	bra	loc_42c6:8                          ; 42b2: 4012
loc_42b4:
	jsr	@func_3dbc:24                       ; 42b4: 5e003dbc
	bra	loc_42ca:8                          ; 42b8: 4010
loc_42ba:
	jsr	@func_3e34:24                       ; 42ba: 5e003e34
	bra	loc_42ca:8                          ; 42be: 400a
loc_42c0:
	jsr	@func_3ece:24                       ; 42c0: 5e003ece
	bra	loc_42ca:8                          ; 42c4: 4004
loc_42c6:
	jsr	@func_3fc6:24                       ; 42c6: 5e003fc6
loc_42ca:
	sub.w	r0,r0                             ; 42ca: 1900
	jmp	@func_21fe:24                       ; 42cc: 5a0021fe
