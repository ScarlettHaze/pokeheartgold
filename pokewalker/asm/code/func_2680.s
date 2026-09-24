	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_2680

func_2680:
	mov.w	@er6,r0                           ; 2680: 6960
	or.w	#0x101,r0                          ; 2682: 79400101
	mov.w	r0,@er6                           ; 2686: 69e0
	inc.w	#2,r6                             ; 2688: 0bd6
	mov.w	@er6,r0                           ; 268a: 6960
	or.w	#0x101,r0                          ; 268c: 79400101
	mov.w	r0,@er6                           ; 2690: 69e0
	inc.w	#2,r6                             ; 2692: 0bd6
	mov.w	@er6,r0                           ; 2694: 6960
	or.w	#0x101,r0                          ; 2696: 79400101
	mov.w	r0,@er6                           ; 269a: 69e0
	inc.w	#2,r6                             ; 269c: 0bd6
	rts                                     ; 269e: 5470
