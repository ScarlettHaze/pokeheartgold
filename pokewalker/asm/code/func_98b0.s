	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_98b0
	.global loc_98b6
	.global loc_98ba
	.global loc_98be
	.global loc_9928
	.global loc_992c

func_98b0:
	jsr	@func_6c88:24                       ; 98b0: 5e006c88
	mov.b	#0x9,r0l                          ; 98b4: f809
loc_98b6:
	jsr	@func_69b8:24                       ; 98b6: 5e0069b8
loc_98ba:
	sub.b	r0l,r0l                           ; 98ba: 1888
	bra	loc_9928:8                          ; 98bc: 406a
loc_98be:
	mov.b	#0x4,r0l                          ; 98be: f804
	jsr	@func_9c40:24                       ; 98c0: 5e009c40
	mov.b	r0l,r0l                           ; 98c4: 0c88
	beq	loc_98ee:8                          ; 98c6: 4726
	mov.b	@0xf7aa:16,r0l                    ; 98c8: 6a08f7aa
	beq	loc_9900:8                          ; 98cc: 4732
	mov.b	@0xf7aa:16,r0l                    ; 98ce: 6a08f7aa
	extu.w	r0                               ; 98d2: 1750
	add.w	#0x5,r0                           ; 98d4: 79100005
	exts.l	er0                              ; 98d8: 17f0
	mov.w	#0x6,r1                           ; 98da: 79010006
	divxs.w	r1,er0                          ; 98de: 01d05310
	mov.w	e0,r0                             ; 98e2: 0d80
	mov.b	r0l,@0xf7aa:16                    ; 98e4: 6a88f7aa
	mov.b	#0x2,r0l                          ; 98e8: f802
	jsr	@func_36f2:24                       ; 98ea: 5e0036f2
loc_98ee:
	mov.b	#0x8,r0l                          ; 98ee: f808
	jsr	@func_9c40:24                       ; 98f0: 5e009c40
	mov.b	r0l,r0l                           ; 98f4: 0c88
	beq	loc_992c:8                          ; 98f6: 4734
	mov.b	@0xf7aa:16,r0l                    ; 98f8: 6a08f7aa
	cmp.b	#0x5,r0l                          ; 98fc: a805
	bne	loc_990e:8                          ; 98fe: 460e
loc_9900:
	jsr	@func_6a1c:24                       ; 9900: 5e006a1c
	sub.b	r0l,r0l                           ; 9904: 1888
	jsr	@func_69b8:24                       ; 9906: 5e0069b8
	mov.b	#0x1,r0l                          ; 990a: f801
	bra	loc_9928:8                          ; 990c: 401a
loc_990e:
	mov.b	@0xf7aa:16,r0l                    ; 990e: 6a08f7aa
	extu.w	r0                               ; 9912: 1750
	inc.w	#1,r0                             ; 9914: 0b50
	exts.l	er0                              ; 9916: 17f0
	mov.w	#0x6,r1                           ; 9918: 79010006
	divxs.w	r1,er0                          ; 991c: 01d05310
	mov.w	e0,r0                             ; 9920: 0d80
	mov.b	r0l,@0xf7aa:16                    ; 9922: 6a88f7aa
	mov.b	#0x2,r0l                          ; 9926: f802
loc_9928:
	jsr	@func_36f2:24                       ; 9928: 5e0036f2
loc_992c:
	adds	#4,er7                             ; 992c: 0b97
	rts                                     ; 992e: 5470
