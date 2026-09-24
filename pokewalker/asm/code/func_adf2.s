	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_adf2
	.global loc_aea2
	.global loc_aea6
	.global loc_aea8

func_adf2:
	bclr	#0x0,@PDR1:8                       ; adf2: 7fd47200
	bclr	#0x1,@PDR1:8                       ; adf6: 7fd47210
loc_adfa:
	mov.b	@SSSR:16,r0l                      ; adfa: 6a08f0e4
	bld	#0x2,r0l                            ; adfe: 7728
	bcc	loc_adfa:8                          ; ae00: 44f8
	mov.b	#0xa7,r0l                         ; ae02: f8a7
	mov.b	r0l,@SSTDR:16                     ; ae04: 6a88f0eb
loc_ae08:
	mov.b	@SSSR:16,r0l                      ; ae08: 6a08f0e4
	bld	#0x3,r0l                            ; ae0c: 7738
	bcc	loc_ae08:8                          ; ae0e: 44f8
	bset	#0x0,@PDR1:8                       ; ae10: 7fd47000
	mov.w	#D_bf90,e0                        ; ae14: 7908bf90
	mov.w	#0x20,r0                          ; ae18: 79000020
	jsr	@er5                                ; ae1c: 5d50
	mov.w	r7,r6                             ; ae1e: 0d76
	sub.b	r0l,r0l                           ; ae20: 1888
	mov.b	r0l,@(0x4:16,er6)                 ; ae22: 6ee80004
	mov.w	@0xf7d4:16,r0                     ; ae26: 6b00f7d4
	mov.w	#0x1000,r1                        ; ae2a: 79011000
	extu.l	er0                              ; ae2e: 1770
	divxu.w	r1,er0                          ; ae30: 5310
	and.w	#0xf,r0                           ; ae32: 7960000f
	mov.b	@(0xbfaa:16,er0),r0l              ; ae36: 6e08bfaa
	mov.b	r0l,@er6                          ; ae3a: 68e8
	mov.b	@0xf7d4:16,r0l                    ; ae3c: 6a08f7d4
	sub.b	r0h,r0h                           ; ae40: 1800
	and.w	#0xf,r0                           ; ae42: 7960000f
	mov.b	@(0xbfaa:16,er0),r0l              ; ae46: 6e08bfaa
	mov.b	r0l,@(0x1:16,er6)                 ; ae4a: 6ee80001
	mov.w	@0xf7d4:16,r0                     ; ae4e: 6b00f7d4
	shlr.w	r0                               ; ae52: 1110
	shlr.w	r0                               ; ae54: 1110
	shlr.w	r0                               ; ae56: 1110
	shlr.w	r0                               ; ae58: 1110
	and.w	#0xf,r0                           ; ae5a: 7960000f
	mov.b	@(0xbfaa:16,er0),r0l              ; ae5e: 6e08bfaa
	mov.b	r0l,@(0x2:16,er6)                 ; ae62: 6ee80002
	mov.w	@0xf7d4:16,r0                     ; ae66: 6b00f7d4
	and.w	#0xf,r0                           ; ae6a: 7960000f
	mov.b	@(0xbfaa:16,er0),r0l              ; ae6e: 6e08bfaa
	mov.b	r0l,@(0x3:16,er6)                 ; ae72: 6ee80003
	mov.w	r6,e0                             ; ae76: 0d68
	mov.w	#0x1820,r0                        ; ae78: 79001820
	jsr	@er5                                ; ae7c: 5d50
	mov.b	@0xf7ac:16,r0l                    ; ae7e: 6a08f7ac
	extu.w	r0                               ; ae82: 1750
	shar.w	r0                               ; ae84: 1190
	btst	#0x0,r0l                           ; ae86: 7308
	bne	loc_aea8:8                          ; ae88: 461e
	mov.w	#D_bf8a,e0                        ; ae8a: 7908bf8a
	mov.w	#0x3806,r0                        ; ae8e: 79003806
	jsr	@er5                                ; ae92: 5d50
	mov.w	#D_bf8a,e0                        ; ae94: 7908bf8a
	mov.w	#0x382d,r0                        ; ae98: 7900382d
	jsr	@er5                                ; ae9c: 5d50
	mov.w	#D_bf8a,e0                        ; ae9e: 7908bf8a
loc_aea2:
	mov.w	#0x3855,r0                        ; aea2: 79003855
loc_aea6:
	jsr	@er5                                ; aea6: 5d50
loc_aea8:
	mov.b	@0xf7d0:16,r0l                    ; aea8: 6a08f7d0
	cmp.b	#0x4,r0l                          ; aeac: a804
	bcc	loc_aeb6:8                          ; aeae: 4406
	inc	r0l                                 ; aeb0: 0a08
	mov.b	r0l,@0xf7d0:16                    ; aeb2: 6a88f7d0
loc_aeb6:
	add.w	#0x6,r7                           ; aeb6: 79170006
	rts                                     ; aeba: 5470
