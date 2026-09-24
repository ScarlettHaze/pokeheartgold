	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_42d0

func_42d0:
	mov.w	r2,@-er7                          ; 42d0: 6df2
	mov.l	er3,@-er7                         ; 42d2: 01006df3
	mov.w	r5,@-er7                          ; 42d6: 6df5
	mov.w	#0x810,r0                         ; 42d8: 79000810
	jsr	@func_69be:24                       ; 42dc: 5e0069be
	mov.b	#0x3,r0l                          ; 42e0: f803
	mov.w	r0,@-er7                          ; 42e2: 6df0
	mov.w	#0x860,r1                         ; 42e4: 79010860
	sub.w	r0,r0                             ; 42e8: 1900
	jsr	@func_7e58:24                       ; 42ea: 5e007e58
	adds	#2,er7                             ; 42ee: 0b87
	mov.b	#0x3,r0l                          ; 42f0: f803
	mov.w	r0,@-er7                          ; 42f2: 6df0
	mov.w	#0x860,r1                         ; 42f4: 79010860
	mov.w	#0x3800,r0                        ; 42f8: 79003800
	jsr	@func_7e58:24                       ; 42fc: 5e007e58
	adds	#2,er7                             ; 4300: 0b87
	mov.b	@0xf7cf:16,r0l                    ; 4302: 6a08f7cf
	inc	r0l                                 ; 4306: 0a08
	mov.b	r0l,@0xf7cf:16                    ; 4308: 6a88f7cf
	jmp	@loc_453c:24                        ; 430c: 5a00453c
