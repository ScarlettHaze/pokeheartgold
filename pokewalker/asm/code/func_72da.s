	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_72da

func_72da:
	mov.w	#0x10f,r1                         ; 72da: 7901010f
	mov.w	#0x430,r0                         ; 72de: 79000430
	bra	loc_733c:8                          ; 72e2: 4058
