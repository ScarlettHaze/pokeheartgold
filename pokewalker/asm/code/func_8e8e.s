	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_8e8e

func_8e8e:
	mov.w	#0x1750,r4                        ; 8e8e: 79041750
	add.w	r5,r4                             ; 8e92: 0954
	mov.w	r4,r0                             ; 8e94: 0d40
	mov.w	#0xc0,r1                          ; 8e96: 790100c0
	mov.w	r6,e0                             ; 8e9a: 0d68
	jsr	@func_5384:24                       ; 8e9c: 5e005384
	mov.w	r6,e0                             ; 8ea0: 0d68
	mov.w	#0x1820,r1                        ; 8ea2: 79011820
	mov.w	#0x183c,r0                        ; 8ea6: 7900183c
	jsr	@func_80ac:24                       ; 8eaa: 5e0080ac
	mov.w	#0xf,r1                           ; 8eae: 7901000f
	mov.w	#0x1130,r0                        ; 8eb2: 79001130
	jsr	@func_2096:24                       ; 8eb6: 5e002096
	jmp	@loc_8f4e:24                        ; 8eba: 5a008f4e
