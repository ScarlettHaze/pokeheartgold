	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_a72a

func_a72a:
	subs	#4,er7                             ; a72a: 1b97
	mov.w	#0x100,e6                         ; a72c: 790e0100
	mov.w	r0,e5                             ; a730: 0d0d
	jsr	@func_247e:24                       ; a732: 5e00247e
	mov.w	e6,r0                             ; a736: 0de0
	jsr	@func_2488:24                       ; a738: 5e002488
	mov.w	r0,r5                             ; a73c: 0d05
	mov.w	e5,@(0x2:16,er7)                  ; a73e: 6ffd0002
	sub.b	r0l,r0l                           ; a742: 1888
	mov.b	r0l,@er7                          ; a744: 68f8
loc_a746:
	jsr	@func_259e:24                       ; a746: 5e00259e
	sub.w	e0,e0                             ; a74a: 1988
loc_a74c:
	mov.w	r5,r0                             ; a74c: 0d50
	add.w	e0,r0                             ; a74e: 0980
	mov.b	@er7,r1l                          ; a750: 6879
	inc	r1l                                 ; a752: 0a09
	mov.b	r1l,@er7                          ; a754: 68f9
	dec.b	r1l                               ; a756: 1a09
	mov.b	r1l,@er0                          ; a758: 6889
	inc.w	#1,e0                             ; a75a: 0b58
	cmp.w	#0x100,e0                         ; a75c: 79280100
	blt	loc_a74c:8                          ; a760: 4dea
	mov.w	e6,r1                             ; a762: 0de1
	mov.w	r5,e0                             ; a764: 0d58
	mov.w	@(0x2:16,er7),r0                  ; a766: 6f700002
	jsr	@func_524e:24                       ; a76a: 5e00524e
	mov.w	@(0x2:16,er7),r0                  ; a76e: 6f700002
	add.w	e6,r0                             ; a772: 09e0
	mov.w	r0,@(0x2:16,er7)                  ; a774: 6ff00002
	mov.b	@er7,r0l                          ; a778: 6878
	inc	r0l                                 ; a77a: 0a08
	mov.b	r0l,@er7                          ; a77c: 68f8
	mov.w	@(0x2:16,er7),r0                  ; a77e: 6f700002
	bne	loc_a746:8                          ; a782: 46c2
	mov.w	e5,@(0x2:16,er7)                  ; a784: 6ffd0002
	sub.b	r0l,r0l                           ; a788: 1888
	mov.b	r0l,@er7                          ; a78a: 68f8
loc_a78c:
	jsr	@func_259e:24                       ; a78c: 5e00259e
	mov.w	e6,r1                             ; a790: 0de1
	mov.w	r5,e0                             ; a792: 0d58
	mov.w	@(0x2:16,er7),r0                  ; a794: 6f700002
	jsr	@func_5384:24                       ; a798: 5e005384
	sub.w	e0,e0                             ; a79c: 1988
	bra	loc_a7b8:8                          ; a79e: 4018
loc_a7a0:
	mov.w	r5,r0                             ; a7a0: 0d50
	add.w	e0,r0                             ; a7a2: 0980
	mov.b	@er7,r1l                          ; a7a4: 6879
	inc	r1l                                 ; a7a6: 0a09
	mov.b	r1l,@er7                          ; a7a8: 68f9
	dec.b	r1l                               ; a7aa: 1a09
	mov.b	@er0,r0l                          ; a7ac: 6808
	cmp.b	r1l,r0l                           ; a7ae: 1c98
	beq	loc_a7b6:8                          ; a7b0: 4704
	sub.b	r0l,r0l                           ; a7b2: 1888
	bra	loc_a7fc:8                          ; a7b4: 4046
loc_a7b6:
	inc.w	#1,e0                             ; a7b6: 0b58
loc_a7b8:
	cmp.w	#0x100,e0                         ; a7b8: 79280100
	blt	loc_a7a0:8                          ; a7bc: 4de2
	mov.w	@(0x2:16,er7),r0                  ; a7be: 6f700002
	add.w	#0x100,r0                         ; a7c2: 79100100
	mov.w	r0,@(0x2:16,er7)                  ; a7c6: 6ff00002
	mov.b	@er7,r0l                          ; a7ca: 6878
	inc	r0l                                 ; a7cc: 0a08
	mov.b	r0l,@er7                          ; a7ce: 68f8
	mov.w	@(0x2:16,er7),r0                  ; a7d0: 6f700002
	bne	loc_a78c:8                          ; a7d4: 46b6
	mov.w	e5,@(0x2:16,er7)                  ; a7d6: 6ffd0002
loc_a7da:
	jsr	@func_259e:24                       ; a7da: 5e00259e
	mov.b	#0xff,r1l                         ; a7de: f9ff
	mov.w	@(0x2:16,er7),r0                  ; a7e0: 6f700002
	jsr	@func_5634:24                       ; a7e4: 5e005634
	mov.w	@(0x2:16,er7),r0                  ; a7e8: 6f700002
	add.w	#0x80,r0                          ; a7ec: 79100080
	mov.w	r0,@(0x2:16,er7)                  ; a7f0: 6ff00002
	mov.w	@(0x2:16,er7),r0                  ; a7f4: 6f700002
	bne	loc_a7da:8                          ; a7f8: 46e0
	mov.b	#0x1,r0l                          ; a7fa: f801
loc_a7fc:
	adds	#4,er7                             ; a7fc: 0b97
	rts                                     ; a7fe: 5470
