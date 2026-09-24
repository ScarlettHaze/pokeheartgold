	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_7334
	.global loc_733c
	.global loc_733e

func_7334:
	mov.w	#0x10f,r1                         ; 7334: 7901010f
	mov.w	#0x1530,r0                        ; 7338: 79001530
loc_733c:
	jsr	@er6                                ; 733c: 5d60
loc_733e:
	mov.w	#0x58,r0                          ; 733e: 79000058
	jsr	@func_21fe:24                       ; 7342: 5e0021fe
	rts                                     ; 7346: 5470
