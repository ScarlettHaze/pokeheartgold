#include "unk_020551B8.h"

#include "global.h"

#include "field_system.h"
#include "heap.h"
#include "overlay_01_021EFB38.h"
#include "sound_02004A44.h"
#include "task.h"

typedef struct EncounterEffectTaskEnv {
    int state;
    BOOL done;
    int effect;
    int bgm;
} EncounterEffectTaskEnv;

static BOOL Task_EncounterEffect(TaskManager *taskman) {
    FieldSystem *fieldSystem = TaskManager_GetFieldSystem(taskman);
    EncounterEffectTaskEnv *env = TaskManager_GetEnvironment(taskman);

    switch (env->state) {
    case 0:
        ov01_021EFB64(env->effect);
        ov01_021EFC94(env->effect, fieldSystem, &env->done);
        Sound_SetSceneAndPlayBGM(5, env->bgm, 1);
        env->state++;
        break;
    case 1:
        if (env->done == TRUE) {
            ov01_021EFC04(env->effect);
            Heap_Free(env);
            return TRUE;
        }
        break;
    }
    return FALSE;
}

void sub_02055218(TaskManager *man, int effect, int bgm) {
    EncounterEffectTaskEnv *env = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(EncounterEffectTaskEnv));
    env->state = 0;
    env->done = FALSE;
    env->effect = effect;
    env->bgm = bgm;
    TaskManager_Call(man, Task_EncounterEffect, env);
}
