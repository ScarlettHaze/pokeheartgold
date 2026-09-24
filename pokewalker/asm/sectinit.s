	.h8300hn
	.section .text

; Section initialization tables used by the startup code
	.global DTBL
DTBL:  ; initialized data, copied ROM -> RAM
	.word D_data_init, D_data_init_end, 0xfef0
	.global BTBL
BTBL:  ; zero-initialized data
	.word 0xf780, 0xfef0

; Initial contents of the D section (RAM 0xfef0)
D_data_init:
	.byte 0x00, 0x00, 0x00, 0x00
D_data_init_end:

; Unused flash, erased state
	.fill 0x38, 1, 0xff
