	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_4fca

func_4fca:
	jsr	@RegSave_er2_er6:24                 ; 4fca: 5e00ba42
	mov.w	r0,e6                             ; 4fce: 0d0e
	mov.b	r1l,r5h                           ; 4fd0: 0c95
	mov.b	#0x3,r5l                          ; 4fd2: fd03
	mov.w	#0xf7b5,r2                        ; 4fd4: 7902f7b5
	bclr	#0x6,@er2                          ; 4fd8: 7d207260
	mov.w	e6,r2                             ; 4fdc: 0de2
	mov.b	r2h,r2l                           ; 4fde: 0c2a
	sub.b	r2h,r2h                           ; 4fe0: 1822
	mov.b	r2l,r6h                           ; 4fe2: 0ca6
	jmp	@loc_50ce:24                        ; 4fe4: 5a0050ce
loc_4fe8:
	jsr	@func_259e:24                       ; 4fe8: 5e00259e
	bsr	func_4f70:8                         ; 4fec: 5582
	mov.b	@SSER:16,r0l                      ; 4fee: 6a08f0e3
	and.b	#0x3f,r0l                         ; 4ff2: e83f
	mov.b	r0l,@SSER:16                      ; 4ff4: 6a88f0e3
	sub.b	r0l,r0l                           ; 4ff8: 1888
	mov.b	r0l,@SSSR:16                      ; 4ffa: 6a88f0e4
	mov.b	@SSER:16,r0h                      ; 4ffe: 6a00f0e3
	or.b	#0xc0,r0h                          ; 5002: c0c0
	mov.b	r0h,@SSER:16                      ; 5004: 6a80f0e3
	bclr	#0x2,@PDR1:8                       ; 5008: 7fd47220
loc_500c:
	mov.b	@SSSR:16,r0l                      ; 500c: 6a08f0e4
	bld	#0x2,r0l                            ; 5010: 7728
	bcc	loc_500c:8                          ; 5012: 44f8
	mov.b	#0x5,r0l                          ; 5014: f805
	mov.b	r0l,@SSTDR:16                     ; 5016: 6a88f0eb
	bsr	func_4fa0:8                         ; 501a: 5584
loc_501c:
	mov.b	@SSSR:16,r0l                      ; 501c: 6a08f0e4
	bld	#0x2,r0l                            ; 5020: 7728
	bcc	loc_501c:8                          ; 5022: 44f8
	mov.b	#0xff,r0l                         ; 5024: f8ff
	mov.b	r0l,@SSTDR:16                     ; 5026: 6a88f0eb
	jsr	@func_4fa0:24                       ; 502a: 5e004fa0
	mov.b	r0l,r6l                           ; 502e: 0c8e
	and.b	#0x1,r6l                          ; 5030: ee01
	cmp.b	#0x1,r6l                          ; 5032: ae01
	beq	loc_501c:8                          ; 5034: 47e6
loc_5036:
	mov.b	@SSSR:16,r0l                      ; 5036: 6a08f0e4
	bld	#0x3,r0l                            ; 503a: 7738
	bcc	loc_5036:8                          ; 503c: 44f8
	bset	#0x2,@PDR1:8                       ; 503e: 7fd47020
	mov.b	@SSER:16,r0l                      ; 5042: 6a08f0e3
	and.b	#0x3f,r0l                         ; 5046: e83f
	mov.b	r0l,@SSER:16                      ; 5048: 6a88f0e3
	sub.b	r0l,r0l                           ; 504c: 1888
	mov.b	r0l,@SSSR:16                      ; 504e: 6a88f0e4
	mov.w	#0xf0e3,r1                        ; 5052: 7901f0e3
	bset	#0x7,@er1                          ; 5056: 7d107070
	bclr	#0x2,@PDR1:8                       ; 505a: 7fd47220
loc_505e:
	mov.b	@SSSR:16,r0l                      ; 505e: 6a08f0e4
	bld	#0x2,r0l                            ; 5062: 7728
	bcc	loc_505e:8                          ; 5064: 44f8
	mov.b	#0x6,r0l                          ; 5066: f806
	mov.b	r0l,@SSTDR:16                     ; 5068: 6a88f0eb
loc_506c:
	mov.b	@SSSR:16,r0l                      ; 506c: 6a08f0e4
	bld	#0x3,r0l                            ; 5070: 7738
	bcc	loc_506c:8                          ; 5072: 44f8
	bset	#0x2,@PDR1:8                       ; 5074: 7fd47020
	bclr	#0x2,@PDR1:8                       ; 5078: 7fd47220
loc_507c:
	mov.b	@SSSR:16,r0l                      ; 507c: 6a08f0e4
	bld	#0x2,r0l                            ; 5080: 7728
	bcc	loc_507c:8                          ; 5082: 44f8
	mov.b	#0x2,r0l                          ; 5084: f802
	mov.b	r0l,@SSTDR:16                     ; 5086: 6a88f0eb
loc_508a:
	mov.b	@SSSR:16,r0l                      ; 508a: 6a08f0e4
	bld	#0x2,r0l                            ; 508e: 7728
	bcc	loc_508a:8                          ; 5090: 44f8
	mov.b	r6h,@SSTDR:16                     ; 5092: 6a86f0eb
	mov.w	e6,r0                             ; 5096: 0de0
	mov.b	r0l,r6l                           ; 5098: 0c8e
loc_509a:
	mov.b	@SSSR:16,r0l                      ; 509a: 6a08f0e4
	bld	#0x2,r0l                            ; 509e: 7728
	bcc	loc_509a:8                          ; 50a0: 44f8
	mov.b	r6l,@SSTDR:16                     ; 50a2: 6a8ef0eb
	mov.b	r5h,r6l                           ; 50a6: 0c5e
loc_50a8:
	mov.b	@SSSR:16,r0l                      ; 50a8: 6a08f0e4
	bld	#0x2,r0l                            ; 50ac: 7728
	bcc	loc_50a8:8                          ; 50ae: 44f8
	mov.b	r6l,@SSTDR:16                     ; 50b0: 6a8ef0eb
loc_50b4:
	mov.b	@SSSR:16,r0l                      ; 50b4: 6a08f0e4
	bld	#0x3,r0l                            ; 50b8: 7738
	bcc	loc_50b4:8                          ; 50ba: 44f8
	bset	#0x2,@PDR1:8                       ; 50bc: 7fd47020
	jsr	@func_4f92:24                       ; 50c0: 5e004f92
	mov.b	@0xf7b5:16,r0l                    ; 50c4: 6a08f7b5
	bld	#0x6,r0l                            ; 50c8: 7768
	bcc	loc_50d4:8                          ; 50ca: 4408
	dec.b	r5l                               ; 50cc: 1a0d
loc_50ce:
	mov.b	r5l,r5l                           ; 50ce: 0cdd
	bne	loc_4fe8:16                         ; 50d0: 5860ff14
loc_50d4:
	jmp	@RegRestore_er2_er6:24              ; 50d4: 5a00ba62
