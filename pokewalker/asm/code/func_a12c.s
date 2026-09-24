	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_a12c

func_a12c:
	jsr	@func_247e:24                       ; a12c: 5e00247e
	mov.w	#0xc0,r0                          ; a130: 790000c0
	jsr	@func_2488:24                       ; a134: 5e002488
	mov.w	r0,r5                             ; a138: 0d05
	mov.w	#0x1cb0,r6                        ; a13a: 79061cb0
	mov.w	r0,e0                             ; a13e: 0d08
	mov.w	r6,r0                             ; a140: 0d60
	mov.w	#0xc0,r1                          ; a142: 790100c0
	jsr	@func_5384:24                       ; a146: 5e005384
	sub.w	r6,r6                             ; a14a: 1966
loc_a14c:
	mov.b	r6l,r0h                           ; a14c: 0ce0
	and.b	#0x1,r0h                          ; a14e: e001
	mov.b	#0x18,r0l                         ; a150: f818
	mulxu.b	r0h,r0                          ; a152: 5000
	mov.b	r0l,r0h                           ; a154: 0c80
	mov.w	r5,e0                             ; a156: 0d58
	mov.w	#0x1820,r1                        ; a158: 79011820
	mov.b	@(0xbf25:16,er6),r0l              ; a15c: 6e68bf25
	jsr	@func_80ac:24                       ; a160: 5e0080ac
	inc.w	#1,r6                             ; a164: 0b56
	cmp.w	#0x4,r6                           ; a166: 79260004
	blt	loc_a14c:8                          ; a16a: 4de0
	mov.w	#0x10f,r1                         ; a16c: 7901010f
	mov.w	#0x1e30,r0                        ; a170: 79001e30
	jsr	@func_2096:24                       ; a174: 5e002096
	sub.w	r0,r0                             ; a178: 1900
	jsr	@func_21fe:24                       ; a17a: 5e0021fe
	rts                                     ; a17e: 5470
