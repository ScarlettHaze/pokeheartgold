	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_b2e2

func_b2e2:
	mov.l	er4,@-er7                         ; b2e2: 01006df4
	mov.l	er5,@-er7                         ; b2e6: 01006df5
	mov.l	er6,@-er7                         ; b2ea: 01006df6
	subs	#2,er7                             ; b2ee: 1b87
	jsr	@func_b0c8:24                       ; b2f0: 5e00b0c8
	mov.b	r0l,r0l                           ; b2f4: 0c88
	beq	loc_b326:8                          ; b2f6: 472e
	mov.w	#0x18,e1                          ; b2f8: 79090018
	mov.w	#0xf780,r1                        ; b2fc: 7901f780
	mov.l	#0x2560156,er0                    ; b300: 7a0002560156
	jsr	@func_5128:24                       ; b306: 5e005128
	mov.b	@0xf797:16,r0l                    ; b30a: 6a08f797
	and.b	#0x78,r0l                         ; b30e: e878
	cmp.b	#0x48,r0l                         ; b310: a848
	bls	loc_b320:8                          ; b312: 430c
	mov.b	@0xf797:16,r0l                    ; b314: 6a08f797
	and.b	#0x87,r0l                         ; b318: e887
	or.b	#0x20,r0l                          ; b31a: c820
	mov.b	r0l,@0xf797:16                    ; b31c: 6a88f797
loc_b320:
	jsr	@func_b176:24                       ; b320: 5e00b176
	bra	loc_b352:8                          ; b324: 402c
loc_b326:
	mov.b	#0x1,r0h                          ; b326: f001
	mov.b	r0h,r0l                           ; b328: 0c08
	jsr	@func_b1ae:24                       ; b32a: 5e00b1ae
	mov.b	@0xf797:16,r0h                    ; b32e: 6a00f797
	shlr.b	r0h                              ; b332: 1100
	and.b	#0x3,r0h                          ; b334: e003
	mov.b	r0h,r0l                           ; b336: 0c08
	jsr	@func_3832:24                       ; b338: 5e003832
	mov.b	@0xf797:16,r0h                    ; b33c: 6a00f797
	shlr.b	r0h                              ; b340: 1100
	shlr.b	r0h                              ; b342: 1100
	shlr.b	r0h                              ; b344: 1100
	and.b	#0xf,r0h                          ; b346: e00f
	mov.b	r0h,r0l                           ; b348: 0c08
	jsr	@func_7c24:24                       ; b34a: 5e007c24
	jsr	@func_b0ae:24                       ; b34e: 5e00b0ae
loc_b352:
	mov.w	r7,r1                             ; b352: 0d71
	mov.w	#0x1,e1                           ; b354: 79090001
	mov.l	#0x26f016f,er0                    ; b358: 7a00026f016f
	jsr	@func_5128:24                       ; b35e: 5e005128
	mov.b	@er7,r0l                          ; b362: 6878
	cmp.b	#0xa5,r0l                         ; b364: a8a5
	bne	loc_b380:8                          ; b366: 4618
	jsr	@func_0426:24                       ; b368: 5e000426
	sub.b	r0l,r0l                           ; b36c: 1888
	mov.b	r0l,@er7                          ; b36e: 68f8
	mov.w	r7,r1                             ; b370: 0d71
	mov.w	#0x1,e1                           ; b372: 79090001
	mov.l	#0x26f016f,er0                    ; b376: 7a00026f016f
	jsr	@func_50d8:24                       ; b37c: 5e0050d8
loc_b380:
	adds	#2,er7                             ; b380: 0b87
	mov.l	@er7+,er6                         ; b382: 01006d76
	mov.l	@er7+,er5                         ; b386: 01006d75
	mov.l	@er7+,er4                         ; b38a: 01006d74
	rts                                     ; b38e: 5470
