	.h8300hn
	.include "registers.inc"
	.section .text

	.global RegSave_er2_er6
	.global RegRestore_er2_er6

RegSave_er2_er6:
	subs	#2,er7                             ; ba42: 1b87
	mov.l	er5,@-er7                         ; ba44: 01006df5
	mov.l	er4,@-er7                         ; ba48: 01006df4
	mov.l	er3,@-er7                         ; ba4c: 01006df3
	mov.l	er2,@-er7                         ; ba50: 01006df2
	mov.w	@(0x12:16,er7),r2                 ; ba54: 6f720012
	mov.w	r2,@-er7                          ; ba58: 6df2
	mov.l	er6,@(0x12:16,er7)                ; ba5a: 01006ff60012
	rts                                     ; ba60: 5470
RegRestore_er2_er6:
	mov.l	@er7+,er2                         ; ba62: 01006d72
	mov.l	@er7+,er3                         ; ba66: 01006d73
	mov.l	@er7+,er4                         ; ba6a: 01006d74
	mov.l	@er7+,er5                         ; ba6e: 01006d75
	mov.l	@er7+,er6                         ; ba72: 01006d76
	rts                                     ; ba76: 5470
