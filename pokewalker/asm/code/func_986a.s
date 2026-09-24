	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_986a
	.global loc_98a8

func_986a:
	mov.w	r7,r6                             ; 986a: 0d76
	mov.w	r6,r0                             ; 986c: 0d60
	jsr	@func_8aca:24                       ; 986e: 5e008aca
	mov.w	@er6,r0                           ; 9872: 6960
	beq	loc_988a:8                          ; 9874: 4714
	mov.w	r0,@0xf7d0:16                     ; 9876: 6b80f7d0
	mov.w	@(0x2:16,er6),r6                  ; 987a: 6f660002
	mov.w	r6,@0xf7d2:16                     ; 987e: 6b86f7d2
	jsr	@func_8cf4:24                       ; 9882: 5e008cf4
	mov.b	#0xa,r0l                          ; 9886: f80a
	bra	loc_98b6:8                          ; 9888: 402c
loc_988a:
	mov.w	@(0x2:16,er6),r0                  ; 988a: 6f600002
	beq	loc_98a6:8                          ; 988e: 4716
	mov.w	@er6,r0                           ; 9890: 6960
	mov.w	r0,@0xf7d0:16                     ; 9892: 6b80f7d0
	mov.w	@(0x2:16,er6),r6                  ; 9896: 6f660002
	mov.w	r6,@0xf7d2:16                     ; 989a: 6b86f7d2
	jsr	@func_9108:24                       ; 989e: 5e009108
	mov.b	#0xb,r0l                          ; 98a2: f80b
	bra	loc_98b6:8                          ; 98a4: 4010
loc_98a6:
	mov.b	#0x3,r0l                          ; 98a6: f803
loc_98a8:
	mov.b	r0l,@0xf7ce:16                    ; 98a8: 6a88f7ce
	mov.b	#0x4,r0l                          ; 98ac: f804
	bra	loc_9928:8                          ; 98ae: 4078
