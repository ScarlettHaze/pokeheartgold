	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_3f32

func_3f32:
	mov.w	r2,@-er7                          ; 3f32: 6df2
	mov.l	er3,@-er7                         ; 3f34: 01006df3
	mov.w	r5,@-er7                          ; 3f38: 6df5
	mov.w	#0x810,r0                         ; 3f3a: 79000810
	jsr	@func_69be:24                       ; 3f3e: 5e0069be
	mov.b	#0x3,r0l                          ; 3f42: f803
	mov.w	r0,@-er7                          ; 3f44: 6df0
	mov.w	#0x860,r1                         ; 3f46: 79010860
	sub.w	r0,r0                             ; 3f4a: 1900
	jsr	@func_7e58:24                       ; 3f4c: 5e007e58
	adds	#2,er7                             ; 3f50: 0b87
	mov.b	#0x3,r0l                          ; 3f52: f803
	mov.w	r0,@-er7                          ; 3f54: 6df0
	mov.w	#0x860,r1                         ; 3f56: 79010860
	mov.w	#0x3800,r0                        ; 3f5a: 79003800
	jsr	@func_7e58:24                       ; 3f5e: 5e007e58
	adds	#2,er7                             ; 3f62: 0b87
	mov.b	@0xf7cf:16,r0l                    ; 3f64: 6a08f7cf
	inc	r0l                                 ; 3f68: 0a08
	mov.b	r0l,@0xf7cf:16                    ; 3f6a: 6a88f7cf
	jmp	@loc_453c:24                        ; 3f6e: 5a00453c
