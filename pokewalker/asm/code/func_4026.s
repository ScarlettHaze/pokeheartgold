	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_4026

func_4026:
	mov.b	@0xf7ac:16,r0l                    ; 4026: 6a08f7ac
	and.b	#0x1,r0l                          ; 402a: e801
	mov.b	#0xc0,r0h                         ; 402c: f0c0
	mulxu.b	r0h,r0                          ; 402e: 5000
	add.w	#0xba80,r0                        ; 4030: 7910ba80
	mov.w	#0x180,r1                         ; 4034: 79010180
	mov.w	r6,e0                             ; 4038: 0d68
	jsr	@func_5384:24                       ; 403a: 5e005384
	mov.w	r6,e0                             ; 403e: 0d68
	mov.w	#0x1820,r1                        ; 4040: 79011820
	mov.w	#0x820,r0                         ; 4044: 79000820
	jsr	@func_80ac:24                       ; 4048: 5e0080ac
	mov.b	#0x5,r1l                          ; 404c: f905
	mov.w	#0x2000,r0                        ; 404e: 79002000
	jsr	@func_1af4:24                       ; 4052: 5e001af4
	bra	loc_40d0:8                          ; 4056: 4078
