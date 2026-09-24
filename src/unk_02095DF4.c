#include "unk_02095DF4.h"

#include "global.h"

#include "pokeathlon/pokeathlon.h"

#include "field_system.h"
#include "heap.h"
#include "launch_application.h"
#include "task.h"

typedef struct PokeathlonCourseTaskEnv {
    int state;
    PokeathlonCourseArgs *args;
    BOOL unk8;
    u16 unkC;
    u16 unkE;
    u16 *unk10;
    u16 *unk14;
    u16 *unk18;
    u16 *unk1C;
} PokeathlonCourseTaskEnv;

static BOOL Task_PokeathlonCourse(TaskManager *taskman);

void sub_02095DF4(FieldSystem *fieldSystem, u8 a1, u8 a2, u8 a3, u16 *a4, u16 *a5, u16 *a6, u16 *a7) {
    PokeathlonCourseTaskEnv *env = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(PokeathlonCourseTaskEnv));
    env->state = 0;
    env->unk8 = a1;
    env->unkE = a2;
    env->unkC = a3;
    env->unk10 = a4;
    env->unk14 = a5;
    env->unk18 = a6;
    env->unk1C = a7;
    TaskManager_Call(fieldSystem->taskman, Task_PokeathlonCourse, env);
}

static BOOL Task_PokeathlonCourse(TaskManager *taskman) {
    FieldSystem *fieldSystem = TaskManager_GetFieldSystem(taskman);
    PokeathlonCourseTaskEnv *env = TaskManager_GetEnvironment(taskman);

    switch (env->state) {
    case 0:
        env->args = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(PokeathlonCourseArgs));
        env->args->mode = env->unk8 ? 1 : 0;
        env->args->saveData = FieldSystem_GetSaveData(fieldSystem);
        env->args->unkC = env->unkC;
        env->args->unkF = env->unkE;
        PokeathlonCourse_LaunchApp(fieldSystem, env->args);
        sub_0203E30C();
        env->state = 1;
        break;
    case 1:
        if (!FieldSystem_ApplicationIsRunning(fieldSystem)) {
            env->state = 2;
            FieldSystem_LoadFieldOverlay(fieldSystem);
        }
        break;
    case 2:
        if (sub_020505C8(fieldSystem)) {
            env->state = 3;
        }
        break;
    case 3:
        *env->unk10 = env->args->shouldFreeHeap;
        *env->unk14 = env->args->unkA;
        *env->unk18 = env->args->unk8;
        *env->unk1C = env->args->unkD;
        Heap_Free(env->args);
        Heap_Free(env);
        return TRUE;
    }
    return FALSE;
}
