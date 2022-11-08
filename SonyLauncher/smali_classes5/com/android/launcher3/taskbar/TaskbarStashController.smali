.class public Lcom/android/launcher3/taskbar/TaskbarStashController;
.super Ljava/lang/Object;
.source "TaskbarStashController.java"

# interfaces
.implements Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;
    }
.end annotation


# static fields
.field private static final DEFAULT_STASHED_PREF:Z = false

.field private static final FLAGS_IN_APP:I = 0x101

.field private static final FLAGS_REPORT_STASHED_INSETS_TO_APP:I = 0x1e

.field private static final FLAGS_STASHED_IN_APP:I = 0xbe

.field private static final FLAGS_STASHED_IN_APP_IGNORING_IME:I = 0x9e

.field public static final FLAG_IN_APP:I = 0x1

.field public static final FLAG_IN_SETUP:I = 0x100

.field public static final FLAG_IN_STASHED_LAUNCHER_STATE:I = 0x40

.field public static final FLAG_STASHED_IN_APP_ALL_APPS:I = 0x80

.field public static final FLAG_STASHED_IN_APP_EMPTY:I = 0x8

.field public static final FLAG_STASHED_IN_APP_IME:I = 0x20

.field public static final FLAG_STASHED_IN_APP_MANUAL:I = 0x2

.field public static final FLAG_STASHED_IN_APP_PINNED:I = 0x4

.field public static final FLAG_STASHED_IN_APP_SETUP:I = 0x10

.field private static final SHARED_PREFS_STASHED_KEY:Ljava/lang/String; = "taskbar_is_stashed"

.field private static final STASHED_TASKBAR_HINT_SCALE:F = 0.9f

.field private static final STASHED_TASKBAR_SCALE:F = 0.5f

.field private static final TASKBAR_HINT_STASH_DURATION:J = 0x190L

.field public static final TASKBAR_STASH_DURATION:J = 0x12cL

.field private static final TASKBAR_STASH_DURATION_FOR_IME:J = 0x50L

.field private static final UNSTASHED_TASKBAR_HANDLE_HINT_SCALE:F = 1.1f


# instance fields
.field private final mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field private mAnimator:Landroid/animation/AnimatorSet;

.field private mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

.field private mEnableManualStashingForTests:Z

.field private mIconAlphaForStash:Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

.field private mIconScaleForStash:Lcom/android/quickstep/AnimatedFloat;

.field private mIconTranslationYForStash:Lcom/android/quickstep/AnimatedFloat;

.field private mIsImeShowing:Z

.field private mIsStashed:Z

.field private mIsSystemGestureInProgress:Z

.field private final mPrefs:Landroid/content/SharedPreferences;

.field private final mStashedHeight:I

.field private mState:I

.field private final mStatePropertyHolder:Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;

.field private final mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

.field private mTaskbarBackgroundOffset:Lcom/android/quickstep/AnimatedFloat;

.field private mTaskbarImeBgAlpha:Lcom/android/quickstep/AnimatedFloat;

.field private mTaskbarStashedHandleAlpha:Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

.field private mTaskbarStashedHandleHintScale:Lcom/android/quickstep/AnimatedFloat;

.field private final mUnstashedHeight:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmAnimator(Lcom/android/launcher3/taskbar/TaskbarStashController;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mAnimator:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsStashed(Lcom/android/launcher3/taskbar/TaskbarStashController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIsStashed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmAnimator(Lcom/android/launcher3/taskbar/TaskbarStashController;Landroid/animation/AnimatorSet;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mAnimator:Landroid/animation/AnimatorSet;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsStashed(Lcom/android/launcher3/taskbar/TaskbarStashController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIsStashed:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateAnimToIsStashed(Lcom/android/launcher3/taskbar/TaskbarStashController;ZJJZ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/launcher3/taskbar/TaskbarStashController;->createAnimToIsStashed(ZJJZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monIsStashedChanged(Lcom/android/launcher3/taskbar/TaskbarStashController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->onIsStashedChanged(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monStateChangeApplied(Lcom/android/launcher3/taskbar/TaskbarStashController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->onStateChangeApplied(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIsStashed:Z

    .line 153
    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mEnableManualStashingForTests:Z

    .line 156
    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;

    new-instance v1, Lcom/android/launcher3/taskbar/TaskbarStashController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/TaskbarStashController$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/taskbar/TaskbarStashController;)V

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;-><init>(Lcom/android/launcher3/taskbar/TaskbarStashController;Ljava/util/function/IntPredicate;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mStatePropertyHolder:Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;

    .line 165
    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    .line 166
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mPrefs:Landroid/content/SharedPreferences;

    .line 167
    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    .line 168
    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->taskbarSize:I

    iput v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mUnstashedHeight:I

    .line 169
    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->stashedTaskbarSize:I

    iput v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mStashedHeight:I

    .line 170
    return-void
.end method

.method private canCurrentlyManuallyUnstash()Z
    .locals 2

    .line 351
    iget v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mState:I

    and-int/lit16 v0, v0, 0xbf

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private createAnimToIsStashed(ZJJZ)V
    .locals 16
    .param p1, "isStashed"    # Z
    .param p2, "duration"    # J
    .param p4, "startDelay"    # J
    .param p6, "animateBg"    # Z

    .line 400
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    iget-object v6, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz v6, :cond_0

    .line 401
    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->cancel()V

    .line 403
    :cond_0
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mAnimator:Landroid/animation/AnimatorSet;

    .line 405
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->supportsVisualStashing()Z

    move-result v6

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    if-nez v6, :cond_3

    .line 407
    iget-object v6, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mAnimator:Landroid/animation/AnimatorSet;

    iget-object v9, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIconAlphaForStash:Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    if-eqz v1, :cond_1

    move v10, v7

    goto :goto_0

    :cond_1
    move v10, v8

    :goto_0
    invoke-virtual {v9, v10}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->animateToValue(F)Landroid/animation/Animator;

    move-result-object v9

    .line 408
    invoke-virtual {v9, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v9

    .line 407
    invoke-virtual {v6, v9}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 409
    iget-object v6, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mAnimator:Landroid/animation/AnimatorSet;

    iget-object v9, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mTaskbarImeBgAlpha:Lcom/android/quickstep/AnimatedFloat;

    .line 410
    const/16 v10, 0x20

    invoke-direct {v0, v10}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(I)Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_1

    :cond_2
    move v7, v8

    .line 409
    :goto_1
    invoke-virtual {v9, v7}, Lcom/android/quickstep/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 410
    invoke-virtual {v7, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 409
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 411
    iget-object v6, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v4, v5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 412
    iget-object v6, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mAnimator:Landroid/animation/AnimatorSet;

    new-instance v7, Lcom/android/launcher3/taskbar/TaskbarStashController$1;

    invoke-direct {v7, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController$1;-><init>(Lcom/android/launcher3/taskbar/TaskbarStashController;)V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 418
    return-void

    .line 421
    :cond_3
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 423
    .local v6, "fullLengthAnimatorSet":Landroid/animation/AnimatorSet;
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    .line 424
    .local v9, "firstHalfAnimatorSet":Landroid/animation/AnimatorSet;
    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    .line 429
    .local v10, "secondHalfAnimatorSet":Landroid/animation/AnimatorSet;
    const/4 v11, 0x2

    if-eqz v1, :cond_5

    .line 430
    const/high16 v14, 0x3f400000    # 0.75f

    .line 431
    .local v14, "firstHalfDurationScale":F
    const/high16 v15, 0x3f000000    # 0.5f

    .line 432
    .local v15, "secondHalfDurationScale":F
    iget v12, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mUnstashedHeight:I

    iget v13, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mStashedHeight:I

    sub-int/2addr v12, v13

    int-to-float v12, v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    .line 434
    .local v12, "stashTranslation":F
    iget-object v13, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIconTranslationYForStash:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v13, v12}, Lcom/android/quickstep/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 435
    if-eqz p6, :cond_4

    .line 436
    iget-object v13, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mTaskbarBackgroundOffset:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v13, v8}, Lcom/android/quickstep/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_2

    .line 438
    :cond_4
    new-instance v13, Lcom/android/launcher3/taskbar/TaskbarStashController$$ExternalSyntheticLambda0;

    invoke-direct {v13, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/taskbar/TaskbarStashController;)V

    invoke-static {v13}, Lcom/android/launcher3/anim/AnimatorListeners;->forEndCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 442
    :goto_2
    new-array v13, v11, [Landroid/animation/Animator;

    iget-object v11, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIconAlphaForStash:Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    .line 443
    invoke-virtual {v11, v7}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->animateToValue(F)Landroid/animation/Animator;

    move-result-object v7

    const/4 v11, 0x0

    aput-object v7, v13, v11

    iget-object v7, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIconScaleForStash:Lcom/android/quickstep/AnimatedFloat;

    const/high16 v11, 0x3f000000    # 0.5f

    .line 444
    invoke-virtual {v7, v11}, Lcom/android/quickstep/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const/4 v11, 0x1

    aput-object v7, v13, v11

    .line 442
    invoke-virtual {v9, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 446
    new-array v7, v11, [Landroid/animation/Animator;

    iget-object v11, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mTaskbarStashedHandleAlpha:Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    .line 447
    invoke-virtual {v11, v8}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->animateToValue(F)Landroid/animation/Animator;

    move-result-object v11

    const/4 v13, 0x0

    aput-object v11, v7, v13

    .line 446
    invoke-virtual {v10, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 449
    .end local v12    # "stashTranslation":F
    goto :goto_4

    .line 450
    .end local v14    # "firstHalfDurationScale":F
    .end local v15    # "secondHalfDurationScale":F
    :cond_5
    const/high16 v14, 0x3f000000    # 0.5f

    .line 451
    .restart local v14    # "firstHalfDurationScale":F
    const/high16 v15, 0x3f400000    # 0.75f

    .line 453
    .restart local v15    # "secondHalfDurationScale":F
    const/4 v11, 0x2

    new-array v12, v11, [Landroid/animation/Animator;

    iget-object v11, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIconScaleForStash:Lcom/android/quickstep/AnimatedFloat;

    .line 454
    invoke-virtual {v11, v8}, Lcom/android/quickstep/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    const/4 v13, 0x0

    aput-object v11, v12, v13

    iget-object v11, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIconTranslationYForStash:Lcom/android/quickstep/AnimatedFloat;

    .line 455
    invoke-virtual {v11, v7}, Lcom/android/quickstep/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    const/4 v13, 0x1

    aput-object v11, v12, v13

    .line 453
    invoke-virtual {v6, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 456
    if-eqz p6, :cond_6

    .line 457
    iget-object v11, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mTaskbarBackgroundOffset:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v11, v7}, Lcom/android/quickstep/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_3

    .line 459
    :cond_6
    new-instance v11, Lcom/android/launcher3/taskbar/TaskbarStashController$$ExternalSyntheticLambda1;

    invoke-direct {v11, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/taskbar/TaskbarStashController;)V

    invoke-static {v11}, Lcom/android/launcher3/anim/AnimatorListeners;->forEndCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 463
    :goto_3
    const/4 v11, 0x1

    new-array v12, v11, [Landroid/animation/Animator;

    iget-object v13, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mTaskbarStashedHandleAlpha:Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    .line 464
    invoke-virtual {v13, v7}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->animateToValue(F)Landroid/animation/Animator;

    move-result-object v7

    const/4 v13, 0x0

    aput-object v7, v12, v13

    .line 463
    invoke-virtual {v9, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 466
    new-array v7, v11, [Landroid/animation/Animator;

    iget-object v11, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIconAlphaForStash:Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    .line 467
    invoke-virtual {v11, v8}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->animateToValue(F)Landroid/animation/Animator;

    move-result-object v11

    aput-object v11, v7, v13

    .line 466
    invoke-virtual {v10, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 471
    :goto_4
    iget-object v7, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v7, v7, Lcom/android/launcher3/taskbar/TaskbarControllers;->stashedHandleViewController:Lcom/android/launcher3/taskbar/StashedHandleViewController;

    .line 472
    invoke-virtual {v7, v1}, Lcom/android/launcher3/taskbar/StashedHandleViewController;->createRevealAnimToIsStashed(Z)Landroid/animation/Animator;

    move-result-object v7

    .line 471
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 475
    iget-object v7, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mTaskbarStashedHandleHintScale:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v7, v8}, Lcom/android/quickstep/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 477
    invoke-virtual {v6, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 478
    long-to-float v7, v2

    mul-float/2addr v7, v14

    float-to-long v11, v7

    invoke-virtual {v9, v11, v12}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 479
    long-to-float v7, v2

    mul-float/2addr v7, v15

    float-to-long v11, v7

    invoke-virtual {v10, v11, v12}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 480
    long-to-float v7, v2

    sub-float/2addr v8, v15

    mul-float/2addr v7, v8

    float-to-long v7, v7

    invoke-virtual {v10, v7, v8}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 482
    iget-object v7, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mAnimator:Landroid/animation/AnimatorSet;

    const/4 v8, 0x3

    new-array v8, v8, [Landroid/animation/Animator;

    const/4 v11, 0x0

    aput-object v6, v8, v11

    const/4 v11, 0x1

    aput-object v9, v8, v11

    const/4 v11, 0x2

    aput-object v10, v8, v11

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 484
    iget-object v7, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v7, v4, v5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 485
    iget-object v7, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mAnimator:Landroid/animation/AnimatorSet;

    new-instance v8, Lcom/android/launcher3/taskbar/TaskbarStashController$2;

    invoke-direct {v8, v0, v1}, Lcom/android/launcher3/taskbar/TaskbarStashController$2;-><init>(Lcom/android/launcher3/taskbar/TaskbarStashController;Z)V

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 497
    return-void
.end method

.method private static getStateString(I)Ljava/lang/String;
    .locals 3
    .param p0, "flags"    # I

    .line 705
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "|"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 706
    .local v0, "str":Ljava/util/StringJoiner;
    const/16 v1, 0x101

    const-string v2, "FLAG_IN_APP"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/taskbar/Utilities;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    .line 707
    const/4 v1, 0x2

    const-string v2, "FLAG_STASHED_IN_APP_MANUAL"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/taskbar/Utilities;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    .line 708
    const/4 v1, 0x4

    const-string v2, "FLAG_STASHED_IN_APP_PINNED"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/taskbar/Utilities;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    .line 709
    const/16 v1, 0x8

    const-string v2, "FLAG_STASHED_IN_APP_EMPTY"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/taskbar/Utilities;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    .line 710
    const/16 v1, 0x10

    const-string v2, "FLAG_STASHED_IN_APP_SETUP"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/taskbar/Utilities;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    .line 711
    const/16 v1, 0x20

    const-string v2, "FLAG_STASHED_IN_APP_IME"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/taskbar/Utilities;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    .line 712
    const/16 v1, 0x40

    const-string v2, "FLAG_IN_STASHED_LAUNCHER_STATE"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/taskbar/Utilities;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    .line 713
    const/16 v1, 0x80

    const-string v2, "FLAG_STASHED_IN_APP_ALL_APPS"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/taskbar/Utilities;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    .line 714
    const/16 v1, 0x100

    const-string v2, "FLAG_IN_SETUP"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/taskbar/Utilities;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    .line 715
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getTaskbarStashStartDelayForIme()J
    .locals 4

    .line 608
    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIsImeShowing:Z

    if-eqz v0, :cond_0

    .line 610
    const-wide/16 v0, 0x0

    return-wide v0

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    .line 614
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    .line 615
    .local v0, "imeExitDuration":J
    const-wide/16 v2, 0x50

    sub-long v2, v0, v2

    return-wide v2
.end method

.method private hasAnyFlag(I)Z
    .locals 1
    .param p1, "flagMask"    # I

    .line 265
    iget v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mState:I

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(II)Z

    move-result v0

    return v0
.end method

.method private hasAnyFlag(II)Z
    .locals 1
    .param p1, "flags"    # I
    .param p2, "flagMask"    # I

    .line 269
    and-int v0, p1, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private maybeResetStashedInAppAllApps(Z)V
    .locals 3
    .param p1, "applyState"    # Z

    .line 593
    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIsSystemGestureInProgress:Z

    if-eqz v0, :cond_0

    .line 594
    return-void

    .line 597
    :cond_0
    const/16 v0, 0x80

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    .line 598
    if-eqz p1, :cond_1

    .line 599
    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v2, v2, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/LauncherState;->getTransitionDuration(Landroid/content/Context;Z)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->applyState(J)V

    .line 602
    :cond_1
    return-void
.end method

.method private notifyStashChange(ZZ)V
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "stashed"    # Z

    .line 680
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v0, p1, p2}, Lcom/android/quickstep/SystemUiProxy;->notifyTaskbarStatus(ZZ)V

    .line 684
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz p1, :cond_0

    .line 685
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isStashedInAppIgnoringIme()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 684
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->updateInsetRoundedCornerFrame(Z)V

    .line 686
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->rotationButtonController:Lcom/android/systemui/shared/rotation/RotationButtonController;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/shared/rotation/RotationButtonController;->onTaskbarStateChange(ZZ)V

    .line 687
    return-void
.end method

.method private onIsStashedChanged(Z)V
    .locals 2
    .param p1, "isStashed"    # Z

    .line 537
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    new-instance v1, Lcom/android/launcher3/taskbar/TaskbarStashController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/taskbar/TaskbarStashController;Z)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarControllers;->runAfterInit(Ljava/lang/Runnable;)V

    .line 541
    return-void
.end method

.method private onStateChangeApplied(I)V
    .locals 2
    .param p1, "changedFlags"    # I

    .line 663
    const/16 v0, 0xbe

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->uiController:Lcom/android/launcher3/taskbar/TaskbarUIController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarUIController;->onStashedInAppChanged()V

    .line 666
    :cond_0
    const/16 v0, 0x1bf

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 667
    const/16 v0, 0x101

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(I)Z

    move-result v0

    .line 668
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isStashedInApp()Z

    move-result v1

    .line 667
    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->notifyStashChange(ZZ)V

    .line 670
    :cond_1
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 671
    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 672
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TASKBAR_LONGPRESS_HIDE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    goto :goto_0

    .line 674
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TASKBAR_LONGPRESS_SHOW:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 677
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method protected addUnstashToHotseatAnimation(Landroid/animation/AnimatorSet;I)V
    .locals 7
    .param p1, "animation"    # Landroid/animation/AnimatorSet;
    .param p2, "placeholderDuration"    # I

    .line 383
    int-to-long v2, p2

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/taskbar/TaskbarStashController;->createAnimToIsStashed(ZJJZ)V

    .line 388
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 389
    return-void
.end method

.method public applyState()V
    .locals 2

    .line 544
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x12c

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->applyState(J)V

    .line 545
    return-void
.end method

.method public applyState(J)V
    .locals 3
    .param p1, "duration"    # J

    .line 548
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mStatePropertyHolder:Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;

    iget v1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mState:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->setState(IJZ)Landroid/animation/Animator;

    .line 549
    return-void
.end method

.method public applyState(JJ)V
    .locals 7
    .param p1, "duration"    # J
    .param p3, "startDelay"    # J

    .line 552
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mStatePropertyHolder:Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;

    iget v1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mState:I

    const/4 v6, 0x1

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->setState(IJJZ)Landroid/animation/Animator;

    .line 553
    return-void
.end method

.method public applyStateWithoutStart()Landroid/animation/Animator;
    .locals 2

    .line 556
    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->applyStateWithoutStart(J)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public applyStateWithoutStart(J)Landroid/animation/Animator;
    .locals 3
    .param p1, "duration"    # J

    .line 560
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mStatePropertyHolder:Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;

    iget v1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mState:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->setState(IJZ)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "TaskbarStashController:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 693
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iget v3, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mStashedHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const-string v3, "%s\tmStashedHeight=%dpx"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 694
    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    iget v3, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mUnstashedHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "%s\tmUnstashedHeight=%dpx"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 695
    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    iget-boolean v3, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIsStashed:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "%s\tmIsStashed=%b"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 696
    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mStatePropertyHolder:Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;

    invoke-static {v3}, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->-$$Nest$fgetmPrevFlags(Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;)I

    move-result v3

    .line 697
    invoke-static {v3}, Lcom/android/launcher3/taskbar/TaskbarStashController;->getStateString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    .line 696
    const-string v3, "%s\tappliedState=%s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 698
    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    iget v3, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mState:I

    invoke-static {v3}, Lcom/android/launcher3/taskbar/TaskbarStashController;->getStateString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "%s\tmState=%s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 699
    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    iget-boolean v3, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIsSystemGestureInProgress:Z

    .line 700
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v4

    .line 699
    const-string v3, "%s\tmIsSystemGestureInProgress=%b"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 701
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIsImeShowing:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "%s\tmIsImeShowing=%b"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 702
    return-void
.end method

.method public enableManualStashingForTests(Z)V
    .locals 0
    .param p1, "enableManualStashing"    # Z

    .line 223
    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mEnableManualStashingForTests:Z

    .line 224
    return-void
.end method

.method public getContentHeightToReportToApps()I
    .locals 4

    .line 290
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->supportsVisualStashing()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 291
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 292
    .local v0, "dp":Lcom/android/launcher3/DeviceProfile;
    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresent:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-nez v1, :cond_0

    .line 296
    iget v1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mUnstashedHeight:I

    return v1

    .line 298
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mAnimator:Landroid/animation/AnimatorSet;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 299
    .local v1, "isAnimating":Z
    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v3, v3, Lcom/android/launcher3/taskbar/TaskbarControllers;->stashedHandleViewController:Lcom/android/launcher3/taskbar/StashedHandleViewController;

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/StashedHandleViewController;->isStashedHandleVisible()Z

    move-result v3

    if-nez v3, :cond_2

    .line 300
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isInApp()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v1, :cond_2

    .line 305
    return v2

    .line 307
    :cond_2
    iget v2, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mStashedHeight:I

    return v2

    .line 309
    .end local v0    # "dp":Lcom/android/launcher3/DeviceProfile;
    .end local v1    # "isAnimating":Z
    :cond_3
    iget v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mUnstashedHeight:I

    return v0
.end method

.method public getStashedHeight()I
    .locals 1

    .line 322
    iget v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mStashedHeight:I

    return v0
.end method

.method public getTappableHeightToReportToApps()I
    .locals 2

    .line 317
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->getContentHeightToReportToApps()I

    move-result v0

    .line 318
    .local v0, "contentHeight":I
    iget v1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mStashedHeight:I

    if-gt v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    return v1
.end method

.method public init(Lcom/android/launcher3/taskbar/TaskbarControllers;Z)V
    .locals 8
    .param p1, "controllers"    # Lcom/android/launcher3/taskbar/TaskbarControllers;
    .param p2, "setupUIVisible"    # Z

    .line 173
    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    .line 175
    iget-object v0, p1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragLayerController:Lcom/android/launcher3/taskbar/TaskbarDragLayerController;

    .line 176
    .local v0, "dragLayerController":Lcom/android/launcher3/taskbar/TaskbarDragLayerController;
    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->getTaskbarBackgroundOffset()Lcom/android/quickstep/AnimatedFloat;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mTaskbarBackgroundOffset:Lcom/android/quickstep/AnimatedFloat;

    .line 177
    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->getImeBgTaskbar()Lcom/android/quickstep/AnimatedFloat;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mTaskbarImeBgAlpha:Lcom/android/quickstep/AnimatedFloat;

    .line 179
    iget-object v1, p1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/TaskbarViewController;

    .line 180
    .local v1, "taskbarViewController":Lcom/android/launcher3/taskbar/TaskbarViewController;
    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarViewController;->getTaskbarIconAlpha()Lcom/android/launcher3/util/MultiValueAlpha;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/MultiValueAlpha;->getProperty(I)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIconAlphaForStash:Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    .line 182
    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarViewController;->getTaskbarIconScaleForStash()Lcom/android/quickstep/AnimatedFloat;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIconScaleForStash:Lcom/android/quickstep/AnimatedFloat;

    .line 183
    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarViewController;->getTaskbarIconTranslationYForStash()Lcom/android/quickstep/AnimatedFloat;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIconTranslationYForStash:Lcom/android/quickstep/AnimatedFloat;

    .line 185
    iget-object v2, p1, Lcom/android/launcher3/taskbar/TaskbarControllers;->stashedHandleViewController:Lcom/android/launcher3/taskbar/StashedHandleViewController;

    .line 187
    .local v2, "stashedHandleController":Lcom/android/launcher3/taskbar/StashedHandleViewController;
    invoke-virtual {v2}, Lcom/android/launcher3/taskbar/StashedHandleViewController;->getStashedHandleAlpha()Lcom/android/launcher3/util/MultiValueAlpha;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/launcher3/util/MultiValueAlpha;->getProperty(I)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mTaskbarStashedHandleAlpha:Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    .line 189
    invoke-virtual {v2}, Lcom/android/launcher3/taskbar/StashedHandleViewController;->getStashedHandleHintScale()Lcom/android/quickstep/AnimatedFloat;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mTaskbarStashedHandleHintScale:Lcom/android/quickstep/AnimatedFloat;

    .line 191
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->supportsManualStashing()Z

    move-result v4

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mPrefs:Landroid/content/SharedPreferences;

    .line 192
    const-string v7, "taskbar_is_stashed"

    invoke-interface {v4, v7, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    .line 193
    .local v4, "isManuallyStashedInApp":Z
    :goto_0
    iget-object v7, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v7}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isUserSetupComplete()Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v6, v5

    .line 194
    .local v6, "isInSetup":Z
    :cond_2
    :goto_1
    invoke-virtual {p0, v3, v4}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    .line 195
    const/16 v3, 0x10

    invoke-virtual {p0, v3, v6}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    .line 196
    const/16 v3, 0x100

    invoke-virtual {p0, v3, v6}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    .line 197
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->applyState()V

    .line 199
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isStashedInApp()Z

    move-result v3

    invoke-direct {p0, v5, v3}, Lcom/android/launcher3/taskbar/TaskbarStashController;->notifyStashChange(ZZ)V

    .line 200
    return-void
.end method

.method public isInApp()Z
    .locals 1

    .line 281
    const/16 v0, 0x101

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(I)Z

    move-result v0

    return v0
.end method

.method public isInAppAndNotStashed()Z
    .locals 1

    .line 277
    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIsStashed:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isInApp()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInStashedLauncherState()Z
    .locals 1

    .line 261
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->supportsVisualStashing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStashed()Z
    .locals 1

    .line 240
    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIsStashed:Z

    return v0
.end method

.method public isStashedInApp()Z
    .locals 1

    .line 247
    const/16 v0, 0xbe

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(I)Z

    move-result v0

    return v0
.end method

.method public isStashedInAppIgnoringIme()Z
    .locals 1

    .line 254
    const/16 v0, 0x9e

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(I)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$createAnimToIsStashed$1$com-android-launcher3-taskbar-TaskbarStashController()V
    .locals 2

    .line 439
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mTaskbarBackgroundOffset:Lcom/android/quickstep/AnimatedFloat;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/quickstep/AnimatedFloat;->updateValue(F)V

    return-void
.end method

.method synthetic lambda$createAnimToIsStashed$2$com-android-launcher3-taskbar-TaskbarStashController()V
    .locals 2

    .line 460
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mTaskbarBackgroundOffset:Lcom/android/quickstep/AnimatedFloat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quickstep/AnimatedFloat;->updateValue(F)V

    return-void
.end method

.method synthetic lambda$new$0$com-android-launcher3-taskbar-TaskbarStashController(I)Z
    .locals 4
    .param p1, "flags"    # I

    .line 158
    const/16 v0, 0x101

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(II)Z

    move-result v0

    .line 159
    .local v0, "inApp":Z
    const/16 v1, 0xbe

    invoke-direct {p0, p1, v1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(II)Z

    move-result v1

    .line 160
    .local v1, "stashedInApp":Z
    const/16 v2, 0x40

    invoke-direct {p0, p1, v2}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(II)Z

    move-result v2

    .line 161
    .local v2, "stashedLauncherState":Z
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    if-nez v0, :cond_2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method synthetic lambda$onIsStashedChanged$3$com-android-launcher3-taskbar-TaskbarStashController(Z)V
    .locals 1
    .param p1, "isStashed"    # Z

    .line 538
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->stashedHandleViewController:Lcom/android/launcher3/taskbar/StashedHandleViewController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/StashedHandleViewController;->onIsStashedChanged(Z)V

    .line 539
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarInsetsController:Lcom/android/launcher3/taskbar/TaskbarInsetsController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->onTaskbarWindowHeightOrInsetsChanged()V

    .line 540
    return-void
.end method

.method public maybeResetStashedInAppAllApps()V
    .locals 1

    .line 589
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->maybeResetStashedInAppAllApps(Z)V

    .line 590
    return-void
.end method

.method public onLongPressToUnstashTaskbar()Z
    .locals 2

    .line 330
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isStashed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 333
    return v1

    .line 335
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->canCurrentlyManuallyUnstash()Z

    move-result v0

    if-nez v0, :cond_1

    .line 336
    return v1

    .line 338
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateAndAnimateIsManuallyStashedInApp(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 339
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDragLayer()Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->performHapticFeedback(I)Z

    .line 340
    const/4 v0, 0x1

    return v0

    .line 342
    :cond_2
    return v1
.end method

.method protected setSetupUIVisible(Z)V
    .locals 3
    .param p1, "isVisible"    # Z

    .line 230
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 231
    .local v0, "hideTaskbar":Z
    :goto_1
    const/16 v1, 0x100

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    .line 232
    const/16 v1, 0x10

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    .line 233
    if-eqz v0, :cond_2

    const-wide/16 v1, 0x0

    goto :goto_2

    :cond_2
    const-wide/16 v1, 0x12c

    :goto_2
    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/taskbar/TaskbarStashController;->applyState(J)V

    .line 234
    return-void
.end method

.method public setSystemGestureInProgress(Z)V
    .locals 4
    .param p1, "inProgress"    # Z

    .line 568
    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIsSystemGestureInProgress:Z

    .line 569
    if-eqz p1, :cond_0

    .line 570
    return-void

    .line 574
    :cond_0
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(I)Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIsImeShowing:Z

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->maybeResetStashedInAppAllApps(Z)V

    .line 575
    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(I)Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIsImeShowing:Z

    if-eq v1, v2, :cond_2

    .line 576
    invoke-virtual {p0, v0, v2}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    .line 577
    const-wide/16 v0, 0x50

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->getTaskbarStashStartDelayForIme()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/launcher3/taskbar/TaskbarStashController;->applyState(JJ)V

    .line 579
    :cond_2
    return-void
.end method

.method public startStashHint(Z)V
    .locals 3
    .param p1, "animateForward"    # Z

    .line 506
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isStashed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->supportsManualStashing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIconScaleForStash:Lcom/android/quickstep/AnimatedFloat;

    .line 511
    if-eqz p1, :cond_1

    const v1, 0x3f666666    # 0.9f

    goto :goto_0

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    .line 510
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/quickstep/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x190

    .line 512
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 513
    return-void

    .line 508
    :cond_2
    :goto_1
    return-void
.end method

.method public startUnstashHint(Z)V
    .locals 3
    .param p1, "animateForward"    # Z

    .line 522
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isStashed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 524
    return-void

    .line 526
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->canCurrentlyManuallyUnstash()Z

    move-result v0

    if-nez v0, :cond_1

    .line 529
    return-void

    .line 531
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mTaskbarStashedHandleHintScale:Lcom/android/quickstep/AnimatedFloat;

    .line 532
    if-eqz p1, :cond_2

    const v1, 0x3f8ccccd    # 1.1f

    goto :goto_0

    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 531
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/quickstep/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x190

    .line 533
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 534
    return-void
.end method

.method protected supportsManualStashing()Z
    .locals 1

    .line 214
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->supportsVisualStashing()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/launcher3/Utilities;->IS_RUNNING_IN_TEST_HARNESS:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mEnableManualStashingForTests:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public supportsVisualStashing()Z
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->uiController:Lcom/android/launcher3/taskbar/TaskbarUIController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarUIController;->supportsVisualStashing()Z

    move-result v0

    return v0
.end method

.method public updateAndAnimateIsManuallyStashedInApp(Z)Z
    .locals 3
    .param p1, "isManuallyStashedInApp"    # Z

    .line 360
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->supportsManualStashing()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 361
    return v1

    .line 363
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(I)Z

    move-result v2

    if-eq v2, p1, :cond_1

    .line 364
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "taskbar_is_stashed"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 365
    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    .line 366
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->applyState()V

    .line 367
    const/4 v0, 0x1

    return v0

    .line 369
    :cond_1
    return v1
.end method

.method public updateStateForFlag(IZ)V
    .locals 3
    .param p1, "flag"    # I
    .param p2, "enabled"    # Z

    .line 647
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    sget-boolean v1, Lcom/android/launcher3/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v1, :cond_0

    .line 648
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 649
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    .line 648
    const-string v1, "setting flag FLAG_IN_APP to: %b"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string v2, "b/227657604"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 651
    :cond_0
    if-eqz p2, :cond_1

    .line 652
    iget v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mState:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mState:I

    goto :goto_0

    .line 654
    :cond_1
    iget v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mState:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mState:I

    .line 656
    :goto_0
    return-void
.end method

.method public updateStateForSysuiFlags(IZ)V
    .locals 8
    .param p1, "systemUiStateFlags"    # I
    .param p2, "skipAnim"    # Z

    .line 620
    const-wide/16 v0, 0x12c

    .line 621
    .local v0, "animDuration":J
    const-wide/16 v2, 0x0

    .line 623
    .local v2, "startDelay":J
    nop

    .line 624
    const/4 v4, 0x1

    invoke-direct {p0, p1, v4}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(II)Z

    move-result v4

    .line 623
    const/4 v5, 0x4

    invoke-virtual {p0, v5, v4}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    .line 627
    const/high16 v4, 0x40000

    invoke-direct {p0, p1, v4}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(II)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIsImeShowing:Z

    .line 628
    iget-boolean v5, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIsSystemGestureInProgress:Z

    if-nez v5, :cond_0

    .line 629
    const/16 v5, 0x20

    invoke-virtual {p0, v5, v4}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    .line 630
    const-wide/16 v0, 0x50

    .line 631
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->getTaskbarStashStartDelayForIme()J

    move-result-wide v2

    .line 634
    :cond_0
    const-wide/16 v4, 0x0

    if-eqz p2, :cond_1

    move-wide v6, v4

    goto :goto_0

    :cond_1
    move-wide v6, v0

    :goto_0
    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move-wide v4, v2

    :goto_1
    invoke-virtual {p0, v6, v7, v4, v5}, Lcom/android/launcher3/taskbar/TaskbarStashController;->applyState(JJ)V

    .line 635
    return-void
.end method
