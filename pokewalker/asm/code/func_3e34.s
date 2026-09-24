	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_3e34

func_3e34:
	mov.w	r2,@-er7                          ; 3e34: 6df2
	mov.w	r5,@-er7                          ; 3e36: 6df5
	mov.w	r6,@-er7                          ; 3e38: 6df6
	jsr	@func_247e:24                       ; 3e3a: 5e00247e
	mov.w	#0x180,r0                         ; 3e3e: 79000180
	jsr	@func_2488:24                       ; 3e42: 5e002488
	mov.w	r0,r6                             ; 3e46: 0d06
	mov.w	#0x460,r5                         ; 3e48: 79050460
	mov.w	r0,e0                             ; 3e4c: 0d08
	mov.w	r5,r0                             ; 3e4e: 0d50
	mov.w	#0x10,r1                          ; 3e50: 79010010
	jsr	@func_5384:24                       ; 3e54: 5e005384
	mov.w	r6,e0                             ; 3e58: 0d68
	mov.w	#0x808,r1                         ; 3e5a: 79010808
	mov.w	#0x102c,r0                        ; 3e5e: 7900102c
	jsr	@func_80ac:24                       ; 3e62: 5e0080ac
	mov.w	#0x2040,r5                        ; 3e66: 79052040
	mov.w	r5,r0                             ; 3e6a: 0d50
	mov.w	#0x10,r1                          ; 3e6c: 79010010
	mov.w	r6,e0                             ; 3e70: 0d68
	jsr	@func_5384:24                       ; 3e72: 5e005384
	mov.b	@0xf7cf:16,r5l                    ; 3e76: 6a0df7cf
	extu.w	r5                               ; 3e7a: 1755
	shll.w	r5                               ; 3e7c: 1015
	add.w	#0xbd76,r5                        ; 3e7e: 7915bd76
	mov.w	r6,e0                             ; 3e82: 0d68
	mov.w	#0x808,r1                         ; 3e84: 79010808
	mov.b	@(0x1:16,er5),r0h                 ; 3e88: 6e500001
	mov.b	@er5,r0l                          ; 3e8c: 6858
	jsr	@func_80ac:24                       ; 3e8e: 5e0080ac
	mov.b	#0x3,r0l                          ; 3e92: f803
	mov.w	r0,@-er7                          ; 3e94: 6df0
	mov.w	#0x860,r1                         ; 3e96: 79010860
	sub.w	r0,r0                             ; 3e9a: 1900
	jsr	@func_7e58:24                       ; 3e9c: 5e007e58
	adds	#2,er7                             ; 3ea0: 0b87
	mov.b	#0x3,r0l                          ; 3ea2: f803
	mov.w	r0,@-er7                          ; 3ea4: 6df0
	mov.w	#0x860,r1                         ; 3ea6: 79010860
	mov.w	#0x3800,r0                        ; 3eaa: 79003800
	jsr	@func_7e58:24                       ; 3eae: 5e007e58
	adds	#2,er7                             ; 3eb2: 0b87
	mov.b	@0xf7cf:16,r0l                    ; 3eb4: 6a08f7cf
	inc	r0l                                 ; 3eb8: 0a08
	cmp.b	#0x2,r0l                          ; 3eba: a802
	bls	loc_3ec6:8                          ; 3ebc: 4308
	mov.b	#0x1,r0l                          ; 3ebe: f801
	mov.b	r0l,@0xf7ce:16                    ; 3ec0: 6a88f7ce
	sub.b	r0l,r0l                           ; 3ec4: 1888
loc_3ec6:
	mov.b	r0l,@0xf7cf:16                    ; 3ec6: 6a88f7cf
	jmp	@loc_4534:24                        ; 3eca: 5a004534
