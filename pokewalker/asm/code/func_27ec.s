	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_27ec

func_27ec:
	mov.w	r0,r3                             ; 27ec: 0d03
	mov.w	r3,r5                             ; 27ee: 0d35
	shlr.w	r5                               ; 27f0: 1115
	shlr.w	r5                               ; 27f2: 1115
	shlr.w	r5                               ; 27f4: 1115
	shlr.w	r5                               ; 27f6: 1115
	and.b	#0xf,r5l                          ; 27f8: ed0f
	mov.b	r3h,r1l                           ; 27fa: 0c39
	and.b	#0xf,r1l                          ; 27fc: e90f
	add.b	r1l,r5l                           ; 27fe: 089d
	mov.b	r3l,r1l                           ; 2800: 0cb9
	and.b	#0xf,r1l                          ; 2802: e90f
	add.b	r1l,r5l                           ; 2804: 089d
	and.b	#0xf,r5l                          ; 2806: ed0f
	mov.w	#0x1000,e0                        ; 2808: 79081000
	extu.l	er3                              ; 280c: 1773
	divxu.w	e0,er3                          ; 280e: 5383
	extu.w	r5                               ; 2810: 1755
	cmp.w	r3,r5                             ; 2812: 1d35
	beq	loc_281a:8                          ; 2814: 4704
	sub.b	r0l,r0l                           ; 2816: 1888
	bra	loc_281c:8                          ; 2818: 4002
loc_281a:
	mov.b	#0x1,r0l                          ; 281a: f801
loc_281c:
	rts                                     ; 281c: 5470
