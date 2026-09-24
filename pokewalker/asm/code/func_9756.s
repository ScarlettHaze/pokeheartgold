	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_9756

func_9756:
	subs	#4,er7                             ; 9756: 1b97
	mov.b	@0xf7ce:16,r0l                    ; 9758: 6a08f7ce
	beq	loc_9774:8                          ; 975c: 4716
	mov.b	#0xe,r0l                          ; 975e: f80e
	jsr	@func_9c40:24                       ; 9760: 5e009c40
	mov.b	r0l,r0l                           ; 9764: 0c88
	beq	loc_992c:16                         ; 9766: 587001c2
	sub.b	r0l,r0l                           ; 976a: 1888
	mov.b	r0l,@0xf7ce:16                    ; 976c: 6a88f7ce
	jmp	@loc_9928:24                        ; 9770: 5a009928
loc_9774:
	mov.b	#0x2,r0l                          ; 9774: f802
	jsr	@func_9c40:24                       ; 9776: 5e009c40
	mov.b	r0l,r0l                           ; 977a: 0c88
	beq	loc_98be:16                         ; 977c: 5870013e
	mov.w	@0xf78e:16,r1                     ; 9780: 6b01f78e
	mov.w	#D_bf0e,r6                        ; 9784: 7906bf0e
	mov.b	@0xf7aa:16,r0l                    ; 9788: 6a08f7aa
	extu.w	r0                               ; 978c: 1750
	add.w	r6,r0                             ; 978e: 0960
	mov.b	@er0,r0l                          ; 9790: 6808
	extu.w	r0                               ; 9792: 1750
	cmp.w	r0,r1                             ; 9794: 1d01
	bcc	loc_979e:8                          ; 9796: 4406
	mov.b	#0x1,r0l                          ; 9798: f801
	jmp	@loc_98a8:24                        ; 979a: 5a0098a8
loc_979e:
	mov.b	@0xf7aa:16,r0l                    ; 979e: 6a08f7aa
	cmp.b	#0x5,r0l                          ; 97a2: a805
	bhi	loc_98be:16                         ; 97a4: 58200116
	extu.w	r0                               ; 97a8: 1750
	add.w	r0,r0                             ; 97aa: 0900
	mov.w	@(0xbf02:16,er0),r0               ; 97ac: 6f00bf02
	jmp	@er0                                ; 97b0: 5900
