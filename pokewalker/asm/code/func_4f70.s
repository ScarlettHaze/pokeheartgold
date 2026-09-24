	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_4f70

func_4f70:
	bset	#0x4,@CKSTPR2:8                    ; 4f70: 7ffb7040
	sub.b	r0l,r0l                           ; 4f74: 1888
	mov.b	r0l,@SSER:16                      ; 4f76: 6a88f0e3
	mov.b	@0xf7b5:16,r0l                    ; 4f7a: 6a08f7b5
	bld	#0x4,r0l                            ; 4f7e: 7748
	bcc	loc_4f8a:8                          ; 4f80: 4408
	mov.b	#0x86,r0l                         ; 4f82: f886
	mov.b	r0l,@SSMR:16                      ; 4f84: 6a88f0e2
	bra	loc_4f90:8                          ; 4f88: 4006
loc_4f8a:
	mov.b	#0x87,r0l                         ; 4f8a: f887
	mov.b	r0l,@SSMR:16                      ; 4f8c: 6a88f0e2
loc_4f90:
	rts                                     ; 4f90: 5470
