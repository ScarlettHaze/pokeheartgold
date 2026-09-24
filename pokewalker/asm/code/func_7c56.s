	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_7c56

func_7c56:
	mov.b	r0l,r1h                           ; 7c56: 0c81
	mov.b	r0h,r3h                           ; 7c58: 0c03
	bclr	#0x1,@PDR1:8                       ; 7c5a: 7fd47210
loc_7c5e:
	mov.b	@SSSR:16,r0l                      ; 7c5e: 6a08f0e4
	bld	#0x2,r0l                            ; 7c62: 7728
	bcc	loc_7c5e:8                          ; 7c64: 44f8
	mov.b	r1h,r0l                           ; 7c66: 0c18
	mov.b	#0x10,r1l                         ; 7c68: f910
	sub.b	r0h,r0h                           ; 7c6a: 1800
	divxu.b	r1l,r0                          ; 7c6c: 5190
	and.b	#0x7,r0l                          ; 7c6e: e807
	add.b	#0x10,r0l                         ; 7c70: 8810
	mov.b	r0l,@SSTDR:16                     ; 7c72: 6a88f0eb
loc_7c76:
	mov.b	@SSSR:16,r0l                      ; 7c76: 6a08f0e4
	bld	#0x2,r0l                            ; 7c7a: 7728
	bcc	loc_7c76:8                          ; 7c7c: 44f8
	and.b	#0xf,r1h                          ; 7c7e: e10f
	mov.b	r1h,@SSTDR:16                     ; 7c80: 6a81f0eb
	cmp.b	#0x7,r3h                          ; 7c84: a307
	bls	loc_7c8a:8                          ; 7c86: 4302
	sleep                                   ; 7c88: 0180
loc_7c8a:
	mov.b	@SSSR:16,r0l                      ; 7c8a: 6a08f0e4
	bld	#0x2,r0l                            ; 7c8e: 7728
	bcc	loc_7c8a:8                          ; 7c90: 44f8
	mov.b	@0xf7e4:16,r0l                    ; 7c92: 6a08f7e4
	mov.b	#0x8,r0h                          ; 7c96: f008
	mulxu.b	r0h,r0                          ; 7c98: 5000
	add.b	r3h,r0l                           ; 7c9a: 0838
	add.b	#0xb0,r0l                         ; 7c9c: 88b0
	mov.b	r0l,@SSTDR:16                     ; 7c9e: 6a88f0eb
loc_7ca2:
	mov.b	@SSSR:16,r0l                      ; 7ca2: 6a08f0e4
	bld	#0x3,r0l                            ; 7ca6: 7738
	bcc	loc_7ca2:8                          ; 7ca8: 44f8
	rts                                     ; 7caa: 5470
