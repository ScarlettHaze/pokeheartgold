	.h8300hn
	.section .text
	.global vectors
	.global func_a328
	.global func_075a
	.global func_3a4a
	.global func_06fa
	.global func_a704
	.global func_a6e2
	.global func_a682
	.global func_a674
	.global func_a65e
	.global func_a322
	.global func_a31c
	.global func_a300
	.global Start

; Interrupt vector table (H8/300H normal mode: 16-bit entries)
vectors:
	.word Start                   ; vector 0
	.word 0xffff                  ; vector 1
	.word 0xffff                  ; vector 2
	.word 0xffff                  ; vector 3
	.word 0xffff                  ; vector 4
	.word 0xffff                  ; vector 5
	.word 0xffff                  ; vector 6
	.word loc_005e                ; vector 7
	.word loc_0060                ; vector 8
	.word loc_0062                ; vector 9
	.word loc_0064                ; vector 10
	.word loc_0066                ; vector 11
	.word 0xffff                  ; vector 12
	.word loc_0068                ; vector 13
	.word 0xffff                  ; vector 14
	.word 0xffff                  ; vector 15
	.word func_a300               ; vector 16
	.word func_a31c               ; vector 17
	.word func_a322               ; vector 18
	.word 0xffff                  ; vector 19
	.word 0xffff                  ; vector 20
	.word loc_006a                ; vector 21
	.word loc_006c                ; vector 22
	.word func_a65e               ; vector 23
	.word func_a674               ; vector 24
	.word func_a682               ; vector 25
	.word func_a6e2               ; vector 26
	.word func_a704               ; vector 27
	.word 0xffff                  ; vector 28
	.word loc_006e                ; vector 29
	.word loc_0070                ; vector 30
	.word loc_0072                ; vector 31
	.word loc_0074                ; vector 32
	.word func_06fa               ; vector 33
	.word loc_0076                ; vector 34
	.word func_3a4a               ; vector 35
	.word 0xffff                  ; vector 36
	.word func_075a               ; vector 37
	.word func_a328               ; vector 38
	.word 0xffff                  ; vector 39

build_date:
	.asciz "Jun 26 2009"
	.word 0x0002

; Default handlers for unused interrupts
loc_005e:
	rte
loc_0060:
	rte
loc_0062:
	rte
loc_0064:
	rte
loc_0066:
	rte
loc_0068:
	rte
loc_006a:
	rte
loc_006c:
	rte
loc_006e:
	rte
loc_0070:
	rte
loc_0072:
	rte
loc_0074:
	rte
loc_0076:
	rte
