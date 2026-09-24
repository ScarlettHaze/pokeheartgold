	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_7b44

func_7b44:
	mov.b	r0l,r0h                           ; 7b44: 0c80
	bclr	#0x0,@PDR1:8                       ; 7b46: 7fd47200
loc_7b4a:
	mov.b	@SSSR:16,r0l                      ; 7b4a: 6a08f0e4
	bld	#0x2,r0l                            ; 7b4e: 7728
	bcc	loc_7b4a:8                          ; 7b50: 44f8
	mov.b	r0h,@SSTDR:16                     ; 7b52: 6a80f0eb
loc_7b56:
	mov.b	@SSSR:16,r0l                      ; 7b56: 6a08f0e4
	bld	#0x3,r0l                            ; 7b5a: 7738
	bcc	loc_7b56:8                          ; 7b5c: 44f8
	bset	#0x0,@PDR1:8                       ; 7b5e: 7fd47000
	rts                                     ; 7b62: 5470
