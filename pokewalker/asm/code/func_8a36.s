	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_8a36
	.global loc_8ab0
	.global loc_8abc

func_8a36:
	mov.b	#0x80,r0l                         ; 8a36: f880
	mov.b	r0l,@SSER:16                      ; 8a38: 6a88f0e3
	bclr	#0x0,@PDR1:8                       ; 8a3c: 7fd47200
	bclr	#0x1,@PDR1:8                       ; 8a40: 7fd47210
loc_8a44:
	mov.b	@SSSR:16,r0l                      ; 8a44: 6a08f0e4
	bld	#0x2,r0l                            ; 8a48: 7728
	bcc	loc_8a44:8                          ; 8a4a: 44f8
	mov.b	#0x10,r0l                         ; 8a4c: f810
	mov.b	r0l,@SSTDR:16                     ; 8a4e: 6a88f0eb
loc_8a52:
	mov.b	@SSSR:16,r0l                      ; 8a52: 6a08f0e4
	bld	#0x2,r0l                            ; 8a56: 7728
	bcc	loc_8a52:8                          ; 8a58: 44f8
	sub.b	r0l,r0l                           ; 8a5a: 1888
	mov.b	r0l,@SSTDR:16                     ; 8a5c: 6a88f0eb
loc_8a60:
	mov.b	@SSSR:16,r0l                      ; 8a60: 6a08f0e4
	bld	#0x2,r0l                            ; 8a64: 7728
	bcc	loc_8a60:8                          ; 8a66: 44f8
	mov.b	@0xf7e4:16,r0l                    ; 8a68: 6a08f7e4
	mov.b	#0x8,r0h                          ; 8a6c: f008
	mulxu.b	r0h,r0                          ; 8a6e: 5000
	add.b	#0xb6,r0l                         ; 8a70: 88b6
	mov.b	r0l,@SSTDR:16                     ; 8a72: 6a88f0eb
loc_8a76:
	mov.b	@SSSR:16,r0l                      ; 8a76: 6a08f0e4
	bld	#0x3,r0l                            ; 8a7a: 7738
	bcc	loc_8a76:8                          ; 8a7c: 44f8
	bset	#0x1,@PDR1:8                       ; 8a7e: 7fd47010
	mov.b	#0xc0,r0h                         ; 8a82: f0c0
	bra	loc_8a96:8                          ; 8a84: 4010
loc_8a86:
	mov.b	@SSSR:16,r0l                      ; 8a86: 6a08f0e4
	bld	#0x2,r0l                            ; 8a8a: 7728
	bcc	loc_8a86:8                          ; 8a8c: 44f8
	mov.b	#0x1,r0l                          ; 8a8e: f801
	mov.b	r0l,@SSTDR:16                     ; 8a90: 6a88f0eb
	dec.b	r0h                               ; 8a94: 1a00
loc_8a96:
	mov.b	r0h,r0h                           ; 8a96: 0c00
	bne	loc_8a86:8                          ; 8a98: 46ec
loc_8a9a:
	mov.b	@SSSR:16,r0l                      ; 8a9a: 6a08f0e4
	bld	#0x3,r0l                            ; 8a9e: 7738
	bcc	loc_8a9a:8                          ; 8aa0: 44f8
loc_8aa2:
	mov.b	@SSSR:16,r0l                      ; 8aa2: 6a08f0e4
	bld	#0x3,r0l                            ; 8aa6: 7738
	bcc	loc_8aa2:8                          ; 8aa8: 44f8
	bset	#0x0,@PDR1:8                       ; 8aaa: 7fd47000
	rts                                     ; 8aae: 5470
loc_8ab0:
	mov.l	@er7+,er6                         ; 8ab0: 01006d76
	mov.l	@er7+,er5                         ; 8ab4: 01006d75
	mov.w	@er7+,r4                          ; 8ab8: 6d74
	rts                                     ; 8aba: 5470
loc_8abc:
	mov.l	@er7+,er6                         ; 8abc: 01006d76
	mov.l	@er7+,er5                         ; 8ac0: 01006d75
	mov.w	@er7+,r4                          ; 8ac4: 6d74
	mov.w	@er7+,r3                          ; 8ac6: 6d73
	rts                                     ; 8ac8: 5470
