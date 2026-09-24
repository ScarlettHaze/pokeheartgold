	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_694c

func_694c:
	mov.w	@0xf7e0:16,r0                     ; 694c: 6b00f7e0
	mov.w	#func_7882,r1                     ; 6950: 79017882
	cmp.w	r1,r0                             ; 6954: 1d10
	bne	loc_69b6:8                          ; 6956: 465e
	mov.b	@0xf7b6:16,r0l                    ; 6958: 6a08f7b6
	bld	#0x1,r0l                            ; 695c: 7718
	bcs	loc_697e:8                          ; 695e: 451e
	mov.b	#0x40,r0l                         ; 6960: f840
	jsr	@func_7ffc:24                       ; 6962: 5e007ffc
	sub.b	r0l,r0l                           ; 6966: 1888
	jsr	@func_71a4:24                       ; 6968: 5e0071a4
	jsr	@func_7cac:24                       ; 696c: 5e007cac
	mov.b	#0x40,r0l                         ; 6970: f840
	jsr	@func_7ffc:24                       ; 6972: 5e007ffc
	mov.b	#0x1,r0l                          ; 6976: f801
	jsr	@func_71a4:24                       ; 6978: 5e0071a4
	bra	loc_69a6:8                          ; 697c: 4028
loc_697e:
	mov.b	#0x40,r0l                         ; 697e: f840
	jsr	@func_7ffc:24                       ; 6980: 5e007ffc
	sub.b	r0l,r0l                           ; 6984: 1888
	jsr	@func_722c:24                       ; 6986: 5e00722c
	sub.w	r0,r0                             ; 698a: 1900
	jsr	@func_21fe:24                       ; 698c: 5e0021fe
	jsr	@func_7cac:24                       ; 6990: 5e007cac
	mov.b	#0x40,r0l                         ; 6994: f840
	jsr	@func_7ffc:24                       ; 6996: 5e007ffc
	mov.b	#0x1,r0l                          ; 699a: f801
	jsr	@func_722c:24                       ; 699c: 5e00722c
	sub.w	r0,r0                             ; 69a0: 1900
	jsr	@func_21fe:24                       ; 69a2: 5e0021fe
loc_69a6:
	jsr	@func_7cac:24                       ; 69a6: 5e007cac
	ldc	#0x80,ccr                           ; 69aa: 0780
	jsr	@func_0880:24                       ; 69ac: 5e000880
	mov.w	#func_08d6,r0                     ; 69b0: 790008d6
	bsr	func_693a:8                         ; 69b4: 5584
loc_69b6:
	rts                                     ; 69b6: 5470
