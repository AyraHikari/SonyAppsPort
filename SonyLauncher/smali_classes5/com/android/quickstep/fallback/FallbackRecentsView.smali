.class public Lcom/android/quickstep/fallback/FallbackRecentsView;
.super Lcom/android/quickstep/views/RecentsView;
.source "FallbackRecentsView.java"

# interfaces
.implements Lcom/android/launcher3/statemanager/StateManager$StateListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/quickstep/views/RecentsView<",
        "Lcom/android/quickstep/RecentsActivity;",
        "Lcom/android/quickstep/fallback/RecentsState;",
        ">;",
        "Lcom/android/launcher3/statemanager/StateManager$StateListener<",
        "Lcom/android/quickstep/fallback/RecentsState;",
        ">;"
    }
.end annotation


# instance fields
.field private mHomeTask:Lcom/android/systemui/shared/recents/model/Task;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/quickstep/fallback/FallbackRecentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 67
    sget-object v0, Lcom/android/quickstep/FallbackActivityInterface;->INSTANCE:Lcom/android/quickstep/FallbackActivityInterface;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/quickstep/views/RecentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/android/quickstep/BaseActivityInterface;)V

    .line 68
    iget-object v0, p0, Lcom/android/quickstep/fallback/FallbackRecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v0, Lcom/android/quickstep/RecentsActivity;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/statemanager/StateManager;->addStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    .line 69
    return-void
.end method

.method static synthetic lambda$onStateTransitionComplete$1(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 2
    .param p0, "remoteTargetHandle"    # Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    .line 249
    invoke-virtual {p0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/TaskViewSimulator;->setDrawsBelowRecents(Z)V

    return-void
.end method


# virtual methods
.method protected applyLoadPlan(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;)V"
        }
    .end annotation

    .line 170
    .local p1, "taskGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/quickstep/util/GroupTask;>;"
    invoke-virtual {p0}, Lcom/android/quickstep/fallback/FallbackRecentsView;->getTaskIdsForRunningTaskView()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 171
    .local v0, "runningTaskId":I
    iget-object v1, p0, Lcom/android/quickstep/fallback/FallbackRecentsView;->mHomeTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne v1, v0, :cond_2

    .line 172
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 174
    const/4 v1, 0x0

    .line 175
    .local v1, "found":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/quickstep/util/GroupTask;

    .line 176
    .local v3, "group":Lcom/android/quickstep/util/GroupTask;
    invoke-virtual {v3, v0}, Lcom/android/quickstep/util/GroupTask;->containsTask(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 177
    const/4 v1, 0x1

    .line 178
    goto :goto_1

    .line 180
    .end local v3    # "group":Lcom/android/quickstep/util/GroupTask;
    :cond_0
    goto :goto_0

    .line 181
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 182
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 183
    .local v2, "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/quickstep/util/GroupTask;>;"
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 184
    new-instance v3, Lcom/android/quickstep/util/GroupTask;

    iget-object v4, p0, Lcom/android/quickstep/fallback/FallbackRecentsView;->mHomeTask:Lcom/android/systemui/shared/recents/model/Task;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v5}, Lcom/android/quickstep/util/GroupTask;-><init>(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    move-object p1, v2

    .line 188
    .end local v1    # "found":Z
    .end local v2    # "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/quickstep/util/GroupTask;>;"
    :cond_2
    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->applyLoadPlan(Ljava/util/ArrayList;)V

    .line 189
    return-void
.end method

.method protected canLaunchFullscreenTask()Z
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/android/quickstep/fallback/FallbackRecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v0, Lcom/android/quickstep/RecentsActivity;

    sget-object v1, Lcom/android/quickstep/fallback/RecentsState;->OVERVIEW_SPLIT_SELECT:Lcom/android/quickstep/fallback/RecentsState;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/RecentsActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected getHomeTaskView()Lcom/android/quickstep/views/TaskView;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/android/quickstep/fallback/FallbackRecentsView;->mHomeTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/fallback/FallbackRecentsView;->getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public init(Lcom/android/quickstep/views/OverviewActionsView;Lcom/android/quickstep/util/SplitSelectStateController;)V
    .locals 1
    .param p1, "actionsView"    # Lcom/android/quickstep/views/OverviewActionsView;
    .param p2, "splitController"    # Lcom/android/quickstep/util/SplitSelectStateController;

    .line 73
    invoke-super {p0, p1, p2}, Lcom/android/quickstep/views/RecentsView;->init(Lcom/android/quickstep/views/OverviewActionsView;Lcom/android/quickstep/util/SplitSelectStateController;)V

    .line 74
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/fallback/FallbackRecentsView;->setOverviewStateEnabled(Z)V

    .line 75
    invoke-virtual {p0, v0}, Lcom/android/quickstep/fallback/FallbackRecentsView;->setOverlayEnabled(Z)V

    .line 76
    return-void
.end method

.method public initiateSplitSelect(Lcom/android/launcher3/popup/QuickstepSystemShortcut$SplitSelectSource;)V
    .locals 2
    .param p1, "splitSelectSource"    # Lcom/android/launcher3/popup/QuickstepSystemShortcut$SplitSelectSource;

    .line 271
    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->initiateSplitSelect(Lcom/android/launcher3/popup/QuickstepSystemShortcut$SplitSelectSource;)V

    .line 272
    iget-object v0, p0, Lcom/android/quickstep/fallback/FallbackRecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v0, Lcom/android/quickstep/RecentsActivity;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v1, Lcom/android/quickstep/fallback/RecentsState;->OVERVIEW_SPLIT_SELECT:Lcom/android/quickstep/fallback/RecentsState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    .line 273
    return-void
.end method

.method public initiateSplitSelect(Lcom/android/quickstep/views/TaskView;I)V
    .locals 2
    .param p1, "taskView"    # Lcom/android/quickstep/views/TaskView;
    .param p2, "stagePosition"    # I

    .line 216
    invoke-super {p0, p1, p2}, Lcom/android/quickstep/views/RecentsView;->initiateSplitSelect(Lcom/android/quickstep/views/TaskView;I)V

    .line 217
    iget-object v0, p0, Lcom/android/quickstep/fallback/FallbackRecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v0, Lcom/android/quickstep/RecentsActivity;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v1, Lcom/android/quickstep/fallback/RecentsState;->OVERVIEW_SPLIT_SELECT:Lcom/android/quickstep/fallback/RecentsState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    .line 218
    return-void
.end method

.method synthetic lambda$onPrepareGestureEndAnimation$0$com-android-quickstep-fallback-FallbackRecentsView(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Boolean;

    .line 112
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/fallback/FallbackRecentsView;->setCurrentTask(I)V

    return-void
.end method

.method public onGestureAnimationEnd()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/android/quickstep/fallback/FallbackRecentsView;->mCurrentGestureEndTarget:Lcom/android/quickstep/GestureState$GestureEndTarget;

    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne v0, v1, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/android/quickstep/fallback/FallbackRecentsView;->reset()V

    .line 126
    :cond_0
    invoke-super {p0}, Lcom/android/quickstep/views/RecentsView;->onGestureAnimationEnd()V

    .line 127
    return-void
.end method

.method public onGestureAnimationStartOnHome([Lcom/android/systemui/shared/recents/model/Task;Lcom/android/quickstep/RotationTouchHelper;)V
    .locals 1
    .param p1, "homeTask"    # [Lcom/android/systemui/shared/recents/model/Task;
    .param p2, "rotationTouchHelper"    # Lcom/android/quickstep/RotationTouchHelper;

    .line 93
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object v0, p1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/quickstep/fallback/FallbackRecentsView;->mHomeTask:Lcom/android/systemui/shared/recents/model/Task;

    .line 94
    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/fallback/FallbackRecentsView;->onGestureAnimationStart([Lcom/android/systemui/shared/recents/model/Task;Lcom/android/quickstep/RotationTouchHelper;)V

    .line 95
    return-void
.end method

.method public onPrepareGestureEndAnimation(Landroid/animation/AnimatorSet;Lcom/android/quickstep/GestureState$GestureEndTarget;[Lcom/android/quickstep/util/TaskViewSimulator;)V
    .locals 8
    .param p1, "animatorSet"    # Landroid/animation/AnimatorSet;
    .param p2, "endTarget"    # Lcom/android/quickstep/GestureState$GestureEndTarget;
    .param p3, "taskViewSimulators"    # [Lcom/android/quickstep/util/TaskViewSimulator;

    .line 106
    invoke-super {p0, p1, p2, p3}, Lcom/android/quickstep/views/RecentsView;->onPrepareGestureEndAnimation(Landroid/animation/AnimatorSet;Lcom/android/quickstep/GestureState$GestureEndTarget;[Lcom/android/quickstep/util/TaskViewSimulator;)V

    .line 107
    iget-object v0, p0, Lcom/android/quickstep/fallback/FallbackRecentsView;->mHomeTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne p2, v0, :cond_0

    if-eqz p1, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/quickstep/fallback/FallbackRecentsView;->mHomeTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/fallback/FallbackRecentsView;->getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    .line 109
    .local v0, "tv":Lcom/android/quickstep/views/TaskView;
    if-eqz v0, :cond_0

    .line 110
    const/4 v3, 0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x96

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/quickstep/fallback/FallbackRecentsView;->createTaskDismissAnimation(Lcom/android/quickstep/views/TaskView;ZZJZ)Lcom/android/launcher3/anim/PendingAnimation;

    move-result-object v1

    .line 112
    .local v1, "pa":Lcom/android/launcher3/anim/PendingAnimation;
    new-instance v2, Lcom/android/quickstep/fallback/FallbackRecentsView$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/quickstep/fallback/FallbackRecentsView$$ExternalSyntheticLambda1;-><init>(Lcom/android/quickstep/fallback/FallbackRecentsView;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/anim/PendingAnimation;->addEndListener(Ljava/util/function/Consumer;)V

    .line 113
    invoke-virtual {v1}, Lcom/android/launcher3/anim/PendingAnimation;->createPlaybackController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v2

    .line 114
    .local v2, "controller":Lcom/android/launcher3/anim/AnimatorPlaybackController;
    invoke-virtual {v2}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnStart()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 115
    invoke-virtual {v2}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 118
    .end local v0    # "tv":Lcom/android/quickstep/views/TaskView;
    .end local v1    # "pa":Lcom/android/launcher3/anim/PendingAnimation;
    .end local v2    # "controller":Lcom/android/launcher3/anim/AnimatorPlaybackController;
    :cond_0
    return-void
.end method

.method public onStateTransitionComplete(Lcom/android/quickstep/fallback/RecentsState;)V
    .locals 4
    .param p1, "finalState"    # Lcom/android/quickstep/fallback/RecentsState;

    .line 234
    sget-object v0, Lcom/android/quickstep/fallback/RecentsState;->HOME:Lcom/android/quickstep/fallback/RecentsState;

    if-ne p1, v0, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/android/quickstep/fallback/FallbackRecentsView;->reset()V

    .line 238
    :cond_0
    sget-object v0, Lcom/android/quickstep/fallback/RecentsState;->DEFAULT:Lcom/android/quickstep/fallback/RecentsState;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/android/quickstep/fallback/RecentsState;->MODAL_TASK:Lcom/android/quickstep/fallback/RecentsState;

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 239
    .local v0, "isOverlayEnabled":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/quickstep/fallback/FallbackRecentsView;->setOverlayEnabled(Z)V

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FRV onStateTransitionComplete setFreezeVisibility=false, finalState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "b/223498680"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-virtual {p0, v1}, Lcom/android/quickstep/fallback/FallbackRecentsView;->setFreezeViewVisibility(Z)V

    .line 243
    sget-object v2, Lcom/android/quickstep/fallback/RecentsState;->MODAL_TASK:Lcom/android/quickstep/fallback/RecentsState;

    if-eq p1, v2, :cond_3

    .line 244
    invoke-virtual {p0, v1}, Lcom/android/quickstep/fallback/FallbackRecentsView;->setOverviewSelectEnabled(Z)V

    .line 247
    :cond_3
    if-eqz v0, :cond_4

    .line 248
    new-instance v1, Lcom/android/quickstep/fallback/FallbackRecentsView$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/quickstep/fallback/FallbackRecentsView$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/quickstep/fallback/FallbackRecentsView;->runActionOnRemoteHandles(Ljava/util/function/Consumer;)V

    .line 251
    :cond_4
    return-void
.end method

.method public bridge synthetic onStateTransitionComplete(Ljava/lang/Object;)V
    .locals 0

    .line 55
    check-cast p1, Lcom/android/quickstep/fallback/RecentsState;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/fallback/FallbackRecentsView;->onStateTransitionComplete(Lcom/android/quickstep/fallback/RecentsState;)V

    return-void
.end method

.method public onStateTransitionStart(Lcom/android/quickstep/fallback/RecentsState;)V
    .locals 3
    .param p1, "toState"    # Lcom/android/quickstep/fallback/RecentsState;

    .line 222
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/fallback/FallbackRecentsView;->setOverviewStateEnabled(Z)V

    .line 223
    iget-object v1, p0, Lcom/android/quickstep/fallback/FallbackRecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v1, Lcom/android/quickstep/RecentsActivity;

    invoke-virtual {v1}, Lcom/android/quickstep/RecentsActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/quickstep/fallback/RecentsState;->displayOverviewTasksAsGrid(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/quickstep/fallback/FallbackRecentsView;->setOverviewGridEnabled(Z)V

    .line 224
    invoke-virtual {p1}, Lcom/android/quickstep/fallback/RecentsState;->isFullScreen()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/quickstep/fallback/FallbackRecentsView;->setOverviewFullscreenEnabled(Z)V

    .line 225
    sget-object v1, Lcom/android/quickstep/fallback/RecentsState;->MODAL_TASK:Lcom/android/quickstep/fallback/RecentsState;

    if-ne p1, v1, :cond_0

    .line 226
    invoke-virtual {p0, v0}, Lcom/android/quickstep/fallback/FallbackRecentsView;->setOverviewSelectEnabled(Z)V

    .line 228
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FRV onStateTransitionStart setFreezeVisibility=true, toState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "b/223498680"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-virtual {p0, v0}, Lcom/android/quickstep/fallback/FallbackRecentsView;->setFreezeViewVisibility(Z)V

    .line 230
    return-void
.end method

.method public bridge synthetic onStateTransitionStart(Ljava/lang/Object;)V
    .locals 0

    .line 55
    check-cast p1, Lcom/android/quickstep/fallback/RecentsState;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/fallback/FallbackRecentsView;->onStateTransitionStart(Lcom/android/quickstep/fallback/RecentsState;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 264
    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 266
    .local v0, "result":Z
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/quickstep/fallback/FallbackRecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v1, Lcom/android/quickstep/RecentsActivity;

    invoke-virtual {v1}, Lcom/android/quickstep/RecentsActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/fallback/RecentsState;

    invoke-virtual {v1}, Lcom/android/quickstep/fallback/RecentsState;->overviewUi()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public setCurrentTask(I)V
    .locals 3
    .param p1, "runningTaskViewId"    # I

    .line 131
    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->setCurrentTask(I)V

    .line 132
    invoke-virtual {p0}, Lcom/android/quickstep/fallback/FallbackRecentsView;->getTaskIdsForRunningTaskView()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 133
    .local v0, "runningTaskId":I
    iget-object v2, p0, Lcom/android/quickstep/fallback/FallbackRecentsView;->mHomeTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-eq v2, v0, :cond_0

    .line 134
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/quickstep/fallback/FallbackRecentsView;->mHomeTask:Lcom/android/systemui/shared/recents/model/Task;

    .line 135
    invoke-virtual {p0, v1}, Lcom/android/quickstep/fallback/FallbackRecentsView;->setRunningTaskHidden(Z)V

    .line 137
    :cond_0
    return-void
.end method

.method public setModalStateEnabled(Z)V
    .locals 2
    .param p1, "isModalState"    # Z

    .line 202
    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->setModalStateEnabled(Z)V

    .line 203
    if-eqz p1, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/quickstep/fallback/FallbackRecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v0, Lcom/android/quickstep/RecentsActivity;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v1, Lcom/android/quickstep/fallback/RecentsState;->MODAL_TASK:Lcom/android/quickstep/fallback/RecentsState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    goto :goto_0

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/fallback/FallbackRecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v0, Lcom/android/quickstep/RecentsActivity;

    sget-object v1, Lcom/android/quickstep/fallback/RecentsState;->MODAL_TASK:Lcom/android/quickstep/fallback/RecentsState;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/RecentsActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/android/quickstep/fallback/FallbackRecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v0, Lcom/android/quickstep/RecentsActivity;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v1, Lcom/android/quickstep/fallback/RecentsState;->DEFAULT:Lcom/android/quickstep/fallback/RecentsState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    .line 208
    invoke-virtual {p0}, Lcom/android/quickstep/fallback/FallbackRecentsView;->resetModalVisuals()V

    .line 211
    :cond_1
    :goto_0
    return-void
.end method

.method public setOverviewStateEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 255
    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->setOverviewStateEnabled(Z)V

    .line 256
    if-eqz p1, :cond_0

    .line 257
    iget-object v0, p0, Lcom/android/quickstep/fallback/FallbackRecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v0, Lcom/android/quickstep/RecentsActivity;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/fallback/RecentsState;

    .line 258
    .local v0, "state":Lcom/android/quickstep/fallback/RecentsState;
    invoke-virtual {v0}, Lcom/android/quickstep/fallback/RecentsState;->hasClearAllButton()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/quickstep/fallback/FallbackRecentsView;->setDisallowScrollToClearAll(Z)V

    .line 260
    .end local v0    # "state":Lcom/android/quickstep/fallback/RecentsState;
    :cond_0
    return-void
.end method

.method public setRunningTaskHidden(Z)V
    .locals 1
    .param p1, "isHidden"    # Z

    .line 193
    iget-object v0, p0, Lcom/android/quickstep/fallback/FallbackRecentsView;->mHomeTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_0

    .line 195
    const/4 p1, 0x1

    .line 197
    :cond_0
    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->setRunningTaskHidden(Z)V

    .line 198
    return-void
.end method

.method protected shouldAddStubTaskView([Lcom/android/systemui/shared/recents/model/Task;)Z
    .locals 4
    .param p1, "runningTasks"    # [Lcom/android/systemui/shared/recents/model/Task;

    .line 147
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 149
    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->shouldAddStubTaskView([Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v0

    return v0

    .line 152
    :cond_0
    const/4 v0, 0x0

    aget-object v1, p1, v0

    .line 153
    .local v1, "runningTask":Lcom/android/systemui/shared/recents/model/Task;
    iget-object v2, p0, Lcom/android/quickstep/fallback/FallbackRecentsView;->mHomeTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget-object v3, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne v2, v3, :cond_1

    .line 155
    invoke-virtual {p0}, Lcom/android/quickstep/fallback/FallbackRecentsView;->getTaskViewCount()I

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/quickstep/fallback/FallbackRecentsView;->mLoadPlanEverApplied:Z

    if-eqz v2, :cond_1

    .line 159
    return v0

    .line 161
    :cond_1
    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->shouldAddStubTaskView([Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v0

    return v0
.end method

.method public startHome()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/android/quickstep/fallback/FallbackRecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v0, Lcom/android/quickstep/RecentsActivity;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsActivity;->startHome()V

    .line 81
    iget-object v0, p0, Lcom/android/quickstep/fallback/FallbackRecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    iget-object v1, p0, Lcom/android/quickstep/fallback/FallbackRecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v1, Lcom/android/quickstep/RecentsActivity;

    invoke-virtual {v1}, Lcom/android/quickstep/RecentsActivity;->isStarted()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;Z)V

    .line 82
    return-void
.end method
