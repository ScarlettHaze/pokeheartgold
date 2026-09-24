	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_722c

func_722c:
	mov.b	r0l,r5l                           ; 722c: 0c8d
	jsr	@func_247e:24                       ; 722e: 5e00247e
	mov.w	#0x180,r0                         ; 7232: 79000180
	jsr	@func_2488:24                       ; 7236: 5e002488
	mov.w	r0,r6                             ; 723a: 0d06
	mov.b	r5l,r5l                           ; 723c: 0cdd
	beq	loc_725e:8                          ; 723e: 471e
	mov.w	#0x2450,r5                        ; 7240: 79052450
	mov.w	r5,r0                             ; 7244: 0d50
	mov.w	#0x20,r1                          ; 7246: 79010020
	mov.w	r6,e0                             ; 724a: 0d68
	jsr	@func_5384:24                       ; 724c: 5e005384
	mov.w	r6,e0                             ; 7250: 0d68
	mov.w	#0x1008,r1                        ; 7252: 79011008
	mov.w	#0x2c,r0                          ; 7256: 7900002c
	jsr	@func_80ac:24                       ; 725a: 5e0080ac
loc_725e:
	mov.w	#0x2350,r5                        ; 725e: 79052350
	mov.w	r5,r0                             ; 7262: 0d50
	mov.w	#0x100,r1                         ; 7264: 79010100
	mov.w	r6,e0                             ; 7268: 0d68
	jsr	@func_5384:24                       ; 726a: 5e005384
	mov.w	r6,e0                             ; 726e: 0d68
	mov.w	#0x2020,r1                        ; 7270: 79012020
	mov.w	#0x1020,r0                        ; 7274: 79001020
	jsr	@func_80ac:24                       ; 7278: 5e0080ac
	mov.w	#0xf,r1                           ; 727c: 7901000f
	mov.w	#0x30,r0                          ; 7280: 79000030
	jsr	@func_2096:24                       ; 7284: 5e002096
	rts                                     ; 7288: 5470
