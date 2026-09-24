	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_7c24

func_7c24:
	mov.w	r6,@-er7                          ; 7c24: 6df6
	mov.b	r0l,r6l                           ; 7c26: 0c8e
	mov.b	#0x80,r0h                         ; 7c28: f080
	mov.b	r0h,@SSER:16                      ; 7c2a: 6a80f0e3
	bclr	#0x0,@PDR1:8                       ; 7c2e: 7fd47200
	bclr	#0x1,@PDR1:8                       ; 7c32: 7fd47210
	mov.b	#0x81,r0l                         ; 7c36: f881
	jsr	@func_7b44:24                       ; 7c38: 5e007b44
	mov.b	@0xf7a9:16,r0l                    ; 7c3c: 6a08f7a9
	add.b	r6l,r0l                           ; 7c40: 08e8
	jsr	@func_7b44:24                       ; 7c42: 5e007b44
loc_7c46:
	mov.b	@SSSR:16,r0l                      ; 7c46: 6a08f0e4
	bld	#0x3,r0l                            ; 7c4a: 7738
	bcc	loc_7c46:8                          ; 7c4c: 44f8
	bset	#0x0,@PDR1:8                       ; 7c4e: 7fd47000
	mov.w	@er7+,r6                          ; 7c52: 6d76
	rts                                     ; 7c54: 5470
