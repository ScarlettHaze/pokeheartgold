	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_25f6
	.global loc_2660
	.global loc_266c

func_25f6:
	jsr	@RegSave_er2_er6:24                 ; 25f6: 5e00ba42
	mov.w	r0,r5                             ; 25fa: 0d05
	mov.w	e0,r6                             ; 25fc: 0d86
	mov.b	@(0x1:16,er5),r1h                 ; 25fe: 6e510001
	add.w	#0x4,r5                           ; 2602: 79150004
	bra	loc_2658:8                          ; 2606: 4050
loc_2608:
	mov.w	r5,r0                             ; 2608: 0d50
	inc.w	#1,r5                             ; 260a: 0b55
	mov.b	@er0,r3l                          ; 260c: 680b
	mov.b	#0x8,r3h                          ; 260e: f308
	bra	loc_2652:8                          ; 2610: 4040
loc_2612:
	btst	#0x7,r3l                           ; 2612: 737b
	bne	loc_2624:8                          ; 2614: 460e
	mov.w	r5,r0                             ; 2616: 0d50
	inc.w	#1,r5                             ; 2618: 0b55
	mov.b	@er0,r0l                          ; 261a: 6808
	mov.b	r0l,@er6                          ; 261c: 68e8
	inc.w	#1,r6                             ; 261e: 0b56
	dec.b	r1h                               ; 2620: 1a01
	bra	loc_264c:8                          ; 2622: 4028
loc_2624:
	mov.b	@er5,r0l                          ; 2624: 6858
	mov.b	#0x10,r1l                         ; 2626: f910
	sub.b	r0h,r0h                           ; 2628: 1800
	divxu.b	r1l,r0                          ; 262a: 5190
	mov.b	r0l,r4l                           ; 262c: 0c8c
	add.b	#0x3,r4l                          ; 262e: 8c03
	inc.w	#1,r5                             ; 2630: 0b55
	mov.b	@er5+,r0l                         ; 2632: 6c58
	extu.w	r0                               ; 2634: 1750
	inc.w	#1,r0                             ; 2636: 0b50
	sub.b	r4l,r1h                           ; 2638: 18c1
	neg.w	r0                                ; 263a: 1790
	mov.w	r0,e0                             ; 263c: 0d08
loc_263e:
	mov.w	r6,r0                             ; 263e: 0d60
	add.w	e0,r0                             ; 2640: 0980
	mov.b	@er0,r0l                          ; 2642: 6808
	mov.b	r0l,@er6                          ; 2644: 68e8
	inc.w	#1,r6                             ; 2646: 0b56
	dec.b	r4l                               ; 2648: 1a0c
	bne	loc_263e:8                          ; 264a: 46f2
loc_264c:
	mov.b	r1h,r1h                           ; 264c: 0c11
	beq	loc_2658:8                          ; 264e: 4708
	shll.b	r3l                              ; 2650: 100b
loc_2652:
	dec.b	r3h                               ; 2652: 1a03
	mov.b	r3h,r3h                           ; 2654: 0c33
	bge	loc_2612:8                          ; 2656: 4cba
loc_2658:
	mov.b	r1h,r1h                           ; 2658: 0c11
	bne	loc_2608:8                          ; 265a: 46ac
	jmp	@RegRestore_er2_er6:24              ; 265c: 5a00ba62
loc_2660:
	mov.w	@er7+,r6                          ; 2660: 6d76
	mov.l	@er7+,er5                         ; 2662: 01006d75
	mov.w	@er7+,r4                          ; 2666: 6d74
	mov.w	@er7+,r3                          ; 2668: 6d73
	rts                                     ; 266a: 5470
loc_266c:
	mov.l	@er7+,er6                         ; 266c: 01006d76
	mov.l	@er7+,er5                         ; 2670: 01006d75
	mov.w	@er7+,r4                          ; 2674: 6d74
	mov.l	@er7+,er3                         ; 2676: 01006d73
	mov.l	@er7+,er2                         ; 267a: 01006d72
	rts                                     ; 267e: 5470
