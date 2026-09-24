	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_8e5a

func_8e5a:
	mov.b	@0xf7ac:16,r0l                    ; 8e5a: 6a08f7ac
	and.b	#0x1,r0l                          ; 8e5e: e801
	mov.b	#0xc0,r0h                         ; 8e60: f0c0
	mulxu.b	r0h,r0                          ; 8e62: 5000
	add.w	#0xba80,r0                        ; 8e64: 7910ba80
	mov.w	#0x180,r1                         ; 8e68: 79010180
	mov.w	r6,e0                             ; 8e6c: 0d68
	jsr	@func_5384:24                       ; 8e6e: 5e005384
	mov.w	r6,e0                             ; 8e72: 0d68
	mov.w	#0x1820,r1                        ; 8e74: 79011820
	mov.w	#0x183c,r0                        ; 8e78: 7900183c
	jsr	@func_80ac:24                       ; 8e7c: 5e0080ac
	mov.b	#0x7,r1l                          ; 8e80: f907
	mov.w	#0x3000,r0                        ; 8e82: 79003000
	jsr	@func_1af4:24                       ; 8e86: 5e001af4
	jmp	@loc_8f4e:24                        ; 8e8a: 5a008f4e
