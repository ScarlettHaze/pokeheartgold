	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_ac1e

func_ac1e:
	mov.b	#0x80,r0l                         ; ac1e: f880
	mov.b	r0l,@SSER:16                      ; ac20: 6a88f0e3
	bclr	#0x0,@PDR1:8                       ; ac24: 7fd47200
	mov.w	#0x1,r0                           ; ac28: 79000001
	jsr	@func_7c56:24                       ; ac2c: 5e007c56
	bset	#0x1,@PDR1:8                       ; ac30: 7fd47010
	mov.w	#0xbc,r6                          ; ac34: 790600bc
	bra	loc_ac4a:8                          ; ac38: 4010
loc_ac3a:
	mov.b	@SSSR:16,r0l                      ; ac3a: 6a08f0e4
	bld	#0x2,r0l                            ; ac3e: 7728
	bcc	loc_ac3a:8                          ; ac40: 44f8
	mov.b	#0x1,r0l                          ; ac42: f801
	mov.b	r0l,@SSTDR:16                     ; ac44: 6a88f0eb
	dec.w	#1,r6                             ; ac48: 1b56
loc_ac4a:
	mov.w	r6,r6                             ; ac4a: 0d66
	bne	loc_ac3a:8                          ; ac4c: 46ec
loc_ac4e:
	mov.b	@SSSR:16,r0l                      ; ac4e: 6a08f0e4
	bld	#0x3,r0l                            ; ac52: 7738
	bcc	loc_ac4e:8                          ; ac54: 44f8
	sub.w	r6,r6                             ; ac56: 1966
loc_ac58:
	mov.b	r6l,r0h                           ; ac58: 0ce0
	sub.b	r0l,r0l                           ; ac5a: 1888
	jsr	@func_7c56:24                       ; ac5c: 5e007c56
	bset	#0x1,@PDR1:8                       ; ac60: 7fd47010
loc_ac64:
	mov.b	@SSSR:16,r0l                      ; ac64: 6a08f0e4
	bld	#0x2,r0l                            ; ac68: 7728
	bcc	loc_ac64:8                          ; ac6a: 44f8
	mov.b	#0xff,r0l                         ; ac6c: f8ff
	mov.b	r0l,@SSTDR:16                     ; ac6e: 6a88f0eb
loc_ac72:
	mov.b	@SSSR:16,r0l                      ; ac72: 6a08f0e4
	bld	#0x2,r0l                            ; ac76: 7728
	bcc	loc_ac72:8                          ; ac78: 44f8
	mov.b	#0xff,r0l                         ; ac7a: f8ff
	mov.b	r0l,@SSTDR:16                     ; ac7c: 6a88f0eb
loc_ac80:
	mov.b	@SSSR:16,r0l                      ; ac80: 6a08f0e4
	bld	#0x3,r0l                            ; ac84: 7738
	bcc	loc_ac80:8                          ; ac86: 44f8
	inc.w	#1,r6                             ; ac88: 0b56
	cmp.w	#0x8,r6                           ; ac8a: 79260008
	blt	loc_ac58:8                          ; ac8e: 4dc8
	sub.w	r6,r6                             ; ac90: 1966
loc_ac92:
	mov.b	r6l,r0h                           ; ac92: 0ce0
	mov.b	#0x5f,r0l                         ; ac94: f85f
	jsr	@func_7c56:24                       ; ac96: 5e007c56
	bset	#0x1,@PDR1:8                       ; ac9a: 7fd47010
loc_ac9e:
	mov.b	@SSSR:16,r0l                      ; ac9e: 6a08f0e4
	bld	#0x2,r0l                            ; aca2: 7728
	bcc	loc_ac9e:8                          ; aca4: 44f8
	mov.b	#0xff,r0l                         ; aca6: f8ff
	mov.b	r0l,@SSTDR:16                     ; aca8: 6a88f0eb
loc_acac:
	mov.b	@SSSR:16,r0l                      ; acac: 6a08f0e4
	bld	#0x2,r0l                            ; acb0: 7728
	bcc	loc_acac:8                          ; acb2: 44f8
	mov.b	#0xff,r0l                         ; acb4: f8ff
	mov.b	r0l,@SSTDR:16                     ; acb6: 6a88f0eb
loc_acba:
	mov.b	@SSSR:16,r0l                      ; acba: 6a08f0e4
	bld	#0x3,r0l                            ; acbe: 7738
	bcc	loc_acba:8                          ; acc0: 44f8
	inc.w	#1,r6                             ; acc2: 0b56
	cmp.w	#0x8,r6                           ; acc4: 79260008
	blt	loc_ac92:8                          ; acc8: 4dc8
	mov.w	#0x701,r0                         ; acca: 79000701
	jsr	@func_7c56:24                       ; acce: 5e007c56
	bset	#0x1,@PDR1:8                       ; acd2: 7fd47010
	mov.w	#0xbc,r6                          ; acd6: 790600bc
	bra	loc_acec:8                          ; acda: 4010
loc_acdc:
	mov.b	@SSSR:16,r0l                      ; acdc: 6a08f0e4
	bld	#0x2,r0l                            ; ace0: 7728
	bcc	loc_acdc:8                          ; ace2: 44f8
	mov.b	#0x80,r0l                         ; ace4: f880
	mov.b	r0l,@SSTDR:16                     ; ace6: 6a88f0eb
	dec.w	#1,r6                             ; acea: 1b56
loc_acec:
	mov.w	r6,r6                             ; acec: 0d66
	bne	loc_acdc:8                          ; acee: 46ec
loc_acf0:
	mov.b	@SSSR:16,r0l                      ; acf0: 6a08f0e4
	bld	#0x3,r0l                            ; acf4: 7738
	bcc	loc_acf0:8                          ; acf6: 44f8
loc_acf8:
	mov.b	@SSSR:16,r0l                      ; acf8: 6a08f0e4
	bld	#0x3,r0l                            ; acfc: 7738
	bcc	loc_acf8:8                          ; acfe: 44f8
	bset	#0x0,@PDR1:8                       ; ad00: 7fd47000
	rts                                     ; ad04: 5470
