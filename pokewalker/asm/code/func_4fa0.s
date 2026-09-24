	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_4fa0

func_4fa0:
	mov.b	@SSSR:16,r0l                      ; 4fa0: 6a08f0e4
	bld	#0x6,r0l                            ; 4fa4: 7768
	bcc	loc_4fba:8                          ; 4fa6: 4412
	mov.w	#0xf0e4,r0                        ; 4fa8: 7900f0e4
	bclr	#0x6,@er0                          ; 4fac: 7d007260
	mov.w	#0xf7b5,r0                        ; 4fb0: 7900f7b5
	bset	#0x6,@er0                          ; 4fb4: 7d007060
	bra	loc_4fc2:8                          ; 4fb8: 4008
loc_4fba:
	mov.b	@SSSR:16,r0l                      ; 4fba: 6a08f0e4
	bld	#0x1,r0l                            ; 4fbe: 7718
	bcc	func_4fa0:8                         ; 4fc0: 44de
loc_4fc2:
	mov.b	@SSRDR:16,r0h                     ; 4fc2: 6a00f0e9
	mov.b	r0h,r0l                           ; 4fc6: 0c08
	rts                                     ; 4fc8: 5470
