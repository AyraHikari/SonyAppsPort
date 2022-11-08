.class public Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;
.super Ljava/lang/Object;
.source "NoButtonQuickSwitchTouchController.java"

# interfaces
.implements Lcom/android/launcher3/util/TouchController;
.implements Lcom/android/launcher3/touch/BothAxesSwipeDetector$Listener;


# static fields
.field private static final ATOMIC_DURATION_FROM_PAUSED_TO_OVERVIEW:J = 0x12cL

.field private static final FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final SCALE_DOWN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final TRANSLATE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final Y_ANIM_MIN_PROGRESS:F = 0.25f


# instance fields
.field protected final mClearStateOnCancelListener:Landroid/animation/Animator$AnimatorListener;

.field private mIsHomeScreenVisible:Z

.field private final mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

.field private final mMaxYProgress:F

.field private final mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

.field private final mMotionPauseMinDisplacement:F

.field private mNoIntercept:Z

.field private mNonOverviewAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

.field private final mRecentsView:Lcom/android/quickstep/views/LauncherRecentsView;

.field private mStartState:Lcom/android/launcher3/LauncherState;

.field private final mSwipeDetector:Lcom/android/launcher3/touch/BothAxesSwipeDetector;

.field private mXOverviewAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

.field private final mXRange:F

.field private mYOverviewAnim:Lcom/android/quickstep/AnimatedFloat;

.field private final mYRange:F


# direct methods
.method public static synthetic $r8$lambda$AmYA0hzEBfUTV0AWo5VAgT7o8Ck(Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->clearState()V

    return-void
.end method

.method public static synthetic $r8$lambda$XAPoIJE_AyfGcEAjS8E9ipwAVFE(Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->onMotionPauseDetected()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmRecentsView(Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;)Lcom/android/quickstep/views/LauncherRecentsView;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mRecentsView:Lcom/android/quickstep/views/LauncherRecentsView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monAnimationToStateCompleted(Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;Lcom/android/launcher3/LauncherState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->onAnimationToStateCompleted(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 91
    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_3:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 92
    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->ACCEL_0_75:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->TRANSLATE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 93
    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->SCALE_DOWN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/BaseQuickstepLauncher;)V
    .locals 3
    .param p1, "launcher"    # Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;)V

    .line 105
    invoke-static {v0}, Lcom/android/launcher3/LauncherAnimUtils;->newCancelListener(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mClearStateOnCancelListener:Landroid/animation/Animator$AnimatorListener;

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mIsHomeScreenVisible:Z

    .line 119
    iput-object p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 120
    new-instance v0, Lcom/android/launcher3/touch/BothAxesSwipeDetector;

    invoke-direct {v0, p1, p0}, Lcom/android/launcher3/touch/BothAxesSwipeDetector;-><init>(Landroid/content/Context;Lcom/android/launcher3/touch/BothAxesSwipeDetector$Listener;)V

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mSwipeDetector:Lcom/android/launcher3/touch/BothAxesSwipeDetector;

    .line 121
    invoke-virtual {p1}, Lcom/android/launcher3/BaseQuickstepLauncher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/LauncherRecentsView;

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mRecentsView:Lcom/android/quickstep/views/LauncherRecentsView;

    .line 122
    invoke-virtual {p1}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mXRange:F

    .line 123
    nop

    .line 124
    invoke-virtual {p1}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/quickstep/views/LauncherRecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    .line 123
    invoke-static {p1, v1, v0}, Lcom/android/quickstep/util/LayoutUtils;->getShelfTrackingDistance(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Lcom/android/launcher3/touch/PagedOrientationHandler;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mYRange:F

    .line 125
    invoke-virtual {p1}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    iput v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mMaxYProgress:F

    .line 126
    new-instance v0, Lcom/android/quickstep/util/MotionPauseDetector;

    invoke-direct {v0, p1}, Lcom/android/quickstep/util/MotionPauseDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

    .line 127
    invoke-virtual {p1}, Lcom/android/launcher3/BaseQuickstepLauncher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->motion_pause_detector_min_displacement_from_app:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mMotionPauseMinDisplacement:F

    .line 129
    return-void
.end method

.method private canInterceptTouch(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 158
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BaseQuickstepLauncher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 159
    return v1

    .line 161
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_1

    .line 162
    return v1

    .line 164
    :cond_1
    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v2, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v0}, Lcom/android/quickstep/SystemUiProxy;->getLastSystemUiStateFlags()I

    move-result v0

    .line 165
    .local v0, "stateFlags":I
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_2

    .line 166
    return v1

    .line 168
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method private cancelAnimations()V
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mNonOverviewAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-eqz v0, :cond_0

    .line 465
    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mXOverviewAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-eqz v0, :cond_1

    .line 468
    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 470
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mYOverviewAnim:Lcom/android/quickstep/AnimatedFloat;

    if-eqz v0, :cond_2

    .line 471
    invoke-virtual {v0}, Lcom/android/quickstep/AnimatedFloat;->cancelAnimation()V

    .line 473
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

    invoke-virtual {v0}, Lcom/android/quickstep/util/MotionPauseDetector;->clear()V

    .line 474
    return-void
.end method

.method private clearState()V
    .locals 2

    .line 477
    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->cancelAnimations()V

    .line 478
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mNonOverviewAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 479
    iput-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mXOverviewAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 480
    iput-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mYOverviewAnim:Lcom/android/quickstep/AnimatedFloat;

    .line 481
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mIsHomeScreenVisible:Z

    .line 482
    iget-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mSwipeDetector:Lcom/android/launcher3/touch/BothAxesSwipeDetector;

    invoke-virtual {v1}, Lcom/android/launcher3/touch/BothAxesSwipeDetector;->finishedScrolling()V

    .line 483
    iget-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mRecentsView:Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {v1, v0}, Lcom/android/quickstep/views/LauncherRecentsView;->setOnEmptyMessageUpdatedListener(Lcom/android/quickstep/views/RecentsView$OnEmptyMessageUpdatedListener;)V

    .line 484
    return-void
.end method

.method private onAnimationToStateCompleted(Lcom/android/launcher3/LauncherState;)V
    .locals 5
    .param p1, "targetState"    # Lcom/android/launcher3/LauncherState;

    .line 451
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    .line 452
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withSrcState(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget v1, p1, Lcom/android/launcher3/LauncherState;->statsLogOrdinal:I

    .line 453
    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withDstState(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mStartState:Lcom/android/launcher3/LauncherState;

    iget v1, v1, Lcom/android/launcher3/LauncherState;->statsLogOrdinal:I

    iget v2, p1, Lcom/android/launcher3/LauncherState;->statsLogOrdinal:I

    .line 455
    sget-object v3, Lcom/android/launcher3/LauncherState;->QUICK_SWITCH:Lcom/android/launcher3/LauncherState;

    if-ne p1, v3, :cond_0

    .line 456
    sget-object v3, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_QUICKSWITCH_RIGHT:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    goto :goto_0

    .line 457
    :cond_0
    iget v3, p1, Lcom/android/launcher3/LauncherState;->ordinal:I

    iget-object v4, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mStartState:Lcom/android/launcher3/LauncherState;

    iget v4, v4, Lcom/android/launcher3/LauncherState;->ordinal:I

    if-le v3, v4, :cond_1

    .line 458
    sget-object v3, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_UNKNOWN_SWIPEUP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    goto :goto_0

    .line 459
    :cond_1
    sget-object v3, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_UNKNOWN_SWIPEDOWN:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 454
    :goto_0
    invoke-static {v1, v2, v3}, Lcom/android/launcher3/logging/StatsLogManager;->getLauncherAtomEvent(IILcom/android/launcher3/logging/StatsLogManager$EventEnum;)Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 460
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;)V

    invoke-static {v2}, Lcom/android/launcher3/anim/AnimatorListeners;->forEndCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;ZLandroid/animation/Animator$AnimatorListener;)V

    .line 461
    return-void
.end method

.method private onMotionPauseDetected()V
    .locals 2

    .line 188
    sget-object v0, Lcom/android/quickstep/util/VibratorWrapper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/util/VibratorWrapper;

    sget-object v1, Lcom/android/quickstep/util/VibratorWrapper;->OVERVIEW_HAPTIC:Landroid/os/VibrationEffect;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/VibratorWrapper;->vibrate(Landroid/os/VibrationEffect;)V

    .line 189
    return-void
.end method

.method private setupAnimators()V
    .locals 3

    .line 193
    new-instance v0, Lcom/android/launcher3/states/StateAnimationConfig;

    invoke-direct {v0}, Lcom/android/launcher3/states/StateAnimationConfig;-><init>()V

    .line 194
    .local v0, "nonOverviewBuilder":Lcom/android/launcher3/states/StateAnimationConfig;
    sget-object v1, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 195
    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 196
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 197
    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 198
    sget-object v1, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->TRANSLATE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 199
    sget-object v1, Lcom/android/launcher3/LauncherState;->QUICK_SWITCH:Lcom/android/launcher3/LauncherState;

    invoke-direct {p0, v1, v0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->updateNonOverviewAnim(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;)V

    .line 200
    iget-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mNonOverviewAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnStart()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 202
    iget-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mRecentsView:Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {v1}, Lcom/android/quickstep/views/LauncherRecentsView;->getTaskViewCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mRecentsView:Lcom/android/quickstep/views/LauncherRecentsView;

    new-instance v2, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;)V

    invoke-virtual {v1, v2}, Lcom/android/quickstep/views/LauncherRecentsView;->setOnEmptyMessageUpdatedListener(Lcom/android/quickstep/views/RecentsView$OnEmptyMessageUpdatedListener;)V

    .line 211
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->setupOverviewAnimators()V

    .line 212
    return-void
.end method

.method private setupOverviewAnimators()V
    .locals 18

    .line 224
    move-object/from16 v0, p0

    sget-object v1, Lcom/android/launcher3/LauncherState;->QUICK_SWITCH:Lcom/android/launcher3/LauncherState;

    .line 225
    .local v1, "fromState":Lcom/android/launcher3/LauncherState;
    sget-object v2, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    .line 228
    .local v2, "toState":Lcom/android/launcher3/LauncherState;
    sget-object v3, Lcom/android/quickstep/views/RecentsView;->RECENTS_SCALE_PROPERTY:Landroid/util/FloatProperty;

    iget-object v4, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mRecentsView:Lcom/android/quickstep/views/LauncherRecentsView;

    iget-object v5, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v1, v5}, Lcom/android/launcher3/LauncherState;->getOverviewScaleAndOffset(Lcom/android/launcher3/Launcher;)[F

    move-result-object v5

    const/4 v6, 0x0

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    .line 229
    sget-object v3, Lcom/android/quickstep/views/RecentsView;->ADJACENT_PAGE_HORIZONTAL_OFFSET:Landroid/util/FloatProperty;

    iget-object v4, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mRecentsView:Lcom/android/quickstep/views/LauncherRecentsView;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    .line 230
    const-string v3, "b/223498680"

    const-string v4, "NBQSTC setupOverviewAnimators setContentAlpha=1"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v4, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mRecentsView:Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {v4, v5}, Lcom/android/quickstep/views/LauncherRecentsView;->setContentAlpha(F)V

    .line 232
    iget-object v4, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mRecentsView:Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherState;->getOverviewFullscreenProgress()F

    move-result v7

    invoke-virtual {v4, v7}, Lcom/android/quickstep/views/LauncherRecentsView;->setFullscreenProgress(F)V

    .line 233
    iget-object v4, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v4}, Lcom/android/launcher3/BaseQuickstepLauncher;->getActionsView()Lcom/android/quickstep/views/OverviewActionsView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/quickstep/views/OverviewActionsView;->getVisibilityAlpha()Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object v4

    .line 234
    iget-object v7, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v1, v7}, Lcom/android/launcher3/LauncherState;->getVisibleElements(Lcom/android/launcher3/Launcher;)I

    move-result v7

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 233
    :goto_0
    invoke-virtual {v4, v5}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->setValue(F)V

    .line 236
    iget-object v4, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v2, v4}, Lcom/android/launcher3/LauncherState;->getOverviewScaleAndOffset(Lcom/android/launcher3/Launcher;)[F

    move-result-object v4

    .line 241
    .local v4, "scaleAndOffset":[F
    new-instance v5, Lcom/android/launcher3/anim/PendingAnimation;

    iget v7, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mXRange:F

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v7, v8

    float-to-long v9, v7

    invoke-direct {v5, v9, v10}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    .line 242
    .local v5, "xAnim":Lcom/android/launcher3/anim/PendingAnimation;
    iget-object v7, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mRecentsView:Lcom/android/quickstep/views/LauncherRecentsView;

    sget-object v9, Lcom/android/quickstep/views/RecentsView;->ADJACENT_PAGE_HORIZONTAL_OFFSET:Landroid/util/FloatProperty;

    const/4 v10, 0x1

    aget v10, v4, v10

    sget-object v11, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v7, v9, v10, v11}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 245
    iget-object v7, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v7}, Lcom/android/launcher3/BaseQuickstepLauncher;->getScrimView()Lcom/android/launcher3/views/ScrimView;

    move-result-object v7

    sget-object v9, Lcom/android/launcher3/LauncherState;->QUICK_SWITCH:Lcom/android/launcher3/LauncherState;

    iget-object v10, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 246
    invoke-virtual {v9, v10}, Lcom/android/launcher3/LauncherState;->getWorkspaceScrimColor(Lcom/android/launcher3/Launcher;)I

    move-result v9

    sget-object v10, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 245
    invoke-virtual {v5, v7, v9, v10}, Lcom/android/launcher3/anim/PendingAnimation;->setViewBackgroundColor(Landroid/view/View;ILandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 247
    iget-object v7, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mRecentsView:Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {v7}, Lcom/android/quickstep/views/LauncherRecentsView;->getTaskViewCount()I

    move-result v7

    if-nez v7, :cond_1

    .line 248
    iget-object v12, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mRecentsView:Lcom/android/quickstep/views/LauncherRecentsView;

    sget-object v13, Lcom/android/quickstep/views/RecentsView;->CONTENT_ALPHA:Landroid/util/FloatProperty;

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    sget-object v16, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move-object v11, v5

    invoke-virtual/range {v11 .. v16}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    .line 249
    const-string v7, "NBQSTC setupOverviewAnimators from: 0 to: 1"

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    new-instance v3, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController$1;

    invoke-direct {v3, v0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController$1;-><init>(Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;)V

    invoke-virtual {v5, v3}, Lcom/android/launcher3/anim/PendingAnimation;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 268
    :cond_1
    invoke-virtual {v5}, Lcom/android/launcher3/anim/PendingAnimation;->createPlaybackController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v3

    iput-object v3, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mXOverviewAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 269
    invoke-virtual {v3}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnStart()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 274
    new-instance v3, Lcom/android/launcher3/anim/PendingAnimation;

    iget v7, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mYRange:F

    mul-float/2addr v7, v8

    float-to-long v7, v7

    invoke-direct {v3, v7, v8}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    .line 275
    .local v3, "yAnim":Lcom/android/launcher3/anim/PendingAnimation;
    iget-object v7, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mRecentsView:Lcom/android/quickstep/views/LauncherRecentsView;

    sget-object v8, Lcom/android/quickstep/views/RecentsView;->RECENTS_SCALE_PROPERTY:Landroid/util/FloatProperty;

    aget v6, v4, v6

    sget-object v9, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->SCALE_DOWN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v7, v8, v6, v9}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 277
    iget-object v6, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mRecentsView:Lcom/android/quickstep/views/LauncherRecentsView;

    sget-object v7, Lcom/android/quickstep/views/RecentsView;->FULLSCREEN_PROGRESS:Landroid/util/FloatProperty;

    .line 278
    invoke-virtual {v2}, Lcom/android/launcher3/LauncherState;->getOverviewFullscreenProgress()F

    move-result v8

    .line 277
    invoke-virtual {v3, v6, v7, v8, v9}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 279
    invoke-virtual {v3}, Lcom/android/launcher3/anim/PendingAnimation;->createPlaybackController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v6

    .line 280
    .local v6, "yNormalController":Lcom/android/launcher3/anim/AnimatorPlaybackController;
    iget-object v11, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    iget-object v7, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mRecentsView:Lcom/android/quickstep/views/LauncherRecentsView;

    .line 282
    invoke-virtual {v7}, Lcom/android/quickstep/views/LauncherRecentsView;->getPagedViewOrientedState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v12

    iget-object v7, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v7}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v13

    iget-object v14, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mRecentsView:Lcom/android/quickstep/views/LauncherRecentsView;

    sget-object v15, Lcom/android/quickstep/views/RecentsView;->RECENTS_SCALE_PROPERTY:Landroid/util/FloatProperty;

    iget-object v7, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mRecentsView:Lcom/android/quickstep/views/LauncherRecentsView;

    sget-object v17, Lcom/android/quickstep/views/RecentsView;->TASK_SECONDARY_TRANSLATION:Landroid/util/FloatProperty;

    .line 281
    move-object v10, v6

    move-object/from16 v16, v7

    invoke-static/range {v10 .. v17}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->createForRecents(Lcom/android/launcher3/anim/AnimatorPlaybackController;Landroid/content/Context;Lcom/android/quickstep/util/RecentsOrientedState;Lcom/android/launcher3/DeviceProfile;Ljava/lang/Object;Landroid/util/FloatProperty;Ljava/lang/Object;Landroid/util/FloatProperty;)Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    move-result-object v7

    .line 285
    .local v7, "yAnimWithResistance":Lcom/android/quickstep/util/AnimatorControllerWithResistance;
    new-instance v8, Lcom/android/quickstep/AnimatedFloat;

    new-instance v9, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController$$ExternalSyntheticLambda1;

    invoke-direct {v9, v0, v7}, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;Lcom/android/quickstep/util/AnimatorControllerWithResistance;)V

    invoke-direct {v8, v9}, Lcom/android/quickstep/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v8, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mYOverviewAnim:Lcom/android/quickstep/AnimatedFloat;

    .line 290
    invoke-virtual {v6}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnStart()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 291
    return-void
.end method

.method private updateNonOverviewAnim(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;)V
    .locals 2
    .param p1, "toState"    # Lcom/android/launcher3/LauncherState;
    .param p2, "config"    # Lcom/android/launcher3/states/StateAnimationConfig;

    .line 216
    iget v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mXRange:F

    iget v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mYRange:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p2, Lcom/android/launcher3/states/StateAnimationConfig;->duration:J

    .line 217
    iget v0, p2, Lcom/android/launcher3/states/StateAnimationConfig;->animFlags:I

    or-int/lit8 v0, v0, 0xa

    iput v0, p2, Lcom/android/launcher3/states/StateAnimationConfig;->animFlags:I

    .line 218
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    .line 219
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/statemanager/StateManager;->createAnimationToNewWorkspace(Lcom/android/launcher3/statemanager/BaseState;Lcom/android/launcher3/states/StateAnimationConfig;)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mNonOverviewAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 220
    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getTarget()Landroid/animation/AnimatorSet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mClearStateOnCancelListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 221
    return-void
.end method


# virtual methods
.method synthetic lambda$onDragEnd$2$com-android-launcher3-uioverrides-touchcontrollers-NoButtonQuickSwitchTouchController(Lcom/android/launcher3/LauncherState;)V
    .locals 0
    .param p1, "targetState"    # Lcom/android/launcher3/LauncherState;

    .line 442
    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->onAnimationToStateCompleted(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method synthetic lambda$setupAnimators$0$com-android-launcher3-uioverrides-touchcontrollers-NoButtonQuickSwitchTouchController(Z)V
    .locals 1
    .param p1, "isEmpty"    # Z

    .line 204
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mSwipeDetector:Lcom/android/launcher3/touch/BothAxesSwipeDetector;

    invoke-virtual {v0}, Lcom/android/launcher3/touch/BothAxesSwipeDetector;->isDraggingState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->setupOverviewAnimators()V

    .line 208
    :cond_0
    return-void
.end method

.method synthetic lambda$setupOverviewAnimators$1$com-android-launcher3-uioverrides-touchcontrollers-NoButtonQuickSwitchTouchController(Lcom/android/quickstep/util/AnimatorControllerWithResistance;)V
    .locals 2
    .param p1, "yAnimWithResistance"    # Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    .line 286
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mYOverviewAnim:Lcom/android/quickstep/AnimatedFloat;

    if-eqz v0, :cond_0

    .line 287
    iget v0, v0, Lcom/android/quickstep/AnimatedFloat;->value:F

    iget v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mMaxYProgress:F

    invoke-virtual {p1, v0, v1}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->setProgress(FF)V

    .line 289
    :cond_0
    return-void
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 134
    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->canInterceptTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mNoIntercept:Z

    .line 135
    if-eqz v0, :cond_0

    .line 136
    return v1

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mSwipeDetector:Lcom/android/launcher3/touch/BothAxesSwipeDetector;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/touch/BothAxesSwipeDetector;->setDetectableScrollConditions(IZ)V

    .line 144
    :cond_1
    iget-boolean v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mNoIntercept:Z

    if-eqz v0, :cond_2

    .line 145
    return v1

    .line 148
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->onControllerTouchEvent(Landroid/view/MotionEvent;)Z

    .line 149
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mSwipeDetector:Lcom/android/launcher3/touch/BothAxesSwipeDetector;

    invoke-virtual {v0}, Lcom/android/launcher3/touch/BothAxesSwipeDetector;->isDraggingOrSettling()Z

    move-result v0

    return v0
.end method

.method public onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 154
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mSwipeDetector:Lcom/android/launcher3/touch/BothAxesSwipeDetector;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/touch/BothAxesSwipeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onDrag(Landroid/graphics/PointF;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "displacement"    # Landroid/graphics/PointF;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .line 295
    iget v0, p1, Landroid/graphics/PointF;->x:F

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v2, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mXRange:F

    div-float/2addr v0, v2

    .line 296
    .local v0, "xProgress":F
    iget v2, p1, Landroid/graphics/PointF;->y:F

    neg-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v2, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mYRange:F

    div-float/2addr v1, v2

    .line 297
    .local v1, "yProgress":F
    const/high16 v2, 0x3e800000    # 0.25f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v1

    .line 299
    iget-boolean v2, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mIsHomeScreenVisible:Z

    .line 300
    .local v2, "wasHomeScreenVisible":Z
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mNonOverviewAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-eqz v3, :cond_0

    .line 301
    invoke-virtual {v3, v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    .line 303
    :cond_0
    sget-object v3, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    const v4, 0x3f7d70a4    # 0.99f

    cmpg-float v3, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-gtz v3, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mIsHomeScreenVisible:Z

    .line 306
    iget-object v3, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

    iget v6, p1, Landroid/graphics/PointF;->y:F

    neg-float v6, v6

    iget v7, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mMotionPauseMinDisplacement:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    move v4, v5

    :cond_2
    invoke-virtual {v3, v4}, Lcom/android/quickstep/util/MotionPauseDetector;->setDisallowPause(Z)V

    .line 307
    iget-object v3, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

    invoke-virtual {v3, p2}, Lcom/android/quickstep/util/MotionPauseDetector;->addPosition(Landroid/view/MotionEvent;)V

    .line 309
    iget-object v3, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mXOverviewAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-eqz v3, :cond_3

    .line 310
    invoke-virtual {v3, v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    .line 312
    :cond_3
    iget-object v3, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mYOverviewAnim:Lcom/android/quickstep/AnimatedFloat;

    if-eqz v3, :cond_4

    .line 313
    invoke-virtual {v3, v1}, Lcom/android/quickstep/AnimatedFloat;->updateValue(F)V

    .line 315
    :cond_4
    return v5
.end method

.method public onDragEnd(Landroid/graphics/PointF;)V
    .locals 25
    .param p1, "velocity"    # Landroid/graphics/PointF;

    .line 320
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mSwipeDetector:Lcom/android/launcher3/touch/BothAxesSwipeDetector;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v2, v3}, Lcom/android/launcher3/touch/BothAxesSwipeDetector;->isFling(F)Z

    move-result v2

    .line 321
    .local v2, "horizontalFling":Z
    iget-object v3, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mSwipeDetector:Lcom/android/launcher3/touch/BothAxesSwipeDetector;

    iget v4, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4}, Lcom/android/launcher3/touch/BothAxesSwipeDetector;->isFling(F)Z

    move-result v3

    .line 322
    .local v3, "verticalFling":Z
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v4

    .line 323
    .local v6, "noFling":Z
    :goto_0
    iget-object v7, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

    invoke-virtual {v7}, Lcom/android/quickstep/util/MotionPauseDetector;->isPaused()Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz v6, :cond_1

    .line 324
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->cancelAnimations()V

    .line 326
    new-instance v4, Lcom/android/launcher3/states/StateAnimationConfig;

    invoke-direct {v4}, Lcom/android/launcher3/states/StateAnimationConfig;-><init>()V

    .line 327
    .local v4, "config":Lcom/android/launcher3/states/StateAnimationConfig;
    const-wide/16 v7, 0x12c

    iput-wide v7, v4, Lcom/android/launcher3/states/StateAnimationConfig;->duration:J

    .line 328
    iget-object v7, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v7}, Lcom/android/launcher3/BaseQuickstepLauncher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v7

    iget-object v8, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mStartState:Lcom/android/launcher3/LauncherState;

    sget-object v9, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v7, v8, v9, v4}, Lcom/android/launcher3/statemanager/StateManager;->createAtomicAnimation(Lcom/android/launcher3/statemanager/BaseState;Lcom/android/launcher3/statemanager/BaseState;Lcom/android/launcher3/states/StateAnimationConfig;)Landroid/animation/AnimatorSet;

    move-result-object v7

    .line 330
    .local v7, "overviewAnim":Landroid/animation/Animator;
    new-instance v8, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController$2;

    invoke-direct {v8, v0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController$2;-><init>(Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;)V

    invoke-virtual {v7, v8}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 336
    invoke-virtual {v7}, Landroid/animation/Animator;->start()V

    .line 339
    iget-object v8, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v8}, Lcom/android/launcher3/BaseQuickstepLauncher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v8

    sget-object v9, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    iget-wide v10, v4, Lcom/android/launcher3/states/StateAnimationConfig;->duration:J

    invoke-virtual {v8, v9, v10, v11, v5}, Lcom/android/launcher3/statemanager/StateManager;->createAnimationToNewWorkspace(Lcom/android/launcher3/statemanager/BaseState;JI)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v5

    .line 341
    invoke-virtual {v5}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnStart()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 342
    return-void

    .line 346
    .end local v4    # "config":Lcom/android/launcher3/states/StateAnimationConfig;
    .end local v7    # "overviewAnim":Landroid/animation/Animator;
    :cond_1
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    .line 347
    iget v9, v1, Landroid/graphics/PointF;->x:F

    cmpg-float v9, v9, v8

    if-gez v9, :cond_2

    .line 349
    sget-object v9, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    .local v9, "targetState":Lcom/android/launcher3/LauncherState;
    goto/16 :goto_7

    .line 351
    .end local v9    # "targetState":Lcom/android/launcher3/LauncherState;
    :cond_2
    iget v9, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v9, v9, v8

    if-lez v9, :cond_3

    .line 353
    sget-object v9, Lcom/android/launcher3/LauncherState;->QUICK_SWITCH:Lcom/android/launcher3/LauncherState;

    .restart local v9    # "targetState":Lcom/android/launcher3/LauncherState;
    goto :goto_7

    .line 357
    .end local v9    # "targetState":Lcom/android/launcher3/LauncherState;
    :cond_3
    iget v9, v1, Landroid/graphics/PointF;->x:F

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_4

    .line 358
    sget-object v9, Lcom/android/launcher3/LauncherState;->QUICK_SWITCH:Lcom/android/launcher3/LauncherState;

    goto :goto_1

    :cond_4
    sget-object v9, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    .restart local v9    # "targetState":Lcom/android/launcher3/LauncherState;
    :goto_1
    goto :goto_7

    .line 361
    .end local v9    # "targetState":Lcom/android/launcher3/LauncherState;
    :cond_5
    if-eqz v2, :cond_7

    .line 362
    iget v9, v1, Landroid/graphics/PointF;->x:F

    cmpl-float v9, v9, v8

    if-lez v9, :cond_6

    sget-object v9, Lcom/android/launcher3/LauncherState;->QUICK_SWITCH:Lcom/android/launcher3/LauncherState;

    goto :goto_2

    :cond_6
    sget-object v9, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    .restart local v9    # "targetState":Lcom/android/launcher3/LauncherState;
    :goto_2
    goto :goto_7

    .line 363
    .end local v9    # "targetState":Lcom/android/launcher3/LauncherState;
    :cond_7
    if-eqz v3, :cond_9

    .line 364
    iget v9, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v9, v9, v8

    if-lez v9, :cond_8

    sget-object v9, Lcom/android/launcher3/LauncherState;->QUICK_SWITCH:Lcom/android/launcher3/LauncherState;

    goto :goto_3

    :cond_8
    sget-object v9, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    .restart local v9    # "targetState":Lcom/android/launcher3/LauncherState;
    :goto_3
    goto :goto_7

    .line 367
    .end local v9    # "targetState":Lcom/android/launcher3/LauncherState;
    :cond_9
    iget-object v9, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mXOverviewAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v9}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getInterpolatedProgress()F

    move-result v9

    const/high16 v10, 0x3f000000    # 0.5f

    cmpl-float v9, v9, v10

    if-lez v9, :cond_a

    move v9, v5

    goto :goto_4

    :cond_a
    move v9, v4

    .line 368
    .local v9, "passedHorizontalThreshold":Z
    :goto_4
    iget-object v10, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mYOverviewAnim:Lcom/android/quickstep/AnimatedFloat;

    iget v10, v10, Lcom/android/quickstep/AnimatedFloat;->value:F

    cmpl-float v10, v10, v7

    if-lez v10, :cond_b

    move v10, v5

    goto :goto_5

    :cond_b
    move v10, v4

    .line 369
    .local v10, "passedVerticalThreshold":Z
    :goto_5
    if-eqz v9, :cond_c

    if-nez v10, :cond_c

    .line 370
    sget-object v11, Lcom/android/launcher3/LauncherState;->QUICK_SWITCH:Lcom/android/launcher3/LauncherState;

    goto :goto_6

    :cond_c
    sget-object v11, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    :goto_6
    move-object v9, v11

    .line 375
    .end local v10    # "passedVerticalThreshold":Z
    .local v9, "targetState":Lcom/android/launcher3/LauncherState;
    :goto_7
    iget-object v10, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mXOverviewAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v10}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getProgressFraction()F

    move-result v10

    .line 376
    .local v10, "xProgress":F
    iget v11, v1, Landroid/graphics/PointF;->x:F

    iget-object v12, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 377
    invoke-static {v12}, Lcom/android/launcher3/util/window/RefreshRateTracker;->getSingleFrameMs(Landroid/content/Context;)I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v11, v12

    iget v12, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mXRange:F

    div-float/2addr v11, v12

    add-float/2addr v11, v10

    .line 376
    invoke-static {v11, v8, v7}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v11

    .line 378
    .local v11, "startXProgress":F
    sget-object v12, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne v9, v12, :cond_d

    move v12, v8

    goto :goto_8

    :cond_d
    move v12, v7

    .line 379
    .local v12, "endXProgress":F
    :goto_8
    iget v13, v1, Landroid/graphics/PointF;->x:F

    sub-float v14, v12, v11

    .line 380
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    .line 379
    invoke-static {v13, v14}, Lcom/android/launcher3/touch/BaseSwipeDetector;->calculateDuration(FF)J

    move-result-wide v13

    .line 381
    .local v13, "xDuration":J
    iget-object v15, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mXOverviewAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v15}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v15

    .line 382
    .local v15, "xOverviewAnim":Landroid/animation/ValueAnimator;
    const/4 v7, 0x2

    new-array v8, v7, [F

    aput v11, v8, v4

    aput v12, v8, v5

    invoke-virtual {v15, v8}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 383
    invoke-virtual {v15, v13, v14}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v8

    iget v7, v1, Landroid/graphics/PointF;->x:F

    .line 384
    invoke-static {v7}, Lcom/android/launcher3/anim/Interpolators;->scrollInterpolatorForVelocity(F)Landroid/view/animation/Interpolator;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 385
    iget-object v7, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mXOverviewAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v7}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnStart()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 387
    if-eqz v3, :cond_e

    iget v7, v1, Landroid/graphics/PointF;->y:F

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-gez v7, :cond_e

    sget-object v7, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne v9, v7, :cond_e

    move v7, v5

    goto :goto_9

    :cond_e
    move v7, v4

    .line 389
    .local v7, "flingUpToNormal":Z
    :goto_9
    iget-object v8, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mYOverviewAnim:Lcom/android/quickstep/AnimatedFloat;

    iget v8, v8, Lcom/android/quickstep/AnimatedFloat;->value:F

    .line 390
    .local v8, "yProgress":F
    iget v4, v1, Landroid/graphics/PointF;->y:F

    iget-object v5, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 391
    invoke-static {v5}, Lcom/android/launcher3/util/window/RefreshRateTracker;->getSingleFrameMs(Landroid/content/Context;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mYRange:F

    div-float/2addr v4, v5

    sub-float v4, v8, v4

    iget v5, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mMaxYProgress:F

    .line 390
    move/from16 v19, v2

    const/4 v2, 0x0

    .end local v2    # "horizontalFling":Z
    .local v19, "horizontalFling":Z
    invoke-static {v4, v2, v5}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v4

    .line 393
    .local v4, "startYProgress":F
    if-eqz v7, :cond_f

    .line 394
    const/high16 v5, 0x3f800000    # 1.0f

    .local v5, "endYProgress":F
    goto :goto_a

    .line 395
    .end local v5    # "endYProgress":F
    :cond_f
    sget-object v5, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne v9, v5, :cond_10

    .line 397
    move v5, v4

    .restart local v5    # "endYProgress":F
    goto :goto_a

    .line 399
    .end local v5    # "endYProgress":F
    :cond_10
    const/4 v5, 0x0

    .line 401
    .restart local v5    # "endYProgress":F
    :goto_a
    sub-float v17, v5, v4

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    iget v2, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mYRange:F

    mul-float v17, v17, v2

    .line 402
    .local v17, "yDistanceToCover":F
    iget v2, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    div-float v2, v17, v2

    float-to-long v1, v2

    .line 403
    .local v1, "yDuration":J
    move/from16 v20, v3

    .end local v3    # "verticalFling":Z
    .local v20, "verticalFling":Z
    iget-object v3, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mYOverviewAnim:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v3, v4, v5}, Lcom/android/quickstep/AnimatedFloat;->animateToValue(FF)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 404
    .local v3, "yOverviewAnim":Landroid/animation/ValueAnimator;
    invoke-virtual {v3, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 405
    move/from16 v21, v5

    .end local v5    # "endYProgress":F
    .local v21, "endYProgress":F
    iget-object v5, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mYOverviewAnim:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v5, v4}, Lcom/android/quickstep/AnimatedFloat;->updateValue(F)V

    .line 407
    iget-object v5, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mNonOverviewAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v5}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 408
    .local v5, "nonOverviewAnim":Landroid/animation/ValueAnimator;
    if-eqz v7, :cond_12

    move/from16 v22, v4

    .end local v4    # "startYProgress":F
    .local v22, "startYProgress":F
    iget-boolean v4, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mIsHomeScreenVisible:Z

    if-nez v4, :cond_11

    .line 411
    new-instance v4, Lcom/android/launcher3/states/StateAnimationConfig;

    invoke-direct {v4}, Lcom/android/launcher3/states/StateAnimationConfig;-><init>()V

    .line 413
    .local v4, "config":Lcom/android/launcher3/states/StateAnimationConfig;
    move/from16 v23, v6

    const/4 v6, 0x1

    .end local v6    # "noFling":Z
    .local v23, "noFling":Z
    iput v6, v4, Lcom/android/launcher3/states/StateAnimationConfig;->animFlags:I

    .line 414
    invoke-direct {v0, v9, v4}, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->updateNonOverviewAnim(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;)V

    .line 415
    iget-object v6, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mNonOverviewAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v6}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 416
    iget-object v6, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mNonOverviewAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v6}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnStart()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 418
    new-instance v6, Lcom/android/quickstep/util/WorkspaceRevealAnim;

    move-object/from16 v16, v4

    .end local v4    # "config":Lcom/android/launcher3/states/StateAnimationConfig;
    .local v16, "config":Lcom/android/launcher3/states/StateAnimationConfig;
    iget-object v4, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    move-object/from16 v18, v5

    const/4 v5, 0x0

    .end local v5    # "nonOverviewAnim":Landroid/animation/ValueAnimator;
    .local v18, "nonOverviewAnim":Landroid/animation/ValueAnimator;
    invoke-direct {v6, v4, v5}, Lcom/android/quickstep/util/WorkspaceRevealAnim;-><init>(Lcom/android/launcher3/Launcher;Z)V

    invoke-virtual {v6}, Lcom/android/quickstep/util/WorkspaceRevealAnim;->start()V

    .line 419
    .end local v16    # "config":Lcom/android/launcher3/states/StateAnimationConfig;
    move/from16 v24, v7

    move-object/from16 v5, v18

    goto :goto_f

    .line 408
    .end local v18    # "nonOverviewAnim":Landroid/animation/ValueAnimator;
    .end local v23    # "noFling":Z
    .restart local v5    # "nonOverviewAnim":Landroid/animation/ValueAnimator;
    .restart local v6    # "noFling":Z
    :cond_11
    move/from16 v23, v6

    .end local v6    # "noFling":Z
    .restart local v23    # "noFling":Z
    goto :goto_b

    .end local v22    # "startYProgress":F
    .end local v23    # "noFling":Z
    .local v4, "startYProgress":F
    .restart local v6    # "noFling":Z
    :cond_12
    move/from16 v22, v4

    move/from16 v23, v6

    .line 420
    .end local v4    # "startYProgress":F
    .end local v6    # "noFling":Z
    .restart local v22    # "startYProgress":F
    .restart local v23    # "noFling":Z
    :goto_b
    sget-object v4, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne v9, v4, :cond_13

    const/4 v6, 0x1

    goto :goto_c

    :cond_13
    const/4 v6, 0x0

    :goto_c
    move v4, v6

    .line 421
    .local v4, "canceled":Z
    if-eqz v4, :cond_14

    .line 424
    iget-object v6, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mNonOverviewAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v6}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getTarget()Landroid/animation/AnimatorSet;

    move-result-object v6

    move/from16 v24, v7

    .end local v7    # "flingUpToNormal":Z
    .local v24, "flingUpToNormal":Z
    iget-object v7, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mClearStateOnCancelListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 425
    iget-object v6, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mNonOverviewAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v6}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnCancel()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    goto :goto_d

    .line 421
    .end local v24    # "flingUpToNormal":Z
    .restart local v7    # "flingUpToNormal":Z
    :cond_14
    move/from16 v24, v7

    .line 427
    .end local v7    # "flingUpToNormal":Z
    .restart local v24    # "flingUpToNormal":Z
    :goto_d
    iget-object v6, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mNonOverviewAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v6}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getProgressFraction()F

    move-result v6

    .line 428
    .local v6, "startProgress":F
    if-eqz v4, :cond_15

    const/4 v7, 0x0

    goto :goto_e

    :cond_15
    const/high16 v7, 0x3f800000    # 1.0f

    .line 429
    .local v7, "endProgress":F
    :goto_e
    move/from16 v16, v4

    const/4 v4, 0x2

    .end local v4    # "canceled":Z
    .local v16, "canceled":Z
    new-array v4, v4, [F

    const/16 v18, 0x0

    aput v6, v4, v18

    const/16 v18, 0x1

    aput v7, v4, v18

    invoke-virtual {v5, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 430
    iget-object v4, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mNonOverviewAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v4}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnStart()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 432
    .end local v6    # "startProgress":F
    .end local v7    # "endProgress":F
    .end local v16    # "canceled":Z
    :goto_f
    sget-object v4, Lcom/android/launcher3/LauncherState;->QUICK_SWITCH:Lcom/android/launcher3/LauncherState;

    if-ne v9, v4, :cond_16

    .line 435
    sget-object v4, Lcom/android/quickstep/util/VibratorWrapper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v6, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v4, v6}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/quickstep/util/VibratorWrapper;

    sget v6, Lcom/android/quickstep/views/RecentsView;->SCROLL_VIBRATION_PRIMITIVE:I

    const v7, 0x3f19999a    # 0.6f

    move/from16 v16, v8

    .end local v8    # "yProgress":F
    .local v16, "yProgress":F
    sget-object v8, Lcom/android/quickstep/views/RecentsView;->SCROLL_VIBRATION_FALLBACK:Landroid/os/VibrationEffect;

    invoke-virtual {v4, v6, v7, v8}, Lcom/android/quickstep/util/VibratorWrapper;->vibrate(IFLandroid/os/VibrationEffect;)V

    goto :goto_10

    .line 432
    .end local v16    # "yProgress":F
    .restart local v8    # "yProgress":F
    :cond_16
    move/from16 v16, v8

    .line 441
    .end local v8    # "yProgress":F
    .restart local v16    # "yProgress":F
    :goto_10
    invoke-static {v13, v14, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 442
    iget-object v4, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mNonOverviewAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    new-instance v6, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController$$ExternalSyntheticLambda2;

    invoke-direct {v6, v0, v9}, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;Lcom/android/launcher3/LauncherState;)V

    invoke-virtual {v4, v6}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setEndAction(Ljava/lang/Runnable;)V

    .line 444
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->cancelAnimations()V

    .line 445
    invoke-virtual {v15}, Landroid/animation/ValueAnimator;->start()V

    .line 446
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 447
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    .line 448
    return-void
.end method

.method public onDragStart(Z)V
    .locals 3
    .param p1, "start"    # Z

    .line 173
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

    invoke-virtual {v0}, Lcom/android/quickstep/util/MotionPauseDetector;->clear()V

    .line 174
    if-eqz p1, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mStartState:Lcom/android/launcher3/LauncherState;

    .line 177
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

    new-instance v1, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController$$ExternalSyntheticLambda4;-><init>(Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;)V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/MotionPauseDetector;->setOnMotionPauseListener(Lcom/android/quickstep/util/MotionPauseDetector$OnMotionPauseListener;)V

    .line 180
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mSwipeDetector:Lcom/android/launcher3/touch/BothAxesSwipeDetector;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/touch/BothAxesSwipeDetector;->setDetectableScrollConditions(IZ)V

    .line 183
    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->setupAnimators()V

    .line 185
    :cond_0
    return-void
.end method
