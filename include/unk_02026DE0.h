#ifndef POKEHEARTGOLD_UNK_02026DE0_H
#define POKEHEARTGOLD_UNK_02026DE0_H

#include "global.h"

typedef struct UnkStruct_02026DE0 {
    const u16 *keys;
    const u8 *unk4;
    const u8 *unk8;
    u32 count;
} UnkStruct_02026DE0;

typedef struct UnkStruct_02026DE0_Result {
    u8 unk0;
    u8 unk1;
} UnkStruct_02026DE0_Result;

UnkStruct_02026DE0_Result sub_02026DE0(const UnkStruct_02026DE0 *table, u16 key);
void sub_02026E18(const u32 *data, UnkStruct_02026DE0 *table);

#endif // POKEHEARTGOLD_UNK_02026DE0_H
