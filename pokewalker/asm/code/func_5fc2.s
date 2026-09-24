	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_5fc2

func_5fc2:
	mov.w	r2,@-er7                          ; 5fc2: 6df2
	mov.w	r5,@-er7                          ; 5fc4: 6df5
	mov.w	r6,@-er7                          ; 5fc6: 6df6
	subs	#2,er7                             ; 5fc8: 1b87
	mov.b	@0xf7b6:16,r0l                    ; 5fca: 6a08f7b6
	and.b	#0x18,r0l                         ; 5fce: e818
	cmp.b	#0x10,r0l                         ; 5fd0: a810
	bne	loc_60d4:16                         ; 5fd2: 586000fe
	mov.b	@0xf7b1:16,r0l                    ; 5fd6: 6a08f7b1
	bne	loc_60d4:16                         ; 5fda: 586000f6
	mov.b	@0xf7b6:16,r0l                    ; 5fde: 6a08f7b6
	bld	#0x0,r0l                            ; 5fe2: 7708
	bcc	loc_60d4:16                         ; 5fe4: 584000ec
	mov.w	#0xf7b6,r0                        ; 5fe8: 7900f7b6
	bclr	#0x0,@er0                          ; 5fec: 7d007200
	sub.b	r0l,r0l                           ; 5ff0: 1888
	mov.b	r0l,@0xf7ce:16                    ; 5ff2: 6a88f7ce
	mov.b	r0l,@0xf7cf:16                    ; 5ff6: 6a88f7cf
	mov.w	@0xf7a0:16,r0                     ; 5ffa: 6b00f7a0
	mov.w	r0,@er7                           ; 5ffe: 69f0
	jsr	@func_25d0:24                       ; 6000: 5e0025d0
	sub.l	er1,er1                           ; 6004: 1a91
	mov.b	#0x64,r1l                         ; 6006: f964
	jsr	@func_b94e:24                       ; 6008: 5e00b94e
	cmp.b	#0x28,r1l                         ; 600c: a928
	bcc	loc_60d4:16                         ; 600e: 584000c2
	mov.b	@0xf7b6:16,r0l                    ; 6012: 6a08f7b6
	bld	#0x2,r0l                            ; 6016: 7728
	bcs	loc_602c:8                          ; 6018: 4512
	mov.w	@0xf7a0:16,r0                     ; 601a: 6b00f7a0
	cmp.w	#0x12c,r0                         ; 601e: 7920012c
	bcs	loc_60d4:16                         ; 6022: 585000ae
	mov.b	#0x7,r0l                          ; 6026: f807
	jmp	@loc_60ca:24                        ; 6028: 5a0060ca
loc_602c:
	mov.w	@0xf7a2:16,r0                     ; 602c: 6b00f7a2
	cmp.w	#0xe10,r0                         ; 6030: 79200e10
	bcs	loc_60d4:16                         ; 6034: 5850009c
	jsr	@func_247e:24                       ; 6038: 5e00247e
	mov.w	#0xbe,r0                          ; 603c: 790000be
	jsr	@func_2488:24                       ; 6040: 5e002488
	mov.w	r0,r6                             ; 6044: 0d06
	mov.w	r0,e0                             ; 6046: 0d08
	mov.w	#0xbe,r1                          ; 6048: 790100be
	mov.w	#0x8f00,r0                        ; 604c: 79008f00
	jsr	@func_5384:24                       ; 6050: 5e005384
	mov.b	@(0x26:16,er6),r5l                ; 6054: 6e6d0026
	jsr	@func_247e:24                       ; 6058: 5e00247e
	mov.w	#0xc,r0                           ; 605c: 7900000c
	jsr	@func_2488:24                       ; 6060: 5e002488
	mov.w	r0,r6                             ; 6064: 0d06
	mov.w	r0,e0                             ; 6066: 0d08
	mov.w	#0xcebc,r0                        ; 6068: 7900cebc
	mov.w	#0xc,r1                           ; 606c: 7901000c
	jsr	@func_5384:24                       ; 6070: 5e005384
	mov.w	r6,r0                             ; 6074: 0d60
	jsr	@func_1f1c:24                       ; 6076: 5e001f1c
	cmp.b	#0x3,r0l                          ; 607a: a803
	bcc	loc_608e:8                          ; 607c: 4410
	cmp.b	#0x5a,r5l                         ; 607e: ad5a
	bcs	loc_608e:8                          ; 6080: 450c
	mov.w	@er7,r0                           ; 6082: 6970
	cmp.w	#0x1f4,r0                         ; 6084: 792001f4
	bcs	loc_608e:8                          ; 6088: 4504
	mov.b	#0x1,r0l                          ; 608a: f801
	bra	loc_60ca:8                          ; 608c: 403c
loc_608e:
	cmp.b	#0x50,r5l                         ; 608e: ad50
	bcs	loc_609e:8                          ; 6090: 450c
	mov.w	@er7,r0                           ; 6092: 6970
	cmp.w	#0xfa,r0                          ; 6094: 792000fa
	bcs	loc_609e:8                          ; 6098: 4504
	mov.b	#0x2,r0l                          ; 609a: f802
	bra	loc_60ca:8                          ; 609c: 402c
loc_609e:
	mov.w	@er7,r0                           ; 609e: 6970
	cmp.w	#0xc8,r0                          ; 60a0: 792000c8
	bcs	loc_60aa:8                          ; 60a4: 4504
	mov.b	#0x3,r0l                          ; 60a6: f803
	bra	loc_60ca:8                          ; 60a8: 4020
loc_60aa:
	mov.w	@er7,r0                           ; 60aa: 6970
	cmp.w	#0x64,r0                          ; 60ac: 79200064
	bcs	loc_60b6:8                          ; 60b0: 4504
	mov.b	#0x4,r0l                          ; 60b2: f804
	bra	loc_60ca:8                          ; 60b4: 4014
loc_60b6:
	mov.w	@0xf790:16,r0                     ; 60b6: 6b00f790
	cmp.w	#0x3c,r0                          ; 60ba: 7920003c
	bcs	loc_60d4:8                          ; 60be: 4514
	mov.w	@er7,r0                           ; 60c0: 6970
	cmp.w	#0x32,r0                          ; 60c2: 79200032
	bhi	loc_60d4:8                          ; 60c6: 420c
	mov.b	#0x5,r0l                          ; 60c8: f805
loc_60ca:
	mov.b	r0l,@0xf7ce:16                    ; 60ca: 6a88f7ce
	mov.b	#0x30,r0l                         ; 60ce: f830
	mov.b	r0l,@0xf7cf:16                    ; 60d0: 6a88f7cf
loc_60d4:
	adds	#2,er7                             ; 60d4: 0b87
	jmp	@loc_4534:24                        ; 60d6: 5a004534
