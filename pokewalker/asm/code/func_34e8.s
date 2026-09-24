	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_34e8

func_34e8:
	mov.b	#0xd,r1l                          ; 34e8: f90d
	mov.w	@0xf7d6:16,e0                     ; 34ea: 6b08f7d6
	mov.w	#0x2002,r0                        ; 34ee: 79002002
	jsr	@func_1f6c:24                       ; 34f2: 5e001f6c
	mov.w	#0x10e,r1                         ; 34f6: 7901010e
	mov.w	#0x2a30,r0                        ; 34fa: 79002a30
	jmp	@loc_364e:24                        ; 34fe: 5a00364e
