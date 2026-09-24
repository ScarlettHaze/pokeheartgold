	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_4148

func_4148:
	mov.b	@0xf7ce:16,r0l                    ; 4148: 6a08f7ce
	beq	loc_415c:8                          ; 414c: 470e
	cmp.b	#0x1,r0l                          ; 414e: a801
	beq	loc_4162:8                          ; 4150: 4710
	cmp.b	#0x2,r0l                          ; 4152: a802
	beq	loc_4168:8                          ; 4154: 4712
	cmp.b	#0x3,r0l                          ; 4156: a803
	bne	loc_4172:8                          ; 4158: 4618
	bra	loc_416e:8                          ; 415a: 4012
loc_415c:
	jsr	@func_3dbc:24                       ; 415c: 5e003dbc
	bra	loc_4172:8                          ; 4160: 4010
loc_4162:
	jsr	@func_3ece:24                       ; 4162: 5e003ece
	bra	loc_4172:8                          ; 4166: 400a
loc_4168:
	jsr	@func_3f32:24                       ; 4168: 5e003f32
	bra	loc_4172:8                          ; 416c: 4004
loc_416e:
	jsr	@func_3f72:24                       ; 416e: 5e003f72
loc_4172:
	sub.w	r0,r0                             ; 4172: 1900
	jmp	@func_21fe:24                       ; 4174: 5a0021fe
