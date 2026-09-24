	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_7cfa

func_7cfa:
	mov.b	r0l,r1l                           ; 7cfa: 0c89
	cmp.b	#0x1,r1l                          ; 7cfc: a901
	bhi	loc_7d48:8                          ; 7cfe: 4248
	mov.b	#0x80,r0l                         ; 7d00: f880
	mov.b	r0l,@SSER:16                      ; 7d02: 6a88f0e3
	bclr	#0x0,@PDR1:8                       ; 7d06: 7fd47200
	bclr	#0x1,@PDR1:8                       ; 7d0a: 7fd47210
loc_7d0e:
	mov.b	@SSSR:16,r0l                      ; 7d0e: 6a08f0e4
	bld	#0x2,r0l                            ; 7d12: 7728
	bcc	loc_7d0e:8                          ; 7d14: 44f8
	mov.b	#0x40,r0l                         ; 7d16: f840
	mov.b	r0l,@SSTDR:16                     ; 7d18: 6a88f0eb
loc_7d1c:
	mov.b	@SSSR:16,r0l                      ; 7d1c: 6a08f0e4
	bld	#0x2,r0l                            ; 7d20: 7728
	bcc	loc_7d1c:8                          ; 7d22: 44f8
	mov.b	r1l,r0l                           ; 7d24: 0c98
	mov.b	#0x40,r0h                         ; 7d26: f040
	mulxu.b	r0h,r0                          ; 7d28: 5000
	mov.b	r0l,@SSTDR:16                     ; 7d2a: 6a88f0eb
loc_7d2e:
	mov.b	@SSSR:16,r0l                      ; 7d2e: 6a08f0e4
	bld	#0x3,r0l                            ; 7d32: 7738
	bcc	loc_7d2e:8                          ; 7d34: 44f8
loc_7d36:
	mov.b	@SSSR:16,r0l                      ; 7d36: 6a08f0e4
	bld	#0x3,r0l                            ; 7d3a: 7738
	bcc	loc_7d36:8                          ; 7d3c: 44f8
	bset	#0x0,@PDR1:8                       ; 7d3e: 7fd47000
	xor.b	#0x1,r1l                          ; 7d42: d901
	mov.b	r1l,@0xf7e4:16                    ; 7d44: 6a89f7e4
loc_7d48:
	rts                                     ; 7d48: 5470
