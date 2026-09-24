	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_6784

func_6784:
	jsr	@RegSave_er2_er6:24                 ; 6784: 5e00ba42
	mov.w	r0,e5                             ; 6788: 0d0d
	mov.w	#0xde24,r3                        ; 678a: 7903de24
	mov.w	#0xf956,r5                        ; 678e: 7905f956
	sub.b	r4l,r4l                           ; 6792: 18cc
	bra	loc_67d4:8                          ; 6794: 403e
loc_6796:
	mov.b	#0x1,r6h                          ; 6796: f601
	mov.w	#0x8,r0                           ; 6798: 79000008
	add.w	r3,r0                             ; 679c: 0930
	mov.w	#0x28,r1                          ; 679e: 79010028
	mov.w	r5,e0                             ; 67a2: 0d58
	jsr	@func_5384:24                       ; 67a4: 5e005384
	sub.b	r6l,r6l                           ; 67a8: 18ee
loc_67aa:
	mov.b	r6l,r0l                           ; 67aa: 0ce8
	extu.w	r0                               ; 67ac: 1750
	mov.w	r0,e0                             ; 67ae: 0d08
	add.w	r5,r0                             ; 67b0: 0950
	mov.w	e5,r1                             ; 67b2: 0dd1
	add.w	e0,r1                             ; 67b4: 0981
	mov.b	@er0,r0l                          ; 67b6: 6808
	mov.b	@er1,r1l                          ; 67b8: 6819
	cmp.b	r1l,r0l                           ; 67ba: 1c98
	beq	loc_67c0:8                          ; 67bc: 4702
	sub.b	r6h,r6h                           ; 67be: 1866
loc_67c0:
	inc	r6l                                 ; 67c0: 0a0e
	cmp.b	#0x28,r6l                         ; 67c2: ae28
	bcs	loc_67aa:8                          ; 67c4: 45e4
	cmp.b	#0x1,r6h                          ; 67c6: a601
	bne	loc_67ce:8                          ; 67c8: 4604
	mov.b	#0x1,r0l                          ; 67ca: f801
	bra	loc_67da:8                          ; 67cc: 400c
loc_67ce:
	inc	r4l                                 ; 67ce: 0a0c
	add.w	#0x224,r3                         ; 67d0: 79130224
loc_67d4:
	cmp.b	#0xa,r4l                          ; 67d4: ac0a
	bcs	loc_6796:8                          ; 67d6: 45be
	sub.b	r0l,r0l                           ; 67d8: 1888
loc_67da:
	jmp	@RegRestore_er2_er6:24              ; 67da: 5a00ba62
