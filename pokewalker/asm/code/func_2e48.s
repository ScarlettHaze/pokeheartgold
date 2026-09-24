	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_2e48
	.global loc_2ed2

func_2e48:
	cmp.b	r6h,r6l                           ; 2e48: 1c6e
	bcs	loc_30a4:16                         ; 2e4a: 58500256
	jsr	@func_247e:24                       ; 2e4e: 5e00247e
	mov.w	e6,r0                             ; 2e52: 0de0
	jsr	@func_2488:24                       ; 2e54: 5e002488
	mov.w	r0,r6                             ; 2e58: 0d06
	mov.w	r0,e0                             ; 2e5a: 0d08
	mov.w	e6,r1                             ; 2e5c: 0de1
	mov.w	#0x8f00,r0                        ; 2e5e: 79008f00
	jsr	@func_5384:24                       ; 2e62: 5e005384
	mov.b	@0xf7ce:16,r0l                    ; 2e66: 6a08f7ce
	cmp.b	#0x4,r0l                          ; 2e6a: a804
	bcc	loc_2e82:8                          ; 2e6c: 4414
	mov.w	r0,@-er7                          ; 2e6e: 6df0
	mov.w	e5,r0                             ; 2e70: 0dd0
	jsr	@func_2488:24                       ; 2e72: 5e002488
	mov.w	r0,e0                             ; 2e76: 0d08
	mov.w	r6,r0                             ; 2e78: 0d60
	mov.w	r5,e1                             ; 2e7a: 0d59
	mov.w	#0x10,r1                          ; 2e7c: 79010010
	bra	loc_2e94:8                          ; 2e80: 4012
loc_2e82:
	mov.w	r0,@-er7                          ; 2e82: 6df0
	mov.w	e5,r0                             ; 2e84: 0dd0
	jsr	@func_2488:24                       ; 2e86: 5e002488
	mov.w	r0,e0                             ; 2e8a: 0d08
	mov.w	r6,r0                             ; 2e8c: 0d60
	mov.w	r5,e1                             ; 2e8e: 0d59
	mov.w	#0x110,r1                         ; 2e90: 79010110
loc_2e94:
	jsr	@func_4546:24                       ; 2e94: 5e004546
	adds	#2,er7                             ; 2e98: 0b87
	mov.w	@0xf78e:16,r6                     ; 2e9a: 6b06f78e
	cmp.w	#0xa,r6                           ; 2e9e: 7926000a
	bcc	loc_2eaa:8                          ; 2ea2: 4406
	mov.w	r6,@0xf7d6:16                     ; 2ea4: 6b86f7d6
	bra	loc_2eb2:8                          ; 2ea8: 4008
loc_2eaa:
	mov.w	#0xa,r0                           ; 2eaa: 7900000a
	mov.w	r0,@0xf7d6:16                     ; 2eae: 6b80f7d6
loc_2eb2:
	mov.w	@0xf7d6:16,r0                     ; 2eb2: 6b00f7d6
	mov.w	r6,e0                             ; 2eb6: 0d68
	sub.w	r0,e0                             ; 2eb8: 1908
	mov.w	e0,@0xf78e:16                     ; 2eba: 6b88f78e
	mov.w	#0x18,e1                          ; 2ebe: 79090018
	mov.w	#0xf780,r1                        ; 2ec2: 7901f780
	mov.l	#0x2560156,er0                    ; 2ec6: 7a0002560156
	jsr	@func_50d8:24                       ; 2ecc: 5e0050d8
	mov.b	#0x6,r0l                          ; 2ed0: f806
loc_2ed2:
	mov.b	r0l,@0xf7cf:16                    ; 2ed2: 6a88f7cf
	sub.b	r0l,r0l                           ; 2ed6: 1888
	mov.b	r0l,@0xf7d2:16                    ; 2ed8: 6a88f7d2
	mov.b	#0x8,r0l                          ; 2edc: f808
	jmp	@loc_3082:24                        ; 2ede: 5a003082
