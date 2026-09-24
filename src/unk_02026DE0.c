#include "unk_02026DE0.h"

#include "global.h"

UnkStruct_02026DE0_Result sub_02026DE0(const UnkStruct_02026DE0 *table, u16 key) {
    UnkStruct_02026DE0_Result result;
    u32 i;

    for (i = 0; i < table->count - 1; i++) {
        if (table->keys[i + 1] > key) {
            break;
        }
    }
    result.unk0 = table->unk4[i];
    result.unk1 = table->unk8[i];
    return result;
}

void sub_02026E18(const u32 *data, UnkStruct_02026DE0 *table) {
    table->count = data[0];
    table->keys = (const u16 *)(data + 1);
    table->unk4 = (const u8 *)(table->keys + table->count);
    table->unk8 = table->unk4 + table->count;
}
