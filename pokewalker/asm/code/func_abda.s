	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_abda
	.global loc_ac1c

func_abda:
	cmp.b	#0x4,r1l                          ; abda: a904
	bcs	loc_ac1c:8                          ; abdc: 453e
	mov.b	#0xe,r0l                          ; abde: f80e
	jsr	@func_9c40:24                       ; abe0: 5e009c40
	mov.b	r0l,r0l                           ; abe4: 0c88
	beq	loc_ac1c:8                          ; abe6: 4734
	bclr	#0x0,@PDR1:8                       ; abe8: 7fd47200
	bclr	#0x1,@PDR1:8                       ; abec: 7fd47210
loc_abf0:
	mov.b	@SSSR:16,r0l                      ; abf0: 6a08f0e4
	bld	#0x2,r0l                            ; abf4: 7728
	bcc	loc_abf0:8                          ; abf6: 44f8
	mov.b	#0xa6,r0l                         ; abf8: f8a6
	mov.b	r0l,@SSTDR:16                     ; abfa: 6a88f0eb
loc_abfe:
	mov.b	@SSSR:16,r0l                      ; abfe: 6a08f0e4
	bld	#0x3,r0l                            ; ac02: 7738
	bcc	loc_abfe:8                          ; ac04: 44f8
	bset	#0x0,@PDR1:8                       ; ac06: 7fd47000
	mov.b	#0x17,r0l                         ; ac0a: f817
	mov.b	r0l,@0xf7b1:16                    ; ac0c: 6a88f7b1
	jsr	@func_aebc:24                       ; ac10: 5e00aebc
	mov.w	#D_bfa2,r0                        ; ac14: 7900bfa2
	jsr	@func_37c6:24                       ; ac18: 5e0037c6
loc_ac1c:
	rts                                     ; ac1c: 5470
