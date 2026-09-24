	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_918c

func_918c:
	sub.w	#0x6,r7                           ; 918c: 79370006
	mov.w	#func_80ac,r3                     ; 9190: 790380ac
	mov.w	#func_5384,r4                     ; 9194: 79045384
	jsr	@func_247e:24                       ; 9198: 5e00247e
	mov.w	#0x140,r0                         ; 919c: 79000140
	jsr	@func_2488:24                       ; 91a0: 5e002488
	mov.w	r0,r5                             ; 91a4: 0d05
	mov.l	#0x3380280,er6                    ; 91a6: 7a0603380280
	add.w	r6,e6                             ; 91ac: 096e
	mov.w	r0,e0                             ; 91ae: 0d08
	mov.w	e6,r0                             ; 91b0: 0de0
	mov.w	#0x20,r1                          ; 91b2: 79010020
	jsr	@er4                                ; 91b6: 5d40
	mov.w	r5,e0                             ; 91b8: 0d58
	mov.w	#0x1008,r1                        ; 91ba: 79011008
	sub.w	r0,r0                             ; 91be: 1900
	jsr	@er3                                ; 91c0: 5d30
	mov.w	#0xb90,e6                         ; 91c2: 790e0b90
	add.w	r6,e6                             ; 91c6: 096e
	mov.w	e6,r0                             ; 91c8: 0de0
	mov.w	#0x140,r1                         ; 91ca: 79010140
	mov.w	r5,e0                             ; 91ce: 0d58
	jsr	@er4                                ; 91d0: 5d40
	mov.w	r5,e0                             ; 91d2: 0d58
	mov.w	#0x1050,r1                        ; 91d4: 79011050
	mov.w	#0x8,r0                           ; 91d8: 79000008
	jsr	@er3                                ; 91dc: 5d30
	mov.w	#0x1810,e6                        ; 91de: 790e1810
	add.w	r6,e6                             ; 91e2: 096e
	mov.w	e6,r0                             ; 91e4: 0de0
	mov.w	#0xc0,r1                          ; 91e6: 790100c0
	mov.w	r5,e0                             ; 91ea: 0d58
	jsr	@er4                                ; 91ec: 5d40
	mov.w	r5,e0                             ; 91ee: 0d58
	mov.w	#0x1820,r1                        ; 91f0: 79011820
	mov.b	r1h,r0h                           ; 91f4: 0c10
	mov.b	#0x3c,r0l                         ; 91f6: f83c
	jsr	@er3                                ; 91f8: 5d30
	mov.b	@0xf7ac:16,r0l                    ; 91fa: 6a08f7ac
	and.b	#0x1,r0l                          ; 91fe: e801
	extu.w	r0                               ; 9200: 1750
	add.w	#0x3,r0                           ; 9202: 79100003
	mov.w	#0x10,e0                          ; 9206: 79080010
	mulxu.w	e0,er0                          ; 920a: 5280
	mov.w	#0x278,r1                         ; 920c: 79010278
	add.w	r6,r1                             ; 9210: 0961
	add.w	r0,r1                             ; 9212: 0901
	mov.w	r1,r0                             ; 9214: 0d10
	mov.w	#0x10,r1                          ; 9216: 79010010
	mov.w	r5,e0                             ; 921a: 0d58
	jsr	@er4                                ; 921c: 5d40
	mov.b	@0xf7ce:16,r0l                    ; 921e: 6a08f7ce
	extu.w	r0                               ; 9222: 1750
	mov.w	r0,e6                             ; 9224: 0d0e
	exts.l	er0                              ; 9226: 17f0
	mov.w	#0x5,r1                           ; 9228: 79010005
	divxs.w	r1,er0                          ; 922c: 01d05310
	mov.w	e0,r0                             ; 9230: 0d80
	mov.b	#0x8,r0h                          ; 9232: f008
	mulxu.b	r0h,r0                          ; 9234: 5000
	add.b	#0x10,r0l                         ; 9236: 8810
	mov.b	r0l,r2l                           ; 9238: 0c8a
	mov.w	e6,r0                             ; 923a: 0de0
	exts.l	er0                              ; 923c: 17f0
	divxs.w	r1,er0                          ; 923e: 01d05310
	mov.b	#0x10,r0h                         ; 9242: f010
	mulxu.b	r0h,r0                          ; 9244: 5000
	add.b	#0x10,r0l                         ; 9246: 8810
	mov.b	r0l,r0h                           ; 9248: 0c80
	mov.w	r5,e0                             ; 924a: 0d58
	mov.b	#0x8,r1h                          ; 924c: f108
	mov.b	r1h,r1l                           ; 924e: 0c19
	mov.b	r2l,r0l                           ; 9250: 0ca8
	jsr	@er3                                ; 9252: 5d30
	add.w	#0x208,r6                         ; 9254: 79160208
	mov.w	r6,r0                             ; 9258: 0d60
	mov.w	#0x10,r1                          ; 925a: 79010010
	mov.w	r5,e0                             ; 925e: 0d58
	jsr	@er4                                ; 9260: 5d40
	sub.w	r6,r6                             ; 9262: 1966
loc_9264:
	mov.w	#0x1,r0                           ; 9264: 79000001
	mov.b	r6l,r1l                           ; 9268: 0ce9
loc_926a:
	dec.b	r1l                               ; 926a: 1a09
	bmi	loc_9272:8                          ; 926c: 4b04
	shll.w	r0                               ; 926e: 1010
	bra	loc_926a:8                          ; 9270: 40f8
loc_9272:
	mov.w	@0xf7d2:16,e0                     ; 9272: 6b08f7d2
	and.w	r0,e0                             ; 9276: 6608
	beq	loc_928c:8                          ; 9278: 4712
	mov.b	r6l,r0l                           ; 927a: 0ce8
	mov.b	#0x8,r0h                          ; 927c: f008
	mulxu.b	r0h,r0                          ; 927e: 5000
	add.b	#0x10,r0l                         ; 9280: 8810
	mov.w	r5,e0                             ; 9282: 0d58
	mov.b	#0x8,r1h                          ; 9284: f108
	mov.b	r1h,r1l                           ; 9286: 0c19
	mov.b	#0x18,r0h                         ; 9288: f018
	jsr	@er3                                ; 928a: 5d30
loc_928c:
	inc.w	#1,r6                             ; 928c: 0b56
	cmp.w	#0x5,r6                           ; 928e: 79260005
	blt	loc_9264:8                          ; 9292: 4dd0
	sub.w	r6,r6                             ; 9294: 1966
loc_9296:
	mov.w	#0x20,r0                          ; 9296: 79000020
	mov.b	r6l,r1l                           ; 929a: 0ce9
loc_929c:
	dec.b	r1l                               ; 929c: 1a09
	bmi	loc_92a4:8                          ; 929e: 4b04
	shll.w	r0                               ; 92a0: 1010
	bra	loc_929c:8                          ; 92a2: 40f8
loc_92a4:
	mov.w	@0xf7d2:16,e0                     ; 92a4: 6b08f7d2
	and.w	r0,e0                             ; 92a8: 6608
	beq	loc_92be:8                          ; 92aa: 4712
	mov.b	r6l,r0l                           ; 92ac: 0ce8
	mov.b	#0x8,r0h                          ; 92ae: f008
	mulxu.b	r0h,r0                          ; 92b0: 5000
	add.b	#0x10,r0l                         ; 92b2: 8810
	mov.w	r5,e0                             ; 92b4: 0d58
	mov.b	#0x8,r1h                          ; 92b6: f108
	mov.b	r1h,r1l                           ; 92b8: 0c19
	mov.b	#0x28,r0h                         ; 92ba: f028
	jsr	@er3                                ; 92bc: 5d30
loc_92be:
	inc.w	#1,r6                             ; 92be: 0b56
	cmp.w	#0x5,r6                           ; 92c0: 79260005
	blt	loc_9296:8                          ; 92c4: 4dd0
	mov.w	r7,e0                             ; 92c6: 0d78
	mov.b	@0xf7ce:16,r1l                    ; 92c8: 6a09f7ce
	extu.w	r1                               ; 92cc: 1751
	shll.w	r1                               ; 92ce: 1011
	shll.w	r1                               ; 92d0: 1011
	mov.w	#0xcec8,r0                        ; 92d2: 7900cec8
	add.w	r1,r0                             ; 92d6: 0910
	mov.w	#0x4,r1                           ; 92d8: 79010004
	jsr	@er4                                ; 92dc: 5d40
	mov.w	#0x14,r0                          ; 92de: 79000014
	jsr	@func_2488:24                       ; 92e2: 5e002488
	mov.w	r0,r5                             ; 92e6: 0d05
	mov.w	r0,e0                             ; 92e8: 0d08
	mov.w	#0x8f8c,r0                        ; 92ea: 79008f8c
	mov.w	#0x14,r1                          ; 92ee: 79010014
	jsr	@er4                                ; 92f2: 5d40
	sub.w	r6,r6                             ; 92f4: 1966
loc_92f6:
	mov.w	r6,r0                             ; 92f6: 0d60
	shll.w	r0                               ; 92f8: 1010
	add.w	r5,r0                             ; 92fa: 0950
	mov.w	@er7,e0                           ; 92fc: 6978
	mov.w	@er0,r0                           ; 92fe: 6900
	cmp.w	r0,e0                             ; 9300: 1d08
	bne	loc_9312:8                          ; 9302: 460e
	mov.b	r6l,r1l                           ; 9304: 0ce9
	mov.b	#0xf,r1h                          ; 9306: f10f
	mov.w	#0x3000,r0                        ; 9308: 79003000
	jsr	@func_1c26:24                       ; 930c: 5e001c26
	bra	loc_931a:8                          ; 9310: 4008
loc_9312:
	inc.w	#1,r6                             ; 9312: 0b56
	cmp.w	#0xa,r6                           ; 9314: 7926000a
	blt	loc_92f6:8                          ; 9318: 4ddc
loc_931a:
	mov.w	#0x58,r0                          ; 931a: 79000058
	jsr	@func_21fe:24                       ; 931e: 5e0021fe
	add.w	#0x6,r7                           ; 9322: 79170006
	rts                                     ; 9326: 5470
