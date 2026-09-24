	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_8d88

func_8d88:
	subs	#4,er7                             ; 8d88: 1b97
	mov.l	#0x100280,er5                     ; 8d8a: 7a0500100280
	jsr	@func_247e:24                       ; 8d90: 5e00247e
	mov.w	#0x180,r0                         ; 8d94: 79000180
	jsr	@func_2488:24                       ; 8d98: 5e002488
	mov.w	r0,r6                             ; 8d9c: 0d06
	mov.w	#0xb90,r4                         ; 8d9e: 79040b90
	add.w	r5,r4                             ; 8da2: 0954
	mov.w	r0,e0                             ; 8da4: 0d08
	mov.w	r4,r0                             ; 8da6: 0d40
	mov.w	#0x140,r1                         ; 8da8: 79010140
	jsr	@func_5384:24                       ; 8dac: 5e005384
	mov.w	r6,e0                             ; 8db0: 0d68
	mov.w	#0x1050,r1                        ; 8db2: 79011050
	mov.w	#0x8,r0                           ; 8db6: 79000008
	jsr	@func_80ac:24                       ; 8dba: 5e0080ac
	mov.b	@0xf7ce:16,r4l                    ; 8dbe: 6a0cf7ce
	mov.b	r4l,r0l                           ; 8dc2: 0cc8
	cmp.b	#0x9,r0l                          ; 8dc4: a809
	bhi	loc_8f4e:16                         ; 8dc6: 58200184
	extu.w	r0                               ; 8dca: 1750
	add.w	r0,r0                             ; 8dcc: 0900
	mov.w	@(0xbee4:16,er0),r0               ; 8dce: 6f00bee4
	jmp	@er0                                ; 8dd2: 5900
