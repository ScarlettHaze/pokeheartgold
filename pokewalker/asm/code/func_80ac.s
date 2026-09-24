	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_80ac

func_80ac:
	jsr	@RegSave_er2_er6:24                 ; 80ac: 5e00ba42
	sub.w	#0xa,r7                           ; 80b0: 7937000a
	mov.b	r0l,@er7                          ; 80b4: 68f8
	mov.b	r0h,r6l                           ; 80b6: 0c0e
	mov.b	r1l,@(0x8:16,er7)                 ; 80b8: 6ef90008
	mov.b	r6l,r2l                           ; 80bc: 0cea
	and.b	#0x7,r2l                          ; 80be: ea07
	mov.b	r2l,@(0x9:16,er7)                 ; 80c0: 6efa0009
	mov.w	#0x8,e4                           ; 80c4: 790c0008
	mov.b	r6l,r2l                           ; 80c8: 0cea
	exts.w	r2                               ; 80ca: 17d2
	mov.w	r2,e6                             ; 80cc: 0d2e
	exts.l	er2                              ; 80ce: 17f2
	divxs.w	e4,er2                          ; 80d0: 01d053c2
	mov.b	r1h,r1l                           ; 80d4: 0c19
	extu.w	r1                               ; 80d6: 1751
	add.w	e6,r1                             ; 80d8: 09e1
	add.w	#0x7,r1                           ; 80da: 79110007
	exts.l	er1                              ; 80de: 17f1
	divxs.w	e4,er1                          ; 80e0: 01d053c1
	mov.w	e0,r6                             ; 80e4: 0d86
	mov.b	#0x80,r1h                         ; 80e6: f180
	mov.b	r1h,@SSER:16                      ; 80e8: 6a81f0e3
	bclr	#0x0,@PDR1:8                       ; 80ec: 7fd47200
	extu.w	r2                               ; 80f0: 1752
	mov.w	r2,e5                             ; 80f2: 0d2d
	mov.w	r2,e0                             ; 80f4: 0d28
	extu.w	r1                               ; 80f6: 1751
	mov.w	r1,e2                             ; 80f8: 0d1a
	dec.w	#1,r1                             ; 80fa: 1b51
	mov.w	r1,e3                             ; 80fc: 0d1b
	mov.b	@(0x8:16,er7),r1l                 ; 80fe: 6e790008
	extu.w	r1                               ; 8102: 1751
	shll.w	r1                               ; 8104: 1011
	mov.w	r1,r4                             ; 8106: 0d14
	mov.b	@(0x9:16,er7),r2l                 ; 8108: 6e7a0009
	extu.w	r2                               ; 810c: 1752
	mov.w	r2,e6                             ; 810e: 0d2e
	sub.w	r2,e4                             ; 8110: 192c
	mov.w	e4,e1                             ; 8112: 0dc9
	jmp	@loc_82ce:24                        ; 8114: 5a0082ce
loc_8118:
	mov.w	e0,r0                             ; 8118: 0d80
	mov.b	r0l,r5h                           ; 811a: 0c85
	mov.b	@er7,r5l                          ; 811c: 687d
	bclr	#0x1,@PDR1:8                       ; 811e: 7fd47210
loc_8122:
	mov.b	@SSSR:16,r0l                      ; 8122: 6a08f0e4
	bld	#0x2,r0l                            ; 8126: 7728
	bcc	loc_8122:8                          ; 8128: 44f8
	mov.b	r5l,r0l                           ; 812a: 0cd8
	mov.b	#0x10,r1l                         ; 812c: f910
	sub.b	r0h,r0h                           ; 812e: 1800
	divxu.b	r1l,r0                          ; 8130: 5190
	and.b	#0x7,r0l                          ; 8132: e807
	add.b	#0x10,r0l                         ; 8134: 8810
	mov.b	r0l,@SSTDR:16                     ; 8136: 6a88f0eb
loc_813a:
	mov.b	@SSSR:16,r0l                      ; 813a: 6a08f0e4
	bld	#0x2,r0l                            ; 813e: 7728
	bcc	loc_813a:8                          ; 8140: 44f8
	and.b	#0xf,r5l                          ; 8142: ed0f
	mov.b	r5l,@SSTDR:16                     ; 8144: 6a8df0eb
	cmp.b	#0x7,r5h                          ; 8148: a507
	bls	loc_814e:8                          ; 814a: 4302
	sleep                                   ; 814c: 0180
loc_814e:
	mov.b	@SSSR:16,r0l                      ; 814e: 6a08f0e4
	bld	#0x2,r0l                            ; 8152: 7728
	bcc	loc_814e:8                          ; 8154: 44f8
	mov.b	@0xf7e4:16,r0l                    ; 8156: 6a08f7e4
	mov.b	#0x8,r0h                          ; 815a: f008
	mulxu.b	r0h,r0                          ; 815c: 5000
	add.b	r5h,r0l                           ; 815e: 0858
	add.b	#0xb0,r0l                         ; 8160: 88b0
	mov.b	r0l,@SSTDR:16                     ; 8162: 6a88f0eb
loc_8166:
	mov.b	@SSSR:16,r0l                      ; 8166: 6a08f0e4
	bld	#0x3,r0l                            ; 816a: 7738
	bcc	loc_8166:8                          ; 816c: 44f8
	bset	#0x1,@PDR1:8                       ; 816e: 7fd47010
	sub.w	e4,e4                             ; 8172: 19cc
	jmp	@loc_82b8:24                        ; 8174: 5a0082b8
loc_8178:
	mov.w	r6,r3                             ; 8178: 0d63
	inc.w	#1,r3                             ; 817a: 0b53
	mov.b	@(0x9:16,er7),r0l                 ; 817c: 6e780009
	bne	loc_81be:8                          ; 8180: 463c
	mov.b	@er6,r0l                          ; 8182: 6868
	extu.w	r0                               ; 8184: 1750
	mov.w	e6,r1                             ; 8186: 0de1
loc_8188:
	dec.b	r1l                               ; 8188: 1a09
	bmi	loc_8190:8                          ; 818a: 4b04
	shll.w	r0                               ; 818c: 1010
	bra	loc_8188:8                          ; 818e: 40f8
loc_8190:
	mov.w	r0,r5                             ; 8190: 0d05
loc_8192:
	mov.b	@SSSR:16,r0l                      ; 8192: 6a08f0e4
	bld	#0x2,r0l                            ; 8196: 7728
	bcc	loc_8192:8                          ; 8198: 44f8
	mov.b	r5l,@SSTDR:16                     ; 819a: 6a8df0eb
	mov.b	@er3,r0l                          ; 819e: 6838
	extu.w	r0                               ; 81a0: 1750
	mov.w	e6,r1                             ; 81a2: 0de1
loc_81a4:
	dec.b	r1l                               ; 81a4: 1a09
	bmi	loc_81ac:8                          ; 81a6: 4b04
	shll.w	r0                               ; 81a8: 1010
	bra	loc_81a4:8                          ; 81aa: 40f8
loc_81ac:
	mov.w	r0,r5                             ; 81ac: 0d05
loc_81ae:
	mov.b	@SSSR:16,r0l                      ; 81ae: 6a08f0e4
	bld	#0x2,r0l                            ; 81b2: 7728
	bcc	loc_81ae:8                          ; 81b4: 44f8
	mov.b	r5l,@SSTDR:16                     ; 81b6: 6a8df0eb
	jmp	@loc_82b4:24                        ; 81ba: 5a0082b4
loc_81be:
	mov.w	e3,r0                             ; 81be: 0db0
	cmp.w	r0,e0                             ; 81c0: 1d08
	bne	loc_820a:8                          ; 81c2: 4646
	mov.w	r6,r5                             ; 81c4: 0d65
	sub.w	r4,r5                             ; 81c6: 1945
	mov.b	@er5,r0l                          ; 81c8: 6858
	extu.w	r0                               ; 81ca: 1750
	mov.w	e1,r1                             ; 81cc: 0d91
loc_81ce:
	dec.b	r1l                               ; 81ce: 1a09
	bmi	loc_81d6:8                          ; 81d0: 4b04
	shar.w	r0                               ; 81d2: 1190
	bra	loc_81ce:8                          ; 81d4: 40f8
loc_81d6:
	mov.w	r0,r5                             ; 81d6: 0d05
loc_81d8:
	mov.b	@SSSR:16,r0l                      ; 81d8: 6a08f0e4
	bld	#0x2,r0l                            ; 81dc: 7728
	bcc	loc_81d8:8                          ; 81de: 44f8
	mov.b	r5l,@SSTDR:16                     ; 81e0: 6a8df0eb
	mov.w	r6,r5                             ; 81e4: 0d65
	sub.w	r4,r5                             ; 81e6: 1945
	mov.b	@(0x1:16,er5),r0l                 ; 81e8: 6e580001
	extu.w	r0                               ; 81ec: 1750
	mov.w	e1,r1                             ; 81ee: 0d91
loc_81f0:
	dec.b	r1l                               ; 81f0: 1a09
	bmi	loc_81f8:8                          ; 81f2: 4b04
	shar.w	r0                               ; 81f4: 1190
	bra	loc_81f0:8                          ; 81f6: 40f8
loc_81f8:
	mov.w	r0,r5                             ; 81f8: 0d05
loc_81fa:
	mov.b	@SSSR:16,r0l                      ; 81fa: 6a08f0e4
	bld	#0x2,r0l                            ; 81fe: 7728
	bcc	loc_81fa:8                          ; 8200: 44f8
	mov.b	r5l,@SSTDR:16                     ; 8202: 6a8df0eb
	jmp	@loc_82b4:24                        ; 8206: 5a0082b4
loc_820a:
	mov.w	e5,r0                             ; 820a: 0dd0
	cmp.w	r0,e0                             ; 820c: 1d08
	beq	loc_827c:8                          ; 820e: 476c
	mov.w	#0x8,r0                           ; 8210: 79000008
	sub.w	e6,r0                             ; 8214: 19e0
	mov.w	r6,r5                             ; 8216: 0d65
	sub.w	r4,r5                             ; 8218: 1945
	mov.b	@er5,r1l                          ; 821a: 6859
	extu.w	r1                               ; 821c: 1751
loc_821e:
	dec.b	r0l                               ; 821e: 1a08
	bmi	loc_8226:8                          ; 8220: 4b04
	shar.w	r1                               ; 8222: 1191
	bra	loc_821e:8                          ; 8224: 40f8
loc_8226:
	mov.b	@er6,r0l                          ; 8226: 6868
	extu.w	r0                               ; 8228: 1750
	mov.w	e6,r2                             ; 822a: 0de2
loc_822c:
	dec.b	r2l                               ; 822c: 1a0a
	bmi	loc_8234:8                          ; 822e: 4b04
	shll.w	r0                               ; 8230: 1010
	bra	loc_822c:8                          ; 8232: 40f8
loc_8234:
	or.w	r0,r1                              ; 8234: 6401
	mov.w	r1,r5                             ; 8236: 0d15
loc_8238:
	mov.b	@SSSR:16,r0l                      ; 8238: 6a08f0e4
	bld	#0x2,r0l                            ; 823c: 7728
	bcc	loc_8238:8                          ; 823e: 44f8
	mov.b	r5l,@SSTDR:16                     ; 8240: 6a8df0eb
	mov.w	#0x8,r0                           ; 8244: 79000008
	sub.w	e6,r0                             ; 8248: 19e0
	mov.w	r6,r5                             ; 824a: 0d65
	sub.w	r4,r5                             ; 824c: 1945
	mov.b	@(0x1:16,er5),r1l                 ; 824e: 6e590001
	extu.w	r1                               ; 8252: 1751
loc_8254:
	dec.b	r0l                               ; 8254: 1a08
	bmi	loc_825c:8                          ; 8256: 4b04
	shar.w	r1                               ; 8258: 1191
	bra	loc_8254:8                          ; 825a: 40f8
loc_825c:
	mov.b	@er3,r0l                          ; 825c: 6838
	extu.w	r0                               ; 825e: 1750
	mov.w	e6,r2                             ; 8260: 0de2
loc_8262:
	dec.b	r2l                               ; 8262: 1a0a
	bmi	loc_826a:8                          ; 8264: 4b04
	shll.w	r0                               ; 8266: 1010
	bra	loc_8262:8                          ; 8268: 40f8
loc_826a:
	or.w	r0,r1                              ; 826a: 6401
	mov.w	r1,r5                             ; 826c: 0d15
loc_826e:
	mov.b	@SSSR:16,r0l                      ; 826e: 6a08f0e4
	bld	#0x2,r0l                            ; 8272: 7728
	bcc	loc_826e:8                          ; 8274: 44f8
	mov.b	r5l,@SSTDR:16                     ; 8276: 6a8df0eb
	bra	loc_82b4:8                          ; 827a: 4038
loc_827c:
	mov.b	@er6,r0l                          ; 827c: 6868
	extu.w	r0                               ; 827e: 1750
	mov.w	e6,r1                             ; 8280: 0de1
loc_8282:
	dec.b	r1l                               ; 8282: 1a09
	bmi	loc_828a:8                          ; 8284: 4b04
	shll.w	r0                               ; 8286: 1010
	bra	loc_8282:8                          ; 8288: 40f8
loc_828a:
	mov.w	r0,r5                             ; 828a: 0d05
loc_828c:
	mov.b	@SSSR:16,r0l                      ; 828c: 6a08f0e4
	bld	#0x2,r0l                            ; 8290: 7728
	bcc	loc_828c:8                          ; 8292: 44f8
	mov.b	r5l,@SSTDR:16                     ; 8294: 6a8df0eb
	mov.b	@er3,r0l                          ; 8298: 6838
	extu.w	r0                               ; 829a: 1750
	mov.w	e6,r1                             ; 829c: 0de1
loc_829e:
	dec.b	r1l                               ; 829e: 1a09
	bmi	loc_82a6:8                          ; 82a0: 4b04
	shll.w	r0                               ; 82a2: 1010
	bra	loc_829e:8                          ; 82a4: 40f8
loc_82a6:
	mov.w	r0,r5                             ; 82a6: 0d05
loc_82a8:
	mov.b	@SSSR:16,r0l                      ; 82a8: 6a08f0e4
	bld	#0x2,r0l                            ; 82ac: 7728
	bcc	loc_82a8:8                          ; 82ae: 44f8
	mov.b	r5l,@SSTDR:16                     ; 82b0: 6a8df0eb
loc_82b4:
	inc.w	#1,e4                             ; 82b4: 0b5c
	inc.w	#2,r6                             ; 82b6: 0bd6
loc_82b8:
	mov.b	@(0x8:16,er7),r0l                 ; 82b8: 6e780008
	extu.w	r0                               ; 82bc: 1750
	cmp.w	r0,e4                             ; 82be: 1d0c
	blt	loc_8178:16                         ; 82c0: 58d0feb4
loc_82c4:
	mov.b	@SSSR:16,r0l                      ; 82c4: 6a08f0e4
	bld	#0x3,r0l                            ; 82c8: 7738
	bcc	loc_82c4:8                          ; 82ca: 44f8
	inc.w	#1,e0                             ; 82cc: 0b58
loc_82ce:
	mov.w	e2,r0                             ; 82ce: 0da0
	cmp.w	r0,e0                             ; 82d0: 1d08
	blt	loc_8118:16                         ; 82d2: 58d0fe42
loc_82d6:
	mov.b	@SSSR:16,r0l                      ; 82d6: 6a08f0e4
	bld	#0x3,r0l                            ; 82da: 7738
	bcc	loc_82d6:8                          ; 82dc: 44f8
	bset	#0x0,@PDR1:8                       ; 82de: 7fd47000
	add.w	#0xa,r7                           ; 82e2: 7917000a
	jmp	@RegRestore_er2_er6:24              ; 82e6: 5a00ba62
