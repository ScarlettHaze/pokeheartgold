	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_3dbc

func_3dbc:
	mov.w	r2,@-er7                          ; 3dbc: 6df2
	mov.w	r5,@-er7                          ; 3dbe: 6df5
	mov.w	r6,@-er7                          ; 3dc0: 6df6
	jsr	@func_247e:24                       ; 3dc2: 5e00247e
	mov.w	#0x180,r0                         ; 3dc6: 79000180
	jsr	@func_2488:24                       ; 3dca: 5e002488
	mov.w	r0,r6                             ; 3dce: 0d06
	mov.b	@0xf7b1:16,r0l                    ; 3dd0: 6a08f7b1
	cmp.b	#0x11,r0l                         ; 3dd4: a811
	bne	loc_3dde:8                          ; 3dd6: 4606
	mov.w	#0x460,r5                         ; 3dd8: 79050460
	bra	loc_3de2:8                          ; 3ddc: 4004
loc_3dde:
	mov.w	#0x2480,r5                        ; 3dde: 79052480
loc_3de2:
	mov.w	r5,r0                             ; 3de2: 0d50
	mov.w	#0x10,r1                          ; 3de4: 79010010
	mov.w	r6,e0                             ; 3de8: 0d68
	jsr	@func_5384:24                       ; 3dea: 5e005384
	mov.w	r6,e0                             ; 3dee: 0d68
	mov.b	@0xf7cf:16,r1l                    ; 3df0: 6a09f7cf
	extu.w	r1                               ; 3df4: 1751
	mov.b	@(0xbd70:16,er1),r0h              ; 3df6: 6e10bd70
	mov.w	#0x808,r1                         ; 3dfa: 79010808
	mov.b	#0x2c,r0l                         ; 3dfe: f82c
	jsr	@func_80ac:24                       ; 3e00: 5e0080ac
	mov.b	#0x3,r0l                          ; 3e04: f803
	mov.w	r0,@-er7                          ; 3e06: 6df0
	mov.w	#0x860,r1                         ; 3e08: 79010860
	sub.w	r0,r0                             ; 3e0c: 1900
	jsr	@func_7e58:24                       ; 3e0e: 5e007e58
	adds	#2,er7                             ; 3e12: 0b87
	mov.b	#0x3,r0l                          ; 3e14: f803
	mov.w	r0,@-er7                          ; 3e16: 6df0
	mov.w	#0x860,r1                         ; 3e18: 79010860
	mov.w	#0x3800,r0                        ; 3e1c: 79003800
	jsr	@func_7e58:24                       ; 3e20: 5e007e58
	adds	#2,er7                             ; 3e24: 0b87
	mov.b	@0xf7cf:16,r0l                    ; 3e26: 6a08f7cf
	inc	r0l                                 ; 3e2a: 0a08
	mov.b	r0l,@0xf7cf:16                    ; 3e2c: 6a88f7cf
	jmp	@loc_4534:24                        ; 3e30: 5a004534
