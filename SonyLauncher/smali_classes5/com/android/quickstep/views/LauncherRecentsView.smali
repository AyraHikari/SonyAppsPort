.class public Lcom/android/quickstep/views/LauncherRecentsView;
.super Lcom/android/quickstep/views/RecentsView;
.source "LauncherRecentsView.java"

# interfaces
.implements Lcom/android/launcher3/statemanager/StateManager$StateListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/quickstep/views/RecentsView<",
        "Lcom/android/launcher3/BaseQuickstepLauncher;",
        "Lcom/android/launcher3/LauncherState;",
        ">;",
        "Lcom/android/launcher3/statemanager/StateManager$StateListener<",
        "Lcom/android/launcher3/LauncherState;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/views/LauncherRecentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/quickstep/views/LauncherRecentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 62
    sget-object v0, Lcom/android/quickstep/LauncherActivityInterface;->INSTANCE:Lcom/android/quickstep/LauncherActivityInterface;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/quickstep/views/RecentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/android/quickstep/BaseActivityInterface;)V

    .line 63
    iget-object v0, p0, Lcom/android/quickstep/views/LauncherRecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v0, Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/statemanager/StateManager;->addStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    .line 64
    return-void
.end method

.method static synthetic lambda$onStateTransitionComplete$0(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 2
    .param p0, "remoteTargetHandle"    # Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    .line 127
    invoke-virtual {p0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/TaskViewSimulator;->setDrawsBelowRecents(Z)V

    return-void
.end method


# virtual methods
.method protected canLaunchFullscreenTask()Z
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/android/quickstep/views/LauncherRecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v0, Lcom/android/launcher3/BaseQuickstepLauncher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW_SPLIT_SELECT:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BaseQuickstepLauncher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected getDepthController()Lcom/android/launcher3/statehandlers/DepthController;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/android/quickstep/views/LauncherRecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v0, Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/statehandlers/DepthController;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcom/android/quickstep/views/OverviewActionsView;Lcom/android/quickstep/util/SplitSelectStateController;)V
    .locals 2
    .param p1, "actionsView"    # Lcom/android/quickstep/views/OverviewActionsView;
    .param p2, "splitPlaceholderView"    # Lcom/android/quickstep/util/SplitSelectStateController;

    .line 69
    invoke-super {p0, p1, p2}, Lcom/android/quickstep/views/RecentsView;->init(Lcom/android/quickstep/views/OverviewActionsView;Lcom/android/quickstep/util/SplitSelectStateController;)V

    .line 70
    const-string v0, "b/223498680"

    const-string v1, "LauncherRecentsView init setContentAlpha=0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/LauncherRecentsView;->setContentAlpha(F)V

    .line 72
    return-void
.end method

.method public initiateSplitSelect(Lcom/android/launcher3/popup/QuickstepSystemShortcut$SplitSelectSource;)V
    .locals 2
    .param p1, "splitSelectSource"    # Lcom/android/launcher3/popup/QuickstepSystemShortcut$SplitSelectSource;

    .line 187
    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->initiateSplitSelect(Lcom/android/launcher3/popup/QuickstepSystemShortcut$SplitSelectSource;)V

    .line 188
    iget-object v0, p0, Lcom/android/quickstep/views/LauncherRecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v0, Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW_SPLIT_SELECT:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    .line 189
    return-void
.end method

.method public initiateSplitSelect(Lcom/android/quickstep/views/TaskView;I)V
    .locals 2
    .param p1, "taskView"    # Lcom/android/quickstep/views/TaskView;
    .param p2, "stagePosition"    # I

    .line 181
    invoke-super {p0, p1, p2}, Lcom/android/quickstep/views/RecentsView;->initiateSplitSelect(Lcom/android/quickstep/views/TaskView;I)V

    .line 182
    iget-object v0, p0, Lcom/android/quickstep/views/LauncherRecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v0, Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW_SPLIT_SELECT:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    .line 183
    return-void
.end method

.method protected onDismissAnimationEnds()V
    .locals 2

    .line 169
    invoke-super {p0}, Lcom/android/quickstep/views/RecentsView;->onDismissAnimationEnds()V

    .line 170
    iget-object v0, p0, Lcom/android/quickstep/views/LauncherRecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v0, Lcom/android/launcher3/BaseQuickstepLauncher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW_SPLIT_SELECT:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BaseQuickstepLauncher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget v0, p0, Lcom/android/quickstep/views/LauncherRecentsView;->mTaskViewsPrimarySplitTranslation:F

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/LauncherRecentsView;->setTaskViewsPrimarySplitTranslation(F)V

    .line 174
    iget v0, p0, Lcom/android/quickstep/views/LauncherRecentsView;->mTaskViewsSecondarySplitTranslation:F

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/LauncherRecentsView;->setTaskViewsSecondarySplitTranslation(F)V

    .line 176
    :cond_0
    return-void
.end method

.method public onStateTransitionComplete(Lcom/android/launcher3/LauncherState;)V
    .locals 4
    .param p1, "finalState"    # Lcom/android/launcher3/LauncherState;

    .line 112
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_1

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/LauncherRecentsView;->reset()V

    .line 116
    :cond_1
    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW_MODAL_TASK:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 117
    .local v0, "isOverlayEnabled":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/LauncherRecentsView;->setOverlayEnabled(Z)V

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LRV onStateTransitionComplete setFreezeVisibility=false, finalState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "b/223498680"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/LauncherRecentsView;->setFreezeViewVisibility(Z)V

    .line 121
    sget-object v2, Lcom/android/launcher3/LauncherState;->OVERVIEW_MODAL_TASK:Lcom/android/launcher3/LauncherState;

    if-eq p1, v2, :cond_4

    .line 122
    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/LauncherRecentsView;->setOverviewSelectEnabled(Z)V

    .line 125
    :cond_4
    if-eqz v0, :cond_5

    .line 126
    new-instance v1, Lcom/android/quickstep/views/LauncherRecentsView$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/quickstep/views/LauncherRecentsView$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/LauncherRecentsView;->runActionOnRemoteHandles(Ljava/util/function/Consumer;)V

    .line 129
    :cond_5
    return-void
.end method

.method public bridge synthetic onStateTransitionComplete(Ljava/lang/Object;)V
    .locals 0

    .line 49
    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/LauncherRecentsView;->onStateTransitionComplete(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public onStateTransitionStart(Lcom/android/launcher3/LauncherState;)V
    .locals 3
    .param p1, "toState"    # Lcom/android/launcher3/LauncherState;

    .line 100
    iget-boolean v0, p1, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/LauncherRecentsView;->setOverviewStateEnabled(Z)V

    .line 101
    iget-object v0, p0, Lcom/android/quickstep/views/LauncherRecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v0, Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/LauncherState;->displayOverviewTasksAsGrid(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/LauncherRecentsView;->setOverviewGridEnabled(Z)V

    .line 102
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherState;->getOverviewFullscreenProgress()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/LauncherRecentsView;->setOverviewFullscreenEnabled(Z)V

    .line 103
    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW_MODAL_TASK:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_1

    .line 104
    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/LauncherRecentsView;->setOverviewSelectEnabled(Z)V

    .line 106
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LRV onStateTransitionStart setFreezeVisibility=true, toState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "b/223498680"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/LauncherRecentsView;->setFreezeViewVisibility(Z)V

    .line 108
    return-void
.end method

.method public bridge synthetic onStateTransitionStart(Ljava/lang/Object;)V
    .locals 0

    .line 49
    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/LauncherRecentsView;->onStateTransitionStart(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method protected onTaskLaunchAnimationEnd(Z)V
    .locals 2
    .param p1, "success"    # Z

    .line 82
    if-eqz p1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/quickstep/views/LauncherRecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v0, Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->moveToRestState()V

    goto :goto_0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/views/LauncherRecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v0, Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    .line 86
    .local v0, "state":Lcom/android/launcher3/LauncherState;
    iget-object v1, p0, Lcom/android/quickstep/views/LauncherRecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v1, Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseQuickstepLauncher;->getAllAppsController()Lcom/android/launcher3/allapps/AllAppsTransitionController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setState(Lcom/android/launcher3/LauncherState;)V

    .line 88
    .end local v0    # "state":Lcom/android/launcher3/LauncherState;
    :goto_0
    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->onTaskLaunchAnimationEnd(Z)V

    .line 89
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 144
    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 146
    .local v0, "result":Z
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/quickstep/views/LauncherRecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v1, Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseQuickstepLauncher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/LauncherState;

    iget-boolean v1, v1, Lcom/android/launcher3/LauncherState;->overviewUi:Z

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

.method public reset()V
    .locals 1

    .line 93
    invoke-super {p0}, Lcom/android/quickstep/views/RecentsView;->reset()V

    .line 95
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/quickstep/views/LauncherRecentsView;->setLayoutRotation(II)V

    .line 96
    return-void
.end method

.method public setModalStateEnabled(Z)V
    .locals 2
    .param p1, "isModalState"    # Z

    .line 156
    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->setModalStateEnabled(Z)V

    .line 157
    if-eqz p1, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/quickstep/views/LauncherRecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v0, Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW_MODAL_TASK:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    goto :goto_0

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/views/LauncherRecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v0, Lcom/android/launcher3/BaseQuickstepLauncher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW_MODAL_TASK:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BaseQuickstepLauncher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/android/quickstep/views/LauncherRecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v0, Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    .line 162
    invoke-virtual {p0}, Lcom/android/quickstep/views/LauncherRecentsView;->resetModalVisuals()V

    .line 165
    :cond_1
    :goto_0
    return-void
.end method

.method public setOverviewStateEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .line 133
    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->setOverviewStateEnabled(Z)V

    .line 134
    if-eqz p1, :cond_2

    .line 135
    iget-object v0, p0, Lcom/android/quickstep/views/LauncherRecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v0, Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    .line 136
    .local v0, "state":Lcom/android/launcher3/LauncherState;
    iget-object v1, p0, Lcom/android/quickstep/views/LauncherRecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v1, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherState;->getVisibleElements(Lcom/android/launcher3/Launcher;)I

    move-result v1

    and-int/lit8 v1, v1, 0x10

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 138
    .local v1, "hasClearAllButton":Z
    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/quickstep/views/LauncherRecentsView;->setDisallowScrollToClearAll(Z)V

    .line 140
    .end local v0    # "state":Lcom/android/launcher3/LauncherState;
    .end local v1    # "hasClearAllButton":Z
    :cond_2
    return-void
.end method

.method public startHome()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/android/quickstep/views/LauncherRecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v0, Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    .line 77
    iget-object v0, p0, Lcom/android/quickstep/views/LauncherRecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    iget-object v1, p0, Lcom/android/quickstep/views/LauncherRecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v1, Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseQuickstepLauncher;->isStarted()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;Z)V

    .line 78
    return-void
.end method
