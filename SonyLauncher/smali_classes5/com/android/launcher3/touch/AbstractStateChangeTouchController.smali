.class public abstract Lcom/android/launcher3/touch/AbstractStateChangeTouchController;
.super Ljava/lang/Object;
.source "AbstractStateChangeTouchController.java"

# interfaces
.implements Lcom/android/launcher3/util/TouchController;
.implements Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;


# instance fields
.field private mAllAppsOvershootStarted:Z

.field private mCanBlockFling:Z

.field protected final mClearStateOnCancelListener:Landroid/animation/Animator$AnimatorListener;

.field protected mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

.field protected final mDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

.field private mDisplacementShift:F

.field private final mFlingBlockCheck:Lcom/android/launcher3/util/FlingBlockCheck;

.field protected mFromState:Lcom/android/launcher3/LauncherState;

.field protected mGoingBetweenStates:Z

.field private mIsLogContainerSet:Z

.field protected final mLauncher:Lcom/android/launcher3/Launcher;

.field private mNoIntercept:Z

.field protected mProgressMultiplier:F

.field protected mStartContainerType:I

.field private mStartProgress:F

.field protected mStartState:Lcom/android/launcher3/LauncherState;

.field protected final mSwipeDirection:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

.field protected mToState:Lcom/android/launcher3/LauncherState;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;)V
    .locals 1
    .param p1, "l"    # Lcom/android/launcher3/Launcher;
    .param p2, "dir"    # Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/touch/AbstractStateChangeTouchController;)V

    .line 59
    invoke-static {v0}, Lcom/android/launcher3/LauncherAnimUtils;->newCancelListener(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mClearStateOnCancelListener:Landroid/animation/Animator$AnimatorListener;

    .line 60
    new-instance v0, Lcom/android/launcher3/util/FlingBlockCheck;

    invoke-direct {v0}, Lcom/android/launcher3/util/FlingBlockCheck;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mFlingBlockCheck:Lcom/android/launcher3/util/FlingBlockCheck;

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mGoingBetweenStates:Z

    .line 80
    iput-object p1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 81
    new-instance v0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-direct {v0, p1, p0, p2}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;-><init>(Landroid/content/Context;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;)V

    iput-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    .line 82
    iput-object p2, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mSwipeDirection:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

    .line 83
    return-void
.end method

.method private cancelAnimationControllers()V
    .locals 1

    .line 407
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 408
    return-void
.end method

.method private getSwipeDirection()I
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    .line 124
    .local v0, "fromState":Lcom/android/launcher3/LauncherState;
    const/4 v1, 0x0

    .line 125
    .local v1, "swipeDirection":I
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->getTargetState(Lcom/android/launcher3/LauncherState;Z)Lcom/android/launcher3/LauncherState;

    move-result-object v2

    if-eq v2, v0, :cond_0

    .line 126
    or-int/lit8 v1, v1, 0x1

    .line 128
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->getTargetState(Lcom/android/launcher3/LauncherState;Z)Lcom/android/launcher3/LauncherState;

    move-result-object v2

    if-eq v2, v0, :cond_1

    .line 129
    or-int/lit8 v1, v1, 0x2

    .line 131
    :cond_1
    return v1
.end method

.method private logReachedState(Lcom/android/launcher3/LauncherState;)V
    .locals 5
    .param p1, "targetState"    # Lcom/android/launcher3/LauncherState;

    .line 381
    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mStartState:Lcom/android/launcher3/LauncherState;

    if-ne v0, p1, :cond_0

    .line 382
    return-void

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mStartState:Lcom/android/launcher3/LauncherState;

    iget v1, v1, Lcom/android/launcher3/LauncherState;->statsLogOrdinal:I

    .line 386
    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withSrcState(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget v1, p1, Lcom/android/launcher3/LauncherState;->statsLogOrdinal:I

    .line 387
    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withDstState(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    .line 388
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v1

    .line 390
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 391
    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->setPageIndex(I)Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    move-result-object v2

    .line 389
    invoke-virtual {v1, v2}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->setWorkspace(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v1

    .line 392
    invoke-virtual {v1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    .line 388
    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mStartState:Lcom/android/launcher3/LauncherState;

    iget v1, v1, Lcom/android/launcher3/LauncherState;->statsLogOrdinal:I

    iget v2, p1, Lcom/android/launcher3/LauncherState;->statsLogOrdinal:I

    .line 394
    iget-object v3, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mToState:Lcom/android/launcher3/LauncherState;

    iget v3, v3, Lcom/android/launcher3/LauncherState;->ordinal:I

    iget-object v4, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mFromState:Lcom/android/launcher3/LauncherState;

    iget v4, v4, Lcom/android/launcher3/LauncherState;->ordinal:I

    if-le v3, v4, :cond_1

    .line 395
    sget-object v3, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_UNKNOWN_SWIPEUP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    goto :goto_0

    .line 396
    :cond_1
    sget-object v3, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_UNKNOWN_SWIPEDOWN:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 393
    :goto_0
    invoke-static {v1, v2, v3}, Lcom/android/launcher3/logging/StatsLogManager;->getLauncherAtomEvent(IILcom/android/launcher3/logging/StatsLogManager$EventEnum;)Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 397
    return-void
.end method

.method private reinitCurrentAnimation(ZZ)Z
    .locals 4
    .param p1, "reachedToState"    # Z
    .param p2, "isDragTowardPositive"    # Z

    .line 153
    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mFromState:Lcom/android/launcher3/LauncherState;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    goto :goto_0

    .line 154
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mToState:Lcom/android/launcher3/LauncherState;

    :cond_1
    :goto_0
    nop

    .line 155
    .local v0, "newFromState":Lcom/android/launcher3/LauncherState;
    invoke-virtual {p0, v0, p2}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->getTargetState(Lcom/android/launcher3/LauncherState;Z)Lcom/android/launcher3/LauncherState;

    move-result-object v1

    .line 157
    .local v1, "newToState":Lcom/android/launcher3/LauncherState;
    invoke-virtual {p0, v1}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->onReinitToState(Lcom/android/launcher3/LauncherState;)V

    .line 159
    iget-object v2, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mFromState:Lcom/android/launcher3/LauncherState;

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mToState:Lcom/android/launcher3/LauncherState;

    if-eq v1, v2, :cond_3

    :cond_2
    if-ne v0, v1, :cond_4

    .line 160
    :cond_3
    const/4 v2, 0x0

    return v2

    .line 163
    :cond_4
    iput-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mFromState:Lcom/android/launcher3/LauncherState;

    .line 164
    iput-object v1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mToState:Lcom/android/launcher3/LauncherState;

    .line 166
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mStartProgress:F

    .line 167
    iget-object v2, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-eqz v2, :cond_5

    .line 168
    invoke-virtual {v2}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getTarget()Landroid/animation/AnimatorSet;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mClearStateOnCancelListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 170
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->initCurrentAnimation()F

    move-result v2

    iput v2, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mProgressMultiplier:F

    .line 171
    iget-object v2, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v2}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnStart()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 172
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method protected abstract canInterceptTouch(Landroid/view/MotionEvent;)Z
.end method

.method protected clearState()V
    .locals 2

    .line 400
    invoke-direct {p0}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->cancelAnimationControllers()V

    .line 401
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mGoingBetweenStates:Z

    .line 402
    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v0}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->finishedScrolling()V

    .line 403
    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->setDetectableScrollConditions(IZ)V

    .line 404
    return-void
.end method

.method protected getConfigForStates(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/LauncherState;)Lcom/android/launcher3/states/StateAnimationConfig;
    .locals 1
    .param p1, "fromState"    # Lcom/android/launcher3/LauncherState;
    .param p2, "toState"    # Lcom/android/launcher3/LauncherState;

    .line 262
    new-instance v0, Lcom/android/launcher3/states/StateAnimationConfig;

    invoke-direct {v0}, Lcom/android/launcher3/states/StateAnimationConfig;-><init>()V

    return-object v0
.end method

.method protected getShiftRange()F
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAllAppsController()Lcom/android/launcher3/allapps/AllAppsTransitionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->getShiftRange()F

    move-result v0

    return v0
.end method

.method protected abstract getTargetState(Lcom/android/launcher3/LauncherState;Z)Lcom/android/launcher3/LauncherState;
.end method

.method protected goToTargetState(Lcom/android/launcher3/LauncherState;)V
    .locals 4
    .param p1, "targetState"    # Lcom/android/launcher3/LauncherState;

    .line 368
    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    new-instance v2, Lcom/android/launcher3/touch/AbstractStateChangeTouchController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/touch/AbstractStateChangeTouchController;Lcom/android/launcher3/LauncherState;)V

    .line 372
    invoke-static {v2}, Lcom/android/launcher3/anim/AnimatorListeners;->forEndCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    .line 371
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;ZLandroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 374
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->logReachedState(Lcom/android/launcher3/LauncherState;)V

    .line 376
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherRootView;->getSysUiScrim()Lcom/android/launcher3/graphics/SysUiScrim;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v1

    invoke-virtual {v0, v2}, Lcom/android/launcher3/graphics/SysUiScrim;->createSysuiMultiplierAnim([F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 377
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 378
    return-void
.end method

.method protected abstract initCurrentAnimation()F
.end method

.method synthetic lambda$goToTargetState$1$com-android-launcher3-touch-AbstractStateChangeTouchController(Lcom/android/launcher3/LauncherState;)V
    .locals 0
    .param p1, "targetState"    # Lcom/android/launcher3/LauncherState;

    .line 372
    invoke-direct {p0, p1}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->logReachedState(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method synthetic lambda$onDragEnd$0$com-android-launcher3-touch-AbstractStateChangeTouchController(Lcom/android/launcher3/LauncherState;)V
    .locals 0
    .param p1, "targetState"    # Lcom/android/launcher3/LauncherState;

    .line 334
    invoke-virtual {p0, p1}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->onSwipeInteractionCompleted(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 89
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 90
    invoke-virtual {p0, p1}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->canInterceptTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mNoIntercept:Z

    .line 91
    if-eqz v0, :cond_0

    .line 92
    return v1

    .line 98
    :cond_0
    const/4 v0, 0x0

    .line 100
    .local v0, "ignoreSlopWhenSettling":Z
    iget-object v3, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-eqz v3, :cond_1

    .line 101
    const/4 v2, 0x3

    .line 102
    .local v2, "directionsToDetectScroll":I
    const/4 v0, 0x1

    goto :goto_0

    .line 104
    .end local v2    # "directionsToDetectScroll":I
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->getSwipeDirection()I

    move-result v3

    .line 105
    .local v3, "directionsToDetectScroll":I
    if-nez v3, :cond_2

    .line 106
    iput-boolean v2, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mNoIntercept:Z

    .line 107
    return v1

    .line 105
    :cond_2
    move v2, v3

    .line 110
    .end local v3    # "directionsToDetectScroll":I
    .restart local v2    # "directionsToDetectScroll":I
    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v3, v2, v0}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->setDetectableScrollConditions(IZ)V

    .line 114
    .end local v0    # "ignoreSlopWhenSettling":Z
    .end local v2    # "directionsToDetectScroll":I
    :cond_3
    iget-boolean v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mNoIntercept:Z

    if-eqz v0, :cond_4

    .line 115
    return v1

    .line 118
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->onControllerTouchEvent(Landroid/view/MotionEvent;)Z

    .line 119
    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v0}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->isDraggingOrSettling()Z

    move-result v0

    return v0
.end method

.method public final onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 136
    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onDrag(F)Z
    .locals 7
    .param p1, "displacement"    # F

    .line 202
    iget v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mProgressMultiplier:F

    iget v1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mDisplacementShift:F

    sub-float v1, p1, v1

    mul-float/2addr v0, v1

    .line 203
    .local v0, "deltaProgress":F
    iget v1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mStartProgress:F

    add-float/2addr v1, v0

    .line 204
    .local v1, "progress":F
    invoke-virtual {p0, v1}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->updateProgress(F)V

    .line 205
    iget-object v2, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mSwipeDirection:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

    iget v3, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mDisplacementShift:F

    sub-float v3, p1, v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;->isPositive(F)Z

    move-result v2

    .line 207
    .local v2, "isDragTowardPositive":Z
    const/4 v3, 0x0

    cmpg-float v3, v1, v3

    const/4 v4, 0x1

    if-gtz v3, :cond_0

    .line 208
    const/4 v3, 0x0

    invoke-direct {p0, v3, v2}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->reinitCurrentAnimation(ZZ)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 209
    iput p1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mDisplacementShift:F

    .line 210
    iget-boolean v3, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mCanBlockFling:Z

    if-eqz v3, :cond_3

    .line 211
    iget-object v3, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mFlingBlockCheck:Lcom/android/launcher3/util/FlingBlockCheck;

    invoke-virtual {v3}, Lcom/android/launcher3/util/FlingBlockCheck;->blockFling()V

    goto :goto_0

    .line 214
    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v5, v1, v3

    if-ltz v5, :cond_2

    .line 215
    invoke-direct {p0, v4, v2}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->reinitCurrentAnimation(ZZ)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 216
    iput p1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mDisplacementShift:F

    .line 217
    iget-boolean v5, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mCanBlockFling:Z

    if-eqz v5, :cond_1

    .line 218
    iget-object v5, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mFlingBlockCheck:Lcom/android/launcher3/util/FlingBlockCheck;

    invoke-virtual {v5}, Lcom/android/launcher3/util/FlingBlockCheck;->blockFling()V

    .line 221
    :cond_1
    iget-object v5, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mToState:Lcom/android/launcher3/LauncherState;

    sget-object v6, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-ne v5, v6, :cond_3

    .line 222
    iput-boolean v4, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mAllAppsOvershootStarted:Z

    .line 224
    iget-object v5, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v5

    sub-float v6, v1, v3

    sub-float v3, v1, v3

    invoke-virtual {v5, v6, v3}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->onPull(FF)V

    goto :goto_0

    .line 228
    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mFlingBlockCheck:Lcom/android/launcher3/util/FlingBlockCheck;

    invoke-virtual {v3}, Lcom/android/launcher3/util/FlingBlockCheck;->onEvent()V

    .line 232
    :cond_3
    :goto_0
    return v4
.end method

.method public onDrag(FLandroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "displacement"    # F
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .line 237
    iget-boolean v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mIsLogContainerSet:Z

    if-nez v0, :cond_3

    .line 238
    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mStartState:Lcom/android/launcher3/LauncherState;

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-ne v0, v1, :cond_0

    .line 239
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mStartContainerType:I

    goto :goto_0

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mStartState:Lcom/android/launcher3/LauncherState;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne v0, v1, :cond_1

    .line 241
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mStartContainerType:I

    goto :goto_0

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mStartState:Lcom/android/launcher3/LauncherState;

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-ne v0, v1, :cond_2

    .line 243
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mStartContainerType:I

    .line 245
    :cond_2
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mIsLogContainerSet:Z

    .line 247
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->onDrag(F)Z

    move-result v0

    return v0
.end method

.method public onDragEnd(F)V
    .locals 21
    .param p1, "velocity"    # F

    .line 267
    move-object/from16 v7, p0

    move/from16 v8, p1

    iget-object v0, v7, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-nez v0, :cond_0

    .line 270
    return-void

    .line 273
    :cond_0
    iget-object v0, v7, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v0, v8}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->isFling(F)Z

    move-result v0

    .line 275
    .local v0, "fling":Z
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v2, v7, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mFlingBlockCheck:Lcom/android/launcher3/util/FlingBlockCheck;

    invoke-virtual {v2}, Lcom/android/launcher3/util/FlingBlockCheck;->isBlocked()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    move v10, v2

    .line 276
    .local v10, "blockedFling":Z
    if-eqz v10, :cond_2

    .line 277
    const/4 v0, 0x0

    move v11, v0

    goto :goto_1

    .line 276
    :cond_2
    move v11, v0

    .line 281
    .end local v0    # "fling":Z
    .local v11, "fling":Z
    :goto_1
    iget-object v0, v7, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getProgressFraction()F

    move-result v12

    .line 282
    .local v12, "progress":F
    iget v0, v7, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mProgressMultiplier:F

    mul-float v13, v8, v0

    .line 283
    .local v13, "progressVelocity":F
    iget-object v0, v7, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getInterpolatedProgress()F

    move-result v14

    .line 284
    .local v14, "interpolatedProgress":F
    if-eqz v11, :cond_4

    .line 286
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget v2, v7, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mProgressMultiplier:F

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_3

    .line 287
    iget-object v0, v7, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mToState:Lcom/android/launcher3/LauncherState;

    goto :goto_2

    :cond_3
    iget-object v0, v7, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mFromState:Lcom/android/launcher3/LauncherState;

    :goto_2
    move-object v15, v0

    .local v0, "targetState":Lcom/android/launcher3/LauncherState;
    goto :goto_5

    .line 292
    .end local v0    # "targetState":Lcom/android/launcher3/LauncherState;
    :cond_4
    iget-object v0, v7, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 291
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v0, :cond_6

    iget-object v0, v7, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mToState:Lcom/android/launcher3/LauncherState;

    sget-object v2, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-eq v0, v2, :cond_5

    iget-object v0, v7, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mFromState:Lcom/android/launcher3/LauncherState;

    sget-object v2, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-ne v0, v2, :cond_6

    .line 293
    :cond_5
    const v0, 0x3e99999a    # 0.3f

    goto :goto_3

    .line 294
    :cond_6
    const/high16 v0, 0x3f000000    # 0.5f

    :goto_3
    nop

    .line 296
    .local v0, "successTransitionProgress":F
    cmpl-float v2, v14, v0

    if-lez v2, :cond_7

    iget-object v2, v7, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mToState:Lcom/android/launcher3/LauncherState;

    goto :goto_4

    :cond_7
    iget-object v2, v7, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mFromState:Lcom/android/launcher3/LauncherState;

    :goto_4
    move-object v15, v2

    .line 303
    .end local v0    # "successTransitionProgress":F
    .local v15, "targetState":Lcom/android/launcher3/LauncherState;
    :goto_5
    if-eqz v10, :cond_8

    iget-object v0, v7, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mFromState:Lcom/android/launcher3/LauncherState;

    if-ne v15, v0, :cond_8

    .line 304
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/LauncherAnimUtils;->blockedFlingDurationFactor(F)I

    move-result v0

    goto :goto_6

    :cond_8
    move v0, v1

    :goto_6
    move v6, v0

    .line 306
    .local v6, "durationMultiplier":I
    iget-object v0, v7, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mToState:Lcom/android/launcher3/LauncherState;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-ne v15, v0, :cond_a

    .line 307
    const/high16 v0, 0x3f800000    # 1.0f

    .line 308
    .local v0, "endProgress":F
    cmpl-float v4, v12, v2

    if-ltz v4, :cond_9

    .line 309
    const-wide/16 v2, 0x0

    .line 310
    .local v2, "duration":J
    const/high16 v4, 0x3f800000    # 1.0f

    move v9, v0

    move-wide/from16 v17, v2

    move/from16 v16, v10

    move v10, v4

    .local v4, "startProgress":F
    goto :goto_7

    .line 312
    .end local v2    # "duration":J
    .end local v4    # "startProgress":F
    :cond_9
    iget-object v4, v7, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 313
    invoke-static {v4}, Lcom/android/launcher3/util/window/RefreshRateTracker;->getSingleFrameMs(Landroid/content/Context;)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v13

    add-float/2addr v4, v12

    .line 312
    invoke-static {v4, v3, v2}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v4

    .line 314
    .restart local v4    # "startProgress":F
    nop

    .line 315
    invoke-static {v12, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    sub-float v2, v0, v2

    .line 314
    invoke-static {v8, v2}, Lcom/android/launcher3/touch/BaseSwipeDetector;->calculateDuration(FF)J

    move-result-wide v2

    move/from16 v16, v10

    .end local v10    # "blockedFling":Z
    .local v16, "blockedFling":Z
    int-to-long v9, v6

    mul-long/2addr v2, v9

    move v9, v0

    move-wide/from16 v17, v2

    move v10, v4

    .restart local v2    # "duration":J
    goto :goto_7

    .line 320
    .end local v0    # "endProgress":F
    .end local v2    # "duration":J
    .end local v4    # "startProgress":F
    .end local v16    # "blockedFling":Z
    .restart local v10    # "blockedFling":Z
    :cond_a
    move/from16 v16, v10

    .end local v10    # "blockedFling":Z
    .restart local v16    # "blockedFling":Z
    iget-object v0, v7, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getTarget()Landroid/animation/AnimatorSet;

    move-result-object v0

    iget-object v4, v7, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mClearStateOnCancelListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 321
    iget-object v0, v7, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnCancel()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 323
    const/4 v0, 0x0

    .line 324
    .restart local v0    # "endProgress":F
    cmpg-float v4, v12, v3

    if-gtz v4, :cond_b

    .line 325
    const-wide/16 v2, 0x0

    .line 326
    .restart local v2    # "duration":J
    const/4 v4, 0x0

    move v9, v0

    move-wide/from16 v17, v2

    move v10, v4

    .restart local v4    # "startProgress":F
    goto :goto_7

    .line 328
    .end local v2    # "duration":J
    .end local v4    # "startProgress":F
    :cond_b
    iget-object v4, v7, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 329
    invoke-static {v4}, Lcom/android/launcher3/util/window/RefreshRateTracker;->getSingleFrameMs(Landroid/content/Context;)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v13

    add-float/2addr v4, v12

    .line 328
    invoke-static {v4, v3, v2}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v4

    .line 330
    .restart local v4    # "startProgress":F
    nop

    .line 331
    invoke-static {v12, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    sub-float/2addr v2, v0

    .line 330
    invoke-static {v8, v2}, Lcom/android/launcher3/touch/BaseSwipeDetector;->calculateDuration(FF)J

    move-result-wide v2

    int-to-long v9, v6

    mul-long/2addr v2, v9

    move v9, v0

    move-wide/from16 v17, v2

    move v10, v4

    .line 334
    .end local v0    # "endProgress":F
    .end local v4    # "startProgress":F
    .local v9, "endProgress":F
    .local v10, "startProgress":F
    .local v17, "duration":J
    :goto_7
    iget-object v0, v7, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    new-instance v2, Lcom/android/launcher3/touch/AbstractStateChangeTouchController$$ExternalSyntheticLambda2;

    invoke-direct {v2, v7, v15}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/touch/AbstractStateChangeTouchController;Lcom/android/launcher3/LauncherState;)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setEndAction(Ljava/lang/Runnable;)V

    .line 335
    iget-object v0, v7, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 336
    .local v5, "anim":Landroid/animation/ValueAnimator;
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v2, 0x0

    aput v10, v0, v2

    aput v9, v0, v1

    invoke-virtual {v5, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 337
    move-object/from16 v0, p0

    move-object v1, v5

    move-wide/from16 v2, v17

    move-object v4, v15

    move/from16 v19, v9

    move-object v9, v5

    .end local v5    # "anim":Landroid/animation/ValueAnimator;
    .local v9, "anim":Landroid/animation/ValueAnimator;
    .local v19, "endProgress":F
    move/from16 v5, p1

    move/from16 v20, v6

    .end local v6    # "durationMultiplier":I
    .local v20, "durationMultiplier":I
    move v6, v11

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->updateSwipeCompleteAnimation(Landroid/animation/ValueAnimator;JLcom/android/launcher3/LauncherState;FZ)V

    .line 338
    iget-object v0, v7, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnStart()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 339
    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-ne v15, v0, :cond_d

    .line 340
    iget-boolean v0, v7, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mAllAppsOvershootStarted:Z

    if-eqz v0, :cond_c

    .line 341
    iget-object v0, v7, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->onRelease()V

    .line 342
    const/4 v0, 0x0

    iput-boolean v0, v7, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mAllAppsOvershootStarted:Z

    goto :goto_8

    .line 344
    :cond_c
    iget-object v0, v7, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0, v9, v8, v12}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->addSpringFromFlingUpdateListener(Landroid/animation/ValueAnimator;FF)V

    .line 347
    :cond_d
    :goto_8
    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->start()V

    .line 348
    return-void
.end method

.method public onDragStart(ZF)V
    .locals 3
    .param p1, "start"    # Z
    .param p2, "startDisplacement"    # F

    .line 183
    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    iput-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mStartState:Lcom/android/launcher3/LauncherState;

    .line 184
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mIsLogContainerSet:Z

    .line 186
    iget-object v2, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-nez v2, :cond_0

    .line 187
    iput-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mFromState:Lcom/android/launcher3/LauncherState;

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mToState:Lcom/android/launcher3/LauncherState;

    .line 189
    invoke-direct {p0}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->cancelAnimationControllers()V

    .line 190
    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v0}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->wasInitialTouchPositive()Z

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->reinitCurrentAnimation(ZZ)Z

    .line 191
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mDisplacementShift:F

    goto :goto_0

    .line 193
    :cond_0
    invoke-virtual {v2}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->pause()V

    .line 194
    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getProgressFraction()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mStartProgress:F

    .line 196
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mFromState:Lcom/android/launcher3/LauncherState;

    sget-object v2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mCanBlockFling:Z

    .line 197
    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mFlingBlockCheck:Lcom/android/launcher3/util/FlingBlockCheck;

    invoke-virtual {v0}, Lcom/android/launcher3/util/FlingBlockCheck;->unblockFling()V

    .line 198
    return-void
.end method

.method protected onReachedFinalState(Lcom/android/launcher3/LauncherState;)V
    .locals 0
    .param p1, "newToState"    # Lcom/android/launcher3/LauncherState;

    .line 179
    return-void
.end method

.method protected onReinitToState(Lcom/android/launcher3/LauncherState;)V
    .locals 0
    .param p1, "newToState"    # Lcom/android/launcher3/LauncherState;

    .line 176
    return-void
.end method

.method protected onSwipeInteractionCompleted(Lcom/android/launcher3/LauncherState;)V
    .locals 2
    .param p1, "targetState"    # Lcom/android/launcher3/LauncherState;

    .line 357
    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mToState:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->onReachedFinalState(Lcom/android/launcher3/LauncherState;)V

    .line 358
    invoke-virtual {p0}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->clearState()V

    .line 359
    iget-boolean v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mGoingBetweenStates:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mToState:Lcom/android/launcher3/LauncherState;

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 360
    .local v0, "shouldGoToTargetState":Z
    :goto_1
    if-eqz v0, :cond_2

    .line 361
    invoke-virtual {p0, p1}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->goToTargetState(Lcom/android/launcher3/LauncherState;)V

    goto :goto_2

    .line 363
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mToState:Lcom/android/launcher3/LauncherState;

    invoke-direct {p0, v1}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->logReachedState(Lcom/android/launcher3/LauncherState;)V

    .line 365
    :goto_2
    return-void
.end method

.method protected updateProgress(F)V
    .locals 1
    .param p1, "fraction"    # F

    .line 251
    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-nez v0, :cond_0

    .line 252
    return-void

    .line 254
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    .line 255
    return-void
.end method

.method protected updateSwipeCompleteAnimation(Landroid/animation/ValueAnimator;JLcom/android/launcher3/LauncherState;FZ)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/ValueAnimator;
    .param p2, "expectedDuration"    # J
    .param p4, "targetState"    # Lcom/android/launcher3/LauncherState;
    .param p5, "velocity"    # F
    .param p6, "isFling"    # Z

    .line 352
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 353
    invoke-static {p5}, Lcom/android/launcher3/anim/Interpolators;->scrollInterpolatorForVelocity(F)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 354
    return-void
.end method
