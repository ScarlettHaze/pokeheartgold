	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_25d0

func_25d0:
	jsr	@RegSave_er2_er6:24                 ; 25d0: 5e00ba42
	mov.w	#0xf7c0,r6                        ; 25d4: 7906f7c0
	mov.l	@er6,er5                          ; 25d8: 01006965
	mov.l	er5,er0                           ; 25dc: 0fd0
	mov.l	#0x19660d,er1                     ; 25de: 7a010019660d
	jsr	@func_b9ae:24                       ; 25e4: 5e00b9ae
	add.l	#0x3c6ef35f,er0                   ; 25e8: 7a103c6ef35f
	mov.l	er0,@er6                          ; 25ee: 010069e0
	jmp	@RegRestore_er2_er6:24              ; 25f2: 5a00ba62
