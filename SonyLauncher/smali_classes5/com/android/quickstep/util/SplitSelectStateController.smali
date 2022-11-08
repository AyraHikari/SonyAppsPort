.class public Lcom/android/quickstep/util/SplitSelectStateController;
.super Ljava/lang/Object;
.source "SplitSelectStateController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;,
        Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDepthController:Lcom/android/launcher3/statehandlers/DepthController;

.field private final mHandler:Landroid/os/Handler;

.field private mInitialTaskId:I

.field private mInitialTaskIntent:Landroid/content/Intent;

.field private mLaunchingTaskView:Lcom/android/quickstep/views/GroupedTaskView;

.field private mRecentsAnimationRunning:Z

.field private mSecondTaskId:I

.field private mSecondTaskPackageName:Ljava/lang/String;

.field private mStagePosition:I

.field private final mStateManager:Lcom/android/launcher3/statemanager/StateManager;

.field private final mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDepthController(Lcom/android/quickstep/util/SplitSelectStateController;)Lcom/android/launcher3/statehandlers/DepthController;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mDepthController:Lcom/android/launcher3/statehandlers/DepthController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/quickstep/util/SplitSelectStateController;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLaunchingTaskView(Lcom/android/quickstep/util/SplitSelectStateController;)Lcom/android/quickstep/views/GroupedTaskView;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mLaunchingTaskView:Lcom/android/quickstep/views/GroupedTaskView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRecentsAnimationRunning(Lcom/android/quickstep/util/SplitSelectStateController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mRecentsAnimationRunning:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStateManager(Lcom/android/quickstep/util/SplitSelectStateController;)Lcom/android/launcher3/statemanager/StateManager;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/launcher3/statemanager/StateManager;Lcom/android/launcher3/statehandlers/DepthController;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "stateManager"    # Lcom/android/launcher3/statemanager/StateManager;
    .param p4, "depthController"    # Lcom/android/launcher3/statehandlers/DepthController;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mInitialTaskId:I

    .line 75
    iput v0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mSecondTaskId:I

    .line 84
    iput-object p1, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mContext:Landroid/content/Context;

    .line 85
    iput-object p2, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mHandler:Landroid/os/Handler;

    .line 86
    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    iput-object v0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    .line 87
    iput-object p3, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    .line 88
    iput-object p4, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mDepthController:Lcom/android/launcher3/statehandlers/DepthController;

    .line 89
    return-void
.end method

.method private isInitialTaskIntentSet()Z
    .locals 2

    .line 331
    iget v0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mInitialTaskId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mInitialTaskIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public getActiveSplitStagePosition()I
    .locals 1

    .line 213
    iget v0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mStagePosition:I

    return v0
.end method

.method public isBothSplitAppsConfirmed()Z
    .locals 2

    .line 327
    invoke-direct {p0}, Lcom/android/quickstep/util/SplitSelectStateController;->isInitialTaskIntentSet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mSecondTaskId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSplitSelectActive()Z
    .locals 2

    .line 319
    invoke-direct {p0}, Lcom/android/quickstep/util/SplitSelectStateController;->isInitialTaskIntentSet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mSecondTaskId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public launchSplitTasks(Ljava/util/function/Consumer;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 112
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mInitialTaskIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 113
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 114
    .local v0, "fillInIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mInitialTaskIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mSecondTaskPackageName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 119
    .end local v0    # "fillInIntent":Landroid/content/Intent;
    :cond_0
    const/4 v0, 0x0

    .line 122
    .restart local v0    # "fillInIntent":Landroid/content/Intent;
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mInitialTaskIntent:Landroid/content/Intent;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x2000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    :goto_1
    move-object v3, v1

    .line 124
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    iget v2, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mInitialTaskId:I

    iget v5, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mSecondTaskId:I

    iget v6, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mStagePosition:I

    const/4 v8, 0x0

    const/high16 v9, 0x3f000000    # 0.5f

    move-object v1, p0

    move-object v4, v0

    move-object v7, p1

    invoke-virtual/range {v1 .. v9}, Lcom/android/quickstep/util/SplitSelectStateController;->launchTasks(ILandroid/app/PendingIntent;Landroid/content/Intent;IILjava/util/function/Consumer;ZF)V

    .line 126
    return-void
.end method

.method public launchTasks(IIILjava/util/function/Consumer;ZF)V
    .locals 9
    .param p1, "taskId1"    # I
    .param p2, "taskId2"    # I
    .param p3, "stagePosition"    # I
    .param p5, "freezeTaskList"    # Z
    .param p6, "splitRatio"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;ZF)V"
        }
    .end annotation

    .line 160
    .local p4, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/quickstep/util/SplitSelectStateController;->launchTasks(ILandroid/app/PendingIntent;Landroid/content/Intent;IILjava/util/function/Consumer;ZF)V

    .line 162
    return-void
.end method

.method public launchTasks(ILandroid/app/PendingIntent;Landroid/content/Intent;IILjava/util/function/Consumer;ZF)V
    .locals 25
    .param p1, "taskId1"    # I
    .param p2, "taskPendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "fillInIntent"    # Landroid/content/Intent;
    .param p4, "taskId2"    # I
    .param p5, "stagePosition"    # I
    .param p7, "freezeTaskList"    # Z
    .param p8, "splitRatio"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/app/PendingIntent;",
            "Landroid/content/Intent;",
            "II",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;ZF)V"
        }
    .end annotation

    .line 175
    .local p6, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    move-object/from16 v6, p0

    const/4 v0, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez p5, :cond_0

    .line 176
    new-array v0, v0, [I

    aput p1, v0, v8

    aput p4, v0, v7

    goto :goto_0

    .line 177
    :cond_0
    new-array v0, v0, [I

    aput p4, v0, v8

    aput p1, v0, v7

    :goto_0
    move-object/from16 v16, v0

    .line 178
    .local v16, "taskIds":[I
    sget-boolean v0, Lcom/android/quickstep/TaskAnimationManager;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v0, :cond_1

    .line 179
    new-instance v9, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;

    move-object v0, v9

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p4

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;-><init>(Lcom/android/quickstep/util/SplitSelectStateController;ILandroid/app/PendingIntent;ILjava/util/function/Consumer;)V

    .line 182
    .local v0, "animationRunner":Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;
    iget-object v1, v6, Lcom/android/quickstep/util/SplitSelectStateController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    aget v18, v16, v8

    const/16 v19, 0x0

    aget v20, v16, v7

    const/16 v21, 0x0

    const/16 v22, 0x1

    new-instance v2, Lcom/android/systemui/shared/system/RemoteTransitionCompat;

    sget-object v3, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    .line 185
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4}, Lcom/android/systemui/shared/system/RemoteTransitionCompat;-><init>(Lcom/android/systemui/shared/system/RemoteTransitionRunner;Ljava/util/concurrent/Executor;Landroid/app/IApplicationThread;)V

    .line 182
    move-object/from16 v17, v1

    move/from16 v23, p8

    move-object/from16 v24, v2

    invoke-virtual/range {v17 .. v24}, Lcom/android/quickstep/SystemUiProxy;->startTasks(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLcom/android/systemui/shared/system/RemoteTransitionCompat;)V

    .line 187
    .end local v0    # "animationRunner":Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;
    goto :goto_1

    .line 188
    :cond_1
    new-instance v9, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;

    move-object v0, v9

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p4

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;-><init>(Lcom/android/quickstep/util/SplitSelectStateController;ILandroid/app/PendingIntent;ILjava/util/function/Consumer;)V

    .line 191
    .local v0, "animationRunner":Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;
    new-instance v24, Landroid/view/RemoteAnimationAdapter;

    .line 192
    invoke-static {v0}, Lcom/android/systemui/shared/system/RemoteAnimationAdapterCompat;->wrapRemoteAnimationRunner(Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;)Landroid/view/IRemoteAnimationRunner$Stub;

    move-result-object v10

    const-wide/16 v11, 0x12c

    const-wide/16 v13, 0x96

    .line 194
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v15

    move-object/from16 v9, v24

    invoke-direct/range {v9 .. v15}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJLandroid/app/IApplicationThread;)V

    .line 196
    .local v24, "adapter":Landroid/view/RemoteAnimationAdapter;
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    .line 197
    .local v1, "mainOpts":Landroid/app/ActivityOptions;
    if-eqz p7, :cond_2

    .line 198
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->setFreezeRecentTasksReordering()V

    .line 200
    :cond_2
    if-nez p2, :cond_3

    .line 201
    iget-object v2, v6, Lcom/android/quickstep/util/SplitSelectStateController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    aget v18, v16, v8

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v19

    aget v20, v16, v7

    const/16 v21, 0x0

    const/16 v22, 0x1

    move-object/from16 v17, v2

    move/from16 v23, p8

    invoke-virtual/range {v17 .. v24}, Lcom/android/quickstep/SystemUiProxy;->startTasksWithLegacyTransition(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;)V

    goto :goto_1

    .line 205
    :cond_3
    iget-object v7, v6, Lcom/android/quickstep/util/SplitSelectStateController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    .line 206
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v11

    const/4 v12, 0x0

    .line 205
    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p4

    move/from16 v13, p5

    move/from16 v14, p8

    move-object/from16 v15, v24

    invoke-virtual/range {v7 .. v15}, Lcom/android/quickstep/SystemUiProxy;->startIntentAndTaskWithLegacyTransition(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;)V

    .line 210
    .end local v0    # "animationRunner":Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;
    .end local v1    # "mainOpts":Landroid/app/ActivityOptions;
    .end local v24    # "adapter":Landroid/view/RemoteAnimationAdapter;
    :goto_1
    return-void
.end method

.method public launchTasks(Lcom/android/quickstep/views/GroupedTaskView;Ljava/util/function/Consumer;Z)V
    .locals 10
    .param p1, "groupedTaskView"    # Lcom/android/quickstep/views/GroupedTaskView;
    .param p3, "freezeTaskList"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/GroupedTaskView;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .line 145
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    iput-object p1, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mLaunchingTaskView:Lcom/android/quickstep/views/GroupedTaskView;

    .line 146
    nop

    .line 147
    invoke-virtual {p1}, Lcom/android/quickstep/views/GroupedTaskView;->getTaskIdAttributeContainers()[Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    move-result-object v0

    .line 148
    .local v0, "taskIdAttributeContainers":[Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;
    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v4, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    const/4 v2, 0x1

    aget-object v2, v0, v2

    .line 149
    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v5, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    aget-object v1, v0, v1

    .line 150
    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getStagePosition()I

    move-result v6

    .line 151
    invoke-virtual {p1}, Lcom/android/quickstep/views/GroupedTaskView;->getSplitRatio()F

    move-result v9

    .line 148
    move-object v3, p0

    move-object v7, p2

    move v8, p3

    invoke-virtual/range {v3 .. v9}, Lcom/android/quickstep/util/SplitSelectStateController;->launchTasks(IIILjava/util/function/Consumer;ZF)V

    .line 152
    return-void
.end method

.method public resetState()V
    .locals 2

    .line 306
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mInitialTaskId:I

    .line 307
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mInitialTaskIntent:Landroid/content/Intent;

    .line 308
    iput v0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mSecondTaskId:I

    .line 309
    iput v0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mStagePosition:I

    .line 310
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mRecentsAnimationRunning:Z

    .line 311
    iput-object v1, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mLaunchingTaskView:Lcom/android/quickstep/views/GroupedTaskView;

    .line 312
    return-void
.end method

.method public setInitialTaskSelect(II)V
    .locals 1
    .param p1, "taskId"    # I
    .param p2, "stagePosition"    # I

    .line 95
    iput p1, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mInitialTaskId:I

    .line 96
    iput p2, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mStagePosition:I

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mInitialTaskIntent:Landroid/content/Intent;

    .line 98
    return-void
.end method

.method public setInitialTaskSelect(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "stagePosition"    # I

    .line 101
    iput-object p1, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mInitialTaskIntent:Landroid/content/Intent;

    .line 102
    iput p2, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mStagePosition:I

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mInitialTaskId:I

    .line 104
    return-void
.end method

.method public setRecentsAnimationRunning(Z)V
    .locals 0
    .param p1, "running"    # Z

    .line 217
    iput-boolean p1, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mRecentsAnimationRunning:Z

    .line 218
    return-void
.end method

.method public setSecondTask(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 1
    .param p1, "task"    # Lcom/android/systemui/shared/recents/model/Task;

    .line 134
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iput v0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mSecondTaskId:I

    .line 135
    iget-object v0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mInitialTaskIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->getTopComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mSecondTaskPackageName:Ljava/lang/String;

    .line 138
    :cond_0
    return-void
.end method
