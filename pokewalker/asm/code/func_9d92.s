	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_9d92

func_9d92:
	jsr	@func_9c48:24                       ; 9d92: 5e009c48
	sub.b	r0l,r0l                           ; 9d96: 1888
	mov.b	r0l,@0xf7cf:16                    ; 9d98: 6a88f7cf
	mov.b	r0l,@0xf7d0:16                    ; 9d9c: 6a88f7d0
	mov.b	r0l,@0xf7d1:16                    ; 9da0: 6a88f7d1
	mov.b	#0x5,r0h                          ; 9da4: f005
	mov.b	r0h,@0xf7d4:16                    ; 9da6: 6a80f7d4
	mov.b	r0l,r1l                           ; 9daa: 0c89
	extu.w	r1                               ; 9dac: 1751
	mov.b	@(0xbf1a:16,er1),r1l              ; 9dae: 6e19bf1a
	mov.b	r1l,@0xf7d5:16                    ; 9db2: 6a89f7d5
	jsr	@func_25d0:24                       ; 9db6: 5e0025d0
	shll.w	r0                               ; 9dba: 1010
	shll.w	r0                               ; 9dbc: 1010
	shll.w	r0                               ; 9dbe: 1010
	and.b	#0x3,r0h                          ; 9dc0: e003
	mov.b	r0h,@0xf7d3:16                    ; 9dc2: 6a80f7d3
	sub.b	r0l,r0l                           ; 9dc6: 1888
	mov.b	r0l,@0xf7d6:16                    ; 9dc8: 6a88f7d6
	rts                                     ; 9dcc: 5470
