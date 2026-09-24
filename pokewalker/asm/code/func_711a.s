	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_711a

func_711a:
	jsr	@func_247e:24                       ; 711a: 5e00247e
	mov.w	#0x100,r0                         ; 711e: 79000100
	jsr	@func_2488:24                       ; 7122: 5e002488
	mov.w	r0,r5                             ; 7126: 0d05
	mov.w	#D_bb74,r4                        ; 7128: 7904bb74
	sub.w	e0,e0                             ; 712c: 1988
loc_712e:
	mov.w	r4,r0                             ; 712e: 0d40
	add.w	e0,r0                             ; 7130: 0980
	mov.w	r5,r1                             ; 7132: 0d51
	add.w	e0,r1                             ; 7134: 0981
	mov.b	@er0,r0l                          ; 7136: 6808
	mov.b	r0l,@er1                          ; 7138: 6898
	inc.w	#1,e0                             ; 713a: 0b58
	cmp.w	#0x100,e0                         ; 713c: 79280100
	bcs	loc_712e:8                          ; 7140: 45ec
	mov.w	#D_bcb4,e5                        ; 7142: 790dbcb4
	mov.w	r5,r0                             ; 7146: 0d50
	add.w	#0x50,r0                          ; 7148: 79100050
	mov.w	r0,e1                             ; 714c: 0d09
	sub.w	e0,e0                             ; 714e: 1988
	mov.b	#0x20,r1l                         ; 7150: f920
loc_7152:
	mov.w	e1,r3                             ; 7152: 0d93
	add.w	e0,r3                             ; 7154: 0983
	mov.w	e5,r4                             ; 7156: 0dd4
	add.w	e0,r4                             ; 7158: 0984
	mov.b	@er4,r0l                          ; 715a: 6848
	mov.b	#0x8,r0h                          ; 715c: f008
	mulxu.b	r0h,r0                          ; 715e: 5000
	mov.b	@er3,r0h                          ; 7160: 6830
	or.b	r0l,r0h                            ; 7162: 1480
	mov.b	r0h,@er3                          ; 7164: 68b0
	mov.b	@er4,r0l                          ; 7166: 6848
	sub.b	r0h,r0h                           ; 7168: 1800
	divxu.b	r1l,r0                          ; 716a: 5190
	mov.b	@(0x40:16,er3),r0h                ; 716c: 6e300040
	or.b	r0l,r0h                            ; 7170: 1480
	mov.b	r0h,@(0x40:16,er3)                ; 7172: 6eb00040
	inc.w	#1,e0                             ; 7176: 0b58
	cmp.w	#0x20,e0                          ; 7178: 79280020
	bcs	loc_7152:8                          ; 717c: 45d4
	mov.w	r5,e0                             ; 717e: 0d58
	mov.b	r1l,r1h                           ; 7180: 0c91
	mov.w	#0x1020,r0                        ; 7182: 79001020
	jsr	@func_80ac:24                       ; 7186: 5e0080ac
	mov.b	@0xf7cf:16,r0l                    ; 718a: 6a08f7cf
	inc	r0l                                 ; 718e: 0a08
	mov.b	r0l,@0xf7cf:16                    ; 7190: 6a88f7cf
	cmp.b	#0x8,r0l                          ; 7194: a808
	bls	loc_71a2:8                          ; 7196: 430a
	jsr	@func_6a1c:24                       ; 7198: 5e006a1c
	sub.b	r0l,r0l                           ; 719c: 1888
	jsr	@func_69b8:24                       ; 719e: 5e0069b8
loc_71a2:
	rts                                     ; 71a2: 5470
