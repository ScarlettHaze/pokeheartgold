	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_3fc6

func_3fc6:
	mov.w	r2,@-er7                          ; 3fc6: 6df2
	mov.w	r3,@-er7                          ; 3fc8: 6df3
	mov.w	r4,@-er7                          ; 3fca: 6df4
	mov.w	r5,@-er7                          ; 3fcc: 6df5
	mov.l	er6,@-er7                         ; 3fce: 01006df6
	jsr	@func_247e:24                       ; 3fd2: 5e00247e
	mov.w	#0x180,r0                         ; 3fd6: 79000180
	jsr	@func_2488:24                       ; 3fda: 5e002488
	mov.w	r0,r6                             ; 3fde: 0d06
	mov.w	#0x280,r5                         ; 3fe0: 79050280
	mov.w	#0x10,e6                          ; 3fe4: 790e0010
	mov.b	@0xf7d0:16,r0l                    ; 3fe8: 6a08f7d0
	cmp.b	#0x7,r0l                          ; 3fec: a807
	bhi	loc_40d0:16                         ; 3fee: 582000de
	extu.w	r0                               ; 3ff2: 1750
	add.w	r0,r0                             ; 3ff4: 0900
	mov.w	@(0xbd60:16,er0),r0               ; 3ff6: 6f00bd60
	jmp	@er0                                ; 3ffa: 5900
