	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_27c2

func_27c2:
	and.w	#0xfff,r0                         ; 27c2: 79600fff
	mov.w	r0,r5                             ; 27c6: 0d05
	shlr.w	r5                               ; 27c8: 1115
	shlr.w	r5                               ; 27ca: 1115
	shlr.w	r5                               ; 27cc: 1115
	shlr.w	r5                               ; 27ce: 1115
	and.b	#0xf,r5l                          ; 27d0: ed0f
	mov.b	r0h,r1l                           ; 27d2: 0c09
	and.b	#0xf,r1l                          ; 27d4: e90f
	add.b	r1l,r5l                           ; 27d6: 089d
	mov.b	r0l,r1l                           ; 27d8: 0c89
	and.b	#0xf,r1l                          ; 27da: e90f
	add.b	r1l,r5l                           ; 27dc: 089d
	mov.b	r5l,r1h                           ; 27de: 0cd1
	sub.b	r1l,r1l                           ; 27e0: 1899
	mov.w	#0x10,e1                          ; 27e2: 79090010
	mulxu.w	e1,er1                          ; 27e6: 5291
	or.w	r1,r0                              ; 27e8: 6410
	rts                                     ; 27ea: 5470
