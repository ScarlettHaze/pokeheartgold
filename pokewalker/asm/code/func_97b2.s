	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_97b2

func_97b2:
	mov.b	@0xf7b6:16,r0l                    ; 97b2: 6a08f7b6
	bld	#0x2,r0l                            ; 97b6: 7728
	bcs	loc_97c0:8                          ; 97b8: 4506
	mov.b	#0x2,r0l                          ; 97ba: f802
	jmp	@loc_98a8:24                        ; 97bc: 5a0098a8
loc_97c0:
	mov.b	@0xf7aa:16,r0l                    ; 97c0: 6a08f7aa
	extu.w	r0                               ; 97c4: 1750
	add.w	r6,r0                             ; 97c6: 0960
	mov.b	@er0,r0l                          ; 97c8: 6808
	extu.w	r0                               ; 97ca: 1750
	cmp.w	r0,r1                             ; 97cc: 1d01
	bcc	loc_97d8:8                          ; 97ce: 4408
	sub.w	r0,r0                             ; 97d0: 1900
	mov.w	r0,@0xf78e:16                     ; 97d2: 6b80f78e
	bra	loc_97ee:8                          ; 97d6: 4016
loc_97d8:
	mov.b	@0xf7aa:16,r0l                    ; 97d8: 6a08f7aa
	extu.w	r0                               ; 97dc: 1750
	add.w	r0,r6                             ; 97de: 0906
	mov.b	@er6,r0l                          ; 97e0: 6868
	extu.w	r0                               ; 97e2: 1750
	mov.w	@0xf78e:16,e0                     ; 97e4: 6b08f78e
	sub.w	r0,e0                             ; 97e8: 1908
	mov.w	e0,@0xf78e:16                     ; 97ea: 6b88f78e
loc_97ee:
	mov.w	#0x18,e1                          ; 97ee: 79090018
	mov.w	#0xf780,r1                        ; 97f2: 7901f780
	mov.l	#0x2560156,er0                    ; 97f6: 7a0002560156
	jsr	@func_50d8:24                       ; 97fc: 5e0050d8
	mov.b	#0x3,r0l                          ; 9800: f803
	jsr	@func_69b8:24                       ; 9802: 5e0069b8
	jsr	@func_9d92:24                       ; 9806: 5e009d92
	jmp	@loc_98ba:24                        ; 980a: 5a0098ba
