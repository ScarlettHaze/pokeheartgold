	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_945a

func_945a:
	mov.l	er2,@-er7                         ; 945a: 01006df2
	mov.l	er3,@-er7                         ; 945e: 01006df3
	mov.l	er4,@-er7                         ; 9462: 01006df4
	mov.l	er5,@-er7                         ; 9466: 01006df5
	mov.l	er6,@-er7                         ; 946a: 01006df6
	mov.w	#0xf7b5,r0                        ; 946e: 7900f7b5
	bclr	#0x7,@er0                          ; 9472: 7d007270
	sub.w	r6,r6                             ; 9476: 1966
	sub.w	r0,r0                             ; 9478: 1900
loc_947a:
	mov.w	r0,@(0xf7e6:16,er6)               ; 947a: 6fe0f7e6
	inc.w	#2,r6                             ; 947e: 0bd6
	mov.w	r0,@(0xf7e6:16,er6)               ; 9480: 6fe0f7e6
	inc.w	#2,r6                             ; 9484: 0bd6
	cmp.w	#0x40,r6                          ; 9486: 79260040
	bcs	loc_947a:8                          ; 948a: 45ee
	mov.w	#0xf826,r0                        ; 948c: 7900f826
	jsr	@func_60da:24                       ; 9490: 5e0060da
	mov.w	#0xf866,r0                        ; 9494: 7900f866
	jsr	@func_60da:24                       ; 9498: 5e0060da
	mov.w	#0xf8a6,r0                        ; 949c: 7900f8a6
	jsr	@func_60da:24                       ; 94a0: 5e0060da
	mov.w	#0xf7e6,r0                        ; 94a4: 7900f7e6
	jsr	@func_9698:24                       ; 94a8: 5e009698
	mov.l	er0,er6                           ; 94ac: 0f86
	mov.b	@0xf7b1:16,r1l                    ; 94ae: 6a09f7b1
	cmp.b	#0x17,r1l                         ; 94b2: a917
	bne	loc_9560:16                         ; 94b4: 586000a8
	mov.b	@0xf7d0:16,r0l                    ; 94b8: 6a08f7d0
	mov.b	@0xf7d8:16,r0h                    ; 94bc: 6a00f7d8
	cmp.b	r0h,r0l                           ; 94c0: 1c08
	bcc	loc_952e:8                          ; 94c2: 446a
	mov.l	er6,er6                           ; 94c4: 0fe6
	beq	loc_9560:16                         ; 94c6: 58700096
	inc	r0l                                 ; 94ca: 0a08
	mov.b	r0l,@0xf7d0:16                    ; 94cc: 6a88f7d0
	mov.w	@0xf7d2:16,r0                     ; 94d0: 6b00f7d2
	mov.w	@0xf7da:16,e0                     ; 94d4: 6b08f7da
	cmp.w	e0,r0                             ; 94d8: 1d80
	bcc	loc_94e2:8                          ; 94da: 4406
	mov.b	#0x18,r0l                         ; 94dc: f818
	mov.b	r0l,@0xf7b1:16                    ; 94de: 6a88f7b1
loc_94e2:
	mov.w	@0xf7d4:16,r0                     ; 94e2: 6b00f7d4
	cmp.w	e0,r0                             ; 94e6: 1d80
	bcc	loc_94f0:8                          ; 94e8: 4406
	mov.b	#0x18,r0l                         ; 94ea: f818
	mov.b	r0l,@0xf7b1:16                    ; 94ec: 6a88f7b1
loc_94f0:
	mov.w	@0xf7d6:16,r0                     ; 94f0: 6b00f7d6
	cmp.w	e0,r0                             ; 94f4: 1d80
	bcc	loc_94fe:8                          ; 94f6: 4406
	mov.b	#0x18,r0l                         ; 94f8: f818
	mov.b	r0l,@0xf7b1:16                    ; 94fa: 6a88f7b1
loc_94fe:
	mov.w	@0xf7d2:16,r0                     ; 94fe: 6b00f7d2
	mov.w	@0xf7dc:16,e0                     ; 9502: 6b08f7dc
	cmp.w	e0,r0                             ; 9506: 1d80
	bls	loc_9510:8                          ; 9508: 4306
	mov.b	#0x18,r0l                         ; 950a: f818
	mov.b	r0l,@0xf7b1:16                    ; 950c: 6a88f7b1
loc_9510:
	mov.w	@0xf7d4:16,r0                     ; 9510: 6b00f7d4
	cmp.w	e0,r0                             ; 9514: 1d80
	bls	loc_951e:8                          ; 9516: 4306
	mov.b	#0x18,r0l                         ; 9518: f818
	mov.b	r0l,@0xf7b1:16                    ; 951a: 6a88f7b1
loc_951e:
	mov.w	@0xf7d6:16,r0                     ; 951e: 6b00f7d6
	cmp.w	e0,r0                             ; 9522: 1d80
	bls	loc_9560:8                          ; 9524: 433a
	mov.b	#0x18,r0l                         ; 9526: f818
	mov.b	r0l,@0xf7b1:16                    ; 9528: 6a88f7b1
	bra	loc_9560:8                          ; 952c: 4032
loc_952e:
	mov.b	@0xf7d1:16,r0l                    ; 952e: 6a08f7d1
	mov.b	@0xf7d9:16,r0h                    ; 9532: 6a00f7d9
	cmp.b	r0h,r0l                           ; 9536: 1c08
	bcc	loc_9560:8                          ; 9538: 4426
	mov.w	@0xf7de:16,r1                     ; 953a: 6b01f7de
	mov.w	@0xf7d2:16,r0                     ; 953e: 6b00f7d2
	cmp.w	r1,r0                             ; 9542: 1d10
	bcc	loc_9560:8                          ; 9544: 441a
	mov.w	@0xf7d4:16,r0                     ; 9546: 6b00f7d4
	cmp.w	r1,r0                             ; 954a: 1d10
	bcc	loc_9560:8                          ; 954c: 4412
	mov.w	@0xf7d6:16,r0                     ; 954e: 6b00f7d6
	cmp.w	r1,r0                             ; 9552: 1d10
	bcc	loc_9560:8                          ; 9554: 440a
	mov.b	@0xf7d1:16,r0l                    ; 9556: 6a08f7d1
	inc	r0l                                 ; 955a: 0a08
	mov.b	r0l,@0xf7d1:16                    ; 955c: 6a88f7d1
loc_9560:
	mov.l	er6,er6                           ; 9560: 0fe6
	bne	loc_9570:8                          ; 9562: 460c
	sub.l	er0,er0                           ; 9564: 1a80
	mov.l	er0,@0xf8ea:16                    ; 9566: 01006b80f8ea
	jmp	@loc_9682:24                        ; 956c: 5a009682
loc_9570:
	mov.w	#0xf7b5,r0                        ; 9570: 7900f7b5
	bset	#0x7,@er0                          ; 9574: 7d007070
	mov.l	@0xf8ea:16,er0                    ; 9578: 01006b00f8ea
	beq	loc_9644:16                         ; 957e: 587000c2
	mov.l	@0xf8e6:16,er1                    ; 9582: 01006b01f8e6
	add.l	er0,er1                           ; 9588: 0a81
	mov.l	er1,@0xf8e6:16                    ; 958a: 01006b81f8e6
	sub.l	er0,er0                           ; 9590: 1a80
	mov.l	er0,@0xf8ea:16                    ; 9592: 01006b80f8ea
	mov.l	er1,er0                           ; 9598: 0f90
	shar.l	er0                              ; 959a: 11b0
	mov.b	r0h,@0xf7b2:16                    ; 959c: 6a80f7b2
	mov.l	er1,er0                           ; 95a0: 0f90
	and.l	#0x1ff,er0                        ; 95a2: 7a60000001ff
	mov.l	er0,@0xf8e6:16                    ; 95a8: 01006b80f8e6
	mov.b	@0xf7b2:16,r0l                    ; 95ae: 6a08f7b2
	extu.w	r0                               ; 95b2: 1750
	mov.w	@0xf7a0:16,e0                     ; 95b4: 6b08f7a0
	add.w	r0,e0                             ; 95b8: 0908
	mov.w	e0,@0xf7a0:16                     ; 95ba: 6b88f7a0
	mov.w	@0xf7a0:16,r0                     ; 95be: 6b00f7a0
	cmp.w	#0x270f,r0                        ; 95c2: 7920270f
	bls	loc_95d0:8                          ; 95c6: 4308
	mov.w	#0x270f,r0                        ; 95c8: 7900270f
	mov.w	r0,@0xf7a0:16                     ; 95cc: 6b80f7a0
loc_95d0:
	sub.l	er0,er0                           ; 95d0: 1a80
	mov.b	@0xf7b2:16,r0l                    ; 95d2: 6a08f7b2
	mov.l	@0xf79c:16,er1                    ; 95d6: 01006b01f79c
	add.l	er0,er1                           ; 95dc: 0a81
	mov.l	er1,@0xf79c:16                    ; 95de: 01006b81f79c
	mov.l	@0xf79c:16,er0                    ; 95e4: 01006b00f79c
	cmp.l	#0x1869f,er0                      ; 95ea: 7a200001869f
	bls	loc_95fe:8                          ; 95f0: 430c
	mov.l	#0x1869f,er0                      ; 95f2: 7a000001869f
	mov.l	er0,@0xf79c:16                    ; 95f8: 01006b80f79c
loc_95fe:
	sub.l	er0,er0                           ; 95fe: 1a80
	mov.b	@0xf7b2:16,r0l                    ; 9600: 6a08f7b2
	mov.l	@0xf780:16,er1                    ; 9604: 01006b01f780
	add.l	er1,er0                           ; 960a: 0a90
	jsr	@func_a32e:24                       ; 960c: 5e00a32e
	mov.b	@0xf7b2:16,r0l                    ; 9610: 6a08f7b2
	mov.b	@0xf792:16,r0h                    ; 9614: 6a00f792
	add.b	r0l,r0h                           ; 9618: 0880
	mov.b	r0h,@0xf792:16                    ; 961a: 6a80f792
	mov.b	@0xf792:16,r0l                    ; 961e: 6a08f792
	cmp.b	#0x14,r0l                         ; 9622: a814
	bcs	loc_9644:8                          ; 9624: 451e
	mov.b	@0xf792:16,r0l                    ; 9626: 6a08f792
	add.b	#0xec,r0l                         ; 962a: 88ec
	mov.b	r0l,@0xf792:16                    ; 962c: 6a88f792
	mov.w	@0xf78e:16,r0                     ; 9630: 6b00f78e
	inc.w	#1,r0                             ; 9634: 0b50
	cmp.w	#0x270f,r0                        ; 9636: 7920270f
	bls	loc_9640:8                          ; 963a: 4304
	mov.w	#0x270f,r0                        ; 963c: 7900270f
loc_9640:
	mov.w	r0,@0xf78e:16                     ; 9640: 6b80f78e
loc_9644:
	mov.l	@0xf8e6:16,er0                    ; 9644: 01006b00f8e6
	add.l	er6,er0                           ; 964a: 0ae0
	mov.l	er0,@0xf8e6:16                    ; 964c: 01006b80f8e6
	shar.l	er0                              ; 9652: 11b0
	mov.b	r0h,@0xf7b2:16                    ; 9654: 6a80f7b2
	mov.l	@0xf8e6:16,er0                    ; 9658: 01006b00f8e6
	and.l	#0x1ff,er0                        ; 965e: 7a60000001ff
	mov.l	er0,@0xf8e6:16                    ; 9664: 01006b80f8e6
	mov.b	@0xf7b2:16,r0l                    ; 966a: 6a08f7b2
	beq	loc_9676:8                          ; 966e: 4706
	mov.b	#0x1e,r0l                         ; 9670: f81e
	mov.b	r0l,@0xf7b0:16                    ; 9672: 6a88f7b0
loc_9676:
	sub.b	r0l,r0l                           ; 9676: 1888
	mov.b	r0l,@0xf7b3:16                    ; 9678: 6a88f7b3
	mov.b	#0x20,r0l                         ; 967c: f820
	mov.b	r0l,@0xf7b4:16                    ; 967e: 6a88f7b4
loc_9682:
	mov.l	@er7+,er6                         ; 9682: 01006d76
	mov.l	@er7+,er5                         ; 9686: 01006d75
	mov.l	@er7+,er4                         ; 968a: 01006d74
	mov.l	@er7+,er3                         ; 968e: 01006d73
	mov.l	@er7+,er2                         ; 9692: 01006d72
	rts                                     ; 9696: 5470
