	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_0714

func_0714:
	jsr	@RegSave_er2_er6:24                 ; 0714: 5e00ba42
	mov.w	r0,r3                             ; 0718: 0d03
	mov.l	er1,er2                           ; 071a: 0f92
	sub.l	er5,er5                           ; 071c: 1ad5
	mov.b	#0x2,r5l                          ; 071e: fd02
	sub.l	er6,er6                           ; 0720: 1ae6
	bra	loc_073c:8                          ; 0722: 4018
loc_0724:
	mov.b	@er3+,r1l                         ; 0724: 6c39
	btst	#0x0,r6l                           ; 0726: 730e
	beq	loc_0732:8                          ; 0728: 4708
	extu.w	r1                               ; 072a: 1751
	extu.l	er1                              ; 072c: 1771
	add.l	er1,er5                           ; 072e: 0a95
	bra	loc_073a:8                          ; 0730: 4008
loc_0732:
	mov.b	r1l,r0h                           ; 0732: 0c90
	sub.b	r0l,r0l                           ; 0734: 1888
	extu.l	er0                              ; 0736: 1770
	add.l	er0,er5                           ; 0738: 0a85
loc_073a:
	inc.l	#1,er6                            ; 073a: 0b76
loc_073c:
	mov.l	er2,er0                           ; 073c: 0fa0
	cmp.l	er0,er6                           ; 073e: 1f86
	bcs	loc_0724:8                          ; 0740: 45e2
	mov.w	e5,r0                             ; 0742: 0dd0
	sub.w	e0,e0                             ; 0744: 1988
	mov.w	r5,r1                             ; 0746: 0d51
	extu.l	er1                              ; 0748: 1771
	add.l	er1,er0                           ; 074a: 0a90
	mov.l	er0,er6                           ; 074c: 0f86
	mov.w	e6,r0                             ; 074e: 0de0
	sub.w	e0,e0                             ; 0750: 1988
	add.l	er0,er6                           ; 0752: 0a86
	mov.w	r6,r0                             ; 0754: 0d60
	jmp	@RegRestore_er2_er6:24              ; 0756: 5a00ba62
