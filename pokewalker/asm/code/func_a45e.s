	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_a45e

func_a45e:
	mov.w	#0x1c,e6                          ; a45e: 790e001c
	mov.w	@0xf78c:16,r0                     ; a462: 6b00f78c
	cmp.w	#0x270f,r0                        ; a466: 7920270f
	bcc	loc_a472:8                          ; a46a: 4406
	inc.w	#1,r0                             ; a46c: 0b50
	mov.w	r0,@0xf78c:16                     ; a46e: 6b80f78c
loc_a472:
	mov.w	#0x18,e1                          ; a472: 79090018
	mov.w	#0xf780,r1                        ; a476: 7901f780
	mov.l	#0x2560156,er0                    ; a47a: 7a0002560156
	jsr	@func_50d8:24                       ; a480: 5e0050d8
	jsr	@func_247e:24                       ; a484: 5e00247e
	mov.w	e6,r0                             ; a488: 0de0
	jsr	@func_2488:24                       ; a48a: 5e002488
	mov.w	r0,r6                             ; a48e: 0d06
	mov.w	r0,e0                             ; a490: 0d08
	mov.w	#0xcef0,r0                        ; a492: 7900cef0
	mov.w	e6,r1                             ; a496: 0de1
	jsr	@func_5384:24                       ; a498: 5e005384
	mov.w	r6,r1                             ; a49c: 0d61
	add.w	#0x14,r1                          ; a49e: 79110014
	mov.w	r6,r5                             ; a4a2: 0d65
	add.w	#0x18,r5                          ; a4a4: 79150018
	sub.b	r3l,r3l                           ; a4a8: 18bb
loc_a4aa:
	mov.l	@er1,er0                          ; a4aa: 01006910
	mov.l	er0,@er5                          ; a4ae: 010069d0
	inc	r3l                                 ; a4b2: 0a0b
	sub.w	#0x4,r1                           ; a4b4: 79310004
	sub.w	#0x4,r5                           ; a4b8: 79350004
	cmp.b	#0x6,r3l                          ; a4bc: ab06
	bcs	loc_a4aa:8                          ; a4be: 45ea
	mov.l	@0xf79c:16,er0                    ; a4c0: 01006b00f79c
	mov.l	er0,@er6                          ; a4c6: 010069e0
	mov.w	r6,e0                             ; a4ca: 0d68
	mov.w	#0xcef0,r0                        ; a4cc: 7900cef0
	mov.w	e6,r1                             ; a4d0: 0de1
	jsr	@func_524e:24                       ; a4d2: 5e00524e
	sub.l	er0,er0                           ; a4d6: 1a80
	mov.l	er0,@0xf79c:16                    ; a4d8: 01006b80f79c
	mov.w	#0xdc00,r6                        ; a4de: 7906dc00
	mov.b	#0xa,r5l                          ; a4e2: fd0a
loc_a4e4:
	add.w	#0x224,r6                         ; a4e4: 79160224
	mov.w	#0x8,r0                           ; a4e8: 79000008
	add.w	r6,r0                             ; a4ec: 0960
	mov.b	#0xff,r1l                         ; a4ee: f9ff
	mov.w	#0x28,e0                          ; a4f0: 79080028
	jsr	@func_5742:24                       ; a4f4: 5e005742
	dec.b	r5l                               ; a4f8: 1a0d
	bne	loc_a4e4:8                          ; a4fa: 46e8
	rts                                     ; a4fc: 5470
