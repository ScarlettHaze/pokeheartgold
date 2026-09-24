	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_3670
	.global loc_367c

func_3670:
	mov.w	#0xf,r1                           ; 3670: 7901000f
	mov.w	#0x2830,r0                        ; 3674: 79002830
	jsr	@func_2096:24                       ; 3678: 5e002096
loc_367c:
	sub.w	r0,r0                             ; 367c: 1900
	jsr	@func_21fe:24                       ; 367e: 5e0021fe
	mov.b	@0xf7d2:16,r0l                    ; 3682: 6a08f7d2
	inc	r0l                                 ; 3686: 0a08
	mov.b	r0l,@0xf7d2:16                    ; 3688: 6a88f7d2
	mov.b	@0xf7d3:16,r0h                    ; 368c: 6a00f7d3
	cmp.b	r0h,r0l                           ; 3690: 1c08
	bcs	loc_369a:8                          ; 3692: 4506
	mov.b	r0h,r0l                           ; 3694: 0c08
	mov.b	r0l,@0xf7d2:16                    ; 3696: 6a88f7d2
loc_369a:
	rts                                     ; 369a: 5470
