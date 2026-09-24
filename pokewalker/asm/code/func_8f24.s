	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_8f24
	.global loc_8f4e

func_8f24:
	mov.w	#0x1690,r4                        ; 8f24: 79041690
	add.w	r5,r4                             ; 8f28: 0954
	mov.w	r4,r0                             ; 8f2a: 0d40
	mov.w	#0xc0,r1                          ; 8f2c: 790100c0
	mov.w	r6,e0                             ; 8f30: 0d68
	jsr	@func_5384:24                       ; 8f32: 5e005384
	mov.w	r6,e0                             ; 8f36: 0d68
	mov.w	#0x1820,r1                        ; 8f38: 79011820
	mov.w	#0x183c,r0                        ; 8f3c: 7900183c
	jsr	@func_80ac:24                       ; 8f40: 5e0080ac
	mov.b	#0xf,r1l                          ; 8f44: f90f
	mov.w	#0x3000,r0                        ; 8f46: 79003000
	jsr	@func_1c80:24                       ; 8f4a: 5e001c80
loc_8f4e:
	mov.b	@0xf7ac:16,r4l                    ; 8f4e: 6a0cf7ac
	and.b	#0x1,r4l                          ; 8f52: ec01
	extu.w	r4                               ; 8f54: 1754
	add.w	#0x3,r4                           ; 8f56: 79140003
	mov.w	#0x10,e4                          ; 8f5a: 790c0010
	mulxu.w	e4,er4                          ; 8f5e: 52c4
	mov.w	#0x278,r0                         ; 8f60: 79000278
	add.w	r5,r0                             ; 8f64: 0950
	add.w	r0,r4                             ; 8f66: 0904
	mov.w	r4,r0                             ; 8f68: 0d40
	mov.w	e5,r1                             ; 8f6a: 0dd1
	mov.w	r6,e0                             ; 8f6c: 0d68
	jsr	@func_5384:24                       ; 8f6e: 5e005384
	mov.b	@0xf7ce:16,r4h                    ; 8f72: 6a04f7ce
	mov.b	r4h,r0l                           ; 8f76: 0c48
	extu.w	r0                               ; 8f78: 1750
	exts.l	er0                              ; 8f7a: 17f0
	mov.w	#0x5,r1                           ; 8f7c: 79010005
	divxs.w	r1,er0                          ; 8f80: 01d05310
	mov.w	e0,r0                             ; 8f84: 0d80
	mov.b	#0x8,r0h                          ; 8f86: f008
	mulxu.b	r0h,r0                          ; 8f88: 5000
	add.b	#0x10,r0l                         ; 8f8a: 8810
	mov.b	r0l,r4l                           ; 8f8c: 0c8c
	mov.b	r4h,r4h                           ; 8f8e: 0c44
	bne	loc_8f94:8                          ; 8f90: 4602
	add.b	#0xf8,r4l                         ; 8f92: 8cf8
loc_8f94:
	mov.b	@0xf7ce:16,r0l                    ; 8f94: 6a08f7ce
	extu.w	r0                               ; 8f98: 1750
	exts.l	er0                              ; 8f9a: 17f0
	divxs.w	r1,er0                          ; 8f9c: 01d05310
	mov.b	#0x10,r0h                         ; 8fa0: f010
	mulxu.b	r0h,r0                          ; 8fa2: 5000
	add.b	#0x10,r0l                         ; 8fa4: 8810
	mov.b	r0l,r0h                           ; 8fa6: 0c80
	mov.b	r4l,r0l                           ; 8fa8: 0cc8
	mov.w	r6,e0                             ; 8faa: 0d68
	mov.w	#0x808,r1                         ; 8fac: 79010808
	jsr	@func_80ac:24                       ; 8fb0: 5e0080ac
	mov.w	#0x358,r4                         ; 8fb4: 79040358
	add.w	r5,r4                             ; 8fb8: 0954
	mov.w	r4,r0                             ; 8fba: 0d40
	mov.w	#0x40,r1                          ; 8fbc: 79010040
	mov.w	r6,e0                             ; 8fc0: 0d68
	jsr	@func_5384:24                       ; 8fc2: 5e005384
	mov.w	r6,r0                             ; 8fc6: 0d60
	add.w	#0x20,r0                          ; 8fc8: 79100020
	mov.w	r0,e0                             ; 8fcc: 0d08
	mov.w	#0x1008,r1                        ; 8fce: 79011008
	sub.w	r0,r0                             ; 8fd2: 1900
	jsr	@func_80ac:24                       ; 8fd4: 5e0080ac
	mov.w	@0xf7d2:16,r0                     ; 8fd8: 6b00f7d2
	beq	loc_8fec:8                          ; 8fdc: 470e
	mov.w	r6,e0                             ; 8fde: 0d68
	mov.w	#0x1008,r1                        ; 8fe0: 79011008
	mov.w	#0x58,r0                          ; 8fe4: 79000058
	jsr	@func_80ac:24                       ; 8fe8: 5e0080ac
loc_8fec:
	mov.w	#0x1e0,r4                         ; 8fec: 790401e0
	add.w	r5,r4                             ; 8ff0: 0954
	mov.w	r4,r0                             ; 8ff2: 0d40
	mov.w	e5,r1                             ; 8ff4: 0dd1
	mov.w	r6,e0                             ; 8ff6: 0d68
	jsr	@func_5384:24                       ; 8ff8: 5e005384
	mov.w	@0xf7d0:16,r0                     ; 8ffc: 6b00f7d0
	btst	#0x0,r0l                           ; 9000: 7308
	beq	loc_9012:8                          ; 9002: 470e
	mov.w	r6,e0                             ; 9004: 0d68
	mov.b	#0x8,r1h                          ; 9006: f108
	mov.b	r1h,r1l                           ; 9008: 0c19
	mov.b	#0x18,r0h                         ; 900a: f018
	mov.b	r1h,r0l                           ; 900c: 0c18
	jsr	@func_80ac:24                       ; 900e: 5e0080ac
loc_9012:
	sub.w	e6,e6                             ; 9012: 19ee
loc_9014:
	mov.w	#0x2,r0                           ; 9014: 79000002
	mov.w	e6,r1                             ; 9018: 0de1
loc_901a:
	dec.b	r1l                               ; 901a: 1a09
	bmi	loc_9022:8                          ; 901c: 4b04
	shll.w	r0                               ; 901e: 1010
	bra	loc_901a:8                          ; 9020: 40f8
loc_9022:
	mov.w	@0xf7d0:16,e0                     ; 9022: 6b08f7d0
	and.w	r0,e0                             ; 9026: 6608
	beq	loc_903e:8                          ; 9028: 4714
	mov.w	e6,r0                             ; 902a: 0de0
	mov.b	#0x8,r0h                          ; 902c: f008
	mulxu.b	r0h,r0                          ; 902e: 5000
	add.b	#0x18,r0l                         ; 9030: 8818
	mov.w	r6,e0                             ; 9032: 0d68
	mov.b	#0x8,r1h                          ; 9034: f108
	mov.b	r1h,r1l                           ; 9036: 0c19
	mov.b	#0x18,r0h                         ; 9038: f018
	jsr	@func_80ac:24                       ; 903a: 5e0080ac
loc_903e:
	inc.w	#1,e6                             ; 903e: 0b5e
	cmp.w	#0x3,e6                           ; 9040: 792e0003
	blt	loc_9014:8                          ; 9044: 4dce
	mov.w	#0x208,r4                         ; 9046: 79040208
	add.w	r5,r4                             ; 904a: 0954
	mov.w	r4,r0                             ; 904c: 0d40
	mov.w	e5,r1                             ; 904e: 0dd1
	mov.w	r6,e0                             ; 9050: 0d68
	jsr	@func_5384:24                       ; 9052: 5e005384
	sub.w	e6,e6                             ; 9056: 19ee
loc_9058:
	mov.w	#0x40,r0                          ; 9058: 79000040
	mov.w	e6,r1                             ; 905c: 0de1
loc_905e:
	dec.b	r1l                               ; 905e: 1a09
	bmi	loc_9066:8                          ; 9060: 4b04
	shll.w	r0                               ; 9062: 1010
	bra	loc_905e:8                          ; 9064: 40f8
loc_9066:
	mov.w	@0xf7d0:16,e0                     ; 9066: 6b08f7d0
	and.w	r0,e0                             ; 906a: 6608
	beq	loc_9082:8                          ; 906c: 4714
	mov.w	e6,r0                             ; 906e: 0de0
	mov.b	#0x8,r0h                          ; 9070: f008
	mulxu.b	r0h,r0                          ; 9072: 5000
	add.b	#0x18,r0l                         ; 9074: 8818
	mov.w	r6,e0                             ; 9076: 0d68
	mov.b	#0x8,r1h                          ; 9078: f108
	mov.b	r1h,r1l                           ; 907a: 0c19
	mov.b	#0x28,r0h                         ; 907c: f028
	jsr	@func_80ac:24                       ; 907e: 5e0080ac
loc_9082:
	inc.w	#1,e6                             ; 9082: 0b5e
	cmp.w	#0x3,e6                           ; 9084: 792e0003
	blt	loc_9058:8                          ; 9088: 4dce
	mov.w	@0xf7d0:16,r0                     ; 908a: 6b00f7d0
	btst	#0x4,r0l                           ; 908e: 7348
	beq	loc_90b0:8                          ; 9090: 471e
	mov.w	#0x1f0,r4                         ; 9092: 790401f0
	add.w	r5,r4                             ; 9096: 0954
	mov.w	r4,r0                             ; 9098: 0d40
	mov.w	e5,r1                             ; 909a: 0dd1
	mov.w	r6,e0                             ; 909c: 0d68
	jsr	@func_5384:24                       ; 909e: 5e005384
	mov.w	r6,e0                             ; 90a2: 0d68
	mov.b	#0x8,r1h                          ; 90a4: f108
	mov.b	r1h,r1l                           ; 90a6: 0c19
	mov.w	#0x1830,r0                        ; 90a8: 79001830
	jsr	@func_80ac:24                       ; 90ac: 5e0080ac
loc_90b0:
	mov.w	@0xf7d0:16,r0                     ; 90b0: 6b00f7d0
	btst	#0x1,r0h                           ; 90b4: 7310
	beq	loc_90d6:8                          ; 90b6: 471e
	mov.w	#0x218,r4                         ; 90b8: 79040218
	add.w	r5,r4                             ; 90bc: 0954
	mov.w	r4,r0                             ; 90be: 0d40
	mov.w	e5,r1                             ; 90c0: 0dd1
	mov.w	r6,e0                             ; 90c2: 0d68
	jsr	@func_5384:24                       ; 90c4: 5e005384
	mov.w	r6,e0                             ; 90c8: 0d68
	mov.b	#0x8,r1h                          ; 90ca: f108
	mov.b	r1h,r1l                           ; 90cc: 0c19
	mov.w	#0x2830,r0                        ; 90ce: 79002830
	jsr	@func_80ac:24                       ; 90d2: 5e0080ac
loc_90d6:
	mov.w	@0xf7d0:16,r0                     ; 90d6: 6b00f7d0
	btst	#0x5,r0l                           ; 90da: 7358
	beq	loc_90fc:8                          ; 90dc: 471e
	mov.w	#0x228,r4                         ; 90de: 79040228
	add.w	r5,r4                             ; 90e2: 0954
	mov.w	r4,r0                             ; 90e4: 0d40
	mov.w	e5,r1                             ; 90e6: 0dd1
	mov.w	r6,e0                             ; 90e8: 0d68
	jsr	@func_5384:24                       ; 90ea: 5e005384
	mov.w	r6,e0                             ; 90ee: 0d68
	mov.b	#0x8,r1h                          ; 90f0: f108
	mov.b	r1h,r1l                           ; 90f2: 0c19
	mov.w	#0x2810,r0                        ; 90f4: 79002810
	jsr	@func_80ac:24                       ; 90f8: 5e0080ac
loc_90fc:
	mov.w	#0x58,r0                          ; 90fc: 79000058
	jsr	@func_21fe:24                       ; 9100: 5e0021fe
	adds	#4,er7                             ; 9104: 0b97
	rts                                     ; 9106: 5470
