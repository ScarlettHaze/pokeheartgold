	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_2d9a
	.global loc_2e32

func_2d9a:
	mov.b	r6l,r0l                           ; 2d9a: 0ce8
	extu.w	r0                               ; 2d9c: 1750
	shll.w	r0                               ; 2d9e: 1010
	mov.b	@(0xbb24:16,er0),r0l              ; 2da0: 6e08bb24
	mov.b	r0l,@0xf7d4:16                    ; 2da4: 6a88f7d4
	mov.b	@0xf7d2:16,r0l                    ; 2da8: 6a08f7d2
	extu.w	r0                               ; 2dac: 1750
	shll.w	r0                               ; 2dae: 1010
	mov.b	@(0xbb25:16,er0),r0l              ; 2db0: 6e08bb25
	mov.b	r0l,@0xf7d5:16                    ; 2db4: 6a88f7d5
	jsr	@func_369c:24                       ; 2db8: 5e00369c
	mov.b	r0l,r0l                           ; 2dbc: 0c88
	bne	loc_30a4:16                         ; 2dbe: 586002e2
	mov.b	@0xf7d2:16,r0l                    ; 2dc2: 6a08f7d2
	mov.b	@0xf7d3:16,r0h                    ; 2dc6: 6a00f7d3
	cmp.b	r0h,r0l                           ; 2dca: 1c08
	bcs	loc_30a4:16                         ; 2dcc: 585002d4
	mov.b	#0x38,r0l                         ; 2dd0: f838
	mov.b	r0l,@0xf7d4:16                    ; 2dd2: 6a88f7d4
	mov.b	#0x8,r0l                          ; 2dd6: f808
	mov.b	r0l,@0xf7d5:16                    ; 2dd8: 6a88f7d5
	mov.b	@0xf7d8:16,r0l                    ; 2ddc: 6a08f7d8
	shlr.b	r0l                              ; 2de0: 1108
	and.b	#0x3,r0l                          ; 2de2: e803
	beq	loc_2dee:8                          ; 2de4: 4708
	cmp.b	#0x1,r0l                          ; 2de6: a801
	bne	loc_30a4:16                         ; 2de8: 586002b8
	bra	loc_2e42:8                          ; 2dec: 4054
loc_2dee:
	mov.b	@0xf7d0:16,r0l                    ; 2dee: 6a08f7d0
	dec.b	r0l                               ; 2df2: 1a08
	mov.b	r0l,@0xf7d0:16                    ; 2df4: 6a88f7d0
	beq	loc_2e3c:8                          ; 2df8: 4742
	mov.b	@0xf7d8:16,r0l                    ; 2dfa: 6a08f7d8
	shlr.b	r0l                              ; 2dfe: 1108
	shlr.b	r0l                              ; 2e00: 1108
	shlr.b	r0l                              ; 2e02: 1108
	and.b	#0x3,r0l                          ; 2e04: e803
	beq	loc_2e12:8                          ; 2e06: 470a
	cmp.b	#0x1,r0l                          ; 2e08: a801
	beq	loc_2e1c:8                          ; 2e0a: 4710
	cmp.b	#0x2,r0l                          ; 2e0c: a802
	bne	loc_2e32:8                          ; 2e0e: 4622
	bra	loc_2e26:8                          ; 2e10: 4014
loc_2e12:
	mov.b	@0xf7d8:16,r0l                    ; 2e12: 6a08f7d8
	and.b	#0x1f,r0l                         ; 2e16: e81f
	or.b	#0x20,r0l                          ; 2e18: c820
	bra	loc_2e2e:8                          ; 2e1a: 4012
loc_2e1c:
	mov.b	@0xf7d8:16,r0l                    ; 2e1c: 6a08f7d8
	and.b	#0x1f,r0l                         ; 2e20: e81f
	or.b	#0x60,r0l                          ; 2e22: c860
	bra	loc_2e2e:8                          ; 2e24: 4008
loc_2e26:
	mov.b	@0xf7d8:16,r0l                    ; 2e26: 6a08f7d8
	and.b	#0x1f,r0l                         ; 2e2a: e81f
	or.b	#0x40,r0l                          ; 2e2c: c840
loc_2e2e:
	mov.b	r0l,@0xf7d8:16                    ; 2e2e: 6a88f7d8
loc_2e32:
	mov.b	#0x2,r0l                          ; 2e32: f802
	mov.b	r0l,@0xf7cf:16                    ; 2e34: 6a88f7cf
	jmp	@loc_30a4:24                        ; 2e38: 5a0030a4
loc_2e3c:
	mov.b	#0x5,r0l                          ; 2e3c: f805
	jmp	@loc_3076:24                        ; 2e3e: 5a003076
loc_2e42:
	mov.b	#0x3,r0l                          ; 2e42: f803
	jmp	@loc_2ed2:24                        ; 2e44: 5a002ed2
