	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_b7ee

func_b7ee:
	mov.l	er2,@-er7                         ; b7ee: 01006df2
	mov.w	r3,@-er7                          ; b7f2: 6df3
	mov.w	r4,@-er7                          ; b7f4: 6df4
	mov.l	er5,@-er7                         ; b7f6: 01006df5
	mov.w	r6,@-er7                          ; b7fa: 6df6
	mov.w	#0x280,r3                         ; b7fc: 79030280
	jsr	@func_247e:24                       ; b800: 5e00247e
	mov.w	#0x140,r0                         ; b804: 79000140
	jsr	@func_2488:24                       ; b808: 5e002488
	mov.w	r0,r6                             ; b80c: 0d06
	mov.w	r0,e0                             ; b80e: 0d08
	mov.w	r3,r0                             ; b810: 0d30
	mov.w	#0x140,r1                         ; b812: 79010140
	jsr	@func_5384:24                       ; b816: 5e005384
	sub.b	r5l,r5l                           ; b81a: 18dd
	mov.w	r6,r4                             ; b81c: 0d64
	add.w	#0x120,r4                         ; b81e: 79140120
loc_b822:
	mov.b	r5l,r0l                           ; b822: 0cd8
	mov.b	#0x8,r0h                          ; b824: f008
	mulxu.b	r0h,r0                          ; b826: 5000
	mov.w	r4,e0                             ; b828: 0d48
	mov.w	#0x1008,r1                        ; b82a: 79011008
	mov.b	#0x8,r0h                          ; b82e: f008
	jsr	@func_80ac:24                       ; b830: 5e0080ac
	inc	r5l                                 ; b834: 0a0d
	cmp.b	#0x7,r5l                          ; b836: ad07
	bcs	loc_b822:8                          ; b838: 45e8
	mov.w	#0x1150,r0                        ; b83a: 79001150
	add.w	r3,r0                             ; b83e: 0930
	mov.w	#0xa0,r1                          ; b840: 790100a0
	mov.w	r6,e0                             ; b844: 0d68
	jsr	@func_5384:24                       ; b846: 5e005384
	mov.w	r6,e0                             ; b84a: 0d68
	mov.w	#0x1028,r1                        ; b84c: 79011028
	mov.w	#0x838,r0                         ; b850: 79000838
	jsr	@func_80ac:24                       ; b854: 5e0080ac
	mov.w	#0x2210,r0                        ; b858: 79002210
	add.w	r3,r0                             ; b85c: 0930
	mov.w	#0xa0,r1                          ; b85e: 790100a0
	mov.w	r6,e0                             ; b862: 0d68
	jsr	@func_5384:24                       ; b864: 5e005384
	mov.w	r6,e0                             ; b868: 0d68
	mov.w	#0x1028,r1                        ; b86a: 79011028
	mov.w	#0x2838,r0                        ; b86e: 79002838
	jsr	@func_80ac:24                       ; b872: 5e0080ac
	sub.b	r0l,r0l                           ; b876: 1888
	mov.w	r0,@-er7                          ; b878: 6df0
	mov.l	@0xf784:16,er1                    ; b87a: 01006b01f784
	mov.w	#0x2830,r0                        ; b880: 79002830
	jsr	@func_1fee:24                       ; b884: 5e001fee
	adds	#2,er7                             ; b888: 0b87
	mov.w	#0x10f,r1                         ; b88a: 7901010f
	mov.w	#0x4318,r0                        ; b88e: 79004318
	jsr	@func_2096:24                       ; b892: 5e002096
	mov.w	@er7+,r6                          ; b896: 6d76
	mov.l	@er7+,er5                         ; b898: 01006d75
	mov.w	@er7+,r4                          ; b89c: 6d74
	mov.w	@er7+,r3                          ; b89e: 6d73
	mov.l	@er7+,er2                         ; b8a0: 01006d72
	rts                                     ; b8a4: 5470
