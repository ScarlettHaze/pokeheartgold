	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_7fb8

func_7fb8:
	mov.b	#0x80,r0l                         ; 7fb8: f880
	mov.b	r0l,@SSER:16                      ; 7fba: 6a88f0e3
	bclr	#0x0,@PDR1:8                       ; 7fbe: 7fd47200
	bclr	#0x1,@PDR1:8                       ; 7fc2: 7fd47210
	mov.b	#0xe1,r0l                         ; 7fc6: f8e1
	jsr	@func_7b44:24                       ; 7fc8: 5e007b44
loc_7fcc:
	mov.b	@SSSR:16,r0l                      ; 7fcc: 6a08f0e4
	bld	#0x3,r0l                            ; 7fd0: 7738
	bcc	loc_7fcc:8                          ; 7fd2: 44f8
	bset	#0x0,@PDR1:8                       ; 7fd4: 7fd47000
	rts                                     ; 7fd8: 5470
