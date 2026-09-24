	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_7fda

func_7fda:
	mov.b	#0x80,r0l                         ; 7fda: f880
	mov.b	r0l,@SSER:16                      ; 7fdc: 6a88f0e3
	bclr	#0x0,@PDR1:8                       ; 7fe0: 7fd47200
	bclr	#0x1,@PDR1:8                       ; 7fe4: 7fd47210
	mov.b	#0xa9,r0l                         ; 7fe8: f8a9
	jsr	@func_7b44:24                       ; 7fea: 5e007b44
loc_7fee:
	mov.b	@SSSR:16,r0l                      ; 7fee: 6a08f0e4
	bld	#0x3,r0l                            ; 7ff2: 7738
	bcc	loc_7fee:8                          ; 7ff4: 44f8
	bset	#0x0,@PDR1:8                       ; 7ff6: 7fd47000
	rts                                     ; 7ffa: 5470
