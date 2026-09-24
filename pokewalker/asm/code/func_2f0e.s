	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_2f0e

func_2f0e:
	cmp.b	#0x3,r6l                          ; 2f0e: ae03
	bhi	loc_2f24:8                          ; 2f10: 4212
	mov.b	r6l,r0l                           ; 2f12: 0ce8
	extu.w	r0                               ; 2f14: 1750
	mov.w	#0x3,e0                           ; 2f16: 79080003
	sub.w	r0,e0                             ; 2f1a: 1908
	mov.w	e0,r0                             ; 2f1c: 0d80
	mov.b	@(0xbb0e:16,er0),r0l              ; 2f1e: 6e08bb0e
	bra	loc_2f26:8                          ; 2f22: 4002
loc_2f24:
	mov.b	#0xe0,r0l                         ; 2f24: f8e0
loc_2f26:
	mov.b	r0l,@0xf7d5:16                    ; 2f26: 6a88f7d5
	mov.b	#0xe,r0l                          ; 2f2a: f80e
	jsr	@func_9c40:24                       ; 2f2c: 5e009c40
	mov.b	r0l,r0l                           ; 2f30: 0c88
	beq	loc_30a4:16                         ; 2f32: 5870016e
	jsr	@func_247e:24                       ; 2f36: 5e00247e
	mov.w	e6,r0                             ; 2f3a: 0de0
	jsr	@func_2488:24                       ; 2f3c: 5e002488
	mov.w	r0,r6                             ; 2f40: 0d06
	mov.w	r0,e0                             ; 2f42: 0d08
	mov.w	e6,r1                             ; 2f44: 0de1
	mov.w	#0x8f00,r0                        ; 2f46: 79008f00
	jsr	@func_5384:24                       ; 2f4a: 5e005384
	mov.b	@0xf7ce:16,r0l                    ; 2f4e: 6a08f7ce
	cmp.b	#0x4,r0l                          ; 2f52: a804
	bcc	loc_2f6a:8                          ; 2f54: 4414
	mov.w	r0,@-er7                          ; 2f56: 6df0
	mov.w	e5,r0                             ; 2f58: 0dd0
	jsr	@func_2488:24                       ; 2f5a: 5e002488
	mov.w	r0,e0                             ; 2f5e: 0d08
	mov.w	r6,r0                             ; 2f60: 0d60
	mov.w	r5,e1                             ; 2f62: 0d59
	mov.w	#0xf,r1                           ; 2f64: 7901000f
	bra	loc_2f7c:8                          ; 2f68: 4012
loc_2f6a:
	mov.w	r0,@-er7                          ; 2f6a: 6df0
	mov.w	e5,r0                             ; 2f6c: 0dd0
	jsr	@func_2488:24                       ; 2f6e: 5e002488
	mov.w	r0,e0                             ; 2f72: 0d08
	mov.w	r6,r0                             ; 2f74: 0d60
	mov.w	r5,e1                             ; 2f76: 0d59
	mov.w	#0x10f,r1                         ; 2f78: 7901010f
loc_2f7c:
	jsr	@func_4546:24                       ; 2f7c: 5e004546
	adds	#2,er7                             ; 2f80: 0b87
	mov.b	#0x4,r0l                          ; 2f82: f804
	jsr	@func_36f2:24                       ; 2f84: 5e0036f2
	jmp	@loc_3064:24                        ; 2f88: 5a003064
