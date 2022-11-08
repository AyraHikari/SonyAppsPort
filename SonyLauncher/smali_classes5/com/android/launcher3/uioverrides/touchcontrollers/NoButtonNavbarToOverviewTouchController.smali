.class public Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;
.super Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;
.source "NoButtonNavbarToOverviewTouchController.java"


# static fields
.field private static final ONE_HANDED_ACTIVATED_SLOP_MULTIPLIER:F = 2.5f

.field private static final OVERVIEW_MOVEMENT_FACTOR:F = 0.25f

.field private static final TRANSLATION_ANIM_MIN_DURATION_MS:J = 0x50L

.field private static final TRANSLATION_ANIM_VELOCITY_DP_PER_MS:F = 0.8f


# instance fields
.field private mDidTouchStartInNavBar:Z

.field private final mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

.field private final mMotionPauseMinDisplacement:F

.field private mNormalToHintOverviewScrimAnimator:Landroid/animation/ObjectAnimator;

.field private mOverviewResistYAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

.field private mReachedOverview:Z

.field private final mRecentsView:Lcom/android/quickstep/views/RecentsView;

.field private mStartDisplacement:Landroid/graphics/PointF;

.field private mStartY:F

.field private mStartedOverview:Z


# direct methods
.method public static synthetic $r8$lambda$wXhCOUSC9LcVTGjjY4Rl3i668eM(Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->maybeSwipeInteractionToOverviewComplete()V

    return-void
.end method

.method public static synthetic $r8$lambda$xwi2xxPGV_xfZt00CabkGY7pKx8(Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->onMotionPauseDetected()V

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 1
    .param p1, "l"    # Lcom/android/launcher3/Launcher;

    .line 80
    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;-><init>(Lcom/android/launcher3/Launcher;)V

    .line 72
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mStartDisplacement:Landroid/graphics/PointF;

    .line 81
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 82
    new-instance v0, Lcom/android/quickstep/util/MotionPauseDetector;

    invoke-direct {v0, p1}, Lcom/android/quickstep/util/MotionPauseDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

    .line 83
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mMotionPauseMinDisplacement:F

    .line 84
    return-void
.end method

.method private dpiFromPx(F)F
    .locals 1
    .param p1, "pixels"    # F

    .line 278
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {p1, v0}, Lcom/android/launcher3/Utilities;->dpiFromPx(FI)F

    move-result v0

    return v0
.end method

.method private goToOverviewOrHomeOnDragEnd(F)V
    .locals 7
    .param p1, "velocity"    # F

    .line 248
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

    invoke-virtual {v0}, Lcom/android/quickstep/util/MotionPauseDetector;->isPaused()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 249
    .local v0, "goToHomeInsteadOfOverview":Z
    if-eqz v0, :cond_0

    .line 250
    new-instance v1, Lcom/android/quickstep/util/OverviewToHomeAnim;

    iget-object v2, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    new-instance v3, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;)V

    invoke-direct {v1, v2, v3}, Lcom/android/quickstep/util/OverviewToHomeAnim;-><init>(Lcom/android/launcher3/Launcher;Ljava/lang/Runnable;)V

    .line 251
    invoke-virtual {v1, p1}, Lcom/android/quickstep/util/OverviewToHomeAnim;->animateWithVelocity(F)V

    .line 253
    :cond_0
    iget-boolean v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mReachedOverview:Z

    if-eqz v1, :cond_2

    .line 254
    iget-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 255
    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->getTranslationX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 256
    invoke-virtual {v2}, Lcom/android/quickstep/views/RecentsView;->getTranslationY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 254
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->dpiFromPx(F)F

    move-result v1

    .line 257
    .local v1, "distanceDp":F
    const/high16 v2, 0x42a00000    # 80.0f

    const v3, 0x3f4ccccd    # 0.8f

    div-float v3, v1, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-long v2, v2

    .line 259
    .local v2, "duration":J
    iget-object v4, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v4}, Lcom/android/quickstep/views/RecentsView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 260
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 261
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->ACCEL_DEACCEL:Landroid/view/animation/Interpolator;

    .line 262
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 263
    invoke-virtual {v4, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 264
    if-eqz v0, :cond_1

    .line 265
    const/4 v5, 0x0

    goto :goto_0

    .line 266
    :cond_1
    new-instance v5, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController$$ExternalSyntheticLambda4;-><init>(Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;)V

    .line 264
    :goto_0
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 267
    if-nez v0, :cond_2

    .line 269
    new-instance v4, Lcom/android/launcher3/states/StateAnimationConfig;

    invoke-direct {v4}, Lcom/android/launcher3/states/StateAnimationConfig;-><init>()V

    .line 270
    .local v4, "config":Lcom/android/launcher3/states/StateAnimationConfig;
    iput-wide v2, v4, Lcom/android/launcher3/states/StateAnimationConfig;->duration:J

    .line 271
    iget-object v5, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/LauncherState;

    .line 272
    .local v5, "state":Lcom/android/launcher3/LauncherState;
    iget-object v6, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v6

    invoke-virtual {v6, v5, v5, v4}, Lcom/android/launcher3/statemanager/StateManager;->createAtomicAnimation(Lcom/android/launcher3/statemanager/BaseState;Lcom/android/launcher3/statemanager/BaseState;Lcom/android/launcher3/states/StateAnimationConfig;)Landroid/animation/AnimatorSet;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    .line 275
    .end local v1    # "distanceDp":F
    .end local v2    # "duration":J
    .end local v4    # "config":Lcom/android/launcher3/states/StateAnimationConfig;
    .end local v5    # "state":Lcom/android/launcher3/LauncherState;
    :cond_2
    return-void
.end method

.method private handlingOverviewAnim()Z
    .locals 3

    .line 214
    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v0}, Lcom/android/quickstep/SystemUiProxy;->getLastSystemUiStateFlags()I

    move-result v0

    .line 215
    .local v0, "stateFlags":I
    iget-boolean v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mDidTouchStartInNavBar:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mStartState:Lcom/android/launcher3/LauncherState;

    sget-object v2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne v1, v2, :cond_0

    and-int/lit16 v1, v0, 0x80

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private maybeSwipeInteractionToOverviewComplete()V
    .locals 1

    .line 208
    iget-boolean v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mReachedOverview:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v0}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->isDraggingState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->onSwipeInteractionCompleted(Lcom/android/launcher3/LauncherState;)V

    .line 211
    :cond_0
    return-void
.end method

.method private onMotionPauseDetected()V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-nez v0, :cond_0

    .line 189
    return-void

    .line 191
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mNormalToHintOverviewScrimAnimator:Landroid/animation/ObjectAnimator;

    .line 192
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getTarget()Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;)V

    invoke-static {v1}, Lcom/android/launcher3/LauncherAnimUtils;->newCancelListener(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 201
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getTarget()Landroid/animation/AnimatorSet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mClearStateOnCancelListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 202
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnCancel()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mStartedOverview:Z

    .line 204
    sget-object v0, Lcom/android/quickstep/util/VibratorWrapper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/util/VibratorWrapper;

    sget-object v1, Lcom/android/quickstep/util/VibratorWrapper;->OVERVIEW_HAPTIC:Landroid/os/VibrationEffect;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/VibratorWrapper;->vibrate(Landroid/os/VibrationEffect;)V

    .line 205
    return-void
.end method


# virtual methods
.method protected canInterceptTouch(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 88
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mDidTouchStartInNavBar:Z

    .line 89
    invoke-super {p0, p1}, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->canInterceptTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v3, Lcom/android/launcher3/LauncherState;->HINT_STATE:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method protected getTargetState(Lcom/android/launcher3/LauncherState;Z)Lcom/android/launcher3/LauncherState;
    .locals 1
    .param p1, "fromState"    # Lcom/android/launcher3/LauncherState;
    .param p2, "isDragTowardPositive"    # Z

    .line 94
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mDidTouchStartInNavBar:Z

    if-eqz v0, :cond_0

    .line 95
    sget-object v0, Lcom/android/launcher3/LauncherState;->HINT_STATE:Lcom/android/launcher3/LauncherState;

    return-object v0

    .line 96
    :cond_0
    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_1

    .line 98
    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    return-object v0

    .line 100
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->getTargetState(Lcom/android/launcher3/LauncherState;Z)Lcom/android/launcher3/LauncherState;

    move-result-object v0

    return-object v0
.end method

.method protected initCurrentAnimation()F
    .locals 3

    .line 105
    invoke-super {p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->initCurrentAnimation()F

    move-result v0

    .line 106
    .local v0, "progressMultiplier":F
    iget-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mToState:Lcom/android/launcher3/LauncherState;

    sget-object v2, Lcom/android/launcher3/LauncherState;->HINT_STATE:Lcom/android/launcher3/LauncherState;

    if-ne v1, v2, :cond_0

    .line 108
    const/high16 v1, -0x40800000    # -1.0f

    iget-object v2, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 110
    :cond_0
    return v0
.end method

.method synthetic lambda$goToOverviewOrHomeOnDragEnd$2$com-android-launcher3-uioverrides-touchcontrollers-NoButtonNavbarToOverviewTouchController()V
    .locals 1

    .line 250
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->onSwipeInteractionCompleted(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method synthetic lambda$onMotionPauseDetected$0$com-android-launcher3-uioverrides-touchcontrollers-NoButtonNavbarToOverviewTouchController()V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 195
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->createRecentsResistanceFromOverviewAnim(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/anim/PendingAnimation;)Lcom/android/launcher3/anim/PendingAnimation;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Lcom/android/launcher3/anim/PendingAnimation;->createPlaybackController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mOverviewResistYAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mReachedOverview:Z

    .line 198
    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->maybeSwipeInteractionToOverviewComplete()V

    .line 199
    return-void
.end method

.method synthetic lambda$onMotionPauseDetected$1$com-android-launcher3-uioverrides-touchcontrollers-NoButtonNavbarToOverviewTouchController()V
    .locals 4

    .line 193
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    new-instance v2, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;)V

    invoke-static {v2}, Lcom/android/launcher3/anim/AnimatorListeners;->forSuccessCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;ZLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public onDrag(FFLandroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "yDisplacement"    # F
    .param p2, "xDisplacement"    # F
    .param p3, "event"    # Landroid/view/MotionEvent;

    .line 221
    iget-boolean v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mStartedOverview:Z

    if-eqz v0, :cond_2

    .line 222
    iget-boolean v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mReachedOverview:Z

    if-nez v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mStartDisplacement:Landroid/graphics/PointF;

    invoke-virtual {v0, p2, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 224
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mStartY:F

    goto :goto_0

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mStartDisplacement:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float v1, p2, v1

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/RecentsView;->setTranslationX(F)V

    .line 228
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mStartDisplacement:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, p1

    iget v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mStartY:F

    div-float/2addr v0, v1

    .line 229
    .local v0, "yProgress":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mOverviewResistYAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-eqz v1, :cond_1

    .line 230
    invoke-virtual {v1, v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    goto :goto_0

    .line 232
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    iget-object v3, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mStartDisplacement:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float v3, p1, v3

    mul-float/2addr v3, v2

    invoke-virtual {v1, v3}, Lcom/android/quickstep/views/RecentsView;->setTranslationY(F)V

    .line 238
    .end local v0    # "yProgress":F
    :cond_2
    :goto_0
    neg-float v0, p1

    .line 239
    .local v0, "upDisplacement":F
    iget-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->handlingOverviewAnim()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mMotionPauseMinDisplacement:F

    cmpg-float v2, v0, v2

    if-gez v2, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_2

    :cond_4
    :goto_1
    move v2, v4

    :goto_2
    invoke-virtual {v1, v2}, Lcom/android/quickstep/util/MotionPauseDetector;->setDisallowPause(Z)V

    .line 241
    iget-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

    invoke-virtual {v1, p3}, Lcom/android/quickstep/util/MotionPauseDetector;->addPosition(Landroid/view/MotionEvent;)V

    .line 244
    iget-boolean v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mStartedOverview:Z

    if-nez v1, :cond_5

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->onDrag(FFLandroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    move v3, v4

    :cond_6
    return v3
.end method

.method public onDragEnd(F)V
    .locals 3
    .param p1, "velocity"    # F

    .line 153
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    check-cast v0, Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 154
    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getTaskbarUIController()Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    move-result-object v0

    .line 155
    .local v0, "controller":Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;
    if-eqz v0, :cond_0

    .line 156
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->setShouldDelayLauncherStateAnim(Z)V

    .line 159
    :cond_0
    iget-boolean v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mStartedOverview:Z

    if-eqz v1, :cond_1

    .line 160
    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->goToOverviewOrHomeOnDragEnd(F)V

    goto :goto_0

    .line 162
    :cond_1
    invoke-super {p0, p1}, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->onDragEnd(F)V

    .line 165
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

    invoke-virtual {v1}, Lcom/android/quickstep/util/MotionPauseDetector;->clear()V

    .line 166
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mNormalToHintOverviewScrimAnimator:Landroid/animation/ObjectAnimator;

    .line 167
    iget-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v2, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 170
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->clearState()V

    .line 172
    :cond_2
    return-void
.end method

.method public onDragStart(ZF)V
    .locals 7
    .param p1, "start"    # Z
    .param p2, "startDisplacement"    # F

    .line 115
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    check-cast v0, Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 117
    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getTaskbarUIController()Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    move-result-object v0

    .line 118
    .local v0, "controller":Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;
    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->setShouldDelayLauncherStateAnim(Z)V

    .line 123
    .end local v0    # "controller":Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->onDragStart(ZF)V

    .line 125
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

    invoke-virtual {v0}, Lcom/android/quickstep/util/MotionPauseDetector;->clear()V

    .line 127
    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->handlingOverviewAnim()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

    new-instance v2, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;)V

    invoke-virtual {v0, v2}, Lcom/android/quickstep/util/MotionPauseDetector;->setOnMotionPauseListener(Lcom/android/quickstep/util/MotionPauseDetector$OnMotionPauseListener;)V

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mFromState:Lcom/android/launcher3/LauncherState;

    sget-object v2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mToState:Lcom/android/launcher3/LauncherState;

    sget-object v2, Lcom/android/launcher3/LauncherState;->HINT_STATE:Lcom/android/launcher3/LauncherState;

    if-ne v0, v2, :cond_2

    .line 132
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 133
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getScrimView()Lcom/android/launcher3/views/ScrimView;

    move-result-object v0

    sget-object v2, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_BACKGROUND_COLOR:Landroid/util/IntProperty;

    const/4 v4, 0x2

    new-array v4, v4, [I

    iget-object v5, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mFromState:Lcom/android/launcher3/LauncherState;

    iget-object v6, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 135
    invoke-virtual {v5, v6}, Lcom/android/launcher3/LauncherState;->getWorkspaceScrimColor(Lcom/android/launcher3/Launcher;)I

    move-result v5

    aput v5, v4, v3

    iget-object v5, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mToState:Lcom/android/launcher3/LauncherState;

    iget-object v6, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 136
    invoke-virtual {v5, v6}, Lcom/android/launcher3/LauncherState;->getWorkspaceScrimColor(Lcom/android/launcher3/Launcher;)I

    move-result v5

    aput v5, v4, v1

    .line 132
    invoke-static {v0, v2, v4}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mNormalToHintOverviewScrimAnimator:Landroid/animation/ObjectAnimator;

    .line 138
    :cond_2
    iput-boolean v3, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mStartedOverview:Z

    .line 139
    iput-boolean v3, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mReachedOverview:Z

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mOverviewResistYAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 141
    return-void
.end method

.method public onOneHandedModeStateChanged(Z)V
    .locals 2
    .param p1, "activated"    # Z

    .line 283
    if-eqz p1, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    const/high16 v1, 0x40200000    # 2.5f

    invoke-virtual {v0, v1}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->setTouchSlopMultiplier(F)V

    goto :goto_0

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->setTouchSlopMultiplier(F)V

    .line 289
    :goto_0
    return-void
.end method

.method protected updateProgress(F)V
    .locals 1
    .param p1, "fraction"    # F

    .line 145
    invoke-super {p0, p1}, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->updateProgress(F)V

    .line 146
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mNormalToHintOverviewScrimAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setCurrentFraction(F)V

    .line 149
    :cond_0
    return-void
.end method

.method protected updateSwipeCompleteAnimation(Landroid/animation/ValueAnimator;JLcom/android/launcher3/LauncherState;FZ)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/ValueAnimator;
    .param p2, "expectedDuration"    # J
    .param p4, "targetState"    # Lcom/android/launcher3/LauncherState;
    .param p5, "velocity"    # F
    .param p6, "isFling"    # Z

    .line 177
    invoke-super/range {p0 .. p6}, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->updateSwipeCompleteAnimation(Landroid/animation/ValueAnimator;JLcom/android/launcher3/LauncherState;FZ)V

    .line 179
    sget-object v0, Lcom/android/launcher3/LauncherState;->HINT_STATE:Lcom/android/launcher3/LauncherState;

    if-ne p4, v0, :cond_0

    .line 183
    sget-object v0, Lcom/android/launcher3/LauncherState;->HINT_STATE:Lcom/android/launcher3/LauncherState;

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/LauncherState;->getTransitionDuration(Landroid/content/Context;Z)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 185
    :cond_0
    return-void
.end method
