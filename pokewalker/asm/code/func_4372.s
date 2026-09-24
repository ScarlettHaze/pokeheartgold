	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_4372

func_4372:
	mov.w	r2,@-er7                          ; 4372: 6df2
	mov.w	r5,@-er7                          ; 4374: 6df5
	mov.w	r6,@-er7                          ; 4376: 6df6
	jsr	@func_247e:24                       ; 4378: 5e00247e
	mov.w	#0x180,r0                         ; 437c: 79000180
	jsr	@func_2488:24                       ; 4380: 5e002488
	mov.w	r0,r6                             ; 4384: 0d06
	mov.w	#0x2480,r5                        ; 4386: 79052480
	mov.b	@0xf7cf:16,r0l                    ; 438a: 6a08f7cf
	cmp.b	#0x4,r0l                          ; 438e: a804
	bhi	loc_43b4:8                          ; 4390: 4222
	mov.w	r5,r0                             ; 4392: 0d50
	mov.w	#0x10,r1                          ; 4394: 79010010
	mov.w	r6,e0                             ; 4398: 0d68
	jsr	@func_5384:24                       ; 439a: 5e005384
	mov.w	r6,e0                             ; 439e: 0d68
	mov.b	@0xf7cf:16,r1l                    ; 43a0: 6a09f7cf
	extu.w	r1                               ; 43a4: 1751
	mov.b	@(0xbd7c:16,er1),r0h              ; 43a6: 6e10bd7c
	mov.b	#0x8,r1h                          ; 43aa: f108
	mov.b	r1h,r1l                           ; 43ac: 0c19
	mov.b	#0x2c,r0l                         ; 43ae: f82c
	jsr	@func_80ac:24                       ; 43b0: 5e0080ac
loc_43b4:
	mov.b	#0x3,r0l                          ; 43b4: f803
	mov.w	r0,@-er7                          ; 43b6: 6df0
	mov.w	#0x860,r1                         ; 43b8: 79010860
	sub.w	r0,r0                             ; 43bc: 1900
	jsr	@func_7e58:24                       ; 43be: 5e007e58
	adds	#2,er7                             ; 43c2: 0b87
	mov.b	#0x3,r0l                          ; 43c4: f803
	mov.w	r0,@-er7                          ; 43c6: 6df0
	mov.w	#0x860,r1                         ; 43c8: 79010860
	mov.w	#0x3800,r0                        ; 43cc: 79003800
	jsr	@func_7e58:24                       ; 43d0: 5e007e58
	adds	#2,er7                             ; 43d4: 0b87
	mov.b	@0xf7cf:16,r0l                    ; 43d6: 6a08f7cf
	inc	r0l                                 ; 43da: 0a08
	mov.b	r0l,@0xf7cf:16                    ; 43dc: 6a88f7cf
	jmp	@loc_4534:24                        ; 43e0: 5a004534
