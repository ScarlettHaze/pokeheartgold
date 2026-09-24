	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_aa42

func_aa42:
	sub.b	r0l,r0l                           ; aa42: 1888
	mov.b	r0l,@0xf7ce:16                    ; aa44: 6a88f7ce
	mov.b	r0l,@0xf7d0:16                    ; aa48: 6a88f7d0
	mov.w	#0x1,e0                           ; aa4c: 79080001
	mov.w	e0,@0xf7d4:16                     ; aa50: 6b88f7d4
	mov.b	@0xf797:16,r0h                    ; aa54: 6a00f797
	and.b	#0xf9,r0h                         ; aa58: e0f9
	or.b	#0x4,r0h                           ; aa5a: c004
	mov.b	r0h,@0xf797:16                    ; aa5c: 6a80f797
	mov.b	#0x2,r0l                          ; aa60: f802
	jsr	@func_3832:24                       ; aa62: 5e003832
	mov.b	#0x4,r0l                          ; aa66: f804
	jmp	@func_7c24:24                       ; aa68: 5a007c24
