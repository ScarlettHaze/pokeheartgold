	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_3a70

func_3a70:
	mov.b	@0xf7ce:16,r0l                    ; 3a70: 6a08f7ce
	beq	loc_3b00:16                         ; 3a74: 58700088
	jsr	@func_247e:24                       ; 3a78: 5e00247e
	mov.w	#0x30,e6                          ; 3a7c: 790e0030
	mov.w	e6,r0                             ; 3a80: 0de0
	jsr	@func_2488:24                       ; 3a82: 5e002488
	mov.w	r0,r6                             ; 3a86: 0d06
	mov.w	r0,e0                             ; 3a88: 0d08
	mov.w	#0xce8c,r0                        ; 3a8a: 7900ce8c
	mov.w	e6,r1                             ; 3a8e: 0de1
	jsr	@func_5384:24                       ; 3a90: 5e005384
	mov.b	@0xf7cf:16,r0l                    ; 3a94: 6a08f7cf
	exts.w	r0                               ; 3a98: 17d0
	mov.w	#0x10,e0                          ; 3a9a: 79080010
	mulxu.w	e0,er0                          ; 3a9e: 5280
	add.w	r6,r0                             ; 3aa0: 0960
	mov.w	r0,e0                             ; 3aa2: 0d08
	mov.b	@0xf7ce:16,r1l                    ; 3aa4: 6a09f7ce
	extu.w	r1                               ; 3aa8: 1751
	dec.w	#1,r1                             ; 3aaa: 1b51
	mov.w	#0x10,e1                          ; 3aac: 79090010
	mulxu.w	e1,er1                          ; 3ab0: 5291
	mov.w	#0x8f52,r0                        ; 3ab2: 79008f52
	add.w	r1,r0                             ; 3ab6: 0910
	mov.w	#0x10,r1                          ; 3ab8: 79010010
	jsr	@func_5384:24                       ; 3abc: 5e005384
	mov.w	e6,r1                             ; 3ac0: 0de1
	mov.w	r6,e0                             ; 3ac2: 0d68
	mov.w	#0xce8c,r0                        ; 3ac4: 7900ce8c
	jsr	@func_524e:24                       ; 3ac8: 5e00524e
	mov.w	#0xbe,r0                          ; 3acc: 790000be
	jsr	@func_2488:24                       ; 3ad0: 5e002488
	mov.w	r0,r6                             ; 3ad4: 0d06
	mov.w	r0,e0                             ; 3ad6: 0d08
	mov.w	#0xbe,r1                          ; 3ad8: 790100be
	mov.w	#0x8f00,r0                        ; 3adc: 79008f00
	jsr	@func_5384:24                       ; 3ae0: 5e005384
	mov.b	@0xf7ce:16,r0l                    ; 3ae4: 6a08f7ce
	mov.w	r0,@-er7                          ; 3ae8: 6df0
	mov.w	#0x88,r0                          ; 3aea: 79000088
	jsr	@func_2488:24                       ; 3aee: 5e002488
	mov.w	r0,e0                             ; 3af2: 0d08
	mov.w	r6,r0                             ; 3af4: 0d60
	sub.l	er1,er1                           ; 3af6: 1a91
	mov.b	#0xd,r1l                          ; 3af8: f90d
	jsr	@func_4546:24                       ; 3afa: 5e004546
	adds	#2,er7                             ; 3afe: 0b87
loc_3b00:
	rts                                     ; 3b00: 5470
