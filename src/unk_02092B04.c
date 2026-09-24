#include "unk_02092B04.h"

#include "global.h"

#include "field/fieldmap.h"

#include "bag_view.h"
#include "field_system.h"
#include "heap.h"
#include "overlay_03.h"
#include "task.h"

// Values of the Task_Mart state enum in overlay_03/shop_menu.c
#define TASK_MART_24 24
#define TASK_MART_25 25
#define TASK_MART_26 26

static u8 sub_02092B40(FieldSystem *fieldSystem, MartData *data);
static void sub_02092B7C(TaskManager *taskManager);

BOOL sub_02092B04(TaskManager *taskManager) {
    FieldSystem *fieldSystem = TaskManager_GetFieldSystem(taskManager);
    MartData *data = TaskManager_GetEnvironment(taskManager);

    switch (data->state) {
    case TASK_MART_24:
        data->state = sub_02092B40(fieldSystem, data);
        break;
    case TASK_MART_25:
        sub_02092B7C(taskManager);
        break;
    }
    return FALSE;
}

static u8 sub_02092B40(FieldSystem *fieldSystem, MartData *data) {
    if (FieldSystem_ApplicationIsRunning(fieldSystem)) {
        return TASK_MART_24;
    }
    if (data->unk2A0 != 0) {
        ((u16 *)data->unk2A0)[1] = sub_0207791C(data->bagView);
    }
    Heap_Free(data->bagView);
    FieldSystem_LoadFieldOverlay(fieldSystem);
    return TASK_MART_25;
}

static void sub_02092B7C(TaskManager *taskManager) {
    FieldSystem *fieldSystem = TaskManager_GetFieldSystem(taskManager);
    MartData *data = TaskManager_GetEnvironment(taskManager);

    if (sub_020505C8(fieldSystem)) {
        FieldMap_FadeScreen(1);
        TaskManager_Jump(taskManager, Task_Mart, data);
        data->state = TASK_MART_26;
    }
}
