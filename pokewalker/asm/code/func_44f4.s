	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_44f4
	.global loc_4534
	.global loc_453c

func_44f4:
	mov.b	@0xf7ce:16,r0l                    ; 44f4: 6a08f7ce
	cmp.b	#0x2,r0l                          ; 44f8: a802
	beq	loc_4512:8                          ; 44fa: 4716
	cmp.b	#0x1,r0l                          ; 44fc: a801
	beq	loc_4518:8                          ; 44fe: 4718
	cmp.b	#0x0,r0l                          ; 4500: a800
	beq	loc_451e:8                          ; 4502: 471a
	cmp.b	#0x3,r0l                          ; 4504: a803
	beq	loc_4524:8                          ; 4506: 471c
	cmp.b	#0x6,r0l                          ; 4508: a806
	beq	loc_452a:8                          ; 450a: 471e
	cmp.b	#0x7,r0l                          ; 450c: a807
	bne	loc_452e:8                          ; 450e: 461e
	bra	loc_452a:8                          ; 4510: 4018
loc_4512:
	jsr	@func_42d0:24                       ; 4512: 5e0042d0
	bra	loc_452e:8                          ; 4516: 4016
loc_4518:
	jsr	@func_4310:24                       ; 4518: 5e004310
	bra	loc_452e:8                          ; 451c: 4010
loc_451e:
	jsr	@func_4372:24                       ; 451e: 5e004372
	bra	loc_452e:8                          ; 4522: 400a
loc_4524:
	jsr	@func_43e4:24                       ; 4524: 5e0043e4
	bra	loc_452e:8                          ; 4528: 4004
loc_452a:
	jsr	@func_4434:24                       ; 452a: 5e004434
loc_452e:
	sub.w	r0,r0                             ; 452e: 1900
	jmp	@func_21fe:24                       ; 4530: 5a0021fe
loc_4534:
	mov.w	@er7+,r6                          ; 4534: 6d76
	mov.w	@er7+,r5                          ; 4536: 6d75
	mov.w	@er7+,r2                          ; 4538: 6d72
	rts                                     ; 453a: 5470
loc_453c:
	mov.w	@er7+,r5                          ; 453c: 6d75
	mov.l	@er7+,er3                         ; 453e: 01006d73
	mov.w	@er7+,r2                          ; 4542: 6d72
	rts                                     ; 4544: 5470
