#include "constants/items.h"
	.include "asm/macros.inc"
	.include "unk_0203BC10.inc"
	.include "global.inc"

	.rodata

_020FA0AC:
	.byte 0x01, 0x04, 0x00, 0x00
	.public _020FA0B0
_020FA0B0:
	.byte 0x00, 0x01, 0x02, 0x03, 0x04, 0x00, 0x00, 0x00
_020FA0B8:
	.byte 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07
	.byte 0xFF, 0x00, 0x00, 0x00
	.public _020FA0C4
_020FA0C4:
	.word 0
	.word 1
	.word 2
	.word 4
	.word 5
	.word 6
	.word 100
	.word 100
	.word 100
	.word 100
	.word 100
	.word 3
_020FA0F4:
	.word  0, sub_0203C8FC
	.word  1, sub_0203CA44
	.word  2, sub_0203CF0C
	.word  3, sub_0203D1A8
	.word  4, sub_0203D244
	.word  5, sub_0203D318
	.word  6, -2
	.word  7, sub_0203D394
	.word  8, sub_0203D488
	.word 14, sub_0203D500
	.word 14, sub_0203D500
	.word 14, sub_0203D500
	.word 14, sub_0203D2CC

	.text

	.extern sub_0203C1FC
	.extern sub_0203C38C
	.extern sub_0203C3B8
	.extern sub_0203C460

	thumb_func_start sub_0203C508
sub_0203C508: ; 0x0203C508
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0xd3
	add r4, r2, #0
	ldrb r1, [r0]
	ldr r0, [r4, #0x2c]
	cmp r1, r0
	bhs _0203C596
	ldr r0, _0203C59C ; =0x000005DC
	bl PlaySE
	mov r0, #0x43
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl sub_02018410
	add r0, r5, #0
	add r0, #0xd3
	ldrb r0, [r0]
	str r0, [r4, #0x28]
	add r0, r4, r0
	add r0, #0x3a
	ldrb r1, [r0]
	ldr r0, _0203C5A0 ; =_020FA0F4 + 4
	lsl r2, r1, #3
	ldr r2, [r0, r2]
	mov r0, #1
	mvn r0, r0
	cmp r2, r0
	bne _0203C550
	mov r0, #0x10
	strh r0, [r4, #0x26]
	b _0203C596
_0203C550:
	add r0, r0, #1
	cmp r2, r0
	beq _0203C596
	add r0, r5, #0
	bl sub_0203C3B8
	cmp r0, #0
	beq _0203C596
	ldr r0, [r4, #0x28]
	add r0, r4, r0
	add r0, #0x3a
	ldrb r0, [r0]
	lsl r1, r0, #3
	ldr r0, _0203C5A0 ; =_020FA0F4 + 4
	ldr r6, [r0, r1]
	add r0, r5, #0
	mov r1, #0
	bl sub_0203DF64
	add r0, r5, #0
	bl ov01_021F6B50
	add r0, r5, #0
	mov r1, #0
	add r0, #0xd0
	strh r1, [r0]
	ldr r0, [r4, #0x28]
	add r5, #0xe0
	add r0, r4, r0
	add r0, #0x3a
	ldrb r0, [r0]
	str r0, [r5]
	add r0, r7, #0
	blx r6
	pop {r3, r4, r5, r6, r7, pc}
_0203C596:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0203C59C: .word 0x000005DC
_0203C5A0: .word _020FA0F4 + 4
	thumb_func_end sub_0203C508

	thumb_func_start sub_0203C5A4
sub_0203C5A4: ; 0x0203C5A4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r7, r0, #0
	add r0, r4, #0
	add r0, #0xd0
	ldrh r0, [r0]
	add r5, r2, #0
	cmp r0, #0
	beq _0203C5C2
	mov r0, #0x43
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl sub_02018410
_0203C5C2:
	add r0, r4, #0
	add r0, #0xd0
	ldrh r0, [r0]
	cmp r0, #0xa
	bhi _0203C690
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0203C5D8: ; jump table
	.short _0203C690 - _0203C5D8 - 2 ; case 0
	.short _0203C5EE - _0203C5D8 - 2 ; case 1
	.short _0203C602 - _0203C5D8 - 2 ; case 2
	.short _0203C602 - _0203C5D8 - 2 ; case 3
	.short _0203C602 - _0203C5D8 - 2 ; case 4
	.short _0203C602 - _0203C5D8 - 2 ; case 5
	.short _0203C602 - _0203C5D8 - 2 ; case 6
	.short _0203C602 - _0203C5D8 - 2 ; case 7
	.short _0203C602 - _0203C5D8 - 2 ; case 8
	.short _0203C602 - _0203C5D8 - 2 ; case 9
	.short _0203C602 - _0203C5D8 - 2 ; case 10
_0203C5EE:
	mov r0, #0x25
	lsl r0, r0, #6
	bl PlaySE
	mov r0, #0x10
	strh r0, [r5, #0x26]
	mov r0, #0
	add r4, #0xd0
	strh r0, [r4]
	b _0203C690
_0203C602:
	sub r1, r0, #2
	add r0, r4, #0
	add r0, #0xd3
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0xd3
	ldrb r1, [r0]
	ldr r0, [r5, #0x2c]
	cmp r1, r0
	bhs _0203C690
	ldr r0, _0203C694 ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	add r0, #0xd3
	ldrb r0, [r0]
	str r0, [r5, #0x28]
	add r0, r5, r0
	add r0, #0x3a
	ldrb r1, [r0]
	ldr r0, _0203C698 ; =_020FA0F4 + 4
	lsl r2, r1, #3
	ldr r2, [r0, r2]
	mov r0, #1
	mvn r0, r0
	cmp r2, r0
	bne _0203C644
	mov r0, #0x10
	strh r0, [r5, #0x26]
	mov r0, #0
	add r4, #0xd0
	strh r0, [r4]
	b _0203C690
_0203C644:
	add r0, r0, #1
	cmp r2, r0
	beq _0203C690
	add r0, r4, #0
	bl sub_0203C3B8
	cmp r0, #0
	beq _0203C68A
	ldr r0, [r5, #0x28]
	add r0, r5, r0
	add r0, #0x3a
	ldrb r0, [r0]
	lsl r1, r0, #3
	ldr r0, _0203C698 ; =_020FA0F4 + 4
	ldr r6, [r0, r1]
	add r0, r4, #0
	mov r1, #0
	add r0, #0xd0
	strh r1, [r0]
	add r0, r4, #0
	mov r1, #1
	bl sub_0203DF64
	add r0, r4, #0
	bl ov01_021F6B50
	ldr r0, [r5, #0x28]
	add r4, #0xe0
	add r0, r5, r0
	add r0, #0x3a
	ldrb r0, [r0]
	str r0, [r4]
	add r0, r7, #0
	blx r6
	pop {r3, r4, r5, r6, r7, pc}
_0203C68A:
	mov r0, #0
	add r4, #0xd0
	strh r0, [r4]
_0203C690:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0203C694: .word 0x000005DC
_0203C698: .word _020FA0F4 + 4
	thumb_func_end sub_0203C5A4

	thumb_func_start sub_0203C69C
sub_0203C69C: ; 0x0203C69C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02035650
	cmp r0, #0
	beq _0203C6C6
	mov r0, #0x35
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0203C6C6
	add r4, #0x84
	ldr r0, [r4]
	bl sub_0205AD0C
	bl sub_02037FF0
	mov r0, #0
	bl sub_0205A904
_0203C6C6:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203C69C

	thumb_func_start sub_0203C6C8
sub_0203C6C8: ; 0x0203C6C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	mov r1, #0x76
	add r5, r0, #0
	lsl r1, r1, #2
	mov r0, #1
	add r1, r5, r1
	mov r2, #0xb
	bl G2dRenderer_Init
	mov r1, #0x75
	lsl r1, r1, #2
	mov r7, #3
	str r0, [r5, r1]
	mov r6, #0
	add r4, r5, #0
	lsl r7, r7, #8
_0203C6EA:
	mov r0, #1
	add r1, r6, #0
	mov r2, #0xb
	bl Create2DGfxResObjMan
	str r0, [r4, r7]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #4
	blt _0203C6EA
	mov r0, #0
	str r0, [sp]
	mov r3, #1
	str r3, [sp, #4]
	mov r0, #0xb
	str r0, [sp, #8]
	mov r0, #3
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	mov r1, #0xe
	mov r2, #0x40
	bl AddCharResObjFromNarc
	mov r1, #0x31
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r3, #0
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xb
	sub r1, #0xc
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	mov r1, #0xe
	mov r2, #0x3d
	bl AddPlttResObjFromNarc
	mov r1, #0xc5
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0xb
	sub r1, #0xc
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	mov r1, #0xe
	mov r2, #0x3e
	mov r3, #1
	bl AddCellOrAnimResObjFromNarc
	mov r1, #0xc6
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0xb
	sub r1, #0xc
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	mov r1, #0xe
	mov r2, #0x3f
	mov r3, #1
	bl AddCellOrAnimResObjFromNarc
	mov r1, #0xc7
	lsl r1, r1, #2
	str r0, [r5, r1]
	sub r1, #0xc
	ldr r0, [r5, r1]
	bl sub_0200ADA4
	mov r0, #0xc5
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200B00C
	mov r0, #0xc5
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200A740
	mov r1, #0
	mov r2, #3
	str r1, [sp]
	sub r0, r1, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	lsl r2, r2, #8
	ldr r0, [r5, r2]
	add r3, r1, #0
	str r0, [sp, #0x14]
	add r0, r2, #4
	ldr r0, [r5, r0]
	str r0, [sp, #0x18]
	add r0, r2, #0
	add r0, #8
	ldr r0, [r5, r0]
	str r0, [sp, #0x1c]
	add r0, r2, #0
	add r0, #0xc
	ldr r0, [r5, r0]
	add r2, #0x20
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, r5, r2
	add r2, r1, #0
	str r1, [sp, #0x28]
	bl CreateSpriteResourcesHeader
	mov r0, #0x75
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x32
	mov r2, #1
	lsl r2, r2, #0xc
	mov r3, #0
	lsl r1, r1, #4
	str r0, [sp, #0x2c]
	add r0, r5, r1
	str r0, [sp, #0x30]
	str r3, [sp, #0x3c]
	str r2, [sp, #0x40]
	str r2, [sp, #0x44]
	str r2, [sp, #0x48]
	add r2, sp, #0x2c
	strh r3, [r2, #0x20]
	str r0, [sp, #0x30]
	lsl r0, r1, #9
	str r0, [sp, #0x34]
	mov r0, #9
	mov r2, #1
	lsl r0, r0, #0x10
	str r2, [sp, #0x54]
	mov r2, #0xb
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	str r3, [sp, #0x50]
	str r2, [sp, #0x58]
	bl CreateSprite
	mov r1, #0xd1
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #1
	bl Set2dSpriteAnimActiveFlag
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end sub_0203C6C8

	thumb_func_start sub_0203C830
sub_0203C830: ; 0x0203C830
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x31
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_0200AEB0
	mov r0, #0xc5
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200B0A8
	mov r6, #3
	mov r4, #0
	lsl r6, r6, #8
_0203C84E:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl Destroy2DGfxResObjMan
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #4
	blo _0203C84E
	mov r0, #0x75
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl SpriteList_Delete
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end sub_0203C830

	thumb_func_start sub_0203C870
sub_0203C870: ; 0x0203C870
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _0203C8AE
	add r0, r5, #0
	bl TaskManager_GetFieldSystem
	add r6, r0, #0
	add r0, r5, #0
	bl TaskManager_GetEnvironment
	add r1, r6, #0
	add r4, r0, #0
	bl sub_0203C38C
	add r0, r6, #0
	add r0, #0xd2
	ldrb r1, [r0]
	mov r0, #0x3f
	add r6, #0xd2
	bic r1, r0
	strb r1, [r6]
	mov r1, #0xd5
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r5, #0
	blx r1
	mov r0, #5
	strh r0, [r4, #0x26]
_0203C8AE:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0203C870

	thumb_func_start sub_0203C8B0
sub_0203C8B0: ; 0x0203C8B0
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl TaskManager_GetFieldSystem
	add r5, r0, #0
	add r0, r6, #0
	bl TaskManager_GetEnvironment
	add r4, r0, #0
	add r0, r5, #0
	bl FieldSystem_ApplicationIsRunning
	cmp r0, #0
	bne _0203C8EE
	mov r1, #0xd5
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r6, #0
	blx r1
	ldrh r0, [r4, #0x26]
	cmp r0, #0xf
	bne _0203C8EE
	mov r0, #0x43
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_020183F0
	cmp r0, #1
	bne _0203C8EE
	mov r0, #0xa
	strh r0, [r4, #0x26]
_0203C8EE:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0203C8B0

	thumb_func_start sub_0203C8F0
sub_0203C8F0: ; 0x0203C8F0
	mov r2, #0xd5
	lsl r2, r2, #2
	str r1, [r0, r2]
	mov r1, #5
	strh r1, [r0, #0x26]
	bx lr
	thumb_func_end sub_0203C8F0

	thumb_func_start sub_0203C8FC
sub_0203C8FC: ; 0x0203C8FC
	push {r4, lr}
	bl TaskManager_GetEnvironment
	add r4, r0, #0
	mov r0, #0
	bl ov01_021E636C
	mov r0, #0xd5
	ldr r1, _0203C91C ; =sub_0203C920
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #4
	strh r0, [r4, #0x26]
	mov r0, #1
	pop {r4, pc}
	nop
_0203C91C: .word sub_0203C920
	thumb_func_end sub_0203C8FC

	thumb_func_start sub_0203C920
sub_0203C920: ; 0x0203C920
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	bl TaskManager_GetFieldSystem
	add r4, r0, #0
	add r0, r5, #0
	bl TaskManager_GetEnvironment
	str r0, [sp]
	ldr r0, [r4, #0xc]
	bl Save_LocalFieldData_Get
	add r5, r0, #0
	bl LocalFieldData_GetCurrentPosition
	str r0, [sp, #4]
	add r0, r5, #0
	bl LocalFieldData_GetSpecialSpawnWarpPtr
	str r0, [sp, #8]
	mov r0, #0xb
	mov r1, #0x1c
	bl AllocFromHeap
	mov r1, #0
	mov r2, #0x1c
	add r5, r0, #0
	bl MI_CpuFill8
	ldr r0, [r4, #0xc]
	bl Save_Pokedex_Get
	str r0, [r5]
	ldr r0, [r4, #0xc]
	bl Save_PlayerData_GetProfileAddr
	str r0, [r5, #4]
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r0]
	str r0, [r5, #8]
	mov r0, #0x43
	lsl r0, r0, #2
	add r0, r4, r0
	str r0, [r5, #0xc]
	ldr r0, [r4, #0x40]
	bl GetPlayerXCoord
	add r6, r0, #0
	ldr r0, [r4, #0x40]
	bl GetPlayerYCoord
	add r7, r0, #0
	asr r1, r6, #4
	asr r2, r7, #4
	lsr r1, r1, #0x1b
	lsr r2, r2, #0x1b
	add r1, r6, r1
	add r2, r7, r2
	ldr r0, [r4, #0x30]
	asr r1, r1, #5
	asr r2, r2, #5
	bl MapMatrix_GetMapHeader
	strh r0, [r5, #0x1a]
	ldr r0, [sp, #4]
	ldr r0, [r0]
	strh r0, [r5, #0x18]
	ldrh r0, [r5, #0x1a]
	bl MapHeader_MapIsOnMainMatrix
	cmp r0, #0
	beq _0203C9BA
	str r6, [r5, #0x10]
	str r7, [r5, #0x14]
	b _0203C9F4
_0203C9BA:
	ldrh r0, [r5, #0x1a]
	add r1, sp, #0xc
	add r1, #2
	add r2, sp, #0xc
	bl MapHeader_GetWorldMapCoords
	add r1, sp, #0xc
	mov r0, #2
	ldrsh r2, [r1, r0]
	cmp r2, #0
	bne _0203C9E6
	mov r0, #0
	ldrsh r0, [r1, r0]
	cmp r0, #0
	bne _0203C9E6
	ldr r0, [sp, #8]
	ldr r0, [r0, #8]
	str r0, [r5, #0x10]
	ldr r0, [sp, #8]
	ldr r0, [r0, #0xc]
	str r0, [r5, #0x14]
	b _0203C9F4
_0203C9E6:
	lsl r0, r2, #5
	str r0, [r5, #0x10]
	add r1, sp, #0xc
	mov r0, #0
	ldrsh r0, [r1, r0]
	lsl r0, r0, #5
	str r0, [r5, #0x14]
_0203C9F4:
	add r0, r4, #0
	add r1, r5, #0
	bl Pokedex_LaunchApp
	mov r1, #0xe
	ldr r0, [sp]
	lsl r1, r1, #6
	str r5, [r0, r1]
	ldr r2, _0203CA10 ; =sub_0203CA14
	sub r1, #0x2c
	str r2, [r0, r1]
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0203CA10: .word sub_0203CA14
	thumb_func_end sub_0203C920

	thumb_func_start sub_0203CA14
sub_0203CA14: ; 0x0203CA14
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl TaskManager_GetFieldSystem
	add r5, r0, #0
	add r0, r4, #0
	bl TaskManager_GetEnvironment
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020505C0
	mov r0, #0xe
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _0203CA3C
	mov r0, #0xb
	bl FreeToHeapExplicit
_0203CA3C:
	mov r0, #0xf
	strh r0, [r4, #0x26]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203CA14

	thumb_func_start sub_0203CA44
sub_0203CA44: ; 0x0203CA44
	push {r4, lr}
	bl TaskManager_GetEnvironment
	add r4, r0, #0
	mov r0, #0
	bl ov01_021E636C
	mov r0, #0xd5
	ldr r1, _0203CA64 ; =sub_0203CA68
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #4
	strh r0, [r4, #0x26]
	mov r0, #1
	pop {r4, pc}
	nop
_0203CA64: .word sub_0203CA68
	thumb_func_end sub_0203CA44

	thumb_func_start sub_0203CA68
sub_0203CA68: ; 0x0203CA68
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl TaskManager_GetFieldSystem
	add r5, r0, #0
	add r0, r4, #0
	bl TaskManager_GetEnvironment
	mov r1, #0x37
	add r4, r0, #0
	lsl r1, r1, #4
	add r0, r5, #0
	add r1, r4, r1
	mov r2, #0
	bl PartyMenu_LaunchApp_Unk1
	mov r1, #0xe
	lsl r1, r1, #6
	str r0, [r4, r1]
	ldr r0, _0203CA98 ; =sub_0203CA9C
	sub r1, #0x2c
	str r0, [r4, r1]
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0203CA98: .word sub_0203CA9C
	thumb_func_end sub_0203CA68

	thumb_func_start sub_0203CA9C
sub_0203CA9C: ; 0x0203CA9C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	bl TaskManager_GetFieldSystem
	add r5, r0, #0
	add r0, r7, #0
	bl TaskManager_GetEnvironment
	add r4, r0, #0
	mov r0, #0xb
	mov r1, #0x44
	bl AllocFromHeap
	mov r1, #0xe
	lsl r1, r1, #6
	ldr r1, [r4, r1]
	mov r2, #0x44
	add r6, r0, #0
	bl memcpy
	mov r0, #0xe
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	bl FreeToHeap
	add r0, r6, #0
	add r0, #0x27
	ldrb r0, [r0]
	cmp r0, #0x18
	bls _0203CADC
	b _0203CE6C
_0203CADC:
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0203CAE8: ; jump table
	.short _0203CE6C - _0203CAE8 - 2 ; case 0
	.short _0203CB1A - _0203CAE8 - 2 ; case 1
	.short _0203CE6C - _0203CAE8 - 2 ; case 2
	.short _0203CD68 - _0203CAE8 - 2 ; case 3
	.short _0203CBA8 - _0203CAE8 - 2 ; case 4
	.short _0203CC3E - _0203CAE8 - 2 ; case 5
	.short _0203CCD4 - _0203CAE8 - 2 ; case 6
	.short _0203CD2A - _0203CAE8 - 2 ; case 7
	.short _0203CDCA - _0203CAE8 - 2 ; case 8
	.short _0203CDF6 - _0203CAE8 - 2 ; case 9
	.short _0203CE50 - _0203CAE8 - 2 ; case 10
	.short _0203CE2A - _0203CAE8 - 2 ; case 11
	.short _0203CE2A - _0203CAE8 - 2 ; case 12
	.short _0203CE2A - _0203CAE8 - 2 ; case 13
	.short _0203CE2A - _0203CAE8 - 2 ; case 14
	.short _0203CE2A - _0203CAE8 - 2 ; case 15
	.short _0203CE2A - _0203CAE8 - 2 ; case 16
	.short _0203CE2A - _0203CAE8 - 2 ; case 17
	.short _0203CE2A - _0203CAE8 - 2 ; case 18
	.short _0203CE2A - _0203CAE8 - 2 ; case 19
	.short _0203CE2A - _0203CAE8 - 2 ; case 20
	.short _0203CE2A - _0203CAE8 - 2 ; case 21
	.short _0203CE2A - _0203CAE8 - 2 ; case 22
	.short _0203CE2A - _0203CAE8 - 2 ; case 23
	.short _0203CE2A - _0203CAE8 - 2 ; case 24
_0203CB1A:
	mov r0, #0xb
	mov r1, #0x3c
	bl AllocFromHeap
	add r7, r0, #0
	ldr r0, [r5, #0xc]
	bl SaveArray_Party_Get
	str r0, [r7]
	ldr r0, [r5, #0xc]
	bl Save_PlayerData_GetOptionsAddr
	str r0, [r7, #4]
	mov r0, #1
	strb r0, [r7, #0x11]
	add r0, r6, #0
	add r0, #0x26
	ldrb r0, [r0]
	strb r0, [r7, #0x14]
	ldr r0, [r7]
	bl Party_GetCount
	strb r0, [r7, #0x13]
	mov r0, #0
	strh r0, [r7, #0x18]
	strb r0, [r7, #0x12]
	ldr r0, [r5, #0xc]
	bl Save_SpecialRibbons_Get
	str r0, [r7, #0x20]
	ldr r0, [r5, #0xc]
	bl SaveArray_IsNatDexEnabled
	str r0, [r7, #0x1c]
	ldr r0, [r5, #0xc]
	bl sub_02088288
	str r0, [r7, #0x2c]
	mov r0, #0
	str r0, [r7, #0x28]
	mov r0, #0x43
	lsl r0, r0, #2
	add r0, r5, r0
	str r0, [r7, #0x30]
	ldr r0, [r5, #0xc]
	bl sub_0208828C
	str r0, [r7, #0x34]
	ldr r1, _0203CEDC ; =_020FA0B0
	add r0, r7, #0
	bl sub_02089D40
	ldr r0, [r5, #0xc]
	bl Save_PlayerData_GetProfileAddr
	add r1, r0, #0
	add r0, r7, #0
	bl sub_0208AD34
	add r0, r5, #0
	add r1, r7, #0
	bl PokemonSummary_LearnForget_LaunchApp
	mov r0, #0xe
	lsl r0, r0, #6
	str r7, [r4, r0]
	ldr r1, _0203CEE0 ; =sub_0203D580
	add r0, r4, #0
	bl sub_0203C8F0
	b _0203CEFE
_0203CBA8:
	mov r0, #0xb
	mov r1, #0x3c
	bl AllocFromHeap
	add r7, r0, #0
	ldr r0, [r5, #0xc]
	bl SaveArray_Party_Get
	str r0, [r7]
	ldr r0, [r5, #0xc]
	bl Save_PlayerData_GetOptionsAddr
	str r0, [r7, #4]
	mov r1, #1
	add r0, r6, #0
	strb r1, [r7, #0x11]
	add r0, #0x26
	ldrb r0, [r0]
	strb r0, [r7, #0x14]
	strb r1, [r7, #0x13]
	ldrh r0, [r6, #0x2a]
	strh r0, [r7, #0x18]
	mov r0, #2
	strb r0, [r7, #0x12]
	ldr r0, [r5, #0xc]
	bl SaveArray_IsNatDexEnabled
	str r0, [r7, #0x1c]
	ldr r0, [r5, #0xc]
	bl sub_02088288
	str r0, [r7, #0x2c]
	mov r0, #0
	str r0, [r7, #0x28]
	mov r0, #0x43
	lsl r0, r0, #2
	add r0, r5, r0
	str r0, [r7, #0x30]
	ldr r0, [r5, #0xc]
	bl sub_0208828C
	str r0, [r7, #0x34]
	ldr r1, _0203CEE4 ; =_020FA0AC
	add r0, r7, #0
	bl sub_02089D40
	ldr r0, [r5, #0xc]
	bl Save_PlayerData_GetProfileAddr
	add r1, r0, #0
	add r0, r7, #0
	bl sub_0208AD34
	add r0, r5, #0
	add r1, r7, #0
	bl PokemonSummary_LearnForget_LaunchApp
	mov r0, #0xb
	mov r1, #4
	bl AllocFromHeap
	ldrh r1, [r6, #0x28]
	strh r1, [r0]
	mov r1, #0
	strh r1, [r0, #2]
	mov r1, #0xe1
	lsl r1, r1, #2
	str r0, [r4, r1]
	sub r0, r1, #4
	str r7, [r4, r0]
	ldr r1, _0203CEE0 ; =sub_0203D580
	add r0, r4, #0
	bl sub_0203C8F0
	b _0203CEFE
_0203CC3E:
	mov r0, #0xb
	mov r1, #0x3c
	bl AllocFromHeap
	add r7, r0, #0
	ldr r0, [r5, #0xc]
	bl SaveArray_Party_Get
	str r0, [r7]
	ldr r0, [r5, #0xc]
	bl Save_PlayerData_GetOptionsAddr
	str r0, [r7, #4]
	mov r1, #1
	add r0, r6, #0
	strb r1, [r7, #0x11]
	add r0, #0x26
	ldrb r0, [r0]
	strb r0, [r7, #0x14]
	strb r1, [r7, #0x13]
	ldrh r0, [r6, #0x2a]
	strh r0, [r7, #0x18]
	mov r0, #2
	strb r0, [r7, #0x12]
	ldr r0, [r5, #0xc]
	bl SaveArray_IsNatDexEnabled
	str r0, [r7, #0x1c]
	ldr r0, [r5, #0xc]
	bl sub_02088288
	str r0, [r7, #0x2c]
	mov r0, #0
	str r0, [r7, #0x28]
	mov r0, #0x43
	lsl r0, r0, #2
	add r0, r5, r0
	str r0, [r7, #0x30]
	ldr r0, [r5, #0xc]
	bl sub_0208828C
	str r0, [r7, #0x34]
	ldr r1, _0203CEE4 ; =_020FA0AC
	add r0, r7, #0
	bl sub_02089D40
	ldr r0, [r5, #0xc]
	bl Save_PlayerData_GetProfileAddr
	add r1, r0, #0
	add r0, r7, #0
	bl sub_0208AD34
	add r0, r5, #0
	add r1, r7, #0
	bl PokemonSummary_LearnForget_LaunchApp
	mov r0, #0xb
	mov r1, #4
	bl AllocFromHeap
	mov r1, #0
	strh r1, [r0]
	ldr r1, [r6, #0x38]
	strh r1, [r0, #2]
	mov r1, #0xe1
	lsl r1, r1, #2
	str r0, [r4, r1]
	sub r0, r1, #4
	str r7, [r4, r0]
	ldr r1, _0203CEE0 ; =sub_0203D580
	add r0, r4, #0
	bl sub_0203C8F0
	b _0203CEFE
_0203CCD4:
	ldrh r0, [r6, #0x28]
	bl ItemToMailId
	add r3, r0, #0
	mov r0, #0xb
	add r2, r6, #0
	str r0, [sp]
	add r2, #0x26
	ldrb r2, [r2]
	add r0, r5, #0
	mov r1, #2
	bl sub_0203EFEC
	mov r1, #0xe
	lsl r1, r1, #6
	str r0, [r4, r1]
	add r0, r6, #0
	add r0, #0x24
	ldrb r0, [r0]
	cmp r0, #0xa
	ldrh r0, [r6, #0x28]
	bne _0203CD0E
	add r2, r6, #0
	add r2, #0x26
	ldrb r2, [r2]
	mov r1, #0
	bl sub_0203D818
	b _0203CD1A
_0203CD0E:
	add r2, r6, #0
	add r2, #0x26
	ldrb r2, [r2]
	mov r1, #1
	bl sub_0203D818
_0203CD1A:
	mov r1, #0xe1
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, _0203CEE8 ; =sub_0203D830
	add r0, r4, #0
	bl sub_0203C8F0
	b _0203CEFE
_0203CD2A:
	ldr r0, [r5, #0xc]
	bl SaveArray_Party_Get
	add r1, r6, #0
	add r1, #0x26
	ldrb r1, [r1]
	bl Party_GetMonByIndex
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #0xb
	bl sub_0203F050
	mov r1, #0xe
	lsl r1, r1, #6
	str r0, [r4, r1]
	add r2, r6, #0
	add r2, #0x26
	ldrh r0, [r6, #0x28]
	ldrb r2, [r2]
	mov r1, #2
	bl sub_0203D818
	mov r1, #0xe1
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, _0203CEE8 ; =sub_0203D830
	add r0, r4, #0
	bl sub_0203C8F0
	b _0203CEFE
_0203CD68:
	mov r0, #0xb
	mov r1, #4
	bl AllocFromHeap
	add r1, r6, #0
	add r1, #0x26
	ldrb r1, [r1]
	str r1, [r0]
	mov r1, #0xe1
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r5, #0xc]
	bl Save_Bag_Get
	add r7, r0, #0
	ldr r0, [r5, #0xc]
	bl Save_PlayerData_GetProfileAddr
	ldr r1, _0203CEEC ; =_020FA0B8
	add r0, r7, #0
	mov r2, #0xb
	bl Bag_CreateView
	mov r1, #0xe
	lsl r1, r1, #6
	str r0, [r4, r1]
	mov r0, #0x43
	lsl r0, r0, #2
	add r0, r5, r0
	add r3, r5, #0
	str r0, [sp]
	add r3, #0x94
	ldr r0, [r4, r1]
	ldr r1, [r5, #0xc]
	ldr r3, [r3]
	mov r2, #1
	bl sub_0207789C
	mov r1, #0xe
	lsl r1, r1, #6
	ldr r1, [r4, r1]
	add r0, r5, #0
	bl Bag_LaunchApp
	ldr r1, _0203CEF0 ; =sub_0203CFC0
	add r0, r4, #0
	bl sub_0203C8F0
	b _0203CEFE
_0203CDCA:
	mov r0, #0xb
	mov r1, #0xc
	bl AllocFromHeap
	ldrh r1, [r6, #0x28]
	strh r1, [r0, #2]
	mov r1, #3
	strb r1, [r0, #1]
	add r1, r6, #0
	add r1, #0x26
	ldrb r1, [r1]
	strb r1, [r0]
	ldrh r1, [r6, #0x3c]
	strh r1, [r0, #4]
	ldr r1, [r6, #0x40]
	str r1, [r0, #8]
	mov r1, #0xe
	lsl r1, r1, #6
	str r0, [r4, r1]
	mov r0, #8
	strh r0, [r4, #0x26]
	b _0203CEFE
_0203CDF6:
	mov r0, #0xb
	mov r1, #0xc
	bl AllocFromHeap
	add r7, r0, #0
	ldr r0, [r5, #0x20]
	ldr r0, [r0]
	bl MapHeader_GetMapEvolutionMethod
	strh r0, [r7, #2]
	mov r0, #0
	strb r0, [r7, #1]
	add r0, r6, #0
	add r0, #0x26
	ldrb r0, [r0]
	strb r0, [r7]
	ldrh r0, [r6, #0x3c]
	strh r0, [r7, #4]
	ldr r0, [r6, #0x40]
	str r0, [r7, #8]
	mov r0, #0xe
	lsl r0, r0, #6
	str r7, [r4, r0]
	mov r0, #8
	strh r0, [r4, #0x26]
	b _0203CEFE
_0203CE2A:
	sub r0, #0xb
	add r1, sp, #4
	strh r0, [r1, #6]
	add r0, r6, #0
	add r0, #0x26
	ldrb r0, [r0]
	strh r0, [r1, #4]
	str r7, [sp, #4]
	ldrh r1, [r1, #6]
	mov r0, #0
	bl PartyMenu_GetFieldMoveFunc
	mov r1, #0x37
	lsl r1, r1, #4
	add r2, r0, #0
	add r0, sp, #4
	add r1, r4, r1
	blx r2
	b _0203CEFE
_0203CE50:
	mov r1, #0xd6
	lsl r1, r1, #2
	add r0, r5, #0
	add r1, r4, r1
	bl sub_0203E3FC
	mov r1, #0xe
	lsl r1, r1, #6
	str r0, [r4, r1]
	ldr r1, _0203CEF0 ; =sub_0203CFC0
	add r0, r4, #0
	bl sub_0203C8F0
	b _0203CEFE
_0203CE6C:
	add r0, r6, #0
	add r0, #0x24
	ldrb r0, [r0]
	cmp r0, #5
	beq _0203CE86
	cmp r0, #6
	beq _0203CE86
	cmp r0, #7
	beq _0203CE86
	cmp r0, #0x10
	beq _0203CE86
	cmp r0, #8
	bne _0203CEBA
_0203CE86:
	mov r1, #0xd6
	lsl r1, r1, #2
	add r0, r5, #0
	add r1, r4, r1
	bl sub_0203E3FC
	mov r2, #0xe
	lsl r2, r2, #6
	str r0, [r4, r2]
	add r0, r6, #0
	add r0, #0x26
	ldrb r1, [r0]
	ldr r0, [r4, r2]
	cmp r1, #6
	blo _0203CEAC
	mov r1, #0
	bl sub_020778E0
	b _0203CEB0
_0203CEAC:
	bl sub_020778E0
_0203CEB0:
	ldr r1, _0203CEF0 ; =sub_0203CFC0
	add r0, r4, #0
	bl sub_0203C8F0
	b _0203CEFE
_0203CEBA:
	cmp r0, #9
	bne _0203CEF4
	mov r1, #0xd6
	lsl r1, r1, #2
	add r0, r5, #0
	add r1, r4, r1
	bl sub_0203E3FC
	mov r1, #0xe
	lsl r1, r1, #6
	str r0, [r4, r1]
	ldr r1, _0203CEF0 ; =sub_0203CFC0
	add r0, r4, #0
	bl sub_0203C8F0
	b _0203CEFE
	nop
_0203CEDC: .word _020FA0B0
_0203CEE0: .word sub_0203D580
_0203CEE4: .word _020FA0AC
_0203CEE8: .word sub_0203D830
_0203CEEC: .word _020FA0B8
_0203CEF0: .word sub_0203CFC0
_0203CEF4:
	add r0, r5, #0
	bl sub_020505C0
	mov r0, #0xf
	strh r0, [r4, #0x26]
_0203CEFE:
	add r0, r6, #0
	bl FreeToHeap
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end sub_0203CA9C

	thumb_func_start sub_0203CF0C
sub_0203CF0C: ; 0x0203CF0C
	push {r4, lr}
	bl TaskManager_GetEnvironment
	add r4, r0, #0
	mov r0, #0
	bl ov01_021E636C
	mov r0, #0xd5
	ldr r1, _0203CF2C ; =sub_0203CF30
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #4
	strh r0, [r4, #0x26]
	mov r0, #1
	pop {r4, pc}
	nop
_0203CF2C: .word sub_0203CF30
	thumb_func_end sub_0203CF0C

	thumb_func_start sub_0203CF30
sub_0203CF30: ; 0x0203CF30
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl TaskManager_GetFieldSystem
	add r5, r0, #0
	add r0, r4, #0
	bl TaskManager_GetEnvironment
	mov r1, #0xd6
	add r4, r0, #0
	lsl r1, r1, #2
	add r0, r5, #0
	add r1, r4, r1
	bl sub_0203E3FC
	mov r1, #0xe
	lsl r1, r1, #6
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #0
	bl sub_020778E0
	mov r0, #0xd5
	ldr r1, _0203CF70 ; =sub_0203CFC0
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r5, #0
	bl ov01_021F4440
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0203CF70: .word sub_0203CFC0
	thumb_func_end sub_0203CF30

	thumb_func_start sub_0203CF74
sub_0203CF74: ; 0x0203CF74
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r6, r2, #0
	mov r1, #0
	mov r2, #0x44
	add r5, r0, #0
	bl memset
	ldr r0, [r4, #0xc]
	bl SaveArray_Party_Get
	str r0, [r5]
	ldr r0, [r4, #0xc]
	bl Save_Bag_Get
	str r0, [r5, #4]
	ldr r0, [r4, #0xc]
	bl Save_Mailbox_Get
	str r0, [r5, #8]
	ldr r0, [r4, #0xc]
	bl Save_PlayerData_GetOptionsAddr
	str r0, [r5, #0xc]
	mov r0, #0x37
	lsl r0, r0, #4
	add r0, r6, r0
	str r0, [r5, #0x18]
	add r0, r5, #0
	mov r1, #0
	add r0, #0x25
	strb r1, [r0]
	mov r0, #0x43
	lsl r0, r0, #2
	str r4, [r5, #0x1c]
	add r0, r4, r0
	str r0, [r5, #0x20]
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0203CF74

	thumb_func_start sub_0203CFC0
sub_0203CFC0: ; 0x0203CFC0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	bl TaskManager_GetFieldSystem
	str r0, [sp, #8]
	add r0, r5, #0
	bl TaskManager_GetEnvironment
	add r4, r0, #0
	mov r0, #0xb
	bl BagView_New
	add r7, r0, #0
	bl BagView_sizeof
	mov r1, #0xe
	lsl r1, r1, #6
	add r2, r0, #0
	ldr r1, [r4, r1]
	add r0, r7, #0
	bl memcpy
	mov r0, #0xe
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	bl FreeToHeap
	add r0, r7, #0
	bl sub_0207790C
	cmp r0, #5
	bls _0203D004
	b _0203D186
_0203D004:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0203D010: ; jump table
	.short _0203D01C - _0203D010 - 2 ; case 0
	.short _0203D056 - _0203D010 - 2 ; case 1
	.short _0203D066 - _0203D010 - 2 ; case 2
	.short _0203D186 - _0203D010 - 2 ; case 3
	.short _0203D0AC - _0203D010 - 2 ; case 4
	.short _0203D186 - _0203D010 - 2 ; case 5
_0203D01C:
	add r0, r7, #0
	bl sub_02077904
	add r1, sp, #0x10
	strh r0, [r1, #4]
	add r0, r7, #0
	bl sub_02077914
	add r1, sp, #0x10
	strb r0, [r1, #6]
	str r5, [sp, #0x10]
	ldrh r0, [r1, #4]
	mov r1, #ITEMATTR_FIELDUSEFUNC
	mov r2, #0xb
	bl GetItemAttr
	add r1, r0, #0
	lsl r1, r1, #0x10
	mov r0, #0
	lsr r1, r1, #0x10
	bl GetItemFieldUseFunc
	mov r1, #0xd6
	lsl r1, r1, #2
	add r2, r0, #0
	add r0, sp, #0x10
	add r1, r4, r1
	blx r2
	b _0203D190
_0203D056:
	add r0, r7, #0
	bl sub_02077904
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0203D664
	b _0203D190
_0203D066:
	mov r0, #0xb
	mov r1, #0x44
	bl AllocFromHeap
	mov r1, #0
	mov r2, #0x44
	add r5, r0, #0
	bl memset
	ldr r1, [sp, #8]
	add r0, r5, #0
	add r2, r4, #0
	bl sub_0203CF74
	add r0, r5, #0
	mov r1, #9
	add r0, #0x24
	strb r1, [r0]
	add r0, r7, #0
	bl sub_02077904
	strh r0, [r5, #0x28]
	ldr r0, [sp, #8]
	ldr r1, _0203D19C ; =gOverlayTemplate_PartyMenu
	add r2, r5, #0
	bl FieldSystem_LaunchApplication
	mov r0, #0xe
	lsl r0, r0, #6
	str r5, [r4, r0]
	ldr r1, _0203D1A0 ; =sub_0203CA9C
	add r0, r4, #0
	bl sub_0203C8F0
	b _0203D190
_0203D0AC:
	ldr r0, [sp, #8]
	ldr r0, [r0, #0xc]
	bl SaveArray_Party_Get
	str r0, [sp, #4]
	mov r0, #0xe1
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r6, [r0]
	add r0, r7, #0
	bl sub_02077904
	add r5, r0, #0
	ldr r0, [sp, #4]
	add r1, r6, #0
	bl Party_GetMonByIndex
	str r0, [sp, #0xc]
	mov r0, #0xe1
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl FreeToHeap
	add r0, r5, #0
	bl ItemIdIsMail
	cmp r0, #1
	bne _0203D12C
	ldr r0, [sp, #0xc]
	mov r1, #6
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	bne _0203D12C
	add r0, r5, #0
	bl ItemToMailId
	add r3, r0, #0
	mov r0, #0xb
	str r0, [sp]
	lsl r2, r6, #0x18
	ldr r0, [sp, #8]
	mov r1, #2
	lsr r2, r2, #0x18
	bl sub_0203EFEC
	mov r1, #0xe
	lsl r1, r1, #6
	str r0, [r4, r1]
	lsl r2, r6, #0x18
	add r0, r5, #0
	mov r1, #0
	lsr r2, r2, #0x18
	bl sub_0203D818
	mov r1, #0xe1
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, _0203D1A4 ; =sub_0203D830
	add r0, r4, #0
	bl sub_0203C8F0
	b _0203D190
_0203D12C:
	mov r0, #0xb
	mov r1, #0x44
	bl AllocFromHeap
	mov r1, #0
	mov r2, #0x44
	add r5, r0, #0
	bl memset
	ldr r1, [sp, #8]
	add r0, r5, #0
	add r2, r4, #0
	bl sub_0203CF74
	ldr r0, [sp, #4]
	str r0, [r5]
	add r0, r7, #0
	bl sub_02077904
	strh r0, [r5, #0x28]
	add r0, r5, #0
	add r0, #0x26
	strb r6, [r0]
	ldrh r0, [r5, #0x28]
	cmp r0, #0
	bne _0203D164
	mov r1, #0
	b _0203D166
_0203D164:
	mov r1, #0xa
_0203D166:
	add r0, r5, #0
	add r0, #0x24
	strb r1, [r0]
	ldr r0, [sp, #8]
	ldr r1, _0203D19C ; =gOverlayTemplate_PartyMenu
	add r2, r5, #0
	bl FieldSystem_LaunchApplication
	mov r0, #0xe
	lsl r0, r0, #6
	str r5, [r4, r0]
	ldr r1, _0203D1A0 ; =sub_0203CA9C
	add r0, r4, #0
	bl sub_0203C8F0
	b _0203D190
_0203D186:
	ldr r0, [sp, #8]
	bl sub_020505C0
	mov r0, #0xf
	strh r0, [r4, #0x26]
_0203D190:
	add r0, r7, #0
	bl FreeToHeap
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0203D19C: .word gOverlayTemplate_PartyMenu
_0203D1A0: .word sub_0203CA9C
_0203D1A4: .word sub_0203D830
	thumb_func_end sub_0203CFC0

	thumb_func_start sub_0203D1A8
sub_0203D1A8: ; 0x0203D1A8
	push {r4, lr}
	bl TaskManager_GetEnvironment
	add r4, r0, #0
	mov r0, #0
	bl ov01_021E636C
	mov r0, #0xd5
	ldr r1, _0203D1C8 ; =sub_0203D1CC
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #4
	strh r0, [r4, #0x26]
	mov r0, #1
	pop {r4, pc}
	nop
_0203D1C8: .word sub_0203D1CC
	thumb_func_end sub_0203D1A8

	thumb_func_start sub_0203D1CC
sub_0203D1CC: ; 0x0203D1CC
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r0, #0
	bl TaskManager_GetFieldSystem
	add r5, r0, #0
	add r0, r4, #0
	bl TaskManager_GetEnvironment
	add r4, r0, #0
	mov r0, #0xb
	bl sub_020691C4
	mov r1, #0xe
	lsl r1, r1, #6
	str r0, [r4, r1]
	ldr r6, [r4, r1]
	mov r0, #1
	str r5, [sp]
	add r1, r0, #0
	mov r2, #0
	mov r3, #0xff
	str r6, [sp, #4]
	bl sub_02068FC8
	add r0, r5, #0
	add r1, r6, #0
	bl TrainerCard_LaunchApp
	mov r0, #0xd5
	ldr r1, _0203D214 ; =sub_0203D218
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0203D214: .word sub_0203D218
	thumb_func_end sub_0203D1CC

	thumb_func_start sub_0203D218
sub_0203D218: ; 0x0203D218
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl TaskManager_GetFieldSystem
	add r5, r0, #0
	add r0, r4, #0
	bl TaskManager_GetEnvironment
	add r4, r0, #0
	mov r0, #0xe
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	bl sub_020691E0
	add r0, r5, #0
	bl sub_020505C0
	mov r0, #0xf
	strh r0, [r4, #0x26]
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_0203D218

	thumb_func_start sub_0203D244
sub_0203D244: ; 0x0203D244
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl TaskManager_GetEnvironment
	add r4, r0, #0
	add r0, r5, #0
	bl TaskManager_GetFieldSystem
	mov r1, #1
	mov r2, #0
	bl ov01_021F6A9C
	mov r0, #6
	strh r0, [r4, #0x26]
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203D244

	thumb_func_start sub_0203D264
sub_0203D264: ; 0x0203D264
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl TaskManager_GetFieldSystem
	add r5, r0, #0
	add r0, r4, #0
	bl TaskManager_GetEnvironment
	add r4, r0, #0
	add r0, r5, #0
	bl ov01_021F6B00
	cmp r0, #1
	bne _0203D284
	mov r0, #7
	strh r0, [r4, #0x26]
_0203D284:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_0203D264

	thumb_func_start sub_0203D288
sub_0203D288: ; 0x0203D288
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl TaskManager_GetFieldSystem
	add r5, r0, #0
	add r0, r4, #0
	bl TaskManager_GetEnvironment
	add r4, r0, #0
	add r0, r5, #0
	bl ov01_021F6B00
	cmp r0, #0
	bne _0203D2C8
	add r0, r5, #0
	bl ov01_021F6B10
	cmp r0, #1
	bne _0203D2C8
	add r0, r5, #0
	add r0, #0xd0
	ldrh r0, [r0]
	cmp r0, #1
	bne _0203D2C4
	mov r0, #0
	add r5, #0xd0
	strh r0, [r5]
	mov r0, #0x10
	strh r0, [r4, #0x26]
	pop {r3, r4, r5, pc}
_0203D2C4:
	mov r0, #3
	strh r0, [r4, #0x26]
_0203D2C8:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_0203D288

	thumb_func_start sub_0203D2CC
sub_0203D2CC: ; 0x0203D2CC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl TaskManager_GetEnvironment
	add r4, r0, #0
	add r0, r5, #0
	bl TaskManager_GetFieldSystem
	mov r1, #8
	mov r2, #0
	bl ov01_021F6A9C
	mov r0, #0x13
	strh r0, [r4, #0x26]
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203D2CC

	thumb_func_start sub_0203D2EC
sub_0203D2EC: ; 0x0203D2EC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl TaskManager_GetEnvironment
	add r4, r0, #0
	add r0, r5, #0
	bl TaskManager_GetFieldSystem
	mov r0, #0x14
	strh r0, [r4, #0x26]
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_0203D2EC

	thumb_func_start sub_0203D304
sub_0203D304: ; 0x0203D304
	push {r4, lr}
	add r4, r0, #0
	bl TaskManager_GetFieldSystem
	add r0, r4, #0
	bl TaskManager_GetEnvironment
	mov r1, #0x10
	strh r1, [r0, #0x26]
	pop {r4, pc}
	thumb_func_end sub_0203D304

	thumb_func_start sub_0203D318
sub_0203D318: ; 0x0203D318
	push {r4, lr}
	bl TaskManager_GetEnvironment
	add r4, r0, #0
	mov r0, #0
	bl ov01_021E636C
	mov r0, #0xd5
	ldr r1, _0203D338 ; =sub_0203D33C
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #4
	strh r0, [r4, #0x26]
	mov r0, #1
	pop {r4, pc}
	nop
_0203D338: .word sub_0203D33C
	thumb_func_end sub_0203D318

	thumb_func_start sub_0203D33C
sub_0203D33C: ; 0x0203D33C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl TaskManager_GetFieldSystem
	add r5, r0, #0
	add r0, r4, #0
	bl TaskManager_GetEnvironment
	add r4, r0, #0
	add r0, r5, #0
	bl OptionsMenu_LaunchApp
	mov r1, #0xe
	lsl r1, r1, #6
	str r0, [r4, r1]
	ldr r0, _0203D364 ; =sub_0203D368
	sub r1, #0x2c
	str r0, [r4, r1]
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0203D364: .word sub_0203D368
	thumb_func_end sub_0203D33C

	thumb_func_start sub_0203D368
sub_0203D368: ; 0x0203D368
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl TaskManager_GetFieldSystem
	add r5, r0, #0
	add r0, r4, #0
	bl TaskManager_GetEnvironment
	add r4, r0, #0
	mov r0, #0xe
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	bl FreeToHeap
	add r0, r5, #0
	bl sub_020505C0
	mov r0, #0xf
	strh r0, [r4, #0x26]
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_0203D368

	thumb_func_start sub_0203D394
sub_0203D394: ; 0x0203D394
	push {r4, lr}
	bl TaskManager_GetEnvironment
	add r4, r0, #0
	mov r0, #0
	bl ov01_021E636C
	mov r0, #0xd5
	ldr r1, _0203D3B4 ; =sub_0203D3B8
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #4
	strh r0, [r4, #0x26]
	mov r0, #1
	pop {r4, pc}
	nop
_0203D3B4: .word sub_0203D3B8
	thumb_func_end sub_0203D394

	thumb_func_start sub_0203D3B8
sub_0203D3B8: ; 0x0203D3B8
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl TaskManager_GetFieldSystem
	add r5, r0, #0
	add r0, r4, #0
	bl TaskManager_GetEnvironment
	add r4, r0, #0
	mov r0, #0xb
	str r0, [sp]
	mov r3, #0x43
	lsl r3, r3, #2
	ldr r2, [r5, #0xc]
	mov r0, #2
	mov r1, #0
	add r3, r5, r3
	bl EasyChat_CreateArgs
	mov r1, #0xe
	lsl r1, r1, #6
	str r0, [r4, r1]
	add r0, sp, #4
	mov r1, #4
	bl MailMsg_Init_WithBank
	mov r0, #0xe
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	add r1, sp, #4
	bl sub_02090D20
	mov r1, #0xe
	lsl r1, r1, #6
	ldr r1, [r4, r1]
	add r0, r5, #0
	bl EasyChat_LaunchApp
	mov r0, #0xd5
	ldr r1, _0203D414 ; =sub_0203D418
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
_0203D414: .word sub_0203D418
	thumb_func_end sub_0203D3B8

	thumb_func_start sub_0203D418
sub_0203D418: ; 0x0203D418
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	bl TaskManager_GetFieldSystem
	add r4, r0, #0
	add r0, r5, #0
	bl TaskManager_GetEnvironment
	add r5, r0, #0
	mov r0, #0xe
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	bl sub_02090D48
	cmp r0, #0
	bne _0203D466
	mov r0, #0xe
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	add r1, sp, #0
	bl sub_02090D60
	bl sub_02035650
	cmp r0, #0
	beq _0203D460
	add r0, sp, #0
	bl sub_0205AB88
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	add r1, sp, #0
	bl sub_0205AA6C
_0203D460:
	mov r0, #0xa
	strh r0, [r5, #0x26]
	b _0203D46A
_0203D466:
	mov r0, #0xf
	strh r0, [r5, #0x26]
_0203D46A:
	mov r0, #0xe
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	bl EasyChat_FreeArgs
	add r0, r4, #0
	bl sub_020505C0
	add r4, #0x84
	ldr r0, [r4]
	bl sub_0205AD0C
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203D418

	thumb_func_start sub_0203D488
sub_0203D488: ; 0x0203D488
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl TaskManager_GetFieldSystem
	add r4, r0, #0
	add r0, r5, #0
	bl TaskManager_GetEnvironment
	add r1, r4, #0
	add r6, r0, #0
	bl sub_0203C38C
	add r0, r4, #0
	add r0, #0xd2
	ldrb r1, [r0]
	mov r0, #0x3f
	bic r1, r0
	add r0, r4, #0
	add r0, #0xd2
	strb r1, [r0]
	ldr r0, [r4, #0xc]
	bl Save_VarsFlags_Get
	bl Save_VarsFlags_CheckSafariSysFlag
	cmp r0, #1
	bne _0203D4CA
	ldr r1, _0203D4F8 ; =0x00002266
	add r0, r5, #0
	mov r2, #0
	bl StartScriptFromMenu
	b _0203D4EE
_0203D4CA:
	ldr r0, [r4, #0xc]
	bl Save_VarsFlags_Get
	bl Save_VarsFlags_CheckBugContestFlag
	cmp r0, #1
	bne _0203D4E4
	ldr r1, _0203D4FC ; =0x000028A4
	add r0, r5, #0
	mov r2, #0
	bl StartScriptFromMenu
	b _0203D4EE
_0203D4E4:
	add r0, r5, #0
	mov r1, #4
	mov r2, #0
	bl StartScriptFromMenu
_0203D4EE:
	add r0, r6, #0
	bl FreeToHeap
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0203D4F8: .word 0x00002266
_0203D4FC: .word 0x000028A4
	thumb_func_end sub_0203D488

	thumb_func_start sub_0203D500
sub_0203D500: ; 0x0203D500
	push {r4, lr}
	bl TaskManager_GetEnvironment
	add r4, r0, #0
	mov r0, #0
	bl ov01_021E636C
	mov r0, #0xd5
	ldr r1, _0203D520 ; =sub_0203D524
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #4
	strh r0, [r4, #0x26]
	mov r0, #1
	pop {r4, pc}
	nop
_0203D520: .word sub_0203D524
	thumb_func_end sub_0203D500

	thumb_func_start sub_0203D524
sub_0203D524: ; 0x0203D524
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl TaskManager_GetFieldSystem
	add r5, r0, #0
	add r0, r4, #0
	bl TaskManager_GetEnvironment
	add r4, r0, #0
	add r0, r5, #0
	bl PokegearPhone_LaunchApp
	mov r1, #0xe
	lsl r1, r1, #6
	str r0, [r4, r1]
	ldr r0, _0203D54C ; =sub_0203D550
	sub r1, #0x2c
	str r0, [r4, r1]
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0203D54C: .word sub_0203D550
	thumb_func_end sub_0203D524

	thumb_func_start sub_0203D550
sub_0203D550: ; 0x0203D550
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl TaskManager_GetFieldSystem
	add r5, r0, #0
	add r0, r4, #0
	bl TaskManager_GetEnvironment
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020505C0
	mov r0, #0xe
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _0203D578
	mov r0, #0xb
	bl FreeToHeapExplicit
_0203D578:
	mov r0, #0xf
	strh r0, [r4, #0x26]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203D550

	thumb_func_start sub_0203D580
sub_0203D580: ; 0x0203D580
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	bl TaskManager_GetFieldSystem
	str r0, [sp]
	add r0, r4, #0
	bl TaskManager_GetEnvironment
	add r4, r0, #0
	mov r0, #0xb
	mov r1, #0x3c
	bl AllocFromHeap
	mov r1, #0xe
	lsl r1, r1, #6
	ldr r1, [r4, r1]
	mov r2, #0x3c
	add r6, r0, #0
	bl memcpy
	mov r0, #0xe
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	bl FreeToHeap
	ldrb r0, [r6, #0x12]
	cmp r0, #2
	bne _0203D634
	mov r0, #0xb
	mov r1, #0x44
	bl AllocFromHeap
	mov r1, #0xe1
	lsl r1, r1, #2
	ldr r7, [r4, r1]
	ldr r1, [sp]
	add r2, r4, #0
	add r5, r0, #0
	bl sub_0203CF74
	ldrh r0, [r7]
	strh r0, [r5, #0x28]
	add r0, r5, #0
	ldrb r1, [r6, #0x14]
	add r0, #0x26
	strb r1, [r0]
	ldrh r0, [r6, #0x18]
	strh r0, [r5, #0x2a]
	add r0, r5, #0
	ldrb r1, [r6, #0x16]
	add r0, #0x2c
	strb r1, [r0]
	ldrh r0, [r7]
	cmp r0, #0
	beq _0203D5FA
	add r0, r5, #0
	mov r1, #7
	add r0, #0x24
	strb r1, [r0]
	mov r0, #0
	b _0203D604
_0203D5FA:
	add r0, r5, #0
	mov r1, #8
	add r0, #0x24
	strb r1, [r0]
	ldrh r0, [r7, #2]
_0203D604:
	str r0, [r5, #0x38]
	mov r1, #0x43
	ldr r0, [sp]
	lsl r1, r1, #2
	add r0, r0, r1
	str r0, [r5, #0x20]
	ldr r0, [sp]
	ldr r1, _0203D65C ; =gOverlayTemplate_PartyMenu
	add r2, r5, #0
	bl FieldSystem_LaunchApplication
	mov r0, #0xe1
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl FreeToHeap
	mov r0, #0xe
	lsl r0, r0, #6
	str r5, [r4, r0]
	ldr r1, _0203D660 ; =sub_0203CA9C
	add r0, r4, #0
	bl sub_0203C8F0
	b _0203D650
_0203D634:
	mov r1, #0x37
	lsl r1, r1, #4
	ldrb r2, [r6, #0x14]
	ldr r0, [sp]
	add r1, r4, r1
	bl PartyMenu_LaunchApp_Unk1
	mov r1, #0xe
	lsl r1, r1, #6
	str r0, [r4, r1]
	ldr r1, _0203D660 ; =sub_0203CA9C
	add r0, r4, #0
	bl sub_0203C8F0
_0203D650:
	add r0, r6, #0
	bl FreeToHeap
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0203D65C: .word gOverlayTemplate_PartyMenu
_0203D660: .word sub_0203CA9C
	thumb_func_end sub_0203D580

	thumb_func_start sub_0203D664
sub_0203D664: ; 0x0203D664
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl TaskManager_GetFieldSystem
	str r0, [sp, #4]
	add r0, r4, #0
	bl TaskManager_GetEnvironment
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r0, [r0, #0xc]
	bl Save_Bag_Get
	add r4, r0, #0
	mov r5, #0
	mov r6, #1
	mov r7, #0xb
_0203D688:
	add r0, r5, #0
	bl BerryToItemId
	add r1, r0, #0
	add r0, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl Bag_HasItem
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #0x40
	blo _0203D688
	ldr r0, [sp, #4]
	add r3, sp, #8
	add r0, #0x94
	str r0, [sp, #4]
	ldr r0, [r0]
	mov r1, #4
	add r2, sp, #8
	add r3, #1
	bl BagCursor_Field_PocketGetPosition
	ldr r0, [sp]
	ldr r1, _0203D6C4 ; =sub_0203D6C8
	bl sub_0203C8F0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0203D6C4: .word sub_0203D6C8
	thumb_func_end sub_0203D664

	thumb_func_start sub_0203D6C8
sub_0203D6C8: ; 0x0203D6C8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl TaskManager_GetFieldSystem
	add r5, r0, #0
	add r0, r4, #0
	bl TaskManager_GetEnvironment
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x94
	mov r2, #0
	ldr r0, [r0]
	mov r1, #4
	add r3, r2, #0
	bl BagCursor_Field_PocketSetPosition
	mov r1, #0xe
	lsl r1, r1, #6
	ldr r1, [r4, r1]
	mov r0, #0xb
	bl FreeToHeapExplicit
	mov r1, #0xd6
	lsl r1, r1, #2
	add r0, r5, #0
	add r1, r4, r1
	bl sub_0203E3FC
	mov r1, #0xe
	lsl r1, r1, #6
	str r0, [r4, r1]
	ldr r1, _0203D714 ; =sub_0203CFC0
	add r0, r4, #0
	bl sub_0203C8F0
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0203D714: .word sub_0203CFC0
	thumb_func_end sub_0203D6C8

	thumb_func_start sub_0203D718
sub_0203D718: ; 0x0203D718
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl TaskManager_GetFieldSystem
	add r5, r0, #0
	add r0, r4, #0
	bl TaskManager_GetEnvironment
	mov r1, #0xe
	add r4, r0, #0
	lsl r1, r1, #6
	ldr r1, [r4, r1]
	mov r0, #0xb
	bl FreeToHeapExplicit
	mov r1, #0xd6
	lsl r1, r1, #2
	add r0, r5, #0
	add r1, r4, r1
	bl sub_0203E3FC
	mov r1, #0xe
	lsl r1, r1, #6
	str r0, [r4, r1]
	ldr r1, _0203D754 ; =sub_0203CFC0
	add r0, r4, #0
	bl sub_0203C8F0
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0203D754: .word sub_0203CFC0
	thumb_func_end sub_0203D718

	thumb_func_start Task_UseFlyInField
Task_UseFlyInField: ; 0x0203D758
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl TaskManager_GetFieldSystem
	add r7, r0, #0
	add r0, r4, #0
	bl TaskManager_GetEnvironment
	add r4, r0, #0
	mov r0, #0xe1
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	mov r0, #0xb
	ldr r6, [r1]
	bl FreeToHeapExplicit
	mov r0, #0xe
	lsl r0, r0, #6
	ldr r5, [r4, r0]
	ldr r0, [r5, #0x14]
	cmp r0, #0
	bne _0203D7AE
	mov r0, #0xb
	add r1, r5, #0
	bl FreeToHeapExplicit
	mov r1, #0x37
	lsl r1, r1, #4
	lsl r2, r6, #0x18
	add r0, r7, #0
	add r1, r4, r1
	lsr r2, r2, #0x18
	bl PartyMenu_LaunchApp_Unk1
	mov r1, #0xe
	lsl r1, r1, #6
	str r0, [r4, r1]
	ldr r1, _0203D810 ; =sub_0203CA9C
	add r0, r4, #0
	bl sub_0203C8F0
	b _0203D808
_0203D7AE:
	ldr r0, [r7, #0xc]
	bl SaveArray_Party_Get
	add r1, r6, #0
	bl Party_GetMonByIndex
	add r2, r0, #0
	ldrh r0, [r5, #0x20]
	lsl r3, r6, #0x10
	add r1, r7, #0
	str r0, [sp]
	ldr r0, [r5, #0x18]
	lsr r3, r3, #0x10
	lsl r0, r0, #5
	add r0, #0x10
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, [r5, #0x1c]
	lsl r0, r0, #5
	add r0, #0x10
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #0xb
	bl sub_02067BF8
	mov r1, #0xe
	lsl r1, r1, #6
	add r5, r0, #0
	ldr r1, [r4, r1]
	mov r0, #0xb
	bl FreeToHeapExplicit
	add r0, r7, #0
	bl sub_020505C0
	mov r0, #0xd5
	ldr r1, _0203D814 ; =sub_02067C30
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, #0x2c
	str r5, [r4, r0]
	mov r0, #0xc
	strh r0, [r4, #0x26]
_0203D808:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0203D810: .word sub_0203CA9C
_0203D814: .word sub_02067C30
	thumb_func_end Task_UseFlyInField

	thumb_func_start sub_0203D818
sub_0203D818: ; 0x0203D818
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0xb
	mov r1, #4
	add r6, r2, #0
	bl AllocFromHeap
	strh r5, [r0]
	strb r6, [r0, #2]
	strb r4, [r0, #3]
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0203D818

	thumb_func_start sub_0203D830
sub_0203D830: ; 0x0203D830
	push {r4, r5, r6, lr}
	add r4, r0, #0
	bl TaskManager_GetFieldSystem
	add r5, r0, #0
	add r0, r4, #0
	bl TaskManager_GetEnvironment
	add r4, r0, #0
	mov r0, #0xe1
	lsl r0, r0, #2
	ldr r6, [r4, r0]
	ldrb r1, [r6, #3]
	cmp r1, #3
	bhi _0203D928
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0203D85A: ; jump table
	.short _0203D8AC - _0203D85A - 2 ; case 0
	.short _0203D8EC - _0203D85A - 2 ; case 1
	.short _0203D886 - _0203D85A - 2 ; case 2
	.short _0203D862 - _0203D85A - 2 ; case 3
_0203D862:
	sub r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02090F90
	mov r1, #0xd6
	lsl r1, r1, #2
	add r0, r5, #0
	add r1, r4, r1
	bl sub_0203E3FC
	mov r1, #0xe
	lsl r1, r1, #6
	str r0, [r4, r1]
	ldr r1, _0203D938 ; =sub_0203CFC0
	add r0, r4, #0
	bl sub_0203C8F0
	b _0203D928
_0203D886:
	sub r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02090F90
	mov r1, #0x37
	lsl r1, r1, #4
	ldrb r2, [r6, #2]
	add r0, r5, #0
	add r1, r4, r1
	bl PartyMenu_LaunchApp_Unk1
	mov r1, #0xe
	lsl r1, r1, #6
	str r0, [r4, r1]
	ldr r1, _0203D93C ; =sub_0203CA9C
	add r0, r4, #0
	bl sub_0203C8F0
	b _0203D928
_0203D8AC:
	sub r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02090F6C
	cmp r0, #1
	bne _0203D8C4
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0xc
	bl sub_0203D940
	b _0203D928
_0203D8C4:
	mov r0, #0xe
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	bl sub_02090F90
	mov r1, #0x37
	lsl r1, r1, #4
	ldrb r2, [r6, #2]
	add r0, r5, #0
	add r1, r4, r1
	bl PartyMenu_LaunchApp_Unk1
	mov r1, #0xe
	lsl r1, r1, #6
	str r0, [r4, r1]
	ldr r1, _0203D93C ; =sub_0203CA9C
	add r0, r4, #0
	bl sub_0203C8F0
	b _0203D928
_0203D8EC:
	sub r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02090F6C
	cmp r0, #1
	bne _0203D904
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0xb
	bl sub_0203D940
	b _0203D928
_0203D904:
	mov r0, #0xe
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	bl sub_02090F90
	mov r1, #0xd6
	lsl r1, r1, #2
	add r0, r5, #0
	add r1, r4, r1
	bl sub_0203E3FC
	mov r1, #0xe
	lsl r1, r1, #6
	str r0, [r4, r1]
	ldr r1, _0203D938 ; =sub_0203CFC0
	add r0, r4, #0
	bl sub_0203C8F0
_0203D928:
	mov r0, #0xe1
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl FreeToHeap
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_0203D938: .word sub_0203CFC0
_0203D93C: .word sub_0203CA9C
	thumb_func_end sub_0203D830

	thumb_func_start sub_0203D940
sub_0203D940: ; 0x0203D940
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r0, #0xe1
	add r5, r1, #0
	str r2, [sp]
	lsl r0, r0, #2
	ldr r6, [r5, r0]
	mov r0, #0xb
	mov r1, #0x44
	bl AllocFromHeap
	add r1, r7, #0
	add r2, r5, #0
	add r4, r0, #0
	bl sub_0203CF74
	ldrh r0, [r6]
	strh r0, [r4, #0x28]
	add r0, r4, #0
	ldrb r1, [r6, #2]
	add r0, #0x26
	strb r1, [r0]
	add r1, r4, #0
	ldr r0, [sp]
	add r1, #0x24
	strb r0, [r1]
	ldrb r1, [r6, #2]
	ldr r0, [r4]
	bl Party_GetMonByIndex
	add r1, r0, #0
	mov r0, #0xe
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	bl sub_02090F70
	mov r0, #0xe
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	bl sub_02090F90
	ldr r1, _0203D9AC ; =gOverlayTemplate_PartyMenu
	add r0, r7, #0
	add r2, r4, #0
	bl FieldSystem_LaunchApplication
	mov r0, #0xe
	lsl r0, r0, #6
	str r4, [r5, r0]
	ldr r1, _0203D9B0 ; =sub_0203CA9C
	add r0, r5, #0
	bl sub_0203C8F0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0203D9AC: .word gOverlayTemplate_PartyMenu
_0203D9B0: .word sub_0203CA9C
	thumb_func_end sub_0203D940

	thumb_func_start sub_0203D9B4
sub_0203D9B4: ; 0x0203D9B4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl TaskManager_GetFieldSystem
	add r5, r0, #0
	add r0, r4, #0
	bl TaskManager_GetEnvironment
	mov r1, #0xd6
	add r4, r0, #0
	lsl r1, r1, #2
	add r0, r5, #0
	add r1, r4, r1
	bl sub_0203E3FC
	mov r1, #0xe
	lsl r1, r1, #6
	str r0, [r4, r1]
	ldr r1, _0203D9E4 ; =sub_0203CFC0
	add r0, r4, #0
	bl sub_0203C8F0
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0203D9E4: .word sub_0203CFC0
	thumb_func_end sub_0203D9B4

	thumb_func_start sub_0203D9E8
sub_0203D9E8: ; 0x0203D9E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r5, r0, #0
	bl TaskManager_GetFieldSystem
	add r4, r0, #0
	add r0, r5, #0
	bl TaskManager_GetEnvironment
	add r6, r0, #0
	mov r0, #0xe
	lsl r0, r0, #6
	ldr r5, [r6, r0]
	bl Sound_Stop
	mov r0, #3
	mov r1, #0x47
	lsl r2, r0, #0x10
	bl CreateHeap
	ldr r0, [r4, #0xc]
	bl SaveArray_Party_Get
	ldrb r1, [r5]
	str r0, [sp, #0x1c]
	bl Party_GetMonByIndex
	str r0, [sp, #0x20]
	ldrb r0, [r5, #1]
	cmp r0, #0
	ldr r0, [r4, #0xc]
	bne _0203DA72
	bl Save_PlayerData_GetOptionsAddr
	str r0, [sp, #0x24]
	ldr r0, [r4, #0xc]
	bl sub_02088288
	add r7, r0, #0
	ldr r0, [r4, #0xc]
	bl Save_Pokedex_Get
	str r0, [sp, #0x28]
	ldr r0, [r4, #0xc]
	bl Save_Bag_Get
	str r0, [sp, #0x2c]
	ldr r0, [r4, #0xc]
	bl Save_GameStats_Get
	ldr r1, [sp, #0x28]
	str r7, [sp]
	str r1, [sp, #4]
	ldr r1, [sp, #0x2c]
	ldr r3, [sp, #0x24]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r5, #8]
	ldr r1, [sp, #0x20]
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	mov r0, #0x47
	str r0, [sp, #0x18]
	ldrh r2, [r5, #4]
	ldr r0, [sp, #0x1c]
	bl sub_02075A7C
	b _0203DABA
_0203DA72:
	bl Save_PlayerData_GetOptionsAddr
	str r0, [sp, #0x30]
	ldr r0, [r4, #0xc]
	bl sub_02088288
	add r7, r0, #0
	ldr r0, [r4, #0xc]
	bl Save_Pokedex_Get
	str r0, [sp, #0x34]
	ldr r0, [r4, #0xc]
	bl Save_Bag_Get
	str r0, [sp, #0x38]
	ldr r0, [r4, #0xc]
	bl Save_GameStats_Get
	ldr r1, [sp, #0x34]
	str r7, [sp]
	str r1, [sp, #4]
	ldr r1, [sp, #0x38]
	ldr r3, [sp, #0x30]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r5, #8]
	ldr r1, [sp, #0x20]
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	mov r0, #0x47
	str r0, [sp, #0x18]
	ldrh r2, [r5, #4]
	ldr r0, [sp, #0x1c]
	bl sub_02075A7C
_0203DABA:
	add r4, r0, #0
	mov r0, #0xb
	mov r1, #4
	bl AllocFromHeap
	ldrb r1, [r5]
	str r1, [r0]
	mov r1, #0xe1
	lsl r1, r1, #2
	str r0, [r6, r1]
	sub r0, r1, #4
	ldr r0, [r6, r0]
	bl FreeToHeap
	mov r0, #0xe
	lsl r0, r0, #6
	str r4, [r6, r0]
	mov r0, #9
	strh r0, [r6, #0x26]
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0203D9E8

	thumb_func_start sub_0203DAE4
sub_0203DAE4: ; 0x0203DAE4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl TaskManager_GetFieldSystem
	add r5, r0, #0
	add r0, r4, #0
	bl TaskManager_GetEnvironment
	add r4, r0, #0
	mov r0, #0xe
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	bl sub_02075D3C
	cmp r0, #1
	bne _0203DB60
	mov r0, #0xe
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	bl sub_02075D4C
	mov r0, #0x47
	bl DestroyHeap
	ldr r0, _0203DB64 ; =0x000003F3
	mov r1, #0
	bl StopBGM
	mov r0, #0
	bl sub_02004AD8
	ldr r1, [r5, #0x20]
	add r0, r5, #0
	ldr r1, [r1]
	bl sub_02055164
	mov r1, #0xd6
	lsl r1, r1, #2
	add r0, r5, #0
	add r1, r4, r1
	bl sub_0203E3FC
	mov r1, #0xe
	lsl r1, r1, #6
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	ldr r1, [r1]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_020778E0
	mov r0, #0xe1
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl FreeToHeap
	ldr r1, _0203DB68 ; =sub_0203CFC0
	add r0, r4, #0
	bl sub_0203C8F0
_0203DB60:
	pop {r3, r4, r5, pc}
	nop
_0203DB64: .word 0x000003F3
_0203DB68: .word sub_0203CFC0
	thumb_func_end sub_0203DAE4
