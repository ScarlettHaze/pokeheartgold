	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_256e

func_256e:
	mov.w	r0,r0                             ; 256e: 0d00
	bne	loc_2586:8                          ; 2570: 4614
	mov.b	#0xa7,r1l                         ; 2572: f9a7
	mov.b	r1l,@SYSCR1:8                     ; 2574: 39f0
	mov.b	#0xe0,r1l                         ; 2576: f9e0
	mov.b	r1l,@SYSCR2:8                     ; 2578: 39f1
	mov.w	#0xf7b5,r1                        ; 257a: 7901f7b5
	bset	#0x4,@er1                          ; 257e: 7d107040
	sleep                                   ; 2582: 0180
	bra	loc_259c:8                          ; 2584: 4016
loc_2586:
	dec.w	#1,r0                             ; 2586: 1b50
	bne	loc_259c:8                          ; 2588: 4612
	mov.b	#0xaf,r0l                         ; 258a: f8af
	mov.b	r0l,@SYSCR1:8                     ; 258c: 38f0
	mov.b	#0xe3,r0l                         ; 258e: f8e3
	mov.b	r0l,@SYSCR2:8                     ; 2590: 38f1
	mov.w	#0xf7b5,r0                        ; 2592: 7900f7b5
	bclr	#0x4,@er0                          ; 2596: 7d007240
	sleep                                   ; 259a: 0180
loc_259c:
	rts                                     ; 259c: 5470
