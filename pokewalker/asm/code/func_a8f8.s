	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_a8f8

func_a8f8:
	subs	#2,er7                             ; a8f8: 1b87
	jsr	@func_281e:24                       ; a8fa: 5e00281e
	mov.w	r0,@er7                           ; a8fe: 69f0
	mov.b	@er7,r0h                          ; a900: 6870
	bclr	#0x0,@PDR1:8                       ; a902: 7fd47200
loc_a906:
	mov.b	@SSSR:16,r0l                      ; a906: 6a08f0e4
	bld	#0x2,r0l                            ; a90a: 7728
	bcc	loc_a906:8                          ; a90c: 44f8
	mov.b	r0h,@SSTDR:16                     ; a90e: 6a80f0eb
loc_a912:
	mov.b	@SSSR:16,r0l                      ; a912: 6a08f0e4
	bld	#0x3,r0l                            ; a916: 7738
	bcc	loc_a912:8                          ; a918: 44f8
	bset	#0x0,@PDR1:8                       ; a91a: 7fd47000
	jsr	@func_25ac:24                       ; a91e: 5e0025ac
	mov.b	@(0x1:16,er7),r0h                 ; a922: 6e700001
	bclr	#0x0,@PDR1:8                       ; a926: 7fd47200
loc_a92a:
	mov.b	@SSSR:16,r0l                      ; a92a: 6a08f0e4
	bld	#0x2,r0l                            ; a92e: 7728
	bcc	loc_a92a:8                          ; a930: 44f8
	mov.b	r0h,@SSTDR:16                     ; a932: 6a80f0eb
loc_a936:
	mov.b	@SSSR:16,r0l                      ; a936: 6a08f0e4
	bld	#0x3,r0l                            ; a93a: 7738
	bcc	loc_a936:8                          ; a93c: 44f8
	bset	#0x0,@PDR1:8                       ; a93e: 7fd47000
	jsr	@func_25ac:24                       ; a942: 5e0025ac
	mov.w	@er7,r0                           ; a946: 6970
	jsr	@func_27c2:24                       ; a948: 5e0027c2
	mov.w	r0,@er7                           ; a94c: 69f0
	mov.w	r7,r1                             ; a94e: 0d71
	mov.w	#0x2,e1                           ; a950: 79090002
	mov.l	#0x1800080,er0                    ; a954: 7a0001800080
	jsr	@func_50d8:24                       ; a95a: 5e0050d8
	adds	#2,er7                             ; a95e: 0b87
	rts                                     ; a960: 5470
