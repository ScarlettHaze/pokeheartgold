	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_728a

func_728a:
	jsr	@func_247e:24                       ; 728a: 5e00247e
	mov.w	#0x180,r0                         ; 728e: 79000180
	jsr	@func_2488:24                       ; 7292: 5e002488
	mov.w	r0,r6                             ; 7296: 0d06
	mov.w	#0x2350,r5                        ; 7298: 79052350
	mov.w	r0,e0                             ; 729c: 0d08
	mov.w	r5,r0                             ; 729e: 0d50
	mov.w	#0x100,r1                         ; 72a0: 79010100
	jsr	@func_5384:24                       ; 72a4: 5e005384
	mov.w	r6,e0                             ; 72a8: 0d68
	mov.w	#0x2020,r1                        ; 72aa: 79012020
	mov.w	#0x1020,r0                        ; 72ae: 79001020
	jsr	@func_80ac:24                       ; 72b2: 5e0080ac
	mov.w	#func_2096,r6                     ; 72b6: 79062096
	mov.b	@0xf7ad:16,r0l                    ; 72ba: 6a08f7ad
	add.b	#0xff,r0l                         ; 72be: 88ff
	cmp.b	#0x7,r0l                          ; 72c0: a807
	bhi	loc_733e:8                          ; 72c2: 427a
	extu.w	r0                               ; 72c4: 1750
	mov.b	@(0xbe76:16,er0),r0l              ; 72c6: 6e08be76
	add.w	#0x72d0,r0                        ; 72ca: 791072d0
	jmp	@er0                                ; 72ce: 5900
