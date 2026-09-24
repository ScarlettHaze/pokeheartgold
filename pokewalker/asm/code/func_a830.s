	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_a830

func_a830:
	sub.w	#0x6,r7                           ; a830: 79370006
	mov.w	r7,r6                             ; a834: 0d76
	jsr	@func_273c:24                       ; a836: 5e00273c
	mov.b	r0l,r0l                           ; a83a: 0c88
	bne	loc_a844:8                          ; a83c: 4606
	sub.b	r0l,r0l                           ; a83e: 1888
	jmp	@loc_a8f2:24                        ; a840: 5a00a8f2
loc_a844:
	mov.w	r6,r5                             ; a844: 0d65
	mov.b	#0x1,r0h                          ; a846: f001
	mov.w	r5,e0                             ; a848: 0d58
	mov.b	#0x14,r0l                         ; a84a: f814
	jsr	@func_26a0:24                       ; a84c: 5e0026a0
	mov.b	@er6,r0l                          ; a850: 6868
	and.b	#0xe0,r0l                         ; a852: e8e0
	mov.b	r0l,@er6                          ; a854: 68e8
	bset	#0x3,@er6                          ; a856: 7d607030
	mov.b	@er6,r0h                          ; a85a: 6860
	mov.b	#0x14,r0l                         ; a85c: f814
	jsr	@func_270a:24                       ; a85e: 5e00270a
	mov.w	#0xa,r0                           ; a862: 7900000a
	jsr	@func_270a:24                       ; a866: 5e00270a
	mov.w	#0x1f4,e6                         ; a86a: 790e01f4
	bra	loc_a876:8                          ; a86e: 4006
loc_a870:
	jsr	@func_25ac:24                       ; a870: 5e0025ac
	dec.w	#1,e6                             ; a874: 1b5e
loc_a876:
	mov.w	e6,e6                             ; a876: 0dee
	bne	loc_a870:8                          ; a878: 46f6
	mov.w	r5,e0                             ; a87a: 0d58
	mov.w	#0x602,r0                         ; a87c: 79000602
	jsr	@func_26a0:24                       ; a880: 5e0026a0
	mov.b	@(0x1:16,er6),r5l                 ; a884: 6e6d0001
	bclr	#0x0,@PDR1:8                       ; a888: 7fd47200
loc_a88c:
	mov.b	@SSSR:16,r0l                      ; a88c: 6a08f0e4
	bld	#0x2,r0l                            ; a890: 7728
	bcc	loc_a88c:8                          ; a892: 44f8
	mov.b	r5l,@SSTDR:16                     ; a894: 6a8df0eb
loc_a898:
	mov.b	@SSSR:16,r0l                      ; a898: 6a08f0e4
	bld	#0x3,r0l                            ; a89c: 7738
	bcc	loc_a898:8                          ; a89e: 44f8
	bset	#0x0,@PDR1:8                       ; a8a0: 7fd47000
	jsr	@func_25ac:24                       ; a8a4: 5e0025ac
	mov.b	@(0x3:16,er6),r5l                 ; a8a8: 6e6d0003
	bclr	#0x0,@PDR1:8                       ; a8ac: 7fd47200
loc_a8b0:
	mov.b	@SSSR:16,r0l                      ; a8b0: 6a08f0e4
	bld	#0x2,r0l                            ; a8b4: 7728
	bcc	loc_a8b0:8                          ; a8b6: 44f8
	mov.b	r5l,@SSTDR:16                     ; a8b8: 6a8df0eb
loc_a8bc:
	mov.b	@SSSR:16,r0l                      ; a8bc: 6a08f0e4
	bld	#0x3,r0l                            ; a8c0: 7738
	bcc	loc_a8bc:8                          ; a8c2: 44f8
	bset	#0x0,@PDR1:8                       ; a8c4: 7fd47000
	jsr	@func_25ac:24                       ; a8c8: 5e0025ac
	mov.b	@(0x5:16,er6),r5l                 ; a8cc: 6e6d0005
	bclr	#0x0,@PDR1:8                       ; a8d0: 7fd47200
loc_a8d4:
	mov.b	@SSSR:16,r0l                      ; a8d4: 6a08f0e4
	bld	#0x2,r0l                            ; a8d8: 7728
	bcc	loc_a8d4:8                          ; a8da: 44f8
	mov.b	r5l,@SSTDR:16                     ; a8dc: 6a8df0eb
loc_a8e0:
	mov.b	@SSSR:16,r0l                      ; a8e0: 6a08f0e4
	bld	#0x3,r0l                            ; a8e4: 7738
	bcc	loc_a8e0:8                          ; a8e6: 44f8
	bset	#0x0,@PDR1:8                       ; a8e8: 7fd47000
	jsr	@func_25ac:24                       ; a8ec: 5e0025ac
	mov.b	#0x1,r0l                          ; a8f0: f801
loc_a8f2:
	add.w	#0x6,r7                           ; a8f2: 79170006
	rts                                     ; a8f6: 5470
