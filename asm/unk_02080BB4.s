#include "constants/items.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/ribbon.h"
#include "constants/party_menu.h"
#include "msgdata/msg/msg_0300.h"
	.include "asm/macros.inc"
	.include "unk_02080BB4.inc"
	.include "global.inc"

	.extern sub_02080BB4
	.extern sub_02080E9C
	.extern sub_02081720
	.extern sub_020817DC

	.text

	thumb_func_start sub_02081C50
sub_02081C50: ; 0x02081C50
	push {r3, r4, r5, lr}
	ldr r1, _02081EAC ; =0x00000C67
	add r4, r0, #0
	ldrb r0, [r4, r1]
	cmp r0, #6
	bhi _02081D0C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02081C68: ; jump table
	.short _02081C76 - _02081C68 - 2 ; case 0
	.short _02081C90 - _02081C68 - 2 ; case 1
	.short _02081CB6 - _02081C68 - 2 ; case 2
	.short _02081CE4 - _02081C68 - 2 ; case 3
	.short _02081DDC - _02081C68 - 2 ; case 4
	.short _02081DF0 - _02081C68 - 2 ; case 5
	.short _02081E54 - _02081C68 - 2 ; case 6
_02081C76:
	sub r0, r1, #3
	ldrb r0, [r4, r0]
	bl TextPrinterCheckActive
	cmp r0, #0
	bne _02081D0C
	add r0, r4, #0
	bl PartyMenu_LevelUpPrintStatsChange
	ldr r0, _02081EAC ; =0x00000C67
	mov r1, #1
	strb r1, [r4, r0]
	b _02081EA8
_02081C90:
	ldr r0, _02081EB0 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	bne _02081CA2
	bl System_GetTouchNew
	cmp r0, #1
	bne _02081D0C
_02081CA2:
	ldr r0, _02081EB4 ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	bl sub_0207DF98
	ldr r0, _02081EAC ; =0x00000C67
	mov r1, #2
	strb r1, [r4, r0]
	b _02081EA8
_02081CB6:
	ldr r0, _02081EB0 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	bne _02081CC8
	bl System_GetTouchNew
	cmp r0, #1
	bne _02081D0C
_02081CC8:
	ldr r0, _02081EB4 ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	bl sub_0207E04C
	ldr r0, _02081EAC ; =0x00000C67
	mov r1, #3
	strb r1, [r4, r0]
	ldr r0, _02081EB8 ; =0x00000654
	mov r1, #0
	ldr r0, [r4, r0]
	str r1, [r0, #0x38]
	b _02081EA8
_02081CE4:
	ldr r0, _02081EB8 ; =0x00000654
	sub r1, r1, #2
	ldr r0, [r4, r0]
	ldrb r1, [r4, r1]
	ldr r0, [r0]
	bl Party_GetMonByIndex
	ldr r1, _02081EB8 ; =0x00000654
	add r5, r0, #0
	ldr r2, [r4, r1]
	add r1, r2, #0
	add r1, #0x38
	add r2, #0x2a
	bl MonTryLearnMoveOnLevelUp
	cmp r0, #0
	beq _02081D16
	ldr r1, _02081EBC ; =0x0000FFFE
	cmp r0, r1
	bne _02081D0E
_02081D0C:
	b _02081EA8
_02081D0E:
	add r1, r1, #1
	cmp r0, r1
	beq _02081D1E
	b _02081D84
_02081D16:
	ldr r0, _02081EAC ; =0x00000C67
	mov r1, #6
	strb r1, [r4, r0]
	b _02081EA8
_02081D1E:
	add r0, r5, #0
	bl Mon_GetBoxMon
	add r2, r0, #0
	ldr r0, _02081EC0 ; =0x000007C4
	mov r1, #0
	ldr r0, [r4, r0]
	bl BufferBoxMonNickname
	ldr r2, _02081EB8 ; =0x00000654
	ldr r0, _02081EC0 ; =0x000007C4
	ldr r2, [r4, r2]
	ldr r0, [r4, r0]
	ldrh r2, [r2, #0x2a]
	mov r1, #1
	bl BufferMoveName
	mov r0, #0x1f
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #0x35
	bl NewString_ReadMsgData
	add r5, r0, #0
	ldr r1, _02081EC0 ; =0x000007C4
	add r2, r5, #0
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	bl StringExpandPlaceholders
	add r0, r5, #0
	bl String_Delete
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	mov r2, #0
	bl PartyMenu_PrintMessageOnWindow34
	ldr r0, _02081EC4 ; =sub_02081F8C
	ldr r1, _02081EC8 ; =0x00000C58
	ldr r2, _02081ECC ; =sub_02081FE0
	str r0, [r4, r1]
	add r0, r1, #4
	str r2, [r4, r0]
	mov r0, #0x1a
	add r1, #0xa
	strb r0, [r4, r1]
	mov r0, #0x18
	pop {r3, r4, r5, pc}
_02081D84:
	add r0, r5, #0
	bl Mon_GetBoxMon
	add r2, r0, #0
	ldr r0, _02081EC0 ; =0x000007C4
	mov r1, #0
	ldr r0, [r4, r0]
	bl BufferBoxMonNickname
	ldr r2, _02081EB8 ; =0x00000654
	ldr r0, _02081EC0 ; =0x000007C4
	ldr r2, [r4, r2]
	ldr r0, [r4, r0]
	ldrh r2, [r2, #0x2a]
	mov r1, #1
	bl BufferMoveName
	mov r0, #0x1f
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #0xb2
	bl NewString_ReadMsgData
	add r5, r0, #0
	ldr r1, _02081EC0 ; =0x000007C4
	add r2, r5, #0
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	bl StringExpandPlaceholders
	add r0, r5, #0
	bl String_Delete
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	mov r2, #0
	bl PartyMenu_PrintMessageOnWindow34
	ldr r0, _02081EAC ; =0x00000C67
	mov r1, #4
	strb r1, [r4, r0]
	b _02081EA8
_02081DDC:
	sub r0, r1, #3
	ldrb r0, [r4, r0]
	bl TextPrinterCheckActive
	cmp r0, #0
	bne _02081EA8
	ldr r0, _02081EAC ; =0x00000C67
	mov r1, #3
	strb r1, [r4, r0]
	b _02081EA8
_02081DF0:
	ldr r0, _02081EB8 ; =0x00000654
	sub r1, r1, #2
	ldr r0, [r4, r0]
	ldrb r1, [r4, r1]
	ldr r0, [r0]
	bl Party_GetMonByIndex
	ldr r2, _02081EB8 ; =0x00000654
	add r1, r0, #0
	ldr r2, [r4, r2]
	add r0, r4, #0
	add r2, #0x2c
	ldrb r2, [r2]
	bl sub_0208254C
	mov r0, #0x1f
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #0x3e
	bl NewString_ReadMsgData
	ldr r2, _02081EB8 ; =0x00000654
	add r5, r0, #0
	ldr r2, [r4, r2]
	ldr r0, _02081EC0 ; =0x000007C4
	ldrh r2, [r2, #0x2a]
	ldr r0, [r4, r0]
	mov r1, #1
	bl BufferMoveName
	ldr r1, _02081EC0 ; =0x000007C4
	add r2, r5, #0
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	bl StringExpandPlaceholders
	add r0, r5, #0
	bl String_Delete
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	mov r2, #0
	bl PartyMenu_PrintMessageOnWindow34
	ldr r0, _02081EAC ; =0x00000C67
	mov r1, #4
	strb r1, [r4, r0]
	b _02081EA8
_02081E54:
	ldr r0, _02081EB8 ; =0x00000654
	sub r1, r1, #2
	ldr r0, [r4, r0]
	ldrb r1, [r4, r1]
	ldr r0, [r0]
	bl Party_GetMonByIndex
	add r5, r0, #0
	ldr r0, _02081EB8 ; =0x00000654
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x1c]
	ldr r0, [r0, #0x20]
	ldr r0, [r0]
	bl MapHeader_GetMapEvolutionMethod
	add r3, r0, #0
	ldr r0, _02081EB8 ; =0x00000654
	lsl r3, r3, #0x10
	ldr r1, [r4, r0]
	mov r2, #0
	add r0, r1, #0
	add r0, #0x40
	str r0, [sp]
	ldr r0, [r1]
	add r1, r5, #0
	lsr r3, r3, #0x10
	bl GetMonEvolution
	ldr r1, _02081EB8 ; =0x00000654
	ldr r2, [r4, r1]
	strh r0, [r2, #0x3c]
	ldr r1, [r4, r1]
	ldrh r0, [r1, #0x3c]
	cmp r0, #0
	beq _02081E9E
	mov r0, #9
	b _02081EA0
_02081E9E:
	mov r0, #0
_02081EA0:
	add r1, #0x27
	strb r0, [r1]
	mov r0, #0x20
	pop {r3, r4, r5, pc}
_02081EA8:
	mov r0, #5
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02081EAC: .word 0x00000C67
_02081EB0: .word gSystem
_02081EB4: .word 0x000005DC
_02081EB8: .word 0x00000654
_02081EBC: .word 0x0000FFFE
_02081EC0: .word 0x000007C4
_02081EC4: .word sub_02081F8C
_02081EC8: .word 0x00000C58
_02081ECC: .word sub_02081FE0
	thumb_func_end sub_02081C50

	thumb_func_start sub_02081ED0
sub_02081ED0: ; 0x02081ED0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _02081F78 ; =sub_02081C50
	ldr r1, _02081F7C ; =0x00000C54
	mov r2, #3
	str r0, [r4, r1]
	add r0, r1, #0
	add r0, #0x13
	strb r2, [r4, r0]
	ldr r0, _02081F80 ; =0x00000654
	add r1, #0x11
	ldr r0, [r4, r0]
	ldrb r1, [r4, r1]
	ldr r0, [r0]
	bl Party_GetMonByIndex
	add r5, r0, #0
	bl Mon_GetBoxMon
	add r2, r0, #0
	ldr r0, _02081F84 ; =0x000007C4
	mov r1, #0
	ldr r0, [r4, r0]
	bl BufferBoxMonNickname
	ldr r0, _02081F80 ; =0x00000654
	ldr r2, [r4, r0]
	add r0, r2, #0
	add r0, #0x2c
	ldrb r1, [r0]
	cmp r1, #4
	bne _02081F24
	ldr r0, _02081F84 ; =0x000007C4
	ldrh r2, [r2, #0x2a]
	ldr r0, [r4, r0]
	mov r1, #1
	bl BufferMoveName
	add r0, r4, #0
	bl sub_02081FE0
	pop {r3, r4, r5, pc}
_02081F24:
	add r0, r5, #0
	add r1, #0x36
	mov r2, #0
	bl GetMonData
	add r2, r0, #0
	ldr r0, _02081F84 ; =0x000007C4
	mov r1, #1
	ldr r0, [r4, r0]
	bl BufferMoveName
	mov r0, #0x1f
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #0x3d
	bl NewString_ReadMsgData
	add r5, r0, #0
	ldr r1, _02081F84 ; =0x000007C4
	add r2, r5, #0
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	bl StringExpandPlaceholders
	add r0, r5, #0
	bl String_Delete
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	mov r2, #1
	bl PartyMenu_PrintMessageOnWindow34
	ldr r0, _02081F88 ; =0x00000C62
	mov r1, #5
	strb r1, [r4, r0]
	add r0, r0, #5
	strb r1, [r4, r0]
	mov r0, #0x18
	pop {r3, r4, r5, pc}
	nop
_02081F78: .word sub_02081C50
_02081F7C: .word 0x00000C54
_02081F80: .word 0x00000654
_02081F84: .word 0x000007C4
_02081F88: .word 0x00000C62
	thumb_func_end sub_02081ED0

	thumb_func_start sub_02081F8C
sub_02081F8C: ; 0x02081F8C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x1f
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	mov r1, #0x3c
	bl NewString_ReadMsgData
	add r4, r0, #0
	ldr r1, _02081FD4 ; =0x000007C4
	add r2, r4, #0
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	bl StringExpandPlaceholders
	add r0, r4, #0
	bl String_Delete
	mov r1, #0
	add r0, r5, #0
	mvn r1, r1
	mov r2, #0
	bl PartyMenu_PrintMessageOnWindow34
	ldr r0, _02081FD8 ; =0x00000654
	mov r1, #5
	ldr r0, [r5, r0]
	add r0, #0x27
	strb r1, [r0]
	ldr r0, _02081FDC ; =0x00000C62
	mov r1, #0x19
	strb r1, [r5, r0]
	mov r0, #0x18
	pop {r3, r4, r5, pc}
	nop
_02081FD4: .word 0x000007C4
_02081FD8: .word 0x00000654
_02081FDC: .word 0x00000C62
	thumb_func_end sub_02081F8C

	thumb_func_start sub_02081FE0
sub_02081FE0: ; 0x02081FE0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x1f
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	mov r1, #0x38
	bl NewString_ReadMsgData
	add r4, r0, #0
	ldr r1, _02082028 ; =0x000007C4
	add r2, r4, #0
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	bl StringExpandPlaceholders
	add r0, r4, #0
	bl String_Delete
	mov r1, #0
	add r0, r5, #0
	mvn r1, r1
	mov r2, #1
	bl PartyMenu_PrintMessageOnWindow34
	ldr r0, _0208202C ; =sub_02082038
	ldr r1, _02082030 ; =0x00000C58
	ldr r2, _02082034 ; =sub_02082084
	str r0, [r5, r1]
	add r0, r1, #4
	str r2, [r5, r0]
	mov r0, #0x1a
	add r1, #0xa
	strb r0, [r5, r1]
	mov r0, #0x18
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02082028: .word 0x000007C4
_0208202C: .word sub_02082038
_02082030: .word 0x00000C58
_02082034: .word sub_02082084
	thumb_func_end sub_02081FE0

	thumb_func_start sub_02082038
sub_02082038: ; 0x02082038
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x1f
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	mov r1, #0x3b
	bl NewString_ReadMsgData
	add r4, r0, #0
	ldr r1, _0208207C ; =0x000007C4
	add r2, r4, #0
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	bl StringExpandPlaceholders
	add r0, r4, #0
	bl String_Delete
	mov r1, #0
	add r0, r5, #0
	mvn r1, r1
	mov r2, #0
	bl PartyMenu_PrintMessageOnWindow34
	ldr r0, _02082080 ; =0x00000C62
	mov r1, #5
	strb r1, [r5, r0]
	mov r1, #4
	add r0, r0, #5
	strb r1, [r5, r0]
	mov r0, #0x18
	pop {r3, r4, r5, pc}
	nop
_0208207C: .word 0x000007C4
_02082080: .word 0x00000C62
	thumb_func_end sub_02082038

	thumb_func_start sub_02082084
sub_02082084: ; 0x02082084
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x1f
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	mov r1, #0x35
	bl NewString_ReadMsgData
	add r4, r0, #0
	ldr r1, _020820CC ; =0x000007C4
	add r2, r4, #0
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	bl StringExpandPlaceholders
	add r0, r4, #0
	bl String_Delete
	mov r1, #0
	add r0, r5, #0
	mvn r1, r1
	mov r2, #0
	bl PartyMenu_PrintMessageOnWindow34
	ldr r0, _020820D0 ; =sub_02081F8C
	ldr r1, _020820D4 ; =0x00000C58
	ldr r2, _020820D8 ; =sub_02081FE0
	str r0, [r5, r1]
	add r0, r1, #4
	str r2, [r5, r0]
	mov r0, #0x1a
	add r1, #0xa
	strb r0, [r5, r1]
	mov r0, #0x18
	pop {r3, r4, r5, pc}
	.balign 4, 0
_020820CC: .word 0x000007C4
_020820D0: .word sub_02081F8C
_020820D4: .word 0x00000C58
_020820D8: .word sub_02081FE0
	thumb_func_end sub_02082084

	thumb_func_start sub_020820DC
sub_020820DC: ; 0x020820DC
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _02082130 ; =0x00000654
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #0
_020820E6:
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x36
	mov r2, #0
	bl GetMonData
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	ldr r0, [r5, r7]
	ldrh r1, [r0, #0x2a]
	cmp r2, r1
	bne _02082102
	mov r0, #0xfd
	pop {r3, r4, r5, r6, r7, pc}
_02082102:
	cmp r2, #0
	beq _02082110
	add r1, r4, #1
	lsl r1, r1, #0x18
	lsr r4, r1, #0x18
	cmp r4, #4
	blo _020820E6
_02082110:
	ldrh r0, [r0, #0x28]
	bl ItemToTMHMId
	add r1, r0, #0
	add r0, r6, #0
	bl GetMonTMHMCompat
	cmp r0, #0
	bne _02082126
	mov r0, #0xff
	pop {r3, r4, r5, r6, r7, pc}
_02082126:
	cmp r4, #4
	bne _0208212C
	mov r4, #0xfe
_0208212C:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02082130: .word 0x00000654
	thumb_func_end sub_020820DC

	thumb_func_start sub_02082134
sub_02082134: ; 0x02082134
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldr r0, _020822B0 ; =0x00000654
	ldr r1, _020822B4 ; =0x00000C65
	ldr r0, [r4, r0]
	ldrb r1, [r4, r1]
	ldr r0, [r0]
	bl Party_GetMonByIndex
	add r6, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl sub_020820DC
	add r5, r0, #0
	add r0, r6, #0
	bl Mon_GetBoxMon
	add r2, r0, #0
	ldr r0, _020822B8 ; =0x000007C4
	mov r1, #0
	ldr r0, [r4, r0]
	bl BufferBoxMonNickname
	ldr r2, _020822B0 ; =0x00000654
	ldr r0, _020822B8 ; =0x000007C4
	ldr r2, [r4, r2]
	ldr r0, [r4, r0]
	ldrh r2, [r2, #0x2a]
	mov r1, #1
	bl BufferMoveName
	cmp r5, #0xfd
	bhi _02082192
	bhs _020821EA
	cmp r5, #3
	bhi _02082198
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0208218A: ; jump table
	.short _020821A0 - _0208218A - 2 ; case 0
	.short _020821A0 - _0208218A - 2 ; case 1
	.short _020821A0 - _0208218A - 2 ; case 2
	.short _020821A0 - _0208218A - 2 ; case 3
_02082192:
	cmp r5, #0xfe
	bhi _0208219A
	beq _0208222A
_02082198:
	b _020822AA
_0208219A:
	cmp r5, #0xff
	beq _0208226C
	b _020822AA
_020821A0:
	add r0, r4, #0
	add r1, r6, #0
	add r2, r5, #0
	bl sub_0208254C
	mov r0, #0x1f
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #0x3e
	bl NewString_ReadMsgData
	add r5, r0, #0
	ldr r1, _020822B8 ; =0x000007C4
	add r2, r5, #0
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	bl StringExpandPlaceholders
	add r0, r5, #0
	bl String_Delete
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	mov r2, #1
	bl PartyMenu_PrintMessageOnWindow34
	ldr r0, _020822B0 ; =0x00000654
	mov r1, #0
	ldr r0, [r4, r0]
	add r0, #0x27
	strb r1, [r0]
	ldr r0, _020822BC ; =0x00000C62
	mov r1, #0x19
	strb r1, [r4, r0]
	b _020822AA
_020821EA:
	mov r0, #0x1f
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #0x40
	bl NewString_ReadMsgData
	add r5, r0, #0
	ldr r1, _020822B8 ; =0x000007C4
	add r2, r5, #0
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	bl StringExpandPlaceholders
	add r0, r5, #0
	bl String_Delete
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	mov r2, #1
	bl PartyMenu_PrintMessageOnWindow34
	ldr r0, _020822B0 ; =0x00000654
	mov r1, #0
	ldr r0, [r4, r0]
	add r0, #0x27
	strb r1, [r0]
	ldr r0, _020822BC ; =0x00000C62
	mov r1, #0x19
	strb r1, [r4, r0]
	b _020822AA
_0208222A:
	mov r0, #0x1f
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #0x35
	bl NewString_ReadMsgData
	add r5, r0, #0
	ldr r1, _020822B8 ; =0x000007C4
	add r2, r5, #0
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	bl StringExpandPlaceholders
	add r0, r5, #0
	bl String_Delete
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	mov r2, #1
	bl PartyMenu_PrintMessageOnWindow34
	ldr r0, _020822C0 ; =sub_020823F4
	ldr r1, _020822C4 ; =0x00000C58
	ldr r2, _020822C8 ; =sub_02082448
	str r0, [r4, r1]
	add r0, r1, #4
	str r2, [r4, r0]
	mov r0, #0x1a
	add r1, #0xa
	strb r0, [r4, r1]
	b _020822AA
_0208226C:
	mov r0, #0x1f
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #0x3f
	bl NewString_ReadMsgData
	add r5, r0, #0
	ldr r1, _020822B8 ; =0x000007C4
	add r2, r5, #0
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	bl StringExpandPlaceholders
	add r0, r5, #0
	bl String_Delete
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	mov r2, #1
	bl PartyMenu_PrintMessageOnWindow34
	ldr r0, _020822B0 ; =0x00000654
	mov r1, #0
	ldr r0, [r4, r0]
	add r0, #0x27
	strb r1, [r0]
	ldr r0, _020822BC ; =0x00000C62
	mov r1, #0x19
	strb r1, [r4, r0]
_020822AA:
	mov r0, #0x18
	pop {r4, r5, r6, pc}
	nop
_020822B0: .word 0x00000654
_020822B4: .word 0x00000C65
_020822B8: .word 0x000007C4
_020822BC: .word 0x00000C62
_020822C0: .word sub_020823F4
_020822C4: .word 0x00000C58
_020822C8: .word sub_02082448
	thumb_func_end sub_02082134

	thumb_func_start sub_020822CC
sub_020822CC: ; 0x020822CC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _02082360 ; =0x00000654
	ldr r1, _02082364 ; =0x00000C65
	ldr r0, [r4, r0]
	ldrb r1, [r4, r1]
	ldr r0, [r0]
	bl Party_GetMonByIndex
	add r5, r0, #0
	bl Mon_GetBoxMon
	add r2, r0, #0
	ldr r0, _02082368 ; =0x000007C4
	mov r1, #0
	ldr r0, [r4, r0]
	bl BufferBoxMonNickname
	ldr r0, _02082360 ; =0x00000654
	ldr r2, [r4, r0]
	add r0, r2, #0
	add r0, #0x2c
	ldrb r1, [r0]
	cmp r1, #4
	bne _02082312
	ldr r0, _02082368 ; =0x000007C4
	ldrh r2, [r2, #0x2a]
	ldr r0, [r4, r0]
	mov r1, #1
	bl BufferMoveName
	add r0, r4, #0
	bl sub_02082448
	pop {r3, r4, r5, pc}
_02082312:
	add r0, r5, #0
	add r1, #0x36
	mov r2, #0
	bl GetMonData
	add r2, r0, #0
	ldr r0, _02082368 ; =0x000007C4
	mov r1, #1
	ldr r0, [r4, r0]
	bl BufferMoveName
	mov r0, #0x1f
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #0x3d
	bl NewString_ReadMsgData
	add r5, r0, #0
	ldr r1, _02082368 ; =0x000007C4
	add r2, r5, #0
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	bl StringExpandPlaceholders
	add r0, r5, #0
	bl String_Delete
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	mov r2, #1
	bl PartyMenu_PrintMessageOnWindow34
	ldr r0, _0208236C ; =0x00000C62
	mov r1, #0x16
	strb r1, [r4, r0]
	mov r0, #0x18
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02082360: .word 0x00000654
_02082364: .word 0x00000C65
_02082368: .word 0x000007C4
_0208236C: .word 0x00000C62
	thumb_func_end sub_020822CC

	thumb_func_start sub_02082370
sub_02082370: ; 0x02082370
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _020823E4 ; =0x00000654
	ldr r1, _020823E8 ; =0x00000C65
	ldr r0, [r5, r0]
	ldrb r1, [r5, r1]
	ldr r0, [r0]
	bl Party_GetMonByIndex
	ldr r2, _020823E4 ; =0x00000654
	add r1, r0, #0
	ldr r2, [r5, r2]
	add r0, r5, #0
	add r2, #0x2c
	ldrb r2, [r2]
	bl sub_0208254C
	mov r0, #0x1f
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	mov r1, #0x3e
	bl NewString_ReadMsgData
	ldr r2, _020823E4 ; =0x00000654
	add r4, r0, #0
	ldr r2, [r5, r2]
	ldr r0, _020823EC ; =0x000007C4
	ldrh r2, [r2, #0x2a]
	ldr r0, [r5, r0]
	mov r1, #1
	bl BufferMoveName
	ldr r1, _020823EC ; =0x000007C4
	add r2, r4, #0
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	bl StringExpandPlaceholders
	add r0, r4, #0
	bl String_Delete
	mov r1, #0
	add r0, r5, #0
	mvn r1, r1
	mov r2, #0
	bl PartyMenu_PrintMessageOnWindow34
	ldr r0, _020823E4 ; =0x00000654
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0x27
	strb r1, [r0]
	ldr r0, _020823F0 ; =0x00000C62
	mov r1, #0x19
	strb r1, [r5, r0]
	mov r0, #0x18
	pop {r3, r4, r5, pc}
	.balign 4, 0
_020823E4: .word 0x00000654
_020823E8: .word 0x00000C65
_020823EC: .word 0x000007C4
_020823F0: .word 0x00000C62
	thumb_func_end sub_02082370

	thumb_func_start sub_020823F4
sub_020823F4: ; 0x020823F4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x1f
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	mov r1, #0x3c
	bl NewString_ReadMsgData
	add r4, r0, #0
	ldr r1, _0208243C ; =0x000007C4
	add r2, r4, #0
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	bl StringExpandPlaceholders
	add r0, r4, #0
	bl String_Delete
	mov r1, #0
	add r0, r5, #0
	mvn r1, r1
	mov r2, #0
	bl PartyMenu_PrintMessageOnWindow34
	ldr r0, _02082440 ; =0x00000654
	mov r1, #4
	ldr r0, [r5, r0]
	add r0, #0x27
	strb r1, [r0]
	ldr r0, _02082444 ; =0x00000C62
	mov r1, #0x19
	strb r1, [r5, r0]
	mov r0, #0x18
	pop {r3, r4, r5, pc}
	nop
_0208243C: .word 0x000007C4
_02082440: .word 0x00000654
_02082444: .word 0x00000C62
	thumb_func_end sub_020823F4

	thumb_func_start sub_02082448
sub_02082448: ; 0x02082448
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x1f
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	mov r1, #0x38
	bl NewString_ReadMsgData
	add r4, r0, #0
	ldr r1, _02082490 ; =0x000007C4
	add r2, r4, #0
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	bl StringExpandPlaceholders
	add r0, r4, #0
	bl String_Delete
	mov r1, #0
	add r0, r5, #0
	mvn r1, r1
	mov r2, #1
	bl PartyMenu_PrintMessageOnWindow34
	ldr r0, _02082494 ; =sub_020824A0
	ldr r1, _02082498 ; =0x00000C58
	ldr r2, _0208249C ; =sub_020824F4
	str r0, [r5, r1]
	add r0, r1, #4
	str r2, [r5, r0]
	mov r0, #0x1a
	add r1, #0xa
	strb r0, [r5, r1]
	mov r0, #0x18
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02082490: .word 0x000007C4
_02082494: .word sub_020824A0
_02082498: .word 0x00000C58
_0208249C: .word sub_020824F4
	thumb_func_end sub_02082448

	thumb_func_start sub_020824A0
sub_020824A0: ; 0x020824A0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x1f
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	mov r1, #0x3b
	bl NewString_ReadMsgData
	add r4, r0, #0
	ldr r1, _020824E8 ; =0x000007C4
	add r2, r4, #0
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	bl StringExpandPlaceholders
	add r0, r4, #0
	bl String_Delete
	mov r1, #0
	add r0, r5, #0
	mvn r1, r1
	mov r2, #0
	bl PartyMenu_PrintMessageOnWindow34
	ldr r0, _020824EC ; =0x00000654
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0x27
	strb r1, [r0]
	ldr r0, _020824F0 ; =0x00000C62
	mov r1, #0x19
	strb r1, [r5, r0]
	mov r0, #0x18
	pop {r3, r4, r5, pc}
	nop
_020824E8: .word 0x000007C4
_020824EC: .word 0x00000654
_020824F0: .word 0x00000C62
	thumb_func_end sub_020824A0

	thumb_func_start sub_020824F4
sub_020824F4: ; 0x020824F4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x1f
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	mov r1, #0x35
	bl NewString_ReadMsgData
	add r4, r0, #0
	ldr r1, _0208253C ; =0x000007C4
	add r2, r4, #0
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	bl StringExpandPlaceholders
	add r0, r4, #0
	bl String_Delete
	mov r1, #0
	add r0, r5, #0
	mvn r1, r1
	mov r2, #0
	bl PartyMenu_PrintMessageOnWindow34
	ldr r0, _02082540 ; =sub_020823F4
	ldr r1, _02082544 ; =0x00000C58
	ldr r2, _02082548 ; =sub_02082448
	str r0, [r5, r1]
	add r0, r1, #4
	str r2, [r5, r0]
	mov r0, #0x1a
	add r1, #0xa
	strb r0, [r5, r1]
	mov r0, #0x18
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0208253C: .word 0x000007C4
_02082540: .word sub_020823F4
_02082544: .word 0x00000C58
_02082548: .word sub_02082448
	thumb_func_end sub_020824F4

	thumb_func_start sub_0208254C
sub_0208254C: ; 0x0208254C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r0, _020825D4 ; =0x00000654
	add r6, r2, #0
	ldr r0, [r5, r0]
	add r4, r1, #0
	ldrh r0, [r0, #0x2a]
	add r1, r6, #0
	add r1, #0x36
	str r0, [sp]
	add r0, r4, #0
	add r2, sp, #0
	bl SetMonData
	mov r0, #0
	add r1, r6, #0
	str r0, [sp]
	add r0, r4, #0
	add r1, #0x3e
	add r2, sp, #0
	bl SetMonData
	ldr r0, _020825D4 ; =0x00000654
	mov r1, #0
	ldr r0, [r5, r0]
	ldrh r0, [r0, #0x2a]
	bl GetMoveMaxPP
	add r6, #0x3a
	str r0, [sp]
	add r0, r4, #0
	add r1, r6, #0
	add r2, sp, #0
	bl SetMonData
	ldr r0, _020825D4 ; =0x00000654
	ldr r1, [r5, r0]
	ldrh r0, [r1, #0x28]
	cmp r0, #0
	beq _020825D0
	ldrh r0, [r1, #0x2a]
	bl MoveIsHM
	cmp r0, #0
	bne _020825B8
	ldr r0, _020825D4 ; =0x00000654
	mov r2, #1
	ldr r1, [r5, r0]
	mov r3, #0xc
	ldr r0, [r1, #4]
	ldrh r1, [r1, #0x28]
	bl Bag_TakeItem
_020825B8:
	add r0, r5, #0
	bl sub_020828EC
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #4
	bl MonApplyFriendshipMod
	add r0, r4, #0
	mov r1, #3
	bl ApplyMonMoodModifier
_020825D0:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_020825D4: .word 0x00000654
	thumb_func_end sub_0208254C

	thumb_func_start sub_020825D8
sub_020825D8: ; 0x020825D8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _02082648 ; =0x00000654
	add r6, r1, #0
	ldr r1, _0208264C ; =0x00000C65
	ldr r0, [r5, r0]
	ldrb r1, [r5, r1]
	ldr r0, [r0]
	bl Party_GetMonByIndex
	add r1, r6, #0
	add r1, #0x36
	mov r2, #0
	bl GetMonData
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	mov r0, #0x1f
	lsl r0, r0, #6
	add r1, r6, #0
	ldr r0, [r5, r0]
	add r1, #0x91
	bl NewString_ReadMsgData
	add r7, r0, #0
	ldr r0, _02082650 ; =0x000007C4
	mov r1, #0
	ldr r0, [r5, r0]
	add r2, r4, #0
	bl BufferMoveName
	ldr r1, _02082650 ; =0x000007C4
	add r2, r7, #0
	ldr r0, [r5, r1]
	add r1, #8
	ldr r1, [r5, r1]
	bl StringExpandPlaceholders
	add r0, r7, #0
	bl String_Delete
	cmp r4, #0
	bne _02082632
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02082632:
	mov r1, #0x82
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	sub r1, #0x54
	ldr r1, [r5, r1]
	add r2, r6, #0
	bl ListMenuItems_AddItem
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02082648: .word 0x00000654
_0208264C: .word 0x00000C65
_02082650: .word 0x000007C4
	thumb_func_end sub_020825D8

	thumb_func_start sub_02082654
sub_02082654: ; 0x02082654
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x81
	lsl r0, r0, #2
	add r4, r1, #0
	add r0, r5, r0
	mov r1, #1
	bl ClearFrameAndWindow2
	cmp r4, #0
	bne _02082678
	add r0, r5, #0
	mov r1, #0x2a
	mov r2, #1
	bl PartyMenu_PrintMessageOnWindow33
	b _02082682
_02082678:
	add r0, r5, #0
	mov r1, #0x29
	mov r2, #1
	bl PartyMenu_PrintMessageOnWindow33
_02082682:
	mov r0, #5
	mov r1, #0xc
	bl ListMenuItems_New
	mov r1, #0x82
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r0, r5, #0
	mov r1, #0
	bl sub_020825D8
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl sub_020825D8
	add r0, r4, r0
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r5, #0
	mov r1, #2
	bl sub_020825D8
	add r0, r4, r0
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r5, #0
	mov r1, #3
	bl sub_020825D8
	add r0, r4, r0
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	mov r0, #9
	bl GetPartyMenuContextMenuActionFunc
	mov r1, #0x82
	lsl r1, r1, #4
	add r2, r0, #0
	ldr r0, [r5, r1]
	sub r1, #0x2c
	ldr r1, [r5, r1]
	bl ListMenuItems_AddItem
	mov r0, #0x82
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0x91
	lsl r0, r0, #2
	add r0, r5, r0
	str r0, [sp, #8]
	add r1, sp, #4
	strb r2, [r1, #8]
	mov r3, #1
	strb r3, [r1, #9]
	add r0, r4, #1
	strb r0, [r1, #0xa]
	ldrb r4, [r1, #0xb]
	mov r0, #0xf
	bic r4, r0
	strb r4, [r1, #0xb]
	ldrb r4, [r1, #0xb]
	mov r0, #0x30
	bic r4, r0
	strb r4, [r1, #0xb]
	ldrb r4, [r1, #0xb]
	mov r0, #0xc0
	bic r4, r0
	mov r0, #0x40
	orr r0, r4
	strb r0, [r1, #0xb]
	ldrb r1, [r1, #0xa]
	add r0, r5, #0
	bl sub_0207E54C
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	add r1, sp, #4
	mov r2, #0
	mov r3, #0xc
	bl PartyMenu_CreateContextMenuCursor
	ldr r1, _02082734 ; =0x00000824
	str r0, [r5, r1]
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02082734: .word 0x00000824
	thumb_func_end sub_02082654

	thumb_func_start PartyMenu_Subtask_SelectMove
PartyMenu_Subtask_SelectMove: ; 0x02082738
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r1, _02082850 ; =0x00000824
	add r5, r0, #0
	ldr r1, [r5, r1]
	bl PartyMenu_HandleSubcontextMenuInput_TopLevel
	add r4, r0, #0
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _02082758
	add r0, r0, #1
	cmp r4, r0
	beq _0208284A
	b _02082794
_02082758:
	mov r0, #0x85
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #1
	bl ClearFrameAndWindow2
	mov r0, #0x91
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #1
	bl sub_0200E5D4
	add r0, r5, #0
	bl sub_0207CB20
	bl PartyMenu_DisableMainScreenBlend_AfterYesNo
	add r0, r5, #0
	mov r1, #0x21
	mov r2, #1
	bl PartyMenu_PrintMessageOnWindow32
	ldr r0, _02082854 ; =0x00000678
	mov r1, #0
	ldr r0, [r5, r0]
	bl thunk_Sprite_SetPalIndex
	add sp, #8
	mov r0, #4
	pop {r4, r5, r6, pc}
_02082794:
	mov r0, #0x85
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #1
	bl ClearFrameAndWindow2
	mov r0, #0x91
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #1
	bl sub_0200E5D4
	add r0, r5, #0
	bl sub_0207CB20
	bl PartyMenu_DisableMainScreenBlend_AfterYesNo
	ldr r0, _02082858 ; =0x00000654
	ldr r6, [r5, r0]
	add r0, r5, #0
	bl sub_020828EC
	str r0, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	ldr r2, _0208285C ; =0x00000C65
	lsl r3, r4, #0x18
	ldrh r1, [r6, #0x28]
	ldrb r2, [r5, r2]
	ldr r0, [r6]
	lsr r3, r3, #0x18
	bl UseItemOnMonInParty
	cmp r0, #1
	bne _02082818
	ldr r0, _02082858 ; =0x00000654
	ldr r1, _0208285C ; =0x00000C65
	ldr r0, [r5, r0]
	ldrb r1, [r5, r1]
	ldr r0, [r0]
	bl Party_GetMonByIndex
	add r4, #0x36
	add r1, r4, #0
	mov r2, #0
	bl GetMonData
	ldr r1, _02082858 ; =0x00000654
	add r2, r0, #0
	ldr r1, [r5, r1]
	add r0, r5, #0
	ldrh r1, [r1, #0x28]
	bl sub_02080E9C
	ldr r0, _02082858 ; =0x00000654
	mov r2, #1
	ldr r1, [r5, r0]
	mov r3, #0xc
	ldr r0, [r1, #4]
	ldrh r1, [r1, #0x28]
	bl Bag_TakeItem
	ldr r0, _02082860 ; =0x000005EC
	bl PlaySE
	b _02082828
_02082818:
	mov r2, #0x1f
	lsl r2, r2, #6
	ldr r0, [r5, r2]
	add r2, #8
	ldr r2, [r5, r2]
	mov r1, #0x66
	bl ReadMsgDataIntoString
_02082828:
	mov r1, #0
	add r0, r5, #0
	mvn r1, r1
	mov r2, #1
	bl PartyMenu_PrintMessageOnWindow34
	ldr r0, _02082858 ; =0x00000654
	mov r1, #0
	ldr r0, [r5, r0]
	add sp, #8
	add r0, #0x27
	strb r1, [r0]
	ldr r0, _02082864 ; =0x00000C62
	mov r1, #0x19
	strb r1, [r5, r0]
	mov r0, #0x18
	pop {r4, r5, r6, pc}
_0208284A:
	mov r0, #6
	add sp, #8
	pop {r4, r5, r6, pc}
	.balign 4, 0
_02082850: .word 0x00000824
_02082854: .word 0x00000678
_02082858: .word 0x00000654
_0208285C: .word 0x00000C65
_02082860: .word 0x000005EC
_02082864: .word 0x00000C62
	thumb_func_end PartyMenu_Subtask_SelectMove

	thumb_func_start sub_02082868
sub_02082868: ; 0x02082868
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x81
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl ClearFrameAndWindow2
	ldr r0, _020828DC ; =0x00000C65
	ldr r2, _020828E0 ; =0x00000834
	ldrb r1, [r4, r0]
	mov r0, #0x30
	mul r0, r1
	add r0, r4, r0
	ldrh r0, [r0, r2]
	cmp r0, #0
	bne _020828A6
	add r0, r2, #0
	sub r0, #0x74
	sub r2, #0x6c
	ldr r0, [r4, r0]
	ldr r2, [r4, r2]
	mov r1, #0x74
	bl ReadMsgDataIntoString
	ldr r1, _020828DC ; =0x00000C65
	add r0, r4, #0
	ldrb r1, [r4, r1]
	bl PartyMenu_SetMonHeldMailIcon
	b _020828BC
_020828A6:
	add r0, r2, #0
	sub r0, #0x74
	sub r2, #0x6c
	ldr r0, [r4, r0]
	ldr r2, [r4, r2]
	mov r1, #0x75
	bl ReadMsgDataIntoString
	ldr r0, _020828DC ; =0x00000C65
	mov r1, #7
	strb r1, [r4, r0]
_020828BC:
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	mov r2, #1
	bl PartyMenu_PrintMessageOnWindow34
	ldr r0, _020828E4 ; =0x00000654
	mov r1, #0
	ldr r0, [r4, r0]
	add r0, #0x27
	strb r1, [r0]
	ldr r0, _020828E8 ; =0x00000C62
	mov r1, #0x19
	strb r1, [r4, r0]
	pop {r4, pc}
	nop
_020828DC: .word 0x00000C65
_020828E0: .word 0x00000834
_020828E4: .word 0x00000654
_020828E8: .word 0x00000C62
	thumb_func_end sub_02082868

	thumb_func_start sub_020828EC
sub_020828EC: ; 0x020828EC
	push {r3, lr}
	ldr r1, _02082904 ; =0x00000654
	ldr r0, [r0, r1]
	ldr r0, [r0, #0x1c]
	ldr r0, [r0, #0x20]
	ldr r0, [r0]
	bl MapHeader_GetMapSec
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, pc}
	nop
_02082904: .word 0x00000654
	thumb_func_end sub_020828EC
