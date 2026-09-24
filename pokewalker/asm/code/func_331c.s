	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_331c

func_331c:
	mov.w	#0x1dd0,e4                        ; 331c: 790c1dd0
	add.w	r5,e4                             ; 3320: 095c
	mov.w	e4,r0                             ; 3322: 0dc0
	mov.w	#0x300,r1                         ; 3324: 79010300
	mov.w	r6,e0                             ; 3328: 0d68
	jsr	@er3                                ; 332a: 5d30
	mov.w	r6,e0                             ; 332c: 0d68
	mov.w	#0x2060,r1                        ; 332e: 79012060
	mov.w	#0x2000,r0                        ; 3332: 79002000
	jmp	@loc_366c:24                        ; 3336: 5a00366c
