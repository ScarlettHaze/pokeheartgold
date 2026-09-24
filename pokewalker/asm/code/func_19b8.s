	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_19b8

func_19b8:
	mov.w	r6,@-er7                          ; 19b8: 6df6
	mov.b	r0l,r4h                           ; 19ba: 0c84
	mov.b	r0h,r4l                           ; 19bc: 0c0c
	mov.b	r1l,r3l                           ; 19be: 0c9b
	jsr	@func_247e:24                       ; 19c0: 5e00247e
	mov.w	#0xc0,r0                          ; 19c4: 790000c0
	jsr	@func_2488:24                       ; 19c8: 5e002488
	mov.w	r0,r6                             ; 19cc: 0d06
	mov.b	r3l,r1l                           ; 19ce: 0cb9
	extu.w	r1                               ; 19d0: 1751
	mov.w	#0x180,e1                         ; 19d2: 79090180
	mulxu.w	e1,er1                          ; 19d6: 5291
	mov.b	@0xf7ac:16,r3l                    ; 19d8: 6a0bf7ac
	and.b	#0x1,r3l                          ; 19dc: eb01
	mov.b	r3l,r2l                           ; 19de: 0cba
	mov.b	#0xc0,r2h                         ; 19e0: f2c0
	mulxu.b	r2h,r2                          ; 19e2: 5022
	add.w	r2,r1                             ; 19e4: 0921
	mov.w	#0x9a7e,r3                        ; 19e6: 79039a7e
	add.w	r1,r3                             ; 19ea: 0913
	mov.w	r0,e0                             ; 19ec: 0d08
	mov.w	r3,r0                             ; 19ee: 0d30
	mov.w	#0xc0,r1                          ; 19f0: 790100c0
	jsr	@func_5384:24                       ; 19f4: 5e005384
	mov.w	r6,e0                             ; 19f8: 0d68
	mov.b	r4l,r0h                           ; 19fa: 0cc0
	mov.b	r4h,r0l                           ; 19fc: 0c48
	mov.w	#0x1820,r1                        ; 19fe: 79011820
	jsr	@func_80ac:24                       ; 1a02: 5e0080ac
	mov.w	@er7+,r6                          ; 1a06: 6d76
	rts                                     ; 1a08: 5470
