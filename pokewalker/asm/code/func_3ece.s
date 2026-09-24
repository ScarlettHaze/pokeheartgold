	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_3ece

func_3ece:
	mov.w	r2,@-er7                          ; 3ece: 6df2
	mov.w	r5,@-er7                          ; 3ed0: 6df5
	mov.w	r6,@-er7                          ; 3ed2: 6df6
	jsr	@func_247e:24                       ; 3ed4: 5e00247e
	mov.w	#0x180,r0                         ; 3ed8: 79000180
	jsr	@func_2488:24                       ; 3edc: 5e002488
	mov.w	r0,r6                             ; 3ee0: 0d06
	mov.w	#0x1f70,r5                        ; 3ee2: 79051f70
	mov.w	r0,e0                             ; 3ee6: 0d08
	mov.w	r5,r0                             ; 3ee8: 0d50
	mov.w	#0xc0,r1                          ; 3eea: 790100c0
	jsr	@func_5384:24                       ; 3eee: 5e005384
	mov.w	r6,e0                             ; 3ef2: 0d68
	mov.w	#0x1820,r1                        ; 3ef4: 79011820
	mov.w	#0x1020,r0                        ; 3ef8: 79001020
	jsr	@func_80ac:24                       ; 3efc: 5e0080ac
	mov.b	#0x3,r0l                          ; 3f00: f803
	mov.w	r0,@-er7                          ; 3f02: 6df0
	mov.w	#0x860,r1                         ; 3f04: 79010860
	sub.w	r0,r0                             ; 3f08: 1900
	jsr	@func_7e58:24                       ; 3f0a: 5e007e58
	adds	#2,er7                             ; 3f0e: 0b87
	mov.b	#0x3,r0l                          ; 3f10: f803
	mov.w	r0,@-er7                          ; 3f12: 6df0
	mov.w	#0x860,r1                         ; 3f14: 79010860
	mov.w	#0x3800,r0                        ; 3f18: 79003800
	jsr	@func_7e58:24                       ; 3f1c: 5e007e58
	adds	#2,er7                             ; 3f20: 0b87
	mov.b	@0xf7cf:16,r0l                    ; 3f22: 6a08f7cf
	bne	loc_3f2e:8                          ; 3f26: 4606
	inc	r0l                                 ; 3f28: 0a08
	mov.b	r0l,@0xf7cf:16                    ; 3f2a: 6a88f7cf
loc_3f2e:
	jmp	@loc_4534:24                        ; 3f2e: 5a004534
