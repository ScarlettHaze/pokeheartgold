	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_7882

func_7882:
	bset	#0x2,@IENR2:8                      ; 7882: 7ff47020
	mov.w	#0x1,r0                           ; 7886: 79000001
	jsr	@func_256e:24                       ; 788a: 5e00256e
	bclr	#0x2,@IENR2:8                      ; 788e: 7ff47220
	bclr	#0x7,@IENR1:8                      ; 7892: 7ff37270
	jsr	@func_76aa:24                       ; 7896: 5e0076aa
	bset	#0x7,@IENR1:8                      ; 789a: 7ff37070
	jsr	@func_9b84:24                       ; 789e: 5e009b84
	mov.b	@0xf7b6:16,r0l                    ; 78a2: 6a08f7b6
	and.b	#0x18,r0l                         ; 78a6: e818
	bne	loc_78c8:8                          ; 78a8: 461e
	jsr	@func_a34a:24                       ; 78aa: 5e00a34a
	jsr	@func_a1a8:24                       ; 78ae: 5e00a1a8
	mov.b	r0l,r0l                           ; 78b2: 0c88
	bne	loc_78c0:8                          ; 78b4: 460a
	mov.b	@0xf7b5:16,r0l                    ; 78b6: 6a08f7b5
	bld	#0x3,r0l                            ; 78ba: 7738
	bcc	loc_798a:16                         ; 78bc: 584000ca
loc_78c0:
	jsr	@func_a180:24                       ; 78c0: 5e00a180
	jmp	@loc_798a:24                        ; 78c4: 5a00798a
loc_78c8:
	mov.b	@0xf7b6:16,r0l                    ; 78c8: 6a08f7b6
	and.b	#0x18,r0l                         ; 78cc: e818
	cmp.b	#0x10,r0l                         ; 78ce: a810
	bne	loc_78e8:8                          ; 78d0: 4616
	jsr	@func_5fc2:24                       ; 78d2: 5e005fc2
	jsr	@func_7348:24                       ; 78d6: 5e007348
	mov.w	@0xf7e0:16,r0                     ; 78da: 6b00f7e0
	mov.w	#func_08d6,r1                     ; 78de: 790108d6
	cmp.w	r1,r0                             ; 78e2: 1d10
	beq	loc_798a:16                         ; 78e4: 587000a2
loc_78e8:
	mov.b	@0xf7b6:16,r0l                    ; 78e8: 6a08f7b6
	bld	#0x1,r0l                            ; 78ec: 7718
	bcc	loc_78fe:8                          ; 78ee: 440e
	mov.b	@0xf7ae:16,r0l                    ; 78f0: 6a08f7ae
	cmp.b	#0x3f,r0l                         ; 78f4: a83f
	bne	loc_78fe:8                          ; 78f6: 4606
	jsr	@func_945a:24                       ; 78f8: 5e00945a
	bra	loc_796e:8                          ; 78fc: 4070
loc_78fe:
	mov.b	@0xf7b5:16,r0l                    ; 78fe: 6a08f7b5
	bld	#0x0,r0l                            ; 7902: 7708
	bcc	loc_7932:8                          ; 7904: 442c
	mov.b	@0xf7b6:16,r0l                    ; 7906: 6a08f7b6
	and.b	#0x18,r0l                         ; 790a: e818
	cmp.b	#0x10,r0l                         ; 790c: a810
	bne	loc_7928:8                          ; 790e: 4618
	mov.b	#0x40,r0l                         ; 7910: f840
	jsr	@func_7ffc:24                       ; 7912: 5e007ffc
	jsr	@func_7406:24                       ; 7916: 5e007406
	jsr	@func_7cac:24                       ; 791a: 5e007cac
	mov.b	@0xf7ac:16,r0l                    ; 791e: 6a08f7ac
	inc	r0l                                 ; 7922: 0a08
	mov.b	r0l,@0xf7ac:16                    ; 7924: 6a88f7ac
loc_7928:
	mov.w	#0xf7b5,r0                        ; 7928: 7900f7b5
	bclr	#0x0,@er0                          ; 792c: 7d007200
	bra	loc_796e:8                          ; 7930: 403c
loc_7932:
	jsr	@func_a34a:24                       ; 7932: 5e00a34a
	mov.b	@0xf7b6:16,r0l                    ; 7936: 6a08f7b6
	and.b	#0x18,r0l                         ; 793a: e818
	cmp.b	#0x10,r0l                         ; 793c: a810
	bne	loc_7962:8                          ; 793e: 4622
	mov.b	@0xf7af:16,r0l                    ; 7940: 6a08f7af
	bne	loc_796e:8                          ; 7944: 4628
	jsr	@func_7fda:24                       ; 7946: 5e007fda
	mov.b	@0xf7b6:16,r0l                    ; 794a: 6a08f7b6
	and.b	#0xe7,r0l                         ; 794e: e8e7
	or.b	#0x8,r0l                           ; 7950: c808
	mov.b	r0l,@0xf7b6:16                    ; 7952: 6a88f7b6
	sub.b	r0l,r0l                           ; 7956: 1888
	mov.b	r0l,@0xf7bb:16                    ; 7958: 6a88f7bb
	mov.b	r0l,@0xf79b:16                    ; 795c: 6a88f79b
	bra	loc_796e:8                          ; 7960: 400c
loc_7962:
	ldc	#0x80,ccr                           ; 7962: 0780
	jsr	@func_290a:24                       ; 7964: 5e00290a
	ldc	#0x0,ccr                            ; 7968: 0700
	jsr	@func_a2f6:24                       ; 796a: 5e00a2f6
loc_796e:
	jsr	@func_24ac:24                       ; 796e: 5e0024ac
	jsr	@func_369c:24                       ; 7972: 5e00369c
	mov.b	r0l,r0l                           ; 7976: 0c88
	beq	loc_798a:8                          ; 7978: 4710
	mov.w	#func_7998,r0                     ; 797a: 79007998
	jsr	@func_693a:24                       ; 797e: 5e00693a
	bclr	#0x2,@IENR2:8                      ; 7982: 7ff47220
	jsr	@func_37d6:24                       ; 7986: 5e0037d6
loc_798a:
	mov.b	@0xf7ae:16,r0l                    ; 798a: 6a08f7ae
	add.b	#0x1,r0l                          ; 798e: 8801
	and.b	#0x3f,r0l                         ; 7990: e83f
	mov.b	r0l,@0xf7ae:16                    ; 7992: 6a88f7ae
	rts                                     ; 7996: 5470
