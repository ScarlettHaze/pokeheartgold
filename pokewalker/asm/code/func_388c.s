	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_388c

func_388c:
	mov.w	r6,@-er7                          ; 388c: 6df6
	mov.w	r5,@-er7                          ; 388e: 6df5
	mov.w	#0xf7c4,r6                        ; 3890: 7906f7c4
	mov.w	@er6,r0                           ; 3894: 6960
	beq	loc_3a44:16                         ; 3896: 587001aa
	mov.w	@0xf7c8:16,r0                     ; 389a: 6b00f7c8
	beq	loc_38d8:8                          ; 389e: 4738
	mov.w	@0xf7c8:16,r0                     ; 38a0: 6b00f7c8
	dec.w	#1,r0                             ; 38a4: 1b50
	mov.w	r0,@0xf7c8:16                     ; 38a6: 6b80f7c8
	mov.w	@0xf7c8:16,r0                     ; 38aa: 6b00f7c8
	dec.w	#1,r0                             ; 38ae: 1b50
	bne	loc_38d0:8                          ; 38b0: 461e
	mov.w	@er6,r0                           ; 38b2: 6960
	mov.b	@(0x1:16,er0),r0l                 ; 38b4: 6e080001
	and.b	#0x7f,r0l                         ; 38b8: e87f
	cmp.b	#0x7f,r0l                         ; 38ba: a87f
	bne	loc_38d0:8                          ; 38bc: 4612
	mov.b	#0x80,r0l                         ; 38be: f880
	mov.b	r0l,@TMRW:16                      ; 38c0: 6a88f0f0
	mov.b	#0x10,r0l                         ; 38c4: f810
	mov.b	r0l,@TIOR0:16                     ; 38c6: 6a88f0f4
	mov.b	#0x1,r0l                          ; 38ca: f801
	mov.b	r0l,@TIOR1:16                     ; 38cc: 6a88f0f5
loc_38d0:
	mov.w	@0xf7c8:16,r0                     ; 38d0: 6b00f7c8
	bne	loc_3a44:16                         ; 38d4: 5860016c
loc_38d8:
	mov.w	@0xf7c8:16,r0                     ; 38d8: 6b00f7c8
	bne	loc_3910:8                          ; 38dc: 4632
	mov.w	@0xf7ca:16,r0                     ; 38de: 6b00f7ca
	beq	loc_3910:8                          ; 38e2: 472c
	mov.w	#0x140,r0                         ; 38e4: 79000140
	mov.w	r0,@GRA:16                        ; 38e8: 6b80f0f8
	mov.w	r0,@GRB:16                        ; 38ec: 6b80f0fa
	mov.w	r0,@GRC:16                        ; 38f0: 6b80f0fc
	sub.w	e0,e0                             ; 38f4: 1988
	mov.w	e0,@TCNT:16                       ; 38f6: 6b88f0f6
	mov.w	@0xf7ca:16,e0                     ; 38fa: 6b08f7ca
	beq	loc_3a44:16                         ; 38fe: 58700142
	mov.w	@0xf7ca:16,e0                     ; 3902: 6b08f7ca
	dec.w	#1,e0                             ; 3906: 1b58
	mov.w	e0,@0xf7ca:16                     ; 3908: 6b88f7ca
	jmp	@loc_3a44:24                        ; 390c: 5a003a44
loc_3910:
	mov.w	@er6,r0                           ; 3910: 6960
	mov.b	@(0x1:16,er0),r0l                 ; 3912: 6e080001
	and.b	#0x7f,r0l                         ; 3916: e87f
	cmp.b	#0x7f,r0l                         ; 3918: a87f
	bne	loc_3922:8                          ; 391a: 4606
	sub.w	r0,r0                             ; 391c: 1900
	jmp	@loc_3a42:24                        ; 391e: 5a003a42
loc_3922:
	cmp.b	#0x7b,r0l                         ; 3922: a87b
	bne	loc_3934:8                          ; 3924: 460e
	mov.w	@er6,r0                           ; 3926: 6960
	mov.b	@er0,r0l                          ; 3928: 6808
	mov.b	r0l,@0xf7cc:16                    ; 392a: 6a88f7cc
	mov.w	@er6,r0                           ; 392e: 6960
	inc.w	#2,r0                             ; 3930: 0bd0
	mov.w	r0,@er6                           ; 3932: 69e0
loc_3934:
	mov.w	@er6,r0                           ; 3934: 6960
	mov.b	@(0x1:16,er0),r0l                 ; 3936: 6e080001
	and.b	#0x7f,r0l                         ; 393a: e87f
	cmp.b	#0x7e,r0l                         ; 393c: a87e
	bne	loc_3948:8                          ; 393e: 4608
	mov.w	#0xf826,r0                        ; 3940: 7900f826
	jmp	@loc_3a42:24                        ; 3944: 5a003a42
loc_3948:
	mov.w	#D_bb4a,r5                        ; 3948: 7905bb4a
	mov.w	@er6,r0                           ; 394c: 6960
	mov.b	@(0x1:16,er0),r0l                 ; 394e: 6e080001
	and.b	#0x7f,r0l                         ; 3952: e87f
	cmp.b	#0x7d,r0l                         ; 3954: a87d
	bne	loc_3990:8                          ; 3956: 4638
	mov.w	@er6,r0                           ; 3958: 6960
	sub.l	er1,er1                           ; 395a: 1a91
	mov.b	@er0,r1l                          ; 395c: 6809
	mov.l	#0x14000,er0                      ; 395e: 7a0000014000
	jsr	@func_b9ae:24                       ; 3964: 5e00b9ae
	sub.l	er1,er1                           ; 3968: 1a91
	mov.b	@0xf7cc:16,r1l                    ; 396a: 6a09f7cc
	jsr	@func_b94e:24                       ; 396e: 5e00b94e
	mov.w	@er6,r1                           ; 3972: 6961
	mov.b	@(0x1:16,er1),r1l                 ; 3974: 6e190001
	and.b	#0x7f,r1l                         ; 3978: e97f
	extu.w	r1                               ; 397a: 1751
	add.w	r1,r5                             ; 397c: 0915
	mov.b	@er5,r5l                          ; 397e: 685d
	extu.w	r5                               ; 3980: 1755
	extu.l	er0                              ; 3982: 1770
	divxu.w	r5,er0                          ; 3984: 5350
	mov.w	r0,@0xf7c8:16                     ; 3986: 6b80f7c8
	sub.b	r0l,r0l                           ; 398a: 1888
	jmp	@loc_3a3a:24                        ; 398c: 5a003a3a
loc_3990:
	mov.w	@er6,r0                           ; 3990: 6960
	mov.b	@(0x1:16,er0),r1l                 ; 3992: 6e090001
	bpl	loc_39d0:8                          ; 3996: 4a38
	sub.l	er1,er1                           ; 3998: 1a91
	mov.b	@er0,r1l                          ; 399a: 6809
	mov.l	#0x14000,er0                      ; 399c: 7a0000014000
	jsr	@func_b9ae:24                       ; 39a2: 5e00b9ae
	sub.l	er1,er1                           ; 39a6: 1a91
	mov.b	@0xf7cc:16,r1l                    ; 39a8: 6a09f7cc
	jsr	@func_b94e:24                       ; 39ac: 5e00b94e
	mov.w	@er6,r1                           ; 39b0: 6961
	mov.b	@(0x1:16,er1),r1l                 ; 39b2: 6e190001
	and.b	#0x7f,r1l                         ; 39b6: e97f
	extu.w	r1                               ; 39b8: 1751
	add.w	r1,r5                             ; 39ba: 0915
	mov.b	@er5,r5l                          ; 39bc: 685d
	extu.w	r5                               ; 39be: 1755
	extu.l	er0                              ; 39c0: 1770
	divxu.w	r5,er0                          ; 39c2: 5350
	mov.w	r0,@0xf7c8:16                     ; 39c4: 6b80f7c8
	sub.w	r0,r0                             ; 39c8: 1900
	mov.w	r0,@0xf7ca:16                     ; 39ca: 6b80f7ca
	bra	loc_3a0c:8                          ; 39ce: 403c
loc_39d0:
	sub.l	er1,er1                           ; 39d0: 1a91
	mov.b	@er0,r1l                          ; 39d2: 6809
	mov.l	#0x14000,er0                      ; 39d4: 7a0000014000
	jsr	@func_b9ae:24                       ; 39da: 5e00b9ae
	sub.l	er1,er1                           ; 39de: 1a91
	mov.b	@0xf7cc:16,r1l                    ; 39e0: 6a09f7cc
	jsr	@func_b94e:24                       ; 39e4: 5e00b94e
	sub.w	#0x140,r0                         ; 39e8: 79300140
	mov.w	@er6,r1                           ; 39ec: 6961
	mov.b	@(0x1:16,er1),r1l                 ; 39ee: 6e190001
	and.b	#0x7f,r1l                         ; 39f2: e97f
	extu.w	r1                               ; 39f4: 1751
	add.w	r1,r5                             ; 39f6: 0915
	mov.b	@er5,r5l                          ; 39f8: 685d
	extu.w	r5                               ; 39fa: 1755
	extu.l	er0                              ; 39fc: 1770
	divxu.w	r5,er0                          ; 39fe: 5350
	mov.w	r0,@0xf7c8:16                     ; 3a00: 6b80f7c8
	mov.w	#0x1,r0                           ; 3a04: 79000001
	mov.w	r0,@0xf7ca:16                     ; 3a08: 6b80f7ca
loc_3a0c:
	mov.w	@er6,r0                           ; 3a0c: 6960
	mov.w	#0xf826,r1                        ; 3a0e: 7901f826
	cmp.w	r1,r0                             ; 3a12: 1d10
	beq	loc_3a3e:8                          ; 3a14: 4728
	mov.b	@(0xffff:16,er0),r0l              ; 3a16: 6e08ffff
	and.b	#0x80,r0l                         ; 3a1a: e880
	cmp.b	#0x80,r0l                         ; 3a1c: a880
	beq	loc_3a3e:8                          ; 3a1e: 471e
	mov.b	#0x83,r0l                         ; 3a20: f883
	mov.b	r0l,@TMRW:16                      ; 3a22: 6a88f0f0
	mov.b	#0xc2,r0l                         ; 3a26: f8c2
	mov.b	r0l,@TCRW:16                      ; 3a28: 6a88f0f1
	mov.w	@er6,r0                           ; 3a2c: 6960
	mov.b	@(0x1:16,er0),r0l                 ; 3a2e: 6e080001
	and.b	#0x7f,r0l                         ; 3a32: e87f
	extu.w	r0                               ; 3a34: 1750
	mov.b	@(0xbb4a:16,er0),r0l              ; 3a36: 6e08bb4a
loc_3a3a:
	jsr	@func_3838:24                       ; 3a3a: 5e003838
loc_3a3e:
	mov.w	@er6,r0                           ; 3a3e: 6960
	inc.w	#2,r0                             ; 3a40: 0bd0
loc_3a42:
	mov.w	r0,@er6                           ; 3a42: 69e0
loc_3a44:
	mov.w	@er7+,r5                          ; 3a44: 6d75
	mov.w	@er7+,r6                          ; 3a46: 6d76
	rts                                     ; 3a48: 5470
