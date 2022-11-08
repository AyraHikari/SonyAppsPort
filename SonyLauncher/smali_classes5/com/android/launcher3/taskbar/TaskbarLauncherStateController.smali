.class public Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;
.super Ljava/lang/Object;
.source "TaskbarLauncherStateController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;
    }
.end annotation


# static fields
.field private static final FLAGS_ALL:I = -0x1

.field public static final FLAG_RECENTS_ANIMATION_RUNNING:I = 0x2

.field public static final FLAG_RESUMED:I = 0x1

.field public static final FLAG_TRANSITION_STATE_RUNNING:I = 0x4


# instance fields
.field private mCanSyncViews:Z

.field private mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

.field private final mIconAlignmentForGestureState:Lcom/android/quickstep/AnimatedFloat;

.field private final mIconAlignmentForLauncherState:Lcom/android/quickstep/AnimatedFloat;

.field private final mIconAlignmentForResumedState:Lcom/android/quickstep/AnimatedFloat;

.field private mIconAlphaForHome:Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

.field private mIsAnimatingToLauncherViaGesture:Z

.field private mIsAnimatingToLauncherViaResume:Z

.field private mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

.field private mLauncherState:Lcom/android/launcher3/LauncherState;

.field private mPrevState:Ljava/lang/Integer;

.field private mShouldDelayLauncherStateAnim:Z

.field private mState:I

.field private final mStateListener:Lcom/android/launcher3/statemanager/StateManager$StateListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/statemanager/StateManager$StateListener<",
            "Lcom/android/launcher3/LauncherState;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskBarRecentsAnimationListener:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;

.field private mTaskbarBackgroundAlpha:Lcom/android/quickstep/AnimatedFloat;


# direct methods
.method public static synthetic $r8$lambda$0K_nylSaaaHSF3-LjuIYkloYtUE(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->onIconAlignmentRatioChangedForAppAndHomeTransition()V

    return-void
.end method

.method public static synthetic $r8$lambda$48UpSyWCEAtAec2kmbBtDlxI7sg(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)F
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->getCurrentIconAlignmentRatioBetweenAppAndHome()F

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$CMvgTObtXilkyj8kHxU2lOJnsa4(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)F
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->getCurrentIconAlignmentRatioForLauncherState()F

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$HqioyYBJMj2SrViQh1pMTU1dvGk(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->onIconAlignmentRatioChangedForStateTransition()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmControllers(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)Lcom/android/launcher3/taskbar/TaskbarControllers;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIconAlignmentForResumedState(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)Lcom/android/quickstep/AnimatedFloat;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlignmentForResumedState:Lcom/android/quickstep/AnimatedFloat;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIconAlphaForHome(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlphaForHome:Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLauncher(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)Lcom/android/launcher3/BaseQuickstepLauncher;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLauncherState(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)Lcom/android/launcher3/LauncherState;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncherState:Lcom/android/launcher3/LauncherState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPrevState(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mPrevState:Ljava/lang/Integer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmShouldDelayLauncherStateAnim(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mShouldDelayLauncherStateAnim:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIsAnimatingToLauncherViaGesture(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIsAnimatingToLauncherViaGesture:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsAnimatingToLauncherViaResume(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIsAnimatingToLauncherViaResume:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLauncherState(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;Lcom/android/launcher3/LauncherState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncherState:Lcom/android/launcher3/LauncherState;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPrevState(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mPrevState:Ljava/lang/Integer;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTaskBarRecentsAnimationListener(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mTaskBarRecentsAnimationListener:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;

    return-void
.end method

.method static bridge synthetic -$$Nest$misRecentsAnimationRunning(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->isRecentsAnimationRunning()Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lcom/android/quickstep/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$$ExternalSyntheticLambda4;-><init>(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)V

    invoke-direct {v0, v1}, Lcom/android/quickstep/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlignmentForResumedState:Lcom/android/quickstep/AnimatedFloat;

    .line 65
    new-instance v0, Lcom/android/quickstep/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$$ExternalSyntheticLambda4;-><init>(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)V

    invoke-direct {v0, v1}, Lcom/android/quickstep/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlignmentForGestureState:Lcom/android/quickstep/AnimatedFloat;

    .line 67
    new-instance v0, Lcom/android/quickstep/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$$ExternalSyntheticLambda5;-><init>(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)V

    invoke-direct {v0, v1}, Lcom/android/quickstep/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlignmentForLauncherState:Lcom/android/quickstep/AnimatedFloat;

    .line 77
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncherState:Lcom/android/launcher3/LauncherState;

    .line 89
    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$1;-><init>(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mStateListener:Lcom/android/launcher3/statemanager/StateManager$StateListener;

    return-void
.end method

.method private getCurrentIconAlignmentRatioBetweenAppAndHome()F
    .locals 2

    .line 429
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlignmentForResumedState:Lcom/android/quickstep/AnimatedFloat;

    iget v0, v0, Lcom/android/quickstep/AnimatedFloat;->value:F

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlignmentForGestureState:Lcom/android/quickstep/AnimatedFloat;

    iget v1, v1, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method private getCurrentIconAlignmentRatioForLauncherState()F
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlignmentForLauncherState:Lcom/android/quickstep/AnimatedFloat;

    iget v0, v0, Lcom/android/quickstep/AnimatedFloat;->value:F

    return v0
.end method

.method private static getStateString(I)Ljava/lang/String;
    .locals 3
    .param p0, "flags"    # I

    .line 479
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "|"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 480
    .local v0, "str":Ljava/util/StringJoiner;
    and-int/lit8 v1, p0, 0x1

    const-string v2, ""

    if-eqz v1, :cond_0

    const-string v1, "FLAG_RESUMED"

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 481
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    .line 482
    const-string v1, "FLAG_RECENTS_ANIMATION_RUNNING"

    goto :goto_1

    :cond_1
    move-object v1, v2

    .line 481
    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 483
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    .line 484
    const-string v2, "FLAG_TRANSITION_STATE_RUNNING"

    goto :goto_2

    :cond_2
    nop

    .line 483
    :goto_2
    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 485
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private goingToUnstashedLauncherState()Z
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isInStashedLauncherState()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private hasAnyFlag(I)Z
    .locals 1
    .param p1, "flagMask"    # I

    .line 209
    iget v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mState:I

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->hasAnyFlag(II)Z

    move-result v0

    return v0
.end method

.method private hasAnyFlag(II)Z
    .locals 1
    .param p1, "flags"    # I
    .param p2, "flagMask"    # I

    .line 213
    and-int v0, p1, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isRecentsAnimationRunning()Z
    .locals 1

    .line 385
    iget v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mState:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isResumed()Z
    .locals 2

    .line 381
    iget v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mState:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static synthetic lambda$onIconAlignmentRatioChanged$2()V
    .locals 0

    .line 415
    return-void
.end method

.method private onIconAlignmentRatioChanged(Ljava/util/function/Supplier;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 400
    .local p1, "alignmentSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/Float;>;"
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-nez v0, :cond_0

    .line 401
    return-void

    .line 403
    :cond_0
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 404
    .local v0, "alignment":F
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlphaForHome:Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    invoke-virtual {v1}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->getValue()F

    move-result v1

    .line 405
    .local v1, "currentValue":F
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v3, v0, v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-gez v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v5

    .line 406
    .local v3, "taskbarWillBeVisible":Z
    :goto_0
    if-eqz v3, :cond_2

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    if-nez v3, :cond_4

    const/4 v2, 0x0

    .line 407
    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    goto :goto_1

    :cond_4
    move v4, v5

    :goto_1
    move v2, v4

    .line 409
    .local v2, "firstFrameVisChanged":Z
    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->updateIconAlignment(F)V

    .line 412
    if-eqz v2, :cond_5

    iget-boolean v4, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mCanSyncViews:Z

    if-eqz v4, :cond_5

    sget-boolean v4, Lcom/android/launcher3/Utilities;->IS_RUNNING_IN_TEST_HARNESS:Z

    if-nez v4, :cond_5

    .line 413
    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v4}, Lcom/android/launcher3/BaseQuickstepLauncher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v5, v5, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    .line 414
    invoke-virtual {v5}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDragLayer()Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    move-result-object v5

    new-instance v6, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$$ExternalSyntheticLambda3;

    invoke-direct {v6}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$$ExternalSyntheticLambda3;-><init>()V

    .line 413
    invoke-static {v4, v5, v6}, Lcom/android/systemui/animation/ViewRootSync;->synchronizeNextDraw(Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 417
    :cond_5
    return-void
.end method

.method private onIconAlignmentRatioChangedForAppAndHomeTransition()V
    .locals 1

    .line 396
    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->onIconAlignmentRatioChanged(Ljava/util/function/Supplier;)V

    .line 397
    return-void
.end method

.method private onIconAlignmentRatioChangedForStateTransition()V
    .locals 1

    .line 389
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mTaskBarRecentsAnimationListener:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;

    if-nez v0, :cond_0

    .line 390
    return-void

    .line 392
    :cond_0
    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$$ExternalSyntheticLambda6;-><init>(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->onIconAlignmentRatioChanged(Ljava/util/function/Supplier;)V

    .line 393
    return-void
.end method

.method private onStateChangeApplied(IJZ)Landroid/animation/Animator;
    .locals 16
    .param p1, "changedFlags"    # I
    .param p2, "duration"    # J
    .param p4, "start"    # Z

    .line 240
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 244
    .local v4, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->goingToUnstashedLauncherState()Z

    move-result v5

    .line 245
    .local v5, "wasGoingToUnstashedLauncherState":Z
    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->hasAnyFlag(II)Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v7, :cond_0

    .line 246
    invoke-direct {v0, v6}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->hasAnyFlag(I)Z

    move-result v6

    xor-int/2addr v6, v9

    .line 247
    .local v6, "committed":Z
    invoke-direct {v0, v4, v2, v3, v6}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->playStateTransitionAnim(Landroid/animation/AnimatorSet;JZ)V

    .line 249
    if-eqz v6, :cond_0

    iget-object v7, v0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncherState:Lcom/android/launcher3/LauncherState;

    sget-object v10, Lcom/android/launcher3/LauncherState;->QUICK_SWITCH:Lcom/android/launcher3/LauncherState;

    if-ne v7, v10, :cond_0

    .line 251
    invoke-virtual {v0, v9, v8}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->updateStateForFlag(IZ)V

    .line 252
    const-wide/16 v10, 0x0

    invoke-virtual {v0, v10, v11}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->applyState(J)V

    .line 255
    .end local v6    # "committed":Z
    :cond_0
    nop

    .line 256
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->goingToUnstashedLauncherState()Z

    move-result v6

    if-eq v5, v6, :cond_1

    move v6, v9

    goto :goto_0

    :cond_1
    move v6, v8

    .line 258
    .local v6, "goingToUnstashedLauncherStateChanged":Z
    :goto_0
    iget-object v7, v0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlignmentForResumedState:Lcom/android/quickstep/AnimatedFloat;

    .line 259
    invoke-virtual {v7}, Lcom/android/quickstep/AnimatedFloat;->isAnimating()Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v6, :cond_2

    move v7, v9

    goto :goto_1

    :cond_2
    move v7, v8

    .line 260
    .local v7, "launcherStateChangedDuringAnimToResumeAlignment":Z
    :goto_1
    invoke-direct {v0, v1, v9}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->hasAnyFlag(II)Z

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    if-nez v10, :cond_3

    if-eqz v7, :cond_6

    .line 262
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->isResumed()Z

    move-result v10

    .line 265
    .local v10, "isResumed":Z
    if-eqz v10, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->goingToUnstashedLauncherState()Z

    move-result v13

    if-nez v13, :cond_4

    if-nez v6, :cond_5

    .line 266
    :cond_4
    move v13, v11

    goto :goto_2

    :cond_5
    move v13, v12

    .line 268
    .local v13, "toAlignmentForResumedState":F
    :goto_2
    iget-object v14, v0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlignmentForResumedState:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v14, v13}, Lcom/android/quickstep/AnimatedFloat;->isAnimatingToValue(F)Z

    move-result v14

    if-nez v14, :cond_6

    .line 269
    iget-object v14, v0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlignmentForResumedState:Lcom/android/quickstep/AnimatedFloat;

    .line 270
    invoke-virtual {v14, v13}, Lcom/android/quickstep/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    .line 271
    invoke-virtual {v14, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v14

    .line 273
    .local v14, "resumeAlignAnim":Landroid/animation/ObjectAnimator;
    new-instance v15, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$2;

    invoke-direct {v15, v0, v10, v2, v3}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$2;-><init>(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;ZJ)V

    invoke-virtual {v14, v15}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 289
    invoke-virtual {v4, v14}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 294
    .end local v10    # "isResumed":Z
    .end local v13    # "toAlignmentForResumedState":F
    .end local v14    # "resumeAlignAnim":Landroid/animation/ObjectAnimator;
    :cond_6
    iget-object v10, v0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlignmentForGestureState:Lcom/android/quickstep/AnimatedFloat;

    .line 295
    invoke-virtual {v10}, Lcom/android/quickstep/AnimatedFloat;->isAnimating()Z

    move-result v10

    if-eqz v10, :cond_7

    if-eqz v6, :cond_7

    move v8, v9

    .line 296
    .local v8, "launcherStateChangedDuringAnimToGestureAlignment":Z
    :cond_7
    const/4 v9, 0x2

    invoke-direct {v0, v1, v9}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->hasAnyFlag(II)Z

    move-result v9

    if-nez v9, :cond_8

    if-eqz v8, :cond_b

    .line 298
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->isRecentsAnimationRunning()Z

    move-result v9

    .line 300
    .local v9, "isRecentsAnimationRunning":Z
    if-eqz v9, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->goingToUnstashedLauncherState()Z

    move-result v10

    if-eqz v10, :cond_9

    move v10, v11

    goto :goto_3

    :cond_9
    move v10, v12

    .line 302
    .local v10, "toAlignmentForGestureState":F
    :goto_3
    iget-object v13, v0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlignmentForGestureState:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v13, v10}, Lcom/android/quickstep/AnimatedFloat;->isAnimatingToValue(F)Z

    move-result v13

    if-nez v13, :cond_b

    .line 303
    iget-object v13, v0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlignmentForGestureState:Lcom/android/quickstep/AnimatedFloat;

    .line 304
    invoke-virtual {v13, v10}, Lcom/android/quickstep/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 305
    .local v13, "gestureAlignAnim":Landroid/animation/Animator;
    if-eqz v9, :cond_a

    .line 306
    invoke-virtual {v13, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 308
    :cond_a
    new-instance v14, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$3;

    invoke-direct {v14, v0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$3;-><init>(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)V

    invoke-virtual {v13, v14}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 319
    invoke-virtual {v4, v13}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 323
    .end local v9    # "isRecentsAnimationRunning":Z
    .end local v10    # "toAlignmentForGestureState":F
    .end local v13    # "gestureAlignAnim":Landroid/animation/Animator;
    :cond_b
    const/4 v9, 0x3

    invoke-direct {v0, v1, v9}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->hasAnyFlag(II)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 324
    invoke-direct {v0, v9}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->hasAnyFlag(I)Z

    move-result v9

    .line 325
    .local v9, "goingToLauncher":Z
    if-eqz v9, :cond_c

    .line 327
    iget-object v10, v0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v10, v10, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-static {v10}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;)V

    .line 329
    :cond_c
    iget-object v10, v0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mTaskbarBackgroundAlpha:Lcom/android/quickstep/AnimatedFloat;

    if-eqz v9, :cond_d

    move v11, v12

    :cond_d
    invoke-virtual {v10, v11}, Lcom/android/quickstep/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 330
    invoke-virtual {v10, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 329
    invoke-virtual {v4, v10}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 333
    .end local v9    # "goingToLauncher":Z
    :cond_e
    if-eqz p4, :cond_f

    .line 334
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 336
    :cond_f
    return-object v4
.end method

.method private playStateTransitionAnim(Landroid/animation/AnimatorSet;JZ)V
    .locals 5
    .param p1, "animatorSet"    # Landroid/animation/AnimatorSet;
    .param p2, "duration"    # J
    .param p4, "committed"    # Z

    .line 346
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncherState:Lcom/android/launcher3/LauncherState;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherState;->isTaskbarStashed(Lcom/android/launcher3/Launcher;)Z

    move-result v0

    .line 347
    .local v0, "isInStashedState":Z
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncherState:Lcom/android/launcher3/LauncherState;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/LauncherState;->isTaskbarAlignedWithHotseat(Lcom/android/launcher3/Launcher;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 349
    .local v1, "toAlignment":F
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v2, v2, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    .line 350
    .local v2, "controller":Lcom/android/launcher3/taskbar/TaskbarStashController;
    const/16 v3, 0x40

    invoke-virtual {v2, v3, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    .line 351
    invoke-virtual {v2, p2, p3}, Lcom/android/launcher3/taskbar/TaskbarStashController;->applyStateWithoutStart(J)Landroid/animation/Animator;

    move-result-object v3

    .line 352
    .local v3, "stashAnimator":Landroid/animation/Animator;
    if-eqz v3, :cond_1

    .line 353
    new-instance v4, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$4;

    invoke-direct {v4, p0, v0, p4}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$4;-><init>(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;ZZ)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 369
    invoke-virtual {p1, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 373
    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlignmentForLauncherState:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v4, v1}, Lcom/android/quickstep/AnimatedFloat;->isAnimatingToValue(F)Z

    move-result v4

    if-nez v4, :cond_2

    .line 374
    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlignmentForLauncherState:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v4}, Lcom/android/quickstep/AnimatedFloat;->finishAnimation()V

    .line 375
    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlignmentForLauncherState:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v4, v1}, Lcom/android/quickstep/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 376
    invoke-virtual {v4, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 375
    invoke-virtual {p1, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 378
    :cond_2
    return-void
.end method

.method private setTaskbarViewVisible(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .line 437
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlphaForHome:Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    if-eqz p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->setValue(F)V

    .line 438
    return-void
.end method

.method private updateIconAlignment(F)V
    .locals 2
    .param p1, "alignment"    # F

    .line 420
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/TaskbarViewController;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 421
    invoke-virtual {v1}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    .line 420
    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/taskbar/TaskbarViewController;->setLauncherIconAlignment(FLcom/android/launcher3/DeviceProfile;)V

    .line 424
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->setTaskbarViewVisible(Z)V

    .line 425
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->updateTaskbarAlignment(F)V

    .line 426
    return-void
.end method


# virtual methods
.method public applyState(JZ)Landroid/animation/Animator;
    .locals 3
    .param p1, "duration"    # J
    .param p3, "start"    # Z

    .line 229
    const/4 v0, 0x0

    .line 230
    .local v0, "animator":Landroid/animation/Animator;
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mPrevState:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mState:I

    if-eq v1, v2, :cond_2

    .line 232
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mPrevState:Ljava/lang/Integer;

    if-nez v1, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mState:I

    xor-int/2addr v1, v2

    .line 233
    .local v1, "changedFlags":I
    :goto_0
    iget v2, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mPrevState:Ljava/lang/Integer;

    .line 234
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->onStateChangeApplied(IJZ)Landroid/animation/Animator;

    move-result-object v0

    .line 236
    .end local v1    # "changedFlags":I
    :cond_2
    return-object v0
.end method

.method public applyState(Z)Landroid/animation/Animator;
    .locals 2
    .param p1, "start"    # Z

    .line 225
    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->applyState(JZ)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public applyState()V
    .locals 2

    .line 217
    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->applyState(J)V

    .line 218
    return-void
.end method

.method public applyState(J)V
    .locals 1
    .param p1, "duration"    # J

    .line 221
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->applyState(JZ)Landroid/animation/Animator;

    .line 222
    return-void
.end method

.method public createAnimToLauncher(Lcom/android/launcher3/LauncherState;Lcom/android/quickstep/RecentsAnimationCallbacks;J)Landroid/animation/Animator;
    .locals 5
    .param p1, "toState"    # Lcom/android/launcher3/LauncherState;
    .param p2, "callbacks"    # Lcom/android/quickstep/RecentsAnimationCallbacks;
    .param p3, "duration"    # J

    .line 158
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 161
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v1, v1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    .line 162
    .local v1, "stashController":Lcom/android/launcher3/taskbar/TaskbarStashController;
    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 163
    invoke-virtual {p1, v2}, Lcom/android/launcher3/LauncherState;->isTaskbarStashed(Lcom/android/launcher3/Launcher;)Z

    move-result v2

    .line 162
    const/16 v3, 0x40

    invoke-virtual {v1, v3, v2}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    .line 164
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    .line 166
    const/4 v4, 0x2

    invoke-virtual {p0, v4, v2}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->updateStateForFlag(IZ)V

    .line 167
    invoke-virtual {v1, p3, p4}, Lcom/android/launcher3/taskbar/TaskbarStashController;->applyStateWithoutStart(J)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 168
    invoke-virtual {p0, p3, p4, v3}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->applyState(JZ)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 170
    new-instance v2, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;

    invoke-direct {v2, p0, p2}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;-><init>(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;Lcom/android/quickstep/RecentsAnimationCallbacks;)V

    iput-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mTaskBarRecentsAnimationListener:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;

    .line 171
    invoke-virtual {p2, v2}, Lcom/android/quickstep/RecentsAnimationCallbacks;->addListener(Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;)V

    .line 172
    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v2}, Lcom/android/launcher3/BaseQuickstepLauncher;->getOverviewPanel()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/quickstep/views/RecentsView;

    .line 173
    .local v2, "recentsView":Lcom/android/quickstep/views/RecentsView;
    new-instance v3, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)V

    invoke-virtual {v2, v3}, Lcom/android/quickstep/views/RecentsView;->setTaskLaunchListener(Lcom/android/quickstep/views/RecentsView$TaskLaunchListener;)V

    .line 176
    return-object v0
.end method

.method protected dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "TaskbarLauncherStateController:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 491
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlignmentForResumedState:Lcom/android/quickstep/AnimatedFloat;

    iget v3, v3, Lcom/android/quickstep/AnimatedFloat;->value:F

    .line 494
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    .line 491
    const-string v3, "%s\tmIconAlignmentForResumedState=%.2f"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 495
    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlignmentForGestureState:Lcom/android/quickstep/AnimatedFloat;

    iget v3, v3, Lcom/android/quickstep/AnimatedFloat;->value:F

    .line 498
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v4

    .line 495
    const-string v3, "%s\tmIconAlignmentForGestureState=%.2f"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 499
    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlignmentForLauncherState:Lcom/android/quickstep/AnimatedFloat;

    iget v3, v3, Lcom/android/quickstep/AnimatedFloat;->value:F

    .line 502
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v4

    .line 499
    const-string v3, "%s\tmIconAlignmentForLauncherState=%.2f"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 503
    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mTaskbarBackgroundAlpha:Lcom/android/quickstep/AnimatedFloat;

    iget v3, v3, Lcom/android/quickstep/AnimatedFloat;->value:F

    .line 504
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v4

    .line 503
    const-string v3, "%s\tmTaskbarBackgroundAlpha=%.2f"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 505
    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlphaForHome:Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    .line 506
    invoke-virtual {v3}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->getValue()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v4

    .line 505
    const-string v3, "%s\tmIconAlphaForHome=%.2f"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 507
    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mPrevState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->getStateString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "%s\tmPrevState=%s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 508
    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    iget v3, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mState:I

    invoke-static {v3}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->getStateString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "%s\tmState=%s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 509
    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncherState:Lcom/android/launcher3/LauncherState;

    aput-object v3, v1, v4

    const-string v3, "%s\tmLauncherState=%s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 510
    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    iget-boolean v3, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIsAnimatingToLauncherViaGesture:Z

    .line 513
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v4

    .line 510
    const-string v3, "%s\tmIsAnimatingToLauncherViaGesture=%b"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 514
    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    iget-boolean v3, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIsAnimatingToLauncherViaResume:Z

    .line 517
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v4

    .line 514
    const-string v3, "%s\tmIsAnimatingToLauncherViaResume=%b"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 518
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mShouldDelayLauncherStateAnim:Z

    .line 519
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v4

    .line 518
    const-string v1, "%s\tmShouldDelayLauncherStateAnim=%b"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 520
    return-void
.end method

.method public init(Lcom/android/launcher3/taskbar/TaskbarControllers;Lcom/android/launcher3/BaseQuickstepLauncher;)V
    .locals 5
    .param p1, "controllers"    # Lcom/android/launcher3/taskbar/TaskbarControllers;
    .param p2, "launcher"    # Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mCanSyncViews:Z

    .line 117
    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    .line 118
    iput-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 120
    iget-object v1, p1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragLayerController:Lcom/android/launcher3/taskbar/TaskbarDragLayerController;

    .line 121
    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->getTaskbarBackgroundAlpha()Lcom/android/quickstep/AnimatedFloat;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mTaskbarBackgroundAlpha:Lcom/android/quickstep/AnimatedFloat;

    .line 122
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v1, v1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/TaskbarViewController;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarViewController;->getTaskbarIconAlpha()Lcom/android/launcher3/util/MultiValueAlpha;

    move-result-object v1

    .line 123
    .local v1, "taskbarIconAlpha":Lcom/android/launcher3/util/MultiValueAlpha;
    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/MultiValueAlpha;->getProperty(I)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlphaForHome:Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    .line 124
    new-instance v2, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->setConsumer(Ljava/util/function/Consumer;)V

    .line 127
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlignmentForResumedState:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v0}, Lcom/android/quickstep/AnimatedFloat;->finishAnimation()V

    .line 128
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->onIconAlignmentRatioChangedForAppAndHomeTransition()V

    .line 130
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mStateListener:Lcom/android/launcher3/statemanager/StateManager$StateListener;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/statemanager/StateManager;->addStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    .line 133
    invoke-virtual {p2}, Lcom/android/launcher3/BaseQuickstepLauncher;->hasBeenResumed()Z

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->updateStateForFlag(IZ)V

    .line 134
    invoke-virtual {p2}, Lcom/android/launcher3/BaseQuickstepLauncher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncherState:Lcom/android/launcher3/LauncherState;

    .line 135
    const-wide/16 v3, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->applyState(J)V

    .line 137
    iput-boolean v2, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mCanSyncViews:Z

    .line 138
    return-void
.end method

.method public isAnimatingToLauncher()Z
    .locals 1

    .line 180
    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIsAnimatingToLauncherViaResume:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIsAnimatingToLauncherViaGesture:Z

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

.method synthetic lambda$createAnimToLauncher$1$com-android-launcher3-taskbar-TaskbarLauncherStateController()V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mTaskBarRecentsAnimationListener:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;->-$$Nest$mendGestureStateOverride(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;Z)V

    .line 175
    return-void
.end method

.method synthetic lambda$init$0$com-android-launcher3-taskbar-TaskbarLauncherStateController(Ljava/lang/Float;)V
    .locals 3
    .param p1, "alpha"    # Ljava/lang/Float;

    .line 125
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/launcher3/Hotseat;->setIconsAlpha(F)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mCanSyncViews:Z

    .line 143
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlignmentForResumedState:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v0}, Lcom/android/quickstep/AnimatedFloat;->finishAnimation()V

    .line 144
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlignmentForGestureState:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v0}, Lcom/android/quickstep/AnimatedFloat;->finishAnimation()V

    .line 145
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlignmentForLauncherState:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v0}, Lcom/android/quickstep/AnimatedFloat;->finishAnimation()V

    .line 147
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlphaForHome:Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->setConsumer(Ljava/util/function/Consumer;)V

    .line 148
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Hotseat;->setIconsAlpha(F)V

    .line 149
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mStateListener:Lcom/android/launcher3/statemanager/StateManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->removeStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mCanSyncViews:Z

    .line 152
    return-void
.end method

.method public setShouldDelayLauncherStateAnim(Z)V
    .locals 1
    .param p1, "shouldDelayLauncherStateAnim"    # Z

    .line 184
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mShouldDelayLauncherStateAnim:Z

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->applyState()V

    .line 189
    :cond_0
    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mShouldDelayLauncherStateAnim:Z

    .line 190
    return-void
.end method

.method public updateStateForFlag(IZ)V
    .locals 2
    .param p1, "flag"    # I
    .param p2, "enabled"    # Z

    .line 201
    if-eqz p2, :cond_0

    .line 202
    iget v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mState:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mState:I

    goto :goto_0

    .line 204
    :cond_0
    iget v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mState:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mState:I

    .line 206
    :goto_0
    return-void
.end method
