	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_4310

func_4310:
	mov.w	r2,@-er7                          ; 4310: 6df2
	mov.w	r5,@-er7                          ; 4312: 6df5
	mov.w	r6,@-er7                          ; 4314: 6df6
	jsr	@func_247e:24                       ; 4316: 5e00247e
	mov.w	#0x180,r0                         ; 431a: 79000180
	jsr	@func_2488:24                       ; 431e: 5e002488
	mov.w	r0,r6                             ; 4322: 0d06
	mov.w	#0x1f70,r5                        ; 4324: 79051f70
	mov.w	r0,e0                             ; 4328: 0d08
	mov.w	r5,r0                             ; 432a: 0d50
	mov.w	#0xc0,r1                          ; 432c: 790100c0
	jsr	@func_5384:24                       ; 4330: 5e005384
	mov.w	r6,e0                             ; 4334: 0d68
	mov.w	#0x1820,r1                        ; 4336: 79011820
	mov.w	#0x1020,r0                        ; 433a: 79001020
	jsr	@func_80ac:24                       ; 433e: 5e0080ac
	mov.b	#0x3,r0l                          ; 4342: f803
	mov.w	r0,@-er7                          ; 4344: 6df0
	mov.w	#0x860,r1                         ; 4346: 79010860
	sub.w	r0,r0                             ; 434a: 1900
	jsr	@func_7e58:24                       ; 434c: 5e007e58
	adds	#2,er7                             ; 4350: 0b87
	mov.b	#0x3,r0l                          ; 4352: f803
	mov.w	r0,@-er7                          ; 4354: 6df0
	mov.w	#0x860,r1                         ; 4356: 79010860
	mov.w	#0x3800,r0                        ; 435a: 79003800
	jsr	@func_7e58:24                       ; 435e: 5e007e58
	adds	#2,er7                             ; 4362: 0b87
	sub.b	r0l,r0l                           ; 4364: 1888
	mov.b	r0l,@0xf7ce:16                    ; 4366: 6a88f7ce
	mov.b	r0l,@0xf7cf:16                    ; 436a: 6a88f7cf
	jmp	@loc_4534:24                        ; 436e: 5a004534
