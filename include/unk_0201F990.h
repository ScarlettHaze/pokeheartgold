#ifndef GUARD_POKEHEARTGOLD_UNK_0201F990_H
#define GUARD_POKEHEARTGOLD_UNK_0201F990_H

#include <nnsys.h>

typedef struct UnkStruct_0201FA34 {
    fx16 width;
    fx16 height;
    fx16 depth;
    int scaleX;
    int scaleY;
    int scaleZ;
} UnkStruct_0201FA34;

BOOL sub_0201F990(NNSG3dResMdl *mdl, const VecFx32 *vec, const MtxFx33 *mtx, VecFx32 *scale);
BOOL sub_0201FA34(const VecFx32 *vec, const UnkStruct_0201FA34 *param);

#endif // GUARD_POKEHEARTGOLD_UNK_0201F990_H
