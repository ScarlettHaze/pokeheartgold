	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_4058

func_4058:
	mov.w	#0x420,r0                         ; 4058: 79000420
	jsr	@func_1cbe:24                       ; 405c: 5e001cbe
	mov.b	#0xd,r1l                          ; 4060: f90d
	mov.w	#0x2000,r0                        ; 4062: 79002000
	jsr	@func_1c80:24                       ; 4066: 5e001c80
	bra	loc_40d0:8                          ; 406a: 4064
