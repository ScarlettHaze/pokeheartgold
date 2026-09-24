	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_2c32

func_2c32:
	jsr	@func_25d0:24                       ; 2c32: 5e0025d0
	shlr.l	er0                              ; 2c36: 1130
	shlr.l	er0                              ; 2c38: 1130
	shlr.l	er0                              ; 2c3a: 1130
	sub.l	er1,er1                           ; 2c3c: 1a91
	mov.b	#0x64,r1l                         ; 2c3e: f964
	jsr	@func_b94e:24                       ; 2c40: 5e00b94e
	mov.b	r1l,r6h                           ; 2c44: 0c96
	mov.b	@0xf7d1:16,r1l                    ; 2c46: 6a09f7d1
	beq	loc_2c5e:8                          ; 2c4a: 4712
	mov.b	r1l,r0l                           ; 2c4c: 0c98
	extu.w	r0                               ; 2c4e: 1750
	dec.w	#1,r0                             ; 2c50: 1b50
	mov.b	@(0xbb45:16,er0),r0l              ; 2c52: 6e08bb45
	cmp.b	r0l,r6h                           ; 2c56: 1c86
	bcc	loc_2c5e:8                          ; 2c58: 4404
	mov.b	#0x1,r0l                          ; 2c5a: f801
	bra	loc_2c60:8                          ; 2c5c: 4002
loc_2c5e:
	sub.b	r0l,r0l                           ; 2c5e: 1888
loc_2c60:
	rts                                     ; 2c60: 5470
