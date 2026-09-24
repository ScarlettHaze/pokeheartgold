	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_9930

func_9930:
	mov.l	#0x400280,er4                     ; 9930: 7a0400400280
	jsr	@func_247e:24                       ; 9936: 5e00247e
	mov.w	#0x140,e6                         ; 993a: 790e0140
	mov.w	e6,r0                             ; 993e: 0de0
	jsr	@func_2488:24                       ; 9940: 5e002488
	mov.w	r0,r6                             ; 9944: 0d06
	mov.w	#0x80,r0                          ; 9946: 79000080
	jsr	@func_2488:24                       ; 994a: 5e002488
	mov.w	r0,r5                             ; 994e: 0d05
	mov.b	@0xf7aa:16,r3l                    ; 9950: 6a0bf7aa
	extu.w	r3                               ; 9954: 1753
	mulxu.w	e6,er3                          ; 9956: 52e3
	mov.w	#0x690,r0                         ; 9958: 79000690
	add.w	r4,r0                             ; 995c: 0940
	add.w	r0,r3                             ; 995e: 0903
	mov.w	e6,r1                             ; 9960: 0de1
	mov.w	r3,r0                             ; 9962: 0d30
	mov.w	r6,e0                             ; 9964: 0d68
	jsr	@func_5384:24                       ; 9966: 5e005384
	mov.w	r6,e0                             ; 996a: 0d68
	mov.w	#0x1050,r1                        ; 996c: 79011050
	mov.w	#0x8,r0                           ; 9970: 79000008
	jsr	@func_80ac:24                       ; 9974: 5e0080ac
	sub.w	e6,e6                             ; 9978: 19ee
loc_997a:
	sub.w	e0,e0                             ; 997a: 1988
	sub.b	r1l,r1l                           ; 997c: 1899
loc_997e:
	mov.w	r5,r0                             ; 997e: 0d50
	add.w	e0,r0                             ; 9980: 0980
	mov.b	r1l,@er0                          ; 9982: 6889
	inc.w	#1,e0                             ; 9984: 0b58
	cmp.w	#0x80,e0                          ; 9986: 79280080
	bcs	loc_997e:8                          ; 998a: 45f2
	mov.b	@0xf7aa:16,r0l                    ; 998c: 6a08f7aa
	extu.w	r0                               ; 9990: 1750
	cmp.w	r0,e6                             ; 9992: 1d0e
	bne	loc_99dc:8                          ; 9994: 4646
	mov.b	@0xf7ac:16,r3l                    ; 9996: 6a0bf7ac
	and.b	#0x1,r3l                          ; 999a: eb01
	extu.w	r3                               ; 999c: 1753
	add.w	#0x3,r3                           ; 999e: 79130003
	mov.w	#0x10,e3                          ; 99a2: 790b0010
	mulxu.w	e3,er3                          ; 99a6: 52b3
	mov.w	#0x278,r0                         ; 99a8: 79000278
	add.w	r4,r0                             ; 99ac: 0940
	add.w	r0,r3                             ; 99ae: 0903
	mov.w	r3,r0                             ; 99b0: 0d30
	mov.w	#0x10,r1                          ; 99b2: 79010010
	mov.w	r6,e0                             ; 99b6: 0d68
	jsr	@func_5384:24                       ; 99b8: 5e005384
	mov.b	#0x20,r0l                         ; 99bc: f820
	mov.w	r0,@-er7                          ; 99be: 6df0
	mov.b	#0x10,r0l                         ; 99c0: f810
	mov.w	r0,@-er7                          ; 99c2: 6df0
	mov.w	e6,r1                             ; 99c4: 0de1
	mov.b	@(0xbf14:16,er1),r1h              ; 99c6: 6e11bf14
	add.b	#0xf8,r1h                         ; 99ca: 81f8
	mov.w	r5,e1                             ; 99cc: 0d59
	mov.b	#0x4,r1l                          ; 99ce: f904
	mov.w	r6,e0                             ; 99d0: 0d68
	mov.b	#0x8,r0h                          ; 99d2: f008
	mov.b	r0h,r0l                           ; 99d4: 0c08
	jsr	@func_7a40:24                       ; 99d6: 5e007a40
	adds	#4,er7                             ; 99da: 0b97
loc_99dc:
	mov.w	e6,r3                             ; 99dc: 0de3
	mov.w	#0x40,e3                          ; 99de: 790b0040
	mulxu.w	e3,er3                          ; 99e2: 52b3
	mov.w	#0xe10,r0                         ; 99e4: 79000e10
	add.w	r4,r0                             ; 99e8: 0940
	add.w	r0,r3                             ; 99ea: 0903
	mov.w	r3,r0                             ; 99ec: 0d30
	mov.w	e4,r1                             ; 99ee: 0dc1
	mov.w	r6,e0                             ; 99f0: 0d68
	jsr	@func_5384:24                       ; 99f2: 5e005384
	mov.b	#0x20,r0l                         ; 99f6: f820
	mov.w	r0,@-er7                          ; 99f8: 6df0
	mov.b	#0x10,r0l                         ; 99fa: f810
	mov.w	r0,@-er7                          ; 99fc: 6df0
	mov.w	e6,r1                             ; 99fe: 0de1
	mov.b	@(0xbf14:16,er1),r1h              ; 9a00: 6e11bf14
	mov.w	r5,e1                             ; 9a04: 0d59
	sub.b	r1l,r1l                           ; 9a06: 1899
	mov.w	r6,e0                             ; 9a08: 0d68
	mov.b	r0l,r0h                           ; 9a0a: 0c80
	jsr	@func_7a40:24                       ; 9a0c: 5e007a40
	adds	#4,er7                             ; 9a10: 0b97
	mov.w	e6,r0                             ; 9a12: 0de0
	mov.b	#0x10,r0h                         ; 9a14: f010
	mulxu.b	r0h,r0                          ; 9a16: 5000
	mov.w	r5,e0                             ; 9a18: 0d58
	mov.w	#0x2010,r1                        ; 9a1a: 79012010
	mov.b	#0x10,r0h                         ; 9a1e: f010
	jsr	@func_80ac:24                       ; 9a20: 5e0080ac
	inc.w	#1,e6                             ; 9a24: 0b5e
	cmp.w	#0x6,e6                           ; 9a26: 792e0006
	blt	loc_997a:16                         ; 9a2a: 58d0ff4c
	mov.b	@0xf7ce:16,r0l                    ; 9a2e: 6a08f7ce
	beq	loc_9a4a:8                          ; 9a32: 4716
	cmp.b	#0x1,r0l                          ; 9a34: a801
	beq	loc_9adc:16                         ; 9a36: 587000a2
	cmp.b	#0x2,r0l                          ; 9a3a: a802
	beq	loc_9ae6:16                         ; 9a3c: 587000a6
	cmp.b	#0x3,r0l                          ; 9a40: a803
	bne	loc_9afc:16                         ; 9a42: 586000b6
	jmp	@loc_9af0:24                        ; 9a46: 5a009af0
loc_9a4a:
	sub.b	r0l,r0l                           ; 9a4a: 1888
	mov.w	r0,@-er7                          ; 9a4c: 6df0
	mov.w	@0xf78e:16,r1                     ; 9a4e: 6b01f78e
	extu.l	er1                              ; 9a52: 1771
	mov.w	#0x3048,r0                        ; 9a54: 79003048
	jsr	@func_1fee:24                       ; 9a58: 5e001fee
	adds	#2,er7                             ; 9a5c: 0b87
	mov.b	@0xf7aa:16,r0l                    ; 9a5e: 6a08f7aa
	beq	loc_9a6a:8                          ; 9a62: 4706
	cmp.b	#0x1,r0l                          ; 9a64: a801
	bne	loc_9a86:8                          ; 9a66: 461e
	bra	loc_9a74:8                          ; 9a68: 400a
loc_9a6a:
	sub.b	r0l,r0l                           ; 9a6a: 1888
	mov.w	r0,@-er7                          ; 9a6c: 6df0
	sub.l	er1,er1                           ; 9a6e: 1a91
	mov.b	#0xa,r1l                          ; 9a70: f90a
	bra	loc_9a7c:8                          ; 9a72: 4008
loc_9a74:
	sub.b	r0l,r0l                           ; 9a74: 1888
	mov.w	r0,@-er7                          ; 9a76: 6df0
	sub.l	er1,er1                           ; 9a78: 1a91
	mov.b	#0x3,r1l                          ; 9a7a: f903
loc_9a7c:
	mov.w	#0x3008,r0                        ; 9a7c: 79003008
	jsr	@func_1fee:24                       ; 9a80: 5e001fee
	adds	#2,er7                             ; 9a84: 0b87
loc_9a86:
	mov.w	#0x1a0,r5                         ; 9a86: 790501a0
	add.w	r4,r5                             ; 9a8a: 0945
	mov.w	r5,r0                             ; 9a8c: 0d50
	mov.w	e4,r1                             ; 9a8e: 0dc1
	mov.w	r6,e0                             ; 9a90: 0d68
	jsr	@func_5384:24                       ; 9a92: 5e005384
	mov.w	r6,e0                             ; 9a96: 0d68
	mov.w	#0x1010,r1                        ; 9a98: 79011010
	mov.w	#0x3050,r0                        ; 9a9c: 79003050
	jsr	@func_80ac:24                       ; 9aa0: 5e0080ac
	mov.b	@0xf7aa:16,r0l                    ; 9aa4: 6a08f7aa
	cmp.b	#0x2,r0l                          ; 9aa8: a802
	bcc	loc_9afc:8                          ; 9aaa: 4450
	mov.w	r6,e0                             ; 9aac: 0d68
	mov.b	#0x10,r1h                         ; 9aae: f110
	mov.b	r1h,r1l                           ; 9ab0: 0c19
	mov.w	#0x3018,r0                        ; 9ab2: 79003018
	jsr	@func_80ac:24                       ; 9ab6: 5e0080ac
	mov.w	#0x180,r5                         ; 9aba: 79050180
	add.w	r4,r5                             ; 9abe: 0945
	mov.w	r5,r0                             ; 9ac0: 0d50
	mov.w	#0x20,r1                          ; 9ac2: 79010020
	mov.w	r6,e0                             ; 9ac6: 0d68
	jsr	@func_5384:24                       ; 9ac8: 5e005384
	mov.w	r6,e0                             ; 9acc: 0d68
	mov.w	#0x1008,r1                        ; 9ace: 79011008
	mov.w	#0x3028,r0                        ; 9ad2: 79003028
	jsr	@func_80ac:24                       ; 9ad6: 5e0080ac
	bra	loc_9afc:8                          ; 9ada: 4020
loc_9adc:
	mov.w	#0x10f,r1                         ; 9adc: 7901010f
	mov.w	#0x1430,r0                        ; 9ae0: 79001430
	bra	loc_9af8:8                          ; 9ae4: 4012
loc_9ae6:
	mov.w	#0x10f,r1                         ; 9ae6: 7901010f
	mov.w	#0x1530,r0                        ; 9aea: 79001530
	bra	loc_9af8:8                          ; 9aee: 4008
loc_9af0:
	mov.w	#0x10f,r1                         ; 9af0: 7901010f
	mov.w	#0x1630,r0                        ; 9af4: 79001630
loc_9af8:
	jsr	@func_2096:24                       ; 9af8: 5e002096
loc_9afc:
	mov.w	#0x338,r5                         ; 9afc: 79050338
	add.w	r4,r5                             ; 9b00: 0945
	mov.w	r5,r0                             ; 9b02: 0d50
	mov.w	e4,r1                             ; 9b04: 0dc1
	mov.w	r6,e0                             ; 9b06: 0d68
	jsr	@func_5384:24                       ; 9b08: 5e005384
	mov.w	r6,e0                             ; 9b0c: 0d68
	mov.w	#0x1008,r1                        ; 9b0e: 79011008
	sub.w	r0,r0                             ; 9b12: 1900
	jsr	@func_80ac:24                       ; 9b14: 5e0080ac
	add.w	#0x20,r6                          ; 9b18: 79160020
	mov.w	r6,e0                             ; 9b1c: 0d68
	mov.w	#0x1008,r1                        ; 9b1e: 79011008
	mov.w	#0x58,r0                          ; 9b22: 79000058
	jsr	@func_80ac:24                       ; 9b26: 5e0080ac
	mov.w	#0x58,r0                          ; 9b2a: 79000058
	jsr	@func_21fe:24                       ; 9b2e: 5e0021fe
	rts                                     ; 9b32: 5470
