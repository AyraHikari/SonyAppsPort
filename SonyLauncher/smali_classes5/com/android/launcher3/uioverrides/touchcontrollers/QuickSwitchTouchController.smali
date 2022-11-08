.class public Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;
.super Lcom/android/launcher3/touch/AbstractStateChangeTouchController;
.source "QuickSwitchTouchController.java"


# instance fields
.field protected final mOverviewPanel:Lcom/android/quickstep/views/RecentsView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 64
    sget-object v0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->HORIZONTAL:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;)V

    .line 65
    return-void
.end method

.method protected constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;)V
    .locals 1
    .param p1, "l"    # Lcom/android/launcher3/Launcher;
    .param p2, "dir"    # Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;)V

    .line 69
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;->mOverviewPanel:Lcom/android/quickstep/views/RecentsView;

    .line 70
    return-void
.end method

.method private setupInterpolators(Lcom/android/launcher3/states/StateAnimationConfig;)V
    .locals 4
    .param p1, "stateAnimationConfig"    # Lcom/android/launcher3/states/StateAnimationConfig;

    .line 129
    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_2:Landroid/view/animation/Interpolator;

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 130
    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_2:Landroid/view/animation/Interpolator;

    const/16 v1, 0xa

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 131
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/util/DisplayController$NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v1, :cond_0

    .line 133
    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->ACCEL_2:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v3, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 134
    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->ACCEL_2:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v2, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 135
    const/4 v0, 0x6

    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->ACCEL_2:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 136
    const/16 v0, 0x8

    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->ACCEL_2:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 137
    const/16 v0, 0x9

    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->INSTANT:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 139
    :cond_0
    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v3, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 140
    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v2, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 142
    :goto_0
    return-void
.end method

.method private updateFullscreenProgress(F)V
    .locals 4
    .param p1, "progress"    # F

    .line 151
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;->mOverviewPanel:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/views/RecentsView;->setFullscreenProgress(F)V

    .line 152
    const v0, 0x3f59999a    # 0.85f

    cmpl-float v0, p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-lez v0, :cond_1

    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, "sysuiFlags":I
    iget-object v3, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;->mOverviewPanel:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v3, v1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    .line 155
    .local v1, "tv":Lcom/android/quickstep/views/TaskView;
    if-eqz v1, :cond_0

    .line 156
    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->getThumbnail()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskThumbnailView;->getSysUiStatusNavFlags()I

    move-result v0

    .line 158
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(II)V

    .line 159
    .end local v0    # "sysuiFlags":I
    .end local v1    # "tv":Lcom/android/quickstep/views/TaskView;
    goto :goto_0

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(II)V

    .line 162
    :goto_0
    return-void
.end method


# virtual methods
.method protected canInterceptTouch(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 74
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 75
    return v1

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 78
    return v2

    .line 80
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_2

    .line 81
    return v2

    .line 83
    :cond_2
    return v1
.end method

.method protected getShiftRange()F
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method protected getTargetState(Lcom/android/launcher3/LauncherState;Z)Lcom/android/launcher3/LauncherState;
    .locals 2
    .param p1, "fromState"    # Lcom/android/launcher3/LauncherState;
    .param p2, "isDragTowardPositive"    # Z

    .line 88
    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v0}, Lcom/android/quickstep/SystemUiProxy;->getLastSystemUiStateFlags()I

    move-result v0

    .line 89
    .local v0, "stateFlags":I
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_0

    .line 90
    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    return-object v1

    .line 92
    :cond_0
    if-eqz p2, :cond_1

    sget-object v1, Lcom/android/launcher3/LauncherState;->QUICK_SWITCH:Lcom/android/launcher3/LauncherState;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    :goto_0
    return-object v1
.end method

.method protected initCurrentAnimation()F
    .locals 5

    .line 109
    new-instance v0, Lcom/android/launcher3/states/StateAnimationConfig;

    invoke-direct {v0}, Lcom/android/launcher3/states/StateAnimationConfig;-><init>()V

    .line 110
    .local v0, "config":Lcom/android/launcher3/states/StateAnimationConfig;
    invoke-direct {p0, v0}, Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;->setupInterpolators(Lcom/android/launcher3/states/StateAnimationConfig;)V

    .line 111
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;->getShiftRange()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    float-to-long v1, v1

    iput-wide v1, v0, Lcom/android/launcher3/states/StateAnimationConfig;->duration:J

    .line 114
    sget-object v1, Lcom/android/quickstep/views/RecentsView;->RECENTS_SCALE_PROPERTY:Landroid/util/FloatProperty;

    iget-object v2, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;->mOverviewPanel:Lcom/android/quickstep/views/RecentsView;

    sget-object v3, Lcom/android/launcher3/LauncherState;->QUICK_SWITCH:Lcom/android/launcher3/LauncherState;

    iget-object v4, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 115
    invoke-virtual {v3, v4}, Lcom/android/launcher3/LauncherState;->getOverviewScaleAndOffset(Lcom/android/launcher3/Launcher;)[F

    move-result-object v3

    const/4 v4, 0x0

    aget v3, v3, v4

    const v4, 0x3f59999a    # 0.85f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 114
    invoke-virtual {v1, v2, v3}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    .line 116
    sget-object v1, Lcom/android/quickstep/views/RecentsView;->ADJACENT_PAGE_HORIZONTAL_OFFSET:Landroid/util/FloatProperty;

    iget-object v2, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;->mOverviewPanel:Lcom/android/quickstep/views/RecentsView;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    .line 117
    const-string v1, "b/223498680"

    const-string v2, "QuickSwitchTouchController initCurrentAnimation setContentAlpha=1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;->mOverviewPanel:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v1, v3}, Lcom/android/quickstep/views/RecentsView;->setContentAlpha(F)V

    .line 120
    iget-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;->mToState:Lcom/android/launcher3/LauncherState;

    .line 121
    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/statemanager/StateManager;->createAnimationToNewWorkspace(Lcom/android/launcher3/statemanager/BaseState;Lcom/android/launcher3/states/StateAnimationConfig;)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 122
    iget-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getTarget()Landroid/animation/AnimatorSet;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;->mClearStateOnCancelListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 123
    iget-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 125
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;->getShiftRange()F

    move-result v1

    div-float/2addr v3, v1

    return v3
.end method

.method synthetic lambda$initCurrentAnimation$0$com-android-launcher3-uioverrides-touchcontrollers-QuickSwitchTouchController(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .line 124
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;->updateFullscreenProgress(F)V

    return-void
.end method

.method public onDragStart(ZF)V
    .locals 1
    .param p1, "start"    # Z
    .param p2, "startDisplacement"    # F

    .line 97
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->onDragStart(ZF)V

    .line 98
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;->mStartContainerType:I

    .line 99
    const-string v0, "recentapps"

    invoke-static {v0}, Lcom/android/quickstep/TaskUtils;->closeSystemWindowsAsync(Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method protected onSwipeInteractionCompleted(Lcom/android/launcher3/LauncherState;)V
    .locals 0
    .param p1, "targetState"    # Lcom/android/launcher3/LauncherState;

    .line 104
    invoke-super {p0, p1}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->onSwipeInteractionCompleted(Lcom/android/launcher3/LauncherState;)V

    .line 105
    return-void
.end method

.method protected updateProgress(F)V
    .locals 2
    .param p1, "progress"    # F

    .line 146
    invoke-super {p0, p1}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->updateProgress(F)V

    .line 147
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;->updateFullscreenProgress(F)V

    .line 148
    return-void
.end method
