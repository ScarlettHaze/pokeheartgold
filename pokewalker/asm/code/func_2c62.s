	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_2c62

func_2c62:
	mov.l	#0x880000,er5                     ; 2c62: 7a0500880000
	mov.w	#0xbe,e6                          ; 2c68: 790e00be
	mov.b	@0xf7cf:16,r0l                    ; 2c6c: 6a08f7cf
	cmp.b	#0x2,r0l                          ; 2c70: a802
	bne	loc_2c7c:8                          ; 2c72: 4608
	jsr	@func_2972:24                       ; 2c74: 5e002972
	jmp	@loc_30a4:24                        ; 2c78: 5a0030a4
loc_2c7c:
	mov.b	@0xf7d2:16,r6l                    ; 2c7c: 6a0ef7d2
	mov.b	@0xf7d3:16,r6h                    ; 2c80: 6a06f7d3
	cmp.b	#0x11,r0l                         ; 2c84: a811
	bhi	loc_30a4:16                         ; 2c86: 5820041a
	extu.w	r0                               ; 2c8a: 1750
	add.w	r0,r0                             ; 2c8c: 0900
	mov.w	@(0xbac6:16,er0),r0               ; 2c8e: 6f00bac6
	jmp	@er0                                ; 2c92: 5900
