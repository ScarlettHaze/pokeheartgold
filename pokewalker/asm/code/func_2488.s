	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_2488

func_2488:
	mov.w	e5,@-er7                          ; 2488: 6dfd
	mov.w	#0xf7be,r1                        ; 248a: 7901f7be
	mov.w	@er1,e0                           ; 248e: 6918
	mov.w	e0,e1                             ; 2490: 0d89
	add.w	r0,e0                             ; 2492: 0908
	mov.w	e0,@er1                           ; 2494: 6998
	mov.w	#0xf8f0,r0                        ; 2496: 7900f8f0
	mov.w	e0,r1                             ; 249a: 0d81
	sub.w	r0,r1                             ; 249c: 1901
	cmp.w	#0x400,r1                         ; 249e: 79210400
	bls	loc_24a6:8                          ; 24a2: 4302
	sleep                                   ; 24a4: 0180
loc_24a6:
	mov.w	e1,r0                             ; 24a6: 0d90
	mov.w	@er7+,e5                          ; 24a8: 6d7d
	rts                                     ; 24aa: 5470
