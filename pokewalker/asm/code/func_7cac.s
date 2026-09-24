	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_7cac

func_7cac:
	mov.w	#0xf7e4,r1                        ; 7cac: 7901f7e4
	mov.b	#0x80,r0l                         ; 7cb0: f880
	mov.b	r0l,@SSER:16                      ; 7cb2: 6a88f0e3
	bclr	#0x0,@PDR1:8                       ; 7cb6: 7fd47200
	bclr	#0x1,@PDR1:8                       ; 7cba: 7fd47210
loc_7cbe:
	mov.b	@SSSR:16,r0l                      ; 7cbe: 6a08f0e4
	bld	#0x2,r0l                            ; 7cc2: 7728
	bcc	loc_7cbe:8                          ; 7cc4: 44f8
	mov.b	#0x40,r0l                         ; 7cc6: f840
	mov.b	r0l,@SSTDR:16                     ; 7cc8: 6a88f0eb
loc_7ccc:
	mov.b	@SSSR:16,r0l                      ; 7ccc: 6a08f0e4
	bld	#0x2,r0l                            ; 7cd0: 7728
	bcc	loc_7ccc:8                          ; 7cd2: 44f8
	mov.b	@er1,r0l                          ; 7cd4: 6818
	mov.b	#0x40,r0h                         ; 7cd6: f040
	mulxu.b	r0h,r0                          ; 7cd8: 5000
	mov.b	r0l,@SSTDR:16                     ; 7cda: 6a88f0eb
loc_7cde:
	mov.b	@SSSR:16,r0l                      ; 7cde: 6a08f0e4
	bld	#0x3,r0l                            ; 7ce2: 7738
	bcc	loc_7cde:8                          ; 7ce4: 44f8
loc_7ce6:
	mov.b	@SSSR:16,r0l                      ; 7ce6: 6a08f0e4
	bld	#0x3,r0l                            ; 7cea: 7738
	bcc	loc_7ce6:8                          ; 7cec: 44f8
	bset	#0x0,@PDR1:8                       ; 7cee: 7fd47000
	mov.b	@er1,r0l                          ; 7cf2: 6818
	xor.b	#0x1,r0l                          ; 7cf4: d801
	mov.b	r0l,@er1                          ; 7cf6: 6898
	rts                                     ; 7cf8: 5470
