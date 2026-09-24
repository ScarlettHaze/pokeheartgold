#include "unk_0201F990.h"

#include "global.h"

static void SetBoxTestParam(fx16 x, fx16 y, fx16 z, fx16 width, fx16 height, fx16 depth, GXBoxTestParam *box);

static inline void SetVec(VecFx32 *vec, fx32 x, fx32 y, fx32 z) {
    vec->x = x;
    vec->y = y;
    vec->z = z;
}
static s32 RunBoxTest(const GXBoxTestParam *box);

BOOL sub_0201F990(NNSG3dResMdl *mdl, const VecFx32 *vec, const MtxFx33 *mtx, VecFx32 *scale) {
    GXBoxTestParam box;
    VecFx32 trans = *vec;
    NNSG3dResMdlInfo *info = mdl != NULL ? &mdl->info : NULL;
    VecFx32 boxScale;
    s32 result;

    SetBoxTestParam(info->boxX, info->boxY, info->boxZ, info->boxW, info->boxH, info->boxD, &box);
    NNS_G3dGlbSetBaseTrans(&trans);
    NNS_G3dGlbSetBaseRot(mtx);
    NNS_G3dGlbSetBaseScale(scale);
    NNS_G3dGlbFlush();
    NNS_G3dGePushMtx();
    SetVec(&boxScale, info->boxPosScale, info->boxPosScale, info->boxPosScale);
    NNS_G3dGeBufferOP_N(G3OP_MTX_SCALE, (u32 *)&boxScale, G3OP_MTX_SCALE_NPARAMS);
    result = RunBoxTest(&box);
    NNS_G3dGePopMtx(1);
    return result;
}

BOOL sub_0201FA34(const VecFx32 *vec, const UnkStruct_0201FA34 *param) {
    GXBoxTestParam box;
    s32 result;

    SetBoxTestParam(0, 0, 0, param->width, param->height, param->depth, &box);
    NNS_G3dGlbSetBaseTrans(vec);
    NNS_G3dGlbFlush();
    NNS_G3dGePushMtx();
    VecFx32 boxScale;
    SetVec(&boxScale, param->scaleX << FX32_SHIFT, param->scaleY << FX32_SHIFT, param->scaleZ << FX32_SHIFT);
    NNS_G3dGeBufferOP_N(G3OP_MTX_SCALE, (u32 *)&boxScale, G3OP_MTX_SCALE_NPARAMS);
    result = RunBoxTest(&box);
    NNS_G3dGePopMtx(1);
    return result;
}

static void SetBoxTestParam(fx16 x, fx16 y, fx16 z, fx16 width, fx16 height, fx16 depth, GXBoxTestParam *box) {
    box->x = x;
    box->y = y;
    box->z = z;
    box->width = width;
    box->height = height;
    box->depth = depth;
}

static s32 RunBoxTest(const GXBoxTestParam *box) {
    s32 result = 1;
    // light 0, modulate, no culling, alpha 0, far-plane clipping + 1-dot polygons
    u32 polygonAttr = 0x30C1;
    u32 beginParam;

    NNS_G3dGeBufferOP_N(G3OP_POLYGON_ATTR, &polygonAttr, G3OP_POLYGON_ATTR_NPARAMS);
    beginParam = GX_BEGIN_TRIANGLES;
    NNS_G3dGeBufferOP_N(G3OP_BEGIN, &beginParam, G3OP_BEGIN_NPARAMS);
    NNS_G3dGeBufferOP_N(G3OP_END, NULL, G3OP_END_NPARAMS);
    NNS_G3dGeBufferOP_N(G3OP_BOX_TEST, (const u32 *)box, G3OP_BOX_TEST_NPARAMS);
    NNS_G3dGeFlushBuffer();
    while (G3X_GetBoxTestResult(&result) != 0) {}
    return result;
}
