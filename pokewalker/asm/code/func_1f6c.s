	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_1f6c

func_1f6c:
	mov.w	r4,@-er7                          ; 1f6c: 6df4
	mov.l	er5,@-er7                         ; 1f6e: 01006df5
	mov.l	er6,@-er7                         ; 1f72: 01006df6
	mov.b	r0l,r4h                           ; 1f76: 0c84
	mov.b	r0h,r4l                           ; 1f78: 0c0c
	mov.w	e0,r6                             ; 1f7a: 0d86
	jsr	@func_247e:24                       ; 1f7c: 5e00247e
	mov.w	#0x140,r0                         ; 1f80: 79000140
	jsr	@func_2488:24                       ; 1f84: 5e002488
	mov.w	r0,r5                             ; 1f88: 0d05
	jsr	@func_8766:24                       ; 1f8a: 5e008766
	sub.b	r0l,r0l                           ; 1f8e: 1888
	mov.w	r0,@-er7                          ; 1f90: 6df0
	mov.w	#0x85e,r1                         ; 1f92: 7901085e
	mov.w	#0x2801,r0                        ; 1f96: 79002801
	jsr	@func_7e58:24                       ; 1f9a: 5e007e58
	adds	#2,er7                             ; 1f9e: 0b87
	mov.b	#0x1,r0l                          ; 1fa0: f801
	mov.w	r0,@-er7                          ; 1fa2: 6df0
	extu.l	er6                              ; 1fa4: 1776
	mov.l	er6,er1                           ; 1fa6: 0fe1
	mov.b	r4h,r0l                           ; 1fa8: 0c48
	add.b	#0x8,r0l                          ; 1faa: 8808
	mov.b	r4l,r0h                           ; 1fac: 0cc0
	bsr	func_1fee:8                         ; 1fae: 553e
	adds	#2,er7                             ; 1fb0: 0b87
	mov.w	#0x420,r6                         ; 1fb2: 79060420
	mov.w	r6,r0                             ; 1fb6: 0d60
	mov.w	#0x40,r1                          ; 1fb8: 79010040
	mov.w	r5,e0                             ; 1fbc: 0d58
	jsr	@func_5384:24                       ; 1fbe: 5e005384
	sub.b	r6l,r6l                           ; 1fc2: 18ee
loc_1fc4:
	mov.b	r6l,r0l                           ; 1fc4: 0ce8
	extu.w	r0                               ; 1fc6: 1750
	shll.w	r0                               ; 1fc8: 1010
	add.w	r5,r0                             ; 1fca: 0950
	mov.w	@er0,e0                           ; 1fcc: 6908
	or.w	#0x101,e0                          ; 1fce: 79480101
	mov.w	e0,@er0                           ; 1fd2: 6988
	inc	r6l                                 ; 1fd4: 0a0e
	cmp.b	#0x10,r6l                         ; 1fd6: ae10
	bcs	loc_1fc4:8                          ; 1fd8: 45ea
	mov.b	r4l,r0h                           ; 1fda: 0cc0
	add.b	#0x10,r4h                         ; 1fdc: 8410
	mov.b	r4h,r0l                           ; 1fde: 0c48
	mov.w	r5,e0                             ; 1fe0: 0d58
	mov.w	#0x1010,r1                        ; 1fe2: 79011010
	jsr	@func_80ac:24                       ; 1fe6: 5e0080ac
	jmp	@loc_8ab0:24                        ; 1fea: 5a008ab0
