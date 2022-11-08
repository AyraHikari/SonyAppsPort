.class public Lcom/android/launcher3/uioverrides/touchcontrollers/TwoButtonNavbarTouchController;
.super Lcom/android/launcher3/touch/AbstractStateChangeTouchController;
.source "TwoButtonNavbarTouchController.java"


# static fields
.field private static final MAX_NUM_SWIPES_TO_TRIGGER_EDU:I = 0x3

.field private static final TAG:Ljava/lang/String; = "2BtnNavbarTouchCtrl"


# instance fields
.field private mContinuousTouchCount:I

.field private mFinishFastOnSecondTouch:Z

.field private final mIsTransposed:Z


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 1
    .param p1, "l"    # Lcom/android/launcher3/Launcher;

    .line 57
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    sget-object v0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->HORIZONTAL:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->VERTICAL:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

    .line 57
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;)V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TwoButtonNavbarTouchController;->mContinuousTouchCount:I

    .line 59
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TwoButtonNavbarTouchController;->mIsTransposed:Z

    .line 60
    return-void
.end method

.method private canInterceptTouchInternal(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 72
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TwoButtonNavbarTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 73
    iget-boolean v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TwoButtonNavbarTouchController;->mFinishFastOnSecondTouch:Z

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TwoButtonNavbarTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 78
    :cond_0
    return v1

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TwoButtonNavbarTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 81
    return v2

    .line 83
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_3

    .line 84
    return v2

    .line 86
    :cond_3
    iget-boolean v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TwoButtonNavbarTouchController;->mIsTransposed:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TwoButtonNavbarTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v2, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 87
    return v1

    .line 89
    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TwoButtonNavbarTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected canInterceptTouch(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 64
    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/touchcontrollers/TwoButtonNavbarTouchController;->canInterceptTouchInternal(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 65
    .local v0, "canIntercept":Z
    if-nez v0, :cond_0

    .line 66
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TwoButtonNavbarTouchController;->mContinuousTouchCount:I

    .line 68
    :cond_0
    return v0
.end method

.method protected getShiftRange()F
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TwoButtonNavbarTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TwoButtonNavbarTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/quickstep/util/LayoutUtils;->getDefaultSwipeHeight(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;)F

    move-result v0

    return v0
.end method

.method protected getTargetState(Lcom/android/launcher3/LauncherState;Z)Lcom/android/launcher3/LauncherState;
    .locals 4
    .param p1, "fromState"    # Lcom/android/launcher3/LauncherState;
    .param p2, "isDragTowardPositive"    # Z

    .line 100
    iget-boolean v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TwoButtonNavbarTouchController;->mIsTransposed:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 101
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TwoButtonNavbarTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 102
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isSeascape()Z

    move-result v0

    if-ne v0, p2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    move v0, v1

    .line 103
    .local v0, "draggingFromNav":Z
    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/launcher3/LauncherState;->HINT_STATE_TWO_BUTTON:Lcom/android/launcher3/LauncherState;

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    :goto_1
    return-object v1

    .line 105
    .end local v0    # "draggingFromNav":Z
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TwoButtonNavbarTouchController;->mStartState:Lcom/android/launcher3/LauncherState;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TwoButtonNavbarTouchController;->mStartState:Lcom/android/launcher3/LauncherState;

    goto :goto_2

    :cond_3
    move-object v0, p1

    .line 106
    .local v0, "startState":Lcom/android/launcher3/LauncherState;
    :goto_2
    sget-object v3, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-ne v0, v3, :cond_4

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    xor-int/2addr v1, p2

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/launcher3/LauncherState;->HINT_STATE_TWO_BUTTON:Lcom/android/launcher3/LauncherState;

    goto :goto_4

    :cond_5
    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    :goto_4
    return-object v1
.end method

.method protected initCurrentAnimation()F
    .locals 5

    .line 137
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/TwoButtonNavbarTouchController;->getShiftRange()F

    move-result v0

    .line 138
    .local v0, "range":F
    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, v0

    float-to-long v1, v1

    .line 139
    .local v1, "maxAccuracy":J
    iget-object v3, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TwoButtonNavbarTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TwoButtonNavbarTouchController;->mToState:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/launcher3/statemanager/StateManager;->createAnimationToNewWorkspace(Lcom/android/launcher3/statemanager/BaseState;J)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TwoButtonNavbarTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 141
    iget-object v3, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TwoButtonNavbarTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/DeviceProfile;->isSeascape()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    :goto_0
    int-to-float v3, v3

    div-float/2addr v3, v0

    return v3
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 94
    invoke-super {p0, p1}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 95
    .local v0, "intercept":Z
    return v0
.end method

.method protected onReinitToState(Lcom/android/launcher3/LauncherState;)V
    .locals 0
    .param p1, "newToState"    # Lcom/android/launcher3/LauncherState;

    .line 112
    invoke-super {p0, p1}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->onReinitToState(Lcom/android/launcher3/LauncherState;)V

    .line 113
    return-void
.end method

.method protected onSwipeInteractionCompleted(Lcom/android/launcher3/LauncherState;)V
    .locals 3
    .param p1, "targetState"    # Lcom/android/launcher3/LauncherState;

    .line 160
    invoke-super {p0, p1}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->onSwipeInteractionCompleted(Lcom/android/launcher3/LauncherState;)V

    .line 161
    iget-boolean v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TwoButtonNavbarTouchController;->mIsTransposed:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 162
    iget v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TwoButtonNavbarTouchController;->mContinuousTouchCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TwoButtonNavbarTouchController;->mContinuousTouchCount:I

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TwoButtonNavbarTouchController;->mStartState:Lcom/android/launcher3/LauncherState;

    sget-object v2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/android/launcher3/LauncherState;->HINT_STATE_TWO_BUTTON:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_1

    .line 165
    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v2, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TwoButtonNavbarTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    const-string v2, "2BtnNavbarTouchCtrl"

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/SystemUiProxy;->onOverviewShown(ZLjava/lang/String;)V

    goto :goto_0

    .line 166
    :cond_1
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_2

    iget v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TwoButtonNavbarTouchController;->mContinuousTouchCount:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    .line 168
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TwoButtonNavbarTouchController;->mContinuousTouchCount:I

    .line 169
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TwoButtonNavbarTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/16 v1, 0x200

    invoke-static {v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->getOpenView(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    if-nez v0, :cond_2

    .line 170
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TwoButtonNavbarTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/quickstep/views/AllAppsEduView;->show(Lcom/android/launcher3/Launcher;)V

    .line 173
    :cond_2
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TwoButtonNavbarTouchController;->mStartState:Lcom/android/launcher3/LauncherState;

    .line 174
    return-void
.end method

.method protected updateProgress(F)V
    .locals 10
    .param p1, "fraction"    # F

    .line 146
    invoke-super {p0, p1}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->updateProgress(F)V

    .line 149
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TwoButtonNavbarTouchController;->mToState:Lcom/android/launcher3/LauncherState;

    sget-object v1, Lcom/android/launcher3/LauncherState;->HINT_STATE_TWO_BUTTON:Lcom/android/launcher3/LauncherState;

    if-ne v0, v1, :cond_0

    .line 150
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 151
    .local v0, "now":J
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide v2, v0

    move-wide v4, v0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    .line 153
    .local v2, "event":Landroid/view/MotionEvent;
    iget-object v3, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TwoButtonNavbarTouchController;->mDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 154
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 156
    .end local v0    # "now":J
    .end local v2    # "event":Landroid/view/MotionEvent;
    :cond_0
    return-void
.end method

.method protected updateSwipeCompleteAnimation(Landroid/animation/ValueAnimator;JLcom/android/launcher3/LauncherState;FZ)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/ValueAnimator;
    .param p2, "expectedDuration"    # J
    .param p4, "targetState"    # Lcom/android/launcher3/LauncherState;
    .param p5, "velocity"    # F
    .param p6, "isFling"    # Z

    .line 118
    invoke-super/range {p0 .. p6}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->updateSwipeCompleteAnimation(Landroid/animation/ValueAnimator;JLcom/android/launcher3/LauncherState;FZ)V

    .line 120
    iget-boolean v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TwoButtonNavbarTouchController;->mIsTransposed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TwoButtonNavbarTouchController;->mFromState:Lcom/android/launcher3/LauncherState;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TwoButtonNavbarTouchController;->mFinishFastOnSecondTouch:Z

    .line 122
    sget-object v0, Lcom/android/launcher3/LauncherState;->HINT_STATE_TWO_BUTTON:Lcom/android/launcher3/LauncherState;

    if-ne p4, v0, :cond_1

    .line 125
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 127
    :cond_1
    return-void
.end method
