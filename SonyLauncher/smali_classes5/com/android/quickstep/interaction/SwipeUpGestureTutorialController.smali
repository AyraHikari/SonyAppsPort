.class abstract Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;
.super Lcom/android/quickstep/interaction/TutorialController;
.source "SwipeUpGestureTutorialController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$FakeTransformParams;,
        Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;
    }
.end annotation


# static fields
.field private static final FAKE_PREVIOUS_TASK_MARGIN:I

.field private static final HOME_SWIPE_ANIMATION_DURATION_MILLIS:J = 0x271L

.field private static final OVERVIEW_SWIPE_ANIMATION_DURATION_MILLIS:J = 0x3e8L

.field protected static final TASK_VIEW_END_ANIMATION_DURATION_MILLIS:J = 0x12cL


# instance fields
.field private mFakeTaskViewRadius:F

.field private final mFakeTaskViewRect:Landroid/graphics/Rect;

.field private final mResetTaskView:Landroid/animation/AnimatorListenerAdapter;

.field mRunningWindowAnim:Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

.field private mShowPreviousTasks:Z

.field private mShowTasks:Z

.field final mTaskViewSwipeUpAnimation:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;


# direct methods
.method static bridge synthetic -$$Nest$fgetmFakeTaskViewRadius(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;)F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mFakeTaskViewRadius:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFakeTaskViewRect(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mFakeTaskViewRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmResetTaskView(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;)Landroid/animation/AnimatorListenerAdapter;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mResetTaskView:Landroid/animation/AnimatorListenerAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmFakeTaskViewRadius(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;F)V
    .locals 0

    iput p1, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mFakeTaskViewRadius:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmShowPreviousTasks(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mShowPreviousTasks:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmShowTasks(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mShowTasks:Z

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 63
    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->dpToPx(F)I

    move-result v0

    sput v0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->FAKE_PREVIOUS_TASK_MARGIN:I

    return-void
.end method

.method constructor <init>(Lcom/android/quickstep/interaction/TutorialFragment;Lcom/android/quickstep/interaction/TutorialController$TutorialType;)V
    .locals 8
    .param p1, "tutorialFragment"    # Lcom/android/quickstep/interaction/TutorialFragment;
    .param p2, "tutorialType"    # Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    .line 100
    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/interaction/TutorialController;-><init>(Lcom/android/quickstep/interaction/TutorialFragment;Lcom/android/quickstep/interaction/TutorialController$TutorialType;)V

    .line 71
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mFakeTaskViewRect:Landroid/graphics/Rect;

    .line 73
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mShowTasks:Z

    .line 74
    iput-boolean v1, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mShowPreviousTasks:Z

    .line 76
    new-instance v2, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$1;

    invoke-direct {v2, p0}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$1;-><init>(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;)V

    iput-object v2, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mResetTaskView:Landroid/animation/AnimatorListenerAdapter;

    .line 101
    new-instance v2, Lcom/android/quickstep/RecentsAnimationDeviceState;

    iget-object v3, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/quickstep/RecentsAnimationDeviceState;-><init>(Landroid/content/Context;)V

    .line 102
    .local v2, "deviceState":Lcom/android/quickstep/RecentsAnimationDeviceState;
    new-instance v3, Lcom/android/quickstep/OverviewComponentObserver;

    iget-object v4, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Lcom/android/quickstep/OverviewComponentObserver;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;)V

    .line 103
    .local v3, "observer":Lcom/android/quickstep/OverviewComponentObserver;
    new-instance v4, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;

    iget-object v5, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/quickstep/GestureState;

    const/4 v7, -0x1

    invoke-direct {v6, v3, v7}, Lcom/android/quickstep/GestureState;-><init>(Lcom/android/quickstep/OverviewComponentObserver;I)V

    invoke-direct {v4, p0, v5, v2, v6}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;-><init>(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/GestureState;)V

    iput-object v4, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mTaskViewSwipeUpAnimation:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;

    .line 105
    invoke-virtual {v3}, Lcom/android/quickstep/OverviewComponentObserver;->onDestroy()V

    .line 106
    invoke-virtual {v2}, Lcom/android/quickstep/RecentsAnimationDeviceState;->destroy()V

    .line 108
    sget-object v5, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v6, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v6, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mContext:Landroid/content/Context;

    .line 109
    invoke-virtual {v5, v6}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v5

    iget-object v6, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mContext:Landroid/content/Context;

    .line 110
    invoke-virtual {v5, v6}, Lcom/android/launcher3/DeviceProfile;->copy(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v5

    .line 111
    .local v5, "dp":Lcom/android/launcher3/DeviceProfile;
    invoke-virtual {v4, v5}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;->initDp(Lcom/android/launcher3/DeviceProfile;)V

    .line 113
    iget-object v4, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v4}, Lcom/android/quickstep/interaction/TutorialFragment;->getRootView()Lcom/android/quickstep/interaction/RootSandboxLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/quickstep/interaction/RootSandboxLayout;->getFullscreenHeight()I

    move-result v4

    .line 114
    .local v4, "height":I
    iget-object v6, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v6}, Lcom/android/quickstep/interaction/TutorialFragment;->getRootView()Lcom/android/quickstep/interaction/RootSandboxLayout;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/quickstep/interaction/RootSandboxLayout;->getWidth()I

    move-result v6

    .line 115
    .local v6, "width":I
    invoke-virtual {v0, v1, v1, v6, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 116
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mFakeTaskViewRadius:F

    .line 118
    new-instance v0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$2;

    invoke-direct {v0, p0}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$2;-><init>(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;)V

    .line 125
    .local v0, "outlineProvider":Landroid/view/ViewOutlineProvider;
    iget-object v1, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mFakeTaskView:Landroid/widget/FrameLayout;

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    .line 126
    iget-object v1, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mFakeTaskView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 128
    iget-object v1, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mFakePreviousTaskView:Lcom/android/quickstep/interaction/AnimatedTaskView;

    invoke-virtual {v1, v7}, Lcom/android/quickstep/interaction/AnimatedTaskView;->setClipToOutline(Z)V

    .line 129
    iget-object v1, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mFakePreviousTaskView:Lcom/android/quickstep/interaction/AnimatedTaskView;

    invoke-virtual {v1, v0}, Lcom/android/quickstep/interaction/AnimatedTaskView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 130
    return-void
.end method

.method private cancelRunningAnimation()V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mRunningWindowAnim:Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    if-eqz v0, :cond_0

    .line 134
    invoke-interface {v0}, Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;->cancel()V

    .line 136
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mRunningWindowAnim:Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    .line 137
    return-void
.end method

.method private createFingerDotSwipeUpAnimator(F)Landroid/animation/Animator;
    .locals 2
    .param p1, "fingerDotStartTranslationY"    # F

    .line 403
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 405
    .local v0, "swipeAnimator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 412
    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method animateFakeTaskViewHome(Landroid/graphics/PointF;Ljava/lang/Runnable;)V
    .locals 5
    .param p1, "finalVelocity"    # Landroid/graphics/PointF;
    .param p2, "onEndRunnable"    # Ljava/lang/Runnable;

    .line 219
    invoke-direct {p0}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->cancelRunningAnimation()V

    .line 220
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->hideFakeTaskbar(Z)V

    .line 221
    iget-object v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mFakePreviousTaskView:Lcom/android/quickstep/interaction/AnimatedTaskView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/quickstep/interaction/AnimatedTaskView;->setVisibility(I)V

    .line 222
    iget-object v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mFakeHotseatView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 223
    iput-boolean v1, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mShowPreviousTasks:Z

    .line 224
    iget-object v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mTaskViewSwipeUpAnimation:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;

    .line 225
    invoke-virtual {v0, p1}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;->handleSwipeUpToHome(Landroid/graphics/PointF;)Lcom/android/quickstep/util/RectFSpringAnim;

    move-result-object v0

    .line 227
    .local v0, "rectAnim":Lcom/android/quickstep/util/RectFSpringAnim;
    new-instance v1, Lcom/android/launcher3/anim/PendingAnimation;

    const-wide/16 v2, 0x12c

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    .line 228
    .local v1, "fadeAnim":Lcom/android/launcher3/anim/PendingAnimation;
    iget-object v2, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mFakeIconView:Lcom/android/launcher3/views/ClipIconView;

    sget-object v3, Lcom/android/launcher3/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/launcher3/anim/PendingAnimation;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 229
    if-eqz p2, :cond_0

    .line 230
    invoke-static {p2}, Lcom/android/launcher3/anim/AnimatorListeners;->forSuccessCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/anim/PendingAnimation;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 232
    :cond_0
    invoke-virtual {v1}, Lcom/android/launcher3/anim/PendingAnimation;->buildAnim()Landroid/animation/AnimatorSet;

    move-result-object v2

    .line 233
    .local v2, "animset":Landroid/animation/AnimatorSet;
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda4;

    invoke-direct {v3, v2}, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda4;-><init>(Landroid/animation/AnimatorSet;)V

    invoke-static {v3}, Lcom/android/launcher3/anim/AnimatorListeners;->forSuccessCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/quickstep/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 234
    invoke-static {v0}, Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;->wrap(Lcom/android/quickstep/util/RectFSpringAnim;)Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    move-result-object v3

    iput-object v3, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mRunningWindowAnim:Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    .line 235
    return-void
.end method

.method protected createFingerDotHomeSwipeAnimator(F)Landroid/animation/Animator;
    .locals 3
    .param p1, "fingerDotStartTranslationY"    # F

    .line 367
    invoke-direct {p0, p1}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->createFingerDotSwipeUpAnimator(F)Landroid/animation/Animator;

    move-result-object v0

    .line 368
    const-wide/16 v1, 0x271

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 370
    .local v0, "homeSwipeAnimator":Landroid/animation/Animator;
    new-instance v1, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$4;

    invoke-direct {v1, p0, p1}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$4;-><init>(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;F)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 382
    return-object v0
.end method

.method protected createFingerDotOverviewSwipeAnimator(F)Landroid/animation/Animator;
    .locals 3
    .param p1, "fingerDotStartTranslationY"    # F

    .line 386
    invoke-direct {p0, p1}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->createFingerDotSwipeUpAnimator(F)Landroid/animation/Animator;

    move-result-object v0

    .line 387
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 389
    .local v0, "overviewSwipeAnimator":Landroid/animation/Animator;
    new-instance v1, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$5;

    invoke-direct {v1, p0}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$5;-><init>(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 398
    return-object v0
.end method

.method fadeOutFakeTaskView(ZZLjava/lang/Runnable;)V
    .locals 5
    .param p1, "toOverviewFirst"    # Z
    .param p2, "reset"    # Z
    .param p3, "onEndRunnable"    # Ljava/lang/Runnable;

    .line 142
    invoke-direct {p0}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->cancelRunningAnimation()V

    .line 143
    new-instance v0, Lcom/android/launcher3/anim/PendingAnimation;

    const-wide/16 v1, 0x12c

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    .line 144
    .local v0, "anim":Lcom/android/launcher3/anim/PendingAnimation;
    if-eqz p1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mTaskViewSwipeUpAnimation:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;

    .line 146
    invoke-virtual {v1}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;->getCurrentShift()Lcom/android/quickstep/AnimatedFloat;

    move-result-object v1

    sget-object v2, Lcom/android/quickstep/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    const/high16 v3, 0x3f800000    # 1.0f

    sget-object v4, Lcom/android/launcher3/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    .line 145
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 147
    new-instance v1, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$3;

    invoke-direct {v1, p0, p2, p3}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$3;-><init>(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;ZLjava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/PendingAnimation;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_1

    .line 187
    :cond_0
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 188
    iget-object v2, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mTaskViewSwipeUpAnimation:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;

    .line 189
    invoke-virtual {v2}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;->getCurrentShift()Lcom/android/quickstep/AnimatedFloat;

    move-result-object v2

    sget-object v3, Lcom/android/quickstep/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    sget-object v4, Lcom/android/launcher3/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    .line 188
    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 190
    iget-object v1, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mResetTaskView:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/PendingAnimation;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 192
    :cond_1
    iget-object v2, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mFakeTaskView:Landroid/widget/FrameLayout;

    sget-object v3, Lcom/android/launcher3/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/launcher3/anim/PendingAnimation;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 193
    iget-object v2, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mFakePreviousTaskView:Lcom/android/quickstep/interaction/AnimatedTaskView;

    sget-object v3, Lcom/android/launcher3/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/launcher3/anim/PendingAnimation;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 195
    :goto_0
    if-eqz p3, :cond_2

    .line 196
    invoke-static {p3}, Lcom/android/launcher3/anim/AnimatorListeners;->forSuccessCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/PendingAnimation;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 199
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/android/launcher3/anim/PendingAnimation;->buildAnim()Landroid/animation/AnimatorSet;

    move-result-object v1

    .line 200
    .local v1, "animset":Landroid/animation/AnimatorSet;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->hideFakeTaskbar(Z)V

    .line 201
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 202
    invoke-static {v1}, Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;->wrap(Landroid/animation/Animator;)Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    move-result-object v2

    iput-object v2, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mRunningWindowAnim:Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    .line 203
    return-void
.end method

.method synthetic lambda$createFingerDotSwipeUpAnimator$0$com-android-quickstep-interaction-SwipeUpGestureTutorialController(FLandroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "fingerDotStartTranslationY"    # F
    .param p2, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .line 406
    neg-float v0, p1

    .line 407
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    mul-float/2addr v0, v1

    .line 408
    .local v0, "gestureProgress":F
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->setNavBarGestureProgress(Ljava/lang/Float;)V

    .line 409
    iget-object v1, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mFingerDotView:Landroid/widget/ImageView;

    add-float v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 410
    return-void
.end method

.method public onMotionPaused(Z)V
    .locals 5
    .param p1, "unused"    # Z

    .line 260
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->isGestureCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    return-void

    .line 263
    :cond_0
    iget-boolean v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mShowTasks:Z

    if-eqz v0, :cond_2

    .line 264
    iget-boolean v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mShowPreviousTasks:Z

    if-nez v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mFakePreviousTaskView:Lcom/android/quickstep/interaction/AnimatedTaskView;

    iget-object v1, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mFakePreviousTaskView:Lcom/android/quickstep/interaction/AnimatedTaskView;

    .line 266
    invoke-virtual {v1}, Lcom/android/quickstep/interaction/AnimatedTaskView;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sget v2, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->FAKE_PREVIOUS_TASK_MARGIN:I

    add-int/2addr v1, v2

    neg-int v1, v1

    int-to-float v1, v1

    .line 265
    invoke-virtual {v0, v1}, Lcom/android/quickstep/interaction/AnimatedTaskView;->setTranslationX(F)V

    .line 267
    iget-object v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mFakePreviousTaskView:Lcom/android/quickstep/interaction/AnimatedTaskView;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/AnimatedTaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v3, 0x12c

    .line 268
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mFakePreviousTaskView:Lcom/android/quickstep/interaction/AnimatedTaskView;

    .line 269
    invoke-virtual {v1}, Lcom/android/quickstep/interaction/AnimatedTaskView;->getWidth()I

    move-result v1

    add-int/2addr v1, v2

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 270
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 272
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mShowPreviousTasks:Z

    .line 274
    :cond_2
    return-void
.end method

.method resetFakeTaskView(Z)V
    .locals 5
    .param p1, "animateFromHome"    # Z

    .line 206
    iget-object v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mFakeTaskView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 207
    new-instance v0, Lcom/android/launcher3/anim/PendingAnimation;

    const-wide/16 v1, 0x12c

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    .line 208
    .local v0, "anim":Lcom/android/launcher3/anim/PendingAnimation;
    iget-object v1, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mTaskViewSwipeUpAnimation:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;

    .line 209
    invoke-virtual {v1}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;->getCurrentShift()Lcom/android/quickstep/AnimatedFloat;

    move-result-object v1

    sget-object v2, Lcom/android/quickstep/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    sget-object v3, Lcom/android/launcher3/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    .line 208
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 210
    iget-object v1, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mFakeTaskView:Landroid/widget/FrameLayout;

    sget-object v2, Lcom/android/launcher3/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/launcher3/anim/PendingAnimation;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 211
    iget-object v1, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mResetTaskView:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/PendingAnimation;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 212
    invoke-virtual {v0}, Lcom/android/launcher3/anim/PendingAnimation;->buildAnim()Landroid/animation/AnimatorSet;

    move-result-object v1

    .line 213
    .local v1, "animset":Landroid/animation/AnimatorSet;
    invoke-virtual {p0, p1}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->showFakeTaskbar(Z)V

    .line 214
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 215
    invoke-static {v1}, Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;->wrap(Landroid/animation/Animator;)Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    move-result-object v2

    iput-object v2, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mRunningWindowAnim:Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    .line 216
    return-void
.end method

.method public setNavBarGestureProgress(Ljava/lang/Float;)V
    .locals 2
    .param p1, "displacement"    # Ljava/lang/Float;

    .line 239
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->isGestureCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mTutorialType:Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    sget-object v1, Lcom/android/quickstep/interaction/TutorialController$TutorialType;->HOME_NAVIGATION_COMPLETE:Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mTutorialType:Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    sget-object v1, Lcom/android/quickstep/interaction/TutorialController$TutorialType;->OVERVIEW_NAVIGATION_COMPLETE:Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 247
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mShowTasks:Z

    .line 248
    iget-object v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mFakeTaskView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 249
    iget-boolean v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mShowPreviousTasks:Z

    if-eqz v0, :cond_2

    .line 250
    iget-object v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mFakePreviousTaskView:Lcom/android/quickstep/interaction/AnimatedTaskView;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/interaction/AnimatedTaskView;->setVisibility(I)V

    .line 252
    :cond_2
    iget-object v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mRunningWindowAnim:Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    if-nez v0, :cond_4

    if-eqz p1, :cond_4

    .line 253
    iget-object v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mTaskViewSwipeUpAnimation:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;->updateDisplacement(F)V

    goto :goto_1

    .line 244
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mFakeTaskView:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mFakePreviousTaskView:Lcom/android/quickstep/interaction/AnimatedTaskView;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/interaction/AnimatedTaskView;->setVisibility(I)V

    .line 256
    :cond_4
    :goto_1
    return-void
.end method
