.class public abstract Lcom/android/quickstep/AbsSwipeUpHandler;
.super Lcom/android/quickstep/SwipeUpAnimationLogic;
.source "AbsSwipeUpHandler.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;
.implements Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/AbsSwipeUpHandler$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/launcher3/statemanager/StatefulActivity<",
        "TS;>;Q:",
        "Lcom/android/quickstep/views/RecentsView;",
        "S::",
        "Lcom/android/launcher3/statemanager/BaseState<",
        "TS;>;>",
        "Lcom/android/quickstep/SwipeUpAnimationLogic;",
        "Landroid/view/View$OnApplyWindowInsetsListener;",
        "Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;"
    }
.end annotation


# static fields
.field public static final HOME_DURATION:J = 0xfaL

.field private static final LAUNCHER_UI_STATES:I

.field private static final LOG_NO_OP_PAGE_INDEX:I = -0x1

.field private static final MAX_QUICK_SWITCH_RECENTS_SCALE_PROGRESS:F = 0.07f

.field public static final MAX_SWIPE_DURATION:J = 0x15eL

.field public static final MIN_PROGRESS_FOR_OVERVIEW:F = 0.7f

.field public static final RECENTS_ATTACH_DURATION:J = 0x12cL

.field private static final SCREENSHOT_CAPTURED_EVT:Ljava/lang/String; = "ScreenshotCaptured"

.field private static final STATE_APP_CONTROLLER_RECEIVED:I

.field private static final STATE_CAPTURE_SCREENSHOT:I

.field private static final STATE_CURRENT_TASK_FINISHED:I

.field private static final STATE_FINISH_WITH_NO_END:I

.field private static final STATE_GESTURE_CANCELLED:I

.field private static final STATE_GESTURE_COMPLETED:I

.field private static final STATE_GESTURE_STARTED:I

.field protected static final STATE_HANDLER_INVALIDATED:I

.field protected static final STATE_LAUNCHER_BIND_TO_SERVICE:I

.field protected static final STATE_LAUNCHER_DRAWN:I

.field protected static final STATE_LAUNCHER_PRESENT:I

.field protected static final STATE_LAUNCHER_STARTED:I

.field private static final STATE_NAMES:[Ljava/lang/String;

.field private static final STATE_RESUME_LAST_TASK:I

.field private static final STATE_SCALED_CONTROLLER_HOME:I

.field private static final STATE_SCALED_CONTROLLER_RECENTS:I

.field protected static final STATE_SCREENSHOT_CAPTURED:I

.field private static final STATE_SCREENSHOT_VIEW_SHOWN:I

.field private static final STATE_START_NEW_TASK:I

.field private static final SWIPE_DURATION_MULTIPLIER:F

.field private static final TAG:Ljava/lang/String; = "AbsSwipeUpHandler"


# instance fields
.field protected mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected final mActivityInitListener:Lcom/android/quickstep/util/ActivityInitListener;

.field protected final mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quickstep/BaseActivityInterface<",
            "TS;TT;>;"
        }
    .end annotation
.end field

.field private final mActivityRestartListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

.field private mAnimationFactory:Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;

.field protected mCanceled:Z

.field private mContinuingLastGesture:Z

.field protected mDeferredCleanupRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

.field private mDividerAnimator:Landroid/animation/ValueAnimator;

.field private mDownPos:Landroid/graphics/PointF;

.field protected mGestureEndCallback:Ljava/lang/Runnable;

.field private mGestureStarted:Z

.field private mHasEndedLauncherTransition:Z

.field private mHasMotionEverBeenPaused:Z

.field protected final mInputConsumerProxy:Lcom/android/quickstep/util/InputConsumerProxy;

.field private mIsLikelyToStartNewTask:Z

.field private mIsMotionPaused:Z

.field protected mIsSwipingPipToHome:Z

.field private mLauncherFrameDrawnTime:J

.field private mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

.field private final mLifecycleCallbacks:Lcom/android/launcher3/util/ActivityLifecycleCallbacksAdapter;

.field private mLogDirectionUpOrLeft:Z

.field private final mOnDeferredActivityLaunch:Ljava/lang/Runnable;

.field private final mOnRecentsScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mParallelRunningAnim:Landroid/animation/Animator;

.field private mPassedOverviewThreshold:Z

.field private final mQuickSwitchScaleScrollThreshold:F

.field protected mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

.field private final mRecentsAnimationStartCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

.field protected mRecentsView:Lcom/android/quickstep/views/RecentsView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TQ;"
        }
    .end annotation
.end field

.field private mRecentsViewScrollLinked:Z

.field private mRunningWindowAnim:[Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

.field protected mStateCallback:Lcom/android/quickstep/MultiStateCallback;

.field private mSwipePipToHomeAnimator:Lcom/android/quickstep/util/SwipePipToHomeAnimator;

.field private final mSwipePipToHomeAnimators:[Lcom/android/quickstep/util/SwipePipToHomeAnimator;

.field protected final mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

.field private mTaskSnapshot:Lcom/android/systemui/shared/recents/model/ThumbnailData;

.field private final mTouchTimeMs:J

.field private mWasLauncherAlreadyVisible:Z


# direct methods
.method public static synthetic $r8$lambda$2m4fLmCamO2IgPKhzB6fV4IYvNI(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->resumeLastTask()V

    return-void
.end method

.method public static synthetic $r8$lambda$6iY_sGCiH7bvhw6ZtWwCMes8Jzs(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->initializeLauncherAnimationController()V

    return-void
.end method

.method public static synthetic $r8$lambda$AQvGnd-nPzk9MpxiDO_gd3dBvlY(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->launcherFrameDrawn()V

    return-void
.end method

.method public static synthetic $r8$lambda$FOGSNJlAKLOQY04JGy3hSAAJ9sc(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->setupLauncherUiAfterSwipeUpToRecentsAnimation()V

    return-void
.end method

.method public static synthetic $r8$lambda$GJtUEEzpctluD6ddQi4vSR8FDbI(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->finishCurrentTransitionToHome()V

    return-void
.end method

.method public static synthetic $r8$lambda$QnNAiEVKBHZrdmNelMLF_u_H1IM(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->startInterceptingTouchesForGesture()V

    return-void
.end method

.method public static synthetic $r8$lambda$Sl0jpuvAsHNvbsP-VE-YYMna6LM(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->onLauncherStart()V

    return-void
.end method

.method public static synthetic $r8$lambda$UVC-Y5a8MoEicFd-j3W6nZPwZBI(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->onDeferredActivityLaunch()V

    return-void
.end method

.method public static synthetic $r8$lambda$ejooT9u9MM44lnxS7cq-OyxJvc4(Lcom/android/quickstep/AbsSwipeUpHandler;Lcom/android/quickstep/util/AnimatorControllerWithResistance;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->onAnimatorPlaybackControllerCreated(Lcom/android/quickstep/util/AnimatorControllerWithResistance;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ggb5l15Y84H9hHiwcv5KC_4Ka8E(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->onLauncherBindToService()V

    return-void
.end method

.method public static synthetic $r8$lambda$ha5o1wXny4amWxc1OObqovLYkl8(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->finishCurrentTransitionToRecents()V

    return-void
.end method

.method public static synthetic $r8$lambda$nMmTLZ569YV3RzHL44_OX0ZS7fU(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->continueComputingRecentsScrollIfNecessary()V

    return-void
.end method

.method public static synthetic $r8$lambda$neWBhQLjMsEzGnQ8a1pfXC1J4vs(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->startNewTask()V

    return-void
.end method

.method public static synthetic $r8$lambda$u1gt94Gy7n11sNU9j9m3sFVYayc(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->onSettledOnEndTarget()V

    return-void
.end method

.method public static synthetic $r8$lambda$ub2QrZWeeXbn1LfmvepB0tOnloE(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->onLauncherPresentAndGestureStarted()V

    return-void
.end method

.method public static synthetic $r8$lambda$vVt1-arM6I7h680drVtgAJtlb08(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->onRecentsViewScroll()V

    return-void
.end method

.method public static synthetic $r8$lambda$wAfz8Iy85dtHUtnjMJdEea-aUKU(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->invalidateHandler()V

    return-void
.end method

.method public static synthetic $r8$lambda$y5sF_NWOGQtvOqZkyeffa5UjnSI(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->resetStateForAnimationCancel()V

    return-void
.end method

.method public static synthetic $r8$lambda$y96TYLq1E1jz3eZTTDN_IcU6tro(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->reset()V

    return-void
.end method

.method public static synthetic $r8$lambda$zdqUQZCz0WGL6_7dpalHczhhLMI(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->invalidateHandlerWithLauncher()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmActivityRestartListener(Lcom/android/quickstep/AbsSwipeUpHandler;)Lcom/android/systemui/shared/system/TaskStackChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityRestartListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmHasMotionEverBeenPaused(Lcom/android/quickstep/AbsSwipeUpHandler;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mHasMotionEverBeenPaused:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsMotionPaused(Lcom/android/quickstep/AbsSwipeUpHandler;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mIsMotionPaused:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmParallelRunningAnim(Lcom/android/quickstep/AbsSwipeUpHandler;Landroid/animation/Animator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mParallelRunningAnim:Landroid/animation/Animator;

    return-void
.end method

.method static bridge synthetic -$$Nest$mendRunningWindowAnim(Lcom/android/quickstep/AbsSwipeUpHandler;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->endRunningWindowAnim(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmaybeUpdateRecentsAttachedState(Lcom/android/quickstep/AbsSwipeUpHandler;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->maybeUpdateRecentsAttachedState(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmaybeUpdateRecentsAttachedState(Lcom/android/quickstep/AbsSwipeUpHandler;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/AbsSwipeUpHandler;->maybeUpdateRecentsAttachedState(ZZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 152
    const/4 v0, 0x0

    sput-object v0, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_NAMES:[Ljava/lang/String;

    .line 191
    nop

    .line 192
    const/4 v0, 0x0

    const-string v1, "STATE_LAUNCHER_PRESENT"

    invoke-static {v0, v1}, Lcom/android/quickstep/AbsSwipeUpHandler;->getFlagForIndex(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_LAUNCHER_PRESENT:I

    .line 193
    nop

    .line 194
    const/4 v1, 0x1

    const-string v2, "STATE_LAUNCHER_STARTED"

    invoke-static {v1, v2}, Lcom/android/quickstep/AbsSwipeUpHandler;->getFlagForIndex(ILjava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_LAUNCHER_STARTED:I

    .line 195
    nop

    .line 196
    const/4 v2, 0x2

    const-string v3, "STATE_LAUNCHER_DRAWN"

    invoke-static {v2, v3}, Lcom/android/quickstep/AbsSwipeUpHandler;->getFlagForIndex(ILjava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_LAUNCHER_DRAWN:I

    .line 199
    nop

    .line 200
    const/4 v3, 0x3

    const-string v4, "STATE_LAUNCHER_BIND_TO_SERVICE"

    invoke-static {v3, v4}, Lcom/android/quickstep/AbsSwipeUpHandler;->getFlagForIndex(ILjava/lang/String;)I

    move-result v3

    sput v3, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_LAUNCHER_BIND_TO_SERVICE:I

    .line 203
    nop

    .line 204
    const/4 v4, 0x4

    const-string v5, "STATE_APP_CONTROLLER_RECEIVED"

    invoke-static {v4, v5}, Lcom/android/quickstep/AbsSwipeUpHandler;->getFlagForIndex(ILjava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_APP_CONTROLLER_RECEIVED:I

    .line 207
    nop

    .line 208
    const/4 v4, 0x5

    const-string v5, "STATE_SCALED_CONTROLLER_HOME"

    invoke-static {v4, v5}, Lcom/android/quickstep/AbsSwipeUpHandler;->getFlagForIndex(ILjava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_SCALED_CONTROLLER_HOME:I

    .line 209
    nop

    .line 210
    const/4 v4, 0x6

    const-string v5, "STATE_SCALED_CONTROLLER_RECENTS"

    invoke-static {v4, v5}, Lcom/android/quickstep/AbsSwipeUpHandler;->getFlagForIndex(ILjava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_SCALED_CONTROLLER_RECENTS:I

    .line 212
    nop

    .line 213
    const/4 v4, 0x7

    const-string v5, "STATE_HANDLER_INVALIDATED"

    invoke-static {v4, v5}, Lcom/android/quickstep/AbsSwipeUpHandler;->getFlagForIndex(ILjava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_HANDLER_INVALIDATED:I

    .line 214
    nop

    .line 215
    const/16 v4, 0x8

    const-string v5, "STATE_GESTURE_STARTED"

    invoke-static {v4, v5}, Lcom/android/quickstep/AbsSwipeUpHandler;->getFlagForIndex(ILjava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_GESTURE_STARTED:I

    .line 216
    nop

    .line 217
    const/16 v4, 0x9

    const-string v5, "STATE_GESTURE_CANCELLED"

    invoke-static {v4, v5}, Lcom/android/quickstep/AbsSwipeUpHandler;->getFlagForIndex(ILjava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_GESTURE_CANCELLED:I

    .line 218
    nop

    .line 219
    const/16 v4, 0xa

    const-string v5, "STATE_GESTURE_COMPLETED"

    invoke-static {v4, v5}, Lcom/android/quickstep/AbsSwipeUpHandler;->getFlagForIndex(ILjava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_GESTURE_COMPLETED:I

    .line 221
    nop

    .line 222
    const/16 v4, 0xb

    const-string v5, "STATE_CAPTURE_SCREENSHOT"

    invoke-static {v4, v5}, Lcom/android/quickstep/AbsSwipeUpHandler;->getFlagForIndex(ILjava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_CAPTURE_SCREENSHOT:I

    .line 223
    nop

    .line 224
    const/16 v4, 0xc

    const-string v5, "STATE_SCREENSHOT_CAPTURED"

    invoke-static {v4, v5}, Lcom/android/quickstep/AbsSwipeUpHandler;->getFlagForIndex(ILjava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_SCREENSHOT_CAPTURED:I

    .line 225
    nop

    .line 226
    const/16 v4, 0xd

    const-string v5, "STATE_SCREENSHOT_VIEW_SHOWN"

    invoke-static {v4, v5}, Lcom/android/quickstep/AbsSwipeUpHandler;->getFlagForIndex(ILjava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_SCREENSHOT_VIEW_SHOWN:I

    .line 228
    nop

    .line 229
    const/16 v4, 0xe

    const-string v5, "STATE_RESUME_LAST_TASK"

    invoke-static {v4, v5}, Lcom/android/quickstep/AbsSwipeUpHandler;->getFlagForIndex(ILjava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_RESUME_LAST_TASK:I

    .line 230
    nop

    .line 231
    const/16 v4, 0xf

    const-string v5, "STATE_START_NEW_TASK"

    invoke-static {v4, v5}, Lcom/android/quickstep/AbsSwipeUpHandler;->getFlagForIndex(ILjava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_START_NEW_TASK:I

    .line 232
    nop

    .line 233
    const/16 v4, 0x10

    const-string v5, "STATE_CURRENT_TASK_FINISHED"

    invoke-static {v4, v5}, Lcom/android/quickstep/AbsSwipeUpHandler;->getFlagForIndex(ILjava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_CURRENT_TASK_FINISHED:I

    .line 234
    nop

    .line 235
    const/16 v4, 0x11

    const-string v5, "STATE_FINISH_WITH_NO_END"

    invoke-static {v4, v5}, Lcom/android/quickstep/AbsSwipeUpHandler;->getFlagForIndex(ILjava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_FINISH_WITH_NO_END:I

    .line 237
    or-int/2addr v0, v2

    or-int/2addr v0, v1

    or-int/2addr v0, v3

    sput v0, Lcom/android/quickstep/AbsSwipeUpHandler;->LAUNCHER_UI_STATES:I

    .line 245
    nop

    .line 246
    const v0, 0x3fb6db6e

    const v1, 0x40555555

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sput v0, Lcom/android/quickstep/AbsSwipeUpHandler;->SWIPE_DURATION_MULTIPLIER:F

    .line 245
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/TaskAnimationManager;Lcom/android/quickstep/GestureState;JZLcom/android/systemui/shared/system/InputConsumerController;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deviceState"    # Lcom/android/quickstep/RecentsAnimationDeviceState;
    .param p3, "taskAnimationManager"    # Lcom/android/quickstep/TaskAnimationManager;
    .param p4, "gestureState"    # Lcom/android/quickstep/GestureState;
    .param p5, "touchTimeMs"    # J
    .param p7, "continuingLastGesture"    # Z
    .param p8, "inputConsumer"    # Lcom/android/systemui/shared/system/InputConsumerController;

    .line 306
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    move-object v0, p0

    move-object v7, p1

    move-object v8, p2

    move-object v9, p4

    invoke-direct {p0, p1, p2, p4}, Lcom/android/quickstep/SwipeUpAnimationLogic;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/GestureState;)V

    .line 158
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationStartCallbacks:Ljava/util/ArrayList;

    .line 159
    new-instance v1, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda4;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    iput-object v1, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mOnRecentsScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 170
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsViewScrollLinked:Z

    .line 171
    new-instance v1, Lcom/android/quickstep/AbsSwipeUpHandler$1;

    invoke-direct {v1, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$1;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    iput-object v1, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLifecycleCallbacks:Lcom/android/launcher3/util/ActivityLifecycleCallbacksAdapter;

    .line 277
    new-instance v1, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda5;-><init>()V

    iput-object v1, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mAnimationFactory:Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;

    .line 283
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLogDirectionUpOrLeft:Z

    .line 290
    new-instance v1, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda6;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    iput-object v1, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mOnDeferredActivityLaunch:Ljava/lang/Runnable;

    .line 296
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    iput-object v1, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mSwipePipToHomeAnimators:[Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    .line 1241
    new-instance v1, Lcom/android/quickstep/AbsSwipeUpHandler$5;

    invoke-direct {v1, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$5;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    iput-object v1, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityRestartListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    .line 307
    invoke-virtual {p4}, Lcom/android/quickstep/GestureState;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v1

    iput-object v1, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    .line 308
    new-instance v2, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda7;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v1, v2}, Lcom/android/quickstep/BaseActivityInterface;->createActivityInitListener(Ljava/util/function/Predicate;)Lcom/android/quickstep/util/ActivityInitListener;

    move-result-object v2

    iput-object v2, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInitListener:Lcom/android/quickstep/util/ActivityInitListener;

    .line 309
    new-instance v10, Lcom/android/quickstep/util/InputConsumerProxy;

    new-instance v3, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda8;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    new-instance v5, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda9;

    invoke-direct {v5, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda9;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    new-instance v6, Lcom/android/quickstep/util/InputProxyHandlerFactory;

    iget-object v2, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-direct {v6, v1, v2}, Lcom/android/quickstep/util/InputProxyHandlerFactory;-><init>(Lcom/android/quickstep/BaseActivityInterface;Lcom/android/quickstep/GestureState;)V

    move-object v1, v10

    move-object v2, p1

    move-object/from16 v4, p8

    invoke-direct/range {v1 .. v6}, Lcom/android/quickstep/util/InputConsumerProxy;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Lcom/android/systemui/shared/system/InputConsumerController;Ljava/lang/Runnable;Ljava/util/function/Supplier;)V

    iput-object v10, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mInputConsumerProxy:Lcom/android/quickstep/util/InputConsumerProxy;

    .line 316
    move-object v1, p3

    iput-object v1, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    .line 317
    move-wide/from16 v2, p5

    iput-wide v2, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTouchTimeMs:J

    .line 318
    move/from16 v4, p7

    iput-boolean v4, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mContinuingLastGesture:Z

    .line 319
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/launcher3/R$dimen;->quick_switch_scaling_scroll_threshold:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    iput v5, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mQuickSwitchScaleScrollThreshold:F

    .line 322
    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->initAfterSubclassConstructor()V

    .line 323
    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->initStateCallbacks()V

    .line 324
    return-void
.end method

.method private animateToProgress(FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;)V
    .locals 10
    .param p1, "start"    # F
    .param p2, "end"    # F
    .param p3, "duration"    # J
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p6, "target"    # Lcom/android/quickstep/GestureState$GestureEndTarget;
    .param p7, "velocityPxPerMs"    # Landroid/graphics/PointF;

    .line 1233
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    new-instance v9, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda31;

    move-object v0, v9

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda31;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;)V

    move-object v0, p0

    invoke-direct {p0, v9}, Lcom/android/quickstep/AbsSwipeUpHandler;->runOnRecentsAnimationAndLauncherBound(Ljava/lang/Runnable;)V

    .line 1235
    return-void
.end method

.method private animateToProgressInternal(FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;)V
    .locals 17
    .param p1, "start"    # F
    .param p2, "end"    # F
    .param p3, "duration"    # J
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p6, "target"    # Lcom/android/quickstep/GestureState$GestureEndTarget;
    .param p7, "velocityPxPerMs"    # Landroid/graphics/PointF;

    .line 1261
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-wide/from16 v9, p3

    move-object/from16 v11, p7

    invoke-direct/range {p0 .. p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->maybeUpdateRecentsAttachedState()V

    .line 1265
    iget-object v0, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/quickstep/GestureState$GestureEndTarget;->isLauncher:Z

    if-eqz v0, :cond_0

    .line 1266
    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object v0

    iget-object v1, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityRestartListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 1269
    iget-object v0, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    iget-object v1, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureState:Lcom/android/quickstep/GestureState;

    .line 1270
    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v1

    iget-object v2, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    .line 1271
    invoke-virtual {v2}, Lcom/android/quickstep/TaskAnimationManager;->getCurrentCallbacks()Lcom/android/quickstep/RecentsAnimationCallbacks;

    move-result-object v2

    .line 1269
    invoke-virtual {v0, v1, v9, v10, v2}, Lcom/android/quickstep/BaseActivityInterface;->getParallelAnimationToLauncher(Lcom/android/quickstep/GestureState$GestureEndTarget;JLcom/android/quickstep/RecentsAnimationCallbacks;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mParallelRunningAnim:Landroid/animation/Animator;

    .line 1272
    if-eqz v0, :cond_0

    .line 1273
    new-instance v1, Lcom/android/quickstep/AbsSwipeUpHandler$6;

    invoke-direct {v1, v7}, Lcom/android/quickstep/AbsSwipeUpHandler$6;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1279
    iget-object v0, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mParallelRunningAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 1283
    :cond_0
    iget-object v0, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-ne v0, v1, :cond_a

    .line 1284
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    invoke-interface {v0, v11}, Lcom/android/launcher3/touch/PagedOrientationHandler;->adjustFloatingIconStartVelocity(Landroid/graphics/PointF;)V

    .line 1285
    iget-object v0, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    const/4 v14, 0x0

    if-eqz v0, :cond_1

    .line 1286
    iget-object v1, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getRunningTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/RecentsAnimationTargets;->findTask(I)Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object v0

    goto :goto_0

    .line 1287
    :cond_1
    move-object v0, v14

    :goto_0
    move-object v15, v0

    .line 1288
    .local v15, "runningTaskTarget":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    if-eqz v15, :cond_2

    .line 1289
    iget-object v0, v15, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->launchCookies:Ljava/util/ArrayList;

    move-object v1, v0

    goto :goto_1

    .line 1290
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    :goto_1
    nop

    .line 1291
    .local v1, "cookies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    if-eqz v15, :cond_3

    iget-boolean v0, v15, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->isTranslucent:Z

    if-eqz v0, :cond_3

    move v4, v12

    goto :goto_2

    :cond_3
    move v4, v13

    .line 1292
    .local v4, "isTranslucent":Z
    :goto_2
    iget-object v0, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isPipActive()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz v15, :cond_4

    iget-boolean v0, v15, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->allowEnterPip:Z

    if-eqz v0, :cond_4

    iget-object v0, v15, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    if-eqz v0, :cond_4

    iget-object v0, v15, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    .line 1296
    invoke-virtual {v0}, Landroid/app/PictureInPictureParams;->isAutoEnterEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v12

    goto :goto_3

    :cond_4
    move v0, v13

    :goto_3
    move/from16 v16, v0

    .line 1297
    .local v16, "appCanEnterPip":Z
    nop

    .line 1298
    move-object/from16 v0, p0

    move-wide/from16 v2, p3

    move/from16 v5, v16

    move-object v6, v15

    invoke-virtual/range {v0 .. v6}, Lcom/android/quickstep/AbsSwipeUpHandler;->createHomeAnimationFactory(Ljava/util/ArrayList;JZZLcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;

    move-result-object v0

    .line 1300
    .local v0, "homeAnimFactory":Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;
    iget-boolean v2, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mIsSwipeForStagedSplit:Z

    if-nez v2, :cond_5

    if-eqz v16, :cond_5

    goto :goto_4

    :cond_5
    move v12, v13

    :goto_4
    iput-boolean v12, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mIsSwipingPipToHome:Z

    .line 1302
    if-eqz v12, :cond_6

    .line 1303
    invoke-direct {v7, v0, v15, v8}, Lcom/android/quickstep/AbsSwipeUpHandler;->createWindowAnimationToPip(Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;F)Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    move-result-object v2

    iput-object v2, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mSwipePipToHomeAnimator:Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    .line 1305
    iget-object v3, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mSwipePipToHomeAnimators:[Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    aput-object v2, v3, v13

    .line 1306
    iget-object v2, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mSwipePipToHomeAnimators:[Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    .local v2, "windowAnim":[Lcom/android/quickstep/util/RectFSpringAnim;
    goto :goto_5

    .line 1308
    .end local v2    # "windowAnim":[Lcom/android/quickstep/util/RectFSpringAnim;
    :cond_6
    iput-object v14, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mSwipePipToHomeAnimator:Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    .line 1309
    invoke-virtual {v7, v8, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->createWindowAnimationToHome(FLcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;)[Lcom/android/quickstep/util/RectFSpringAnim;

    move-result-object v2

    .line 1311
    .restart local v2    # "windowAnim":[Lcom/android/quickstep/util/RectFSpringAnim;
    aget-object v3, v2, v13

    new-instance v5, Lcom/android/quickstep/AbsSwipeUpHandler$7;

    invoke-direct {v5, v7}, Lcom/android/quickstep/AbsSwipeUpHandler$7;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v3, v5}, Lcom/android/quickstep/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1325
    :goto_5
    array-length v3, v2

    new-array v3, v3, [Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    iput-object v3, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mRunningWindowAnim:[Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    .line 1326
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v5, v2

    .local v5, "windowAnimLength":I
    :goto_6
    if-ge v3, v5, :cond_8

    .line 1327
    aget-object v6, v2, v3

    .line 1328
    .local v6, "windowAnimation":Lcom/android/quickstep/util/RectFSpringAnim;
    if-nez v6, :cond_7

    .line 1329
    goto :goto_7

    .line 1331
    :cond_7
    iget-object v12, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v12, v11}, Lcom/android/quickstep/util/RectFSpringAnim;->start(Landroid/content/Context;Landroid/graphics/PointF;)V

    .line 1332
    iget-object v12, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mRunningWindowAnim:[Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    invoke-static {v6}, Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;->wrap(Lcom/android/quickstep/util/RectFSpringAnim;)Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    move-result-object v13

    aput-object v13, v12, v3

    .line 1326
    .end local v6    # "windowAnimation":Lcom/android/quickstep/util/RectFSpringAnim;
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1334
    .end local v3    # "i":I
    .end local v5    # "windowAnimLength":I
    :cond_8
    iget v3, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v3}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->setSwipeVelocity(F)V

    .line 1335
    iget v3, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v3}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->playAtomicAnimation(F)V

    .line 1336
    iput-object v14, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    .line 1338
    iget-object v3, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v3, :cond_9

    .line 1339
    iget-object v5, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v5}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v5

    .line 1340
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->getRemoteTaskViewSimulators()[Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v6

    .line 1339
    invoke-virtual {v3, v14, v5, v6}, Lcom/android/quickstep/views/RecentsView;->onPrepareGestureEndAnimation(Landroid/animation/AnimatorSet;Lcom/android/quickstep/GestureState$GestureEndTarget;[Lcom/android/quickstep/util/TaskViewSimulator;)V

    .line 1342
    .end local v0    # "homeAnimFactory":Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;
    .end local v1    # "cookies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    .end local v2    # "windowAnim":[Lcom/android/quickstep/util/RectFSpringAnim;
    .end local v4    # "isTranslucent":Z
    .end local v15    # "runningTaskTarget":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .end local v16    # "appCanEnterPip":Z
    :cond_9
    move/from16 v2, p2

    move-object/from16 v5, p5

    move-object/from16 v4, p6

    goto :goto_8

    .line 1343
    :cond_a
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1344
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    iget-object v1, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    move/from16 v2, p2

    invoke-virtual {v1, v8, v2}, Lcom/android/quickstep/AnimatedFloat;->animateToValue(FF)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1345
    .local v1, "windowAnim":Landroid/animation/ValueAnimator;
    new-instance v3, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda53;

    invoke-direct {v3, v7}, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda53;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1348
    new-instance v3, Lcom/android/quickstep/AbsSwipeUpHandler$8;

    move-object/from16 v4, p6

    invoke-direct {v3, v7, v4}, Lcom/android/quickstep/AbsSwipeUpHandler$8;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;Lcom/android/quickstep/GestureState$GestureEndTarget;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1379
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1380
    iget-object v3, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v3, :cond_b

    .line 1381
    iget-object v5, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureState:Lcom/android/quickstep/GestureState;

    .line 1382
    invoke-virtual {v5}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v5

    .line 1383
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->getRemoteTaskViewSimulators()[Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v6

    .line 1381
    invoke-virtual {v3, v0, v5, v6}, Lcom/android/quickstep/views/RecentsView;->onPrepareGestureEndAnimation(Landroid/animation/AnimatorSet;Lcom/android/quickstep/GestureState$GestureEndTarget;[Lcom/android/quickstep/util/TaskViewSimulator;)V

    .line 1385
    :cond_b
    invoke-virtual {v0, v9, v10}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v3

    move-object/from16 v5, p5

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1386
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1387
    new-array v3, v12, [Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    invoke-static {v0}, Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;->wrap(Landroid/animation/Animator;)Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    move-result-object v6

    aput-object v6, v3, v13

    iput-object v3, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mRunningWindowAnim:[Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    .line 1389
    .end local v0    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v1    # "windowAnim":Landroid/animation/ValueAnimator;
    :goto_8
    return-void
.end method

.method private buildAnimationController()V
    .locals 3

    .line 700
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->canCreateNewOrUpdateExistingLauncherTransitionController()Z

    move-result v0

    if-nez v0, :cond_0

    .line 701
    return-void

    .line 703
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->initTransitionEndpoints(Lcom/android/launcher3/DeviceProfile;)V

    .line 704
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mAnimationFactory:Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;

    iget v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTransitionDragLength:I

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;->createActivityInterface(J)V

    .line 705
    return-void
.end method

.method private calculateEndTarget(Landroid/graphics/PointF;FZZ)Lcom/android/quickstep/GestureState$GestureEndTarget;
    .locals 8
    .param p1, "velocity"    # Landroid/graphics/PointF;
    .param p2, "endVelocity"    # F
    .param p3, "isFlingY"    # Z
    .param p4, "isCancel"    # Z

    .line 1035
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->isHandlingAtomicEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1037
    sget-object v0, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    return-object v0

    .line 1041
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 1042
    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->hasTargets()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1045
    const/4 v0, 0x1

    .local v0, "goingToNewTask":Z
    goto :goto_1

    .line 1047
    .end local v0    # "goingToNewTask":Z
    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskIndex()I

    move-result v0

    .line 1048
    .local v0, "runningTaskIndex":I
    iget-object v3, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v3}, Lcom/android/quickstep/views/RecentsView;->getNextPage()I

    move-result v3

    .line 1049
    .local v3, "taskToLaunch":I
    if-ltz v0, :cond_2

    if-eq v3, v0, :cond_2

    move v4, v1

    goto :goto_0

    :cond_2
    move v4, v2

    :goto_0
    move v0, v4

    .line 1050
    .end local v3    # "taskToLaunch":I
    .local v0, "goingToNewTask":Z
    goto :goto_1

    .line 1052
    .end local v0    # "goingToNewTask":Z
    :cond_3
    const/4 v0, 0x0

    .line 1054
    .restart local v0    # "goingToNewTask":Z
    :goto_1
    iget-object v3, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    iget v3, v3, Lcom/android/quickstep/AnimatedFloat;->value:F

    const v4, 0x3f333333    # 0.7f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_4

    move v3, v1

    goto :goto_2

    :cond_4
    move v3, v2

    .line 1055
    .local v3, "reachedOverviewThreshold":Z
    :goto_2
    iget v4, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v5, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/launcher3/R$dimen;->quickstep_fling_threshold_speed:I

    .line 1056
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_5

    move v4, v1

    goto :goto_3

    :cond_5
    move v4, v2

    .line 1057
    .local v4, "isFlingX":Z
    :goto_3
    if-nez p3, :cond_e

    .line 1058
    if-eqz p4, :cond_6

    .line 1059
    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    .local v1, "endTarget":Lcom/android/quickstep/GestureState$GestureEndTarget;
    goto/16 :goto_a

    .line 1060
    .end local v1    # "endTarget":Lcom/android/quickstep/GestureState$GestureEndTarget;
    :cond_6
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isFullyGesturalNavMode()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1061
    if-eqz v0, :cond_7

    if-eqz v4, :cond_7

    .line 1064
    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->NEW_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    .restart local v1    # "endTarget":Lcom/android/quickstep/GestureState$GestureEndTarget;
    goto/16 :goto_a

    .line 1065
    .end local v1    # "endTarget":Lcom/android/quickstep/GestureState$GestureEndTarget;
    :cond_7
    iget-boolean v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mIsMotionPaused:Z

    if-eqz v1, :cond_8

    .line 1066
    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    .restart local v1    # "endTarget":Lcom/android/quickstep/GestureState$GestureEndTarget;
    goto/16 :goto_a

    .line 1067
    .end local v1    # "endTarget":Lcom/android/quickstep/GestureState$GestureEndTarget;
    :cond_8
    if-eqz v0, :cond_9

    .line 1068
    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->NEW_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    .restart local v1    # "endTarget":Lcom/android/quickstep/GestureState$GestureEndTarget;
    goto/16 :goto_a

    .line 1070
    .end local v1    # "endTarget":Lcom/android/quickstep/GestureState$GestureEndTarget;
    :cond_9
    if-nez v3, :cond_a

    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    goto :goto_4

    :cond_a
    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    .restart local v1    # "endTarget":Lcom/android/quickstep/GestureState$GestureEndTarget;
    :goto_4
    goto/16 :goto_a

    .line 1073
    .end local v1    # "endTarget":Lcom/android/quickstep/GestureState$GestureEndTarget;
    :cond_b
    if-eqz v3, :cond_c

    iget-boolean v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureStarted:Z

    if-eqz v1, :cond_c

    .line 1074
    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    goto :goto_5

    .line 1075
    :cond_c
    if-eqz v0, :cond_d

    .line 1076
    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->NEW_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    goto :goto_5

    .line 1077
    :cond_d
    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    :goto_5
    nop

    .restart local v1    # "endTarget":Lcom/android/quickstep/GestureState$GestureEndTarget;
    goto :goto_a

    .line 1081
    .end local v1    # "endTarget":Lcom/android/quickstep/GestureState$GestureEndTarget;
    :cond_e
    const/4 v5, 0x0

    cmpg-float v5, p2, v5

    if-gez v5, :cond_f

    move v5, v1

    goto :goto_6

    :cond_f
    move v5, v2

    .line 1082
    .local v5, "isSwipeUp":Z
    :goto_6
    if-eqz v0, :cond_10

    iget v6, p1, Landroid/graphics/PointF;->x:F

    .line 1083
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_10

    goto :goto_7

    :cond_10
    move v1, v2

    .line 1085
    .local v1, "willGoToNewTaskOnSwipeUp":Z
    :goto_7
    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v2}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isFullyGesturalNavMode()Z

    move-result v2

    if-eqz v2, :cond_11

    if-eqz v5, :cond_11

    if-nez v1, :cond_11

    .line 1086
    sget-object v2, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-object v1, v2

    .local v2, "endTarget":Lcom/android/quickstep/GestureState$GestureEndTarget;
    goto :goto_a

    .line 1087
    .end local v2    # "endTarget":Lcom/android/quickstep/GestureState$GestureEndTarget;
    :cond_11
    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v2}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isFullyGesturalNavMode()Z

    move-result v2

    if-eqz v2, :cond_12

    if-eqz v5, :cond_12

    .line 1089
    sget-object v2, Lcom/android/quickstep/GestureState$GestureEndTarget;->NEW_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-object v1, v2

    .restart local v2    # "endTarget":Lcom/android/quickstep/GestureState$GestureEndTarget;
    goto :goto_a

    .line 1090
    .end local v2    # "endTarget":Lcom/android/quickstep/GestureState$GestureEndTarget;
    :cond_12
    if-eqz v5, :cond_14

    .line 1091
    if-nez v3, :cond_13

    if-eqz v1, :cond_13

    .line 1092
    sget-object v2, Lcom/android/quickstep/GestureState$GestureEndTarget;->NEW_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    goto :goto_8

    :cond_13
    sget-object v2, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    :goto_8
    move-object v1, v2

    .restart local v2    # "endTarget":Lcom/android/quickstep/GestureState$GestureEndTarget;
    goto :goto_a

    .line 1094
    .end local v2    # "endTarget":Lcom/android/quickstep/GestureState$GestureEndTarget;
    :cond_14
    if-eqz v0, :cond_15

    sget-object v2, Lcom/android/quickstep/GestureState$GestureEndTarget;->NEW_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    goto :goto_9

    :cond_15
    sget-object v2, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    :goto_9
    move-object v1, v2

    .line 1098
    .end local v5    # "isSwipeUp":Z
    .local v1, "endTarget":Lcom/android/quickstep/GestureState$GestureEndTarget;
    :goto_a
    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v2}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isOverviewDisabled()Z

    move-result v2

    if-eqz v2, :cond_17

    sget-object v2, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eq v1, v2, :cond_16

    sget-object v2, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne v1, v2, :cond_17

    .line 1099
    :cond_16
    sget-object v2, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    return-object v2

    .line 1101
    :cond_17
    return-object v1
.end method

.method private calculateWindowRotation(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/RecentsOrientedState;)I
    .locals 2
    .param p1, "runningTaskTarget"    # Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p2, "orientationState"    # Lcom/android/quickstep/util/RecentsOrientedState;

    .line 1393
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget v0, p1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->rotationChange:I

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/quickstep/TaskAnimationManager;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v0, :cond_1

    .line 1395
    iget v0, p1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->rotationChange:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1396
    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    nop

    .line 1395
    :goto_0
    return v1

    .line 1398
    :cond_1
    invoke-virtual {p2}, Lcom/android/quickstep/util/RecentsOrientedState;->getDisplayRotation()I

    move-result v0

    return v0
.end method

.method private canCreateNewOrUpdateExistingLauncherTransitionController()Z
    .locals 2

    .line 713
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mHasEndedLauncherTransition:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private cancelCurrentAnimation()V
    .locals 2

    .line 1617
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mCanceled:Z

    .line 1618
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v0}, Lcom/android/quickstep/AnimatedFloat;->cancelAnimation()V

    .line 1621
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mInputConsumerProxy:Lcom/android/quickstep/util/InputConsumerProxy;

    invoke-virtual {v0}, Lcom/android/quickstep/util/InputConsumerProxy;->unregisterCallback()V

    .line 1622
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInitListener:Lcom/android/quickstep/util/ActivityInitListener;

    invoke-virtual {v0}, Lcom/android/quickstep/util/ActivityInitListener;->unregister()V

    .line 1623
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityRestartListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 1624
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskSnapshot:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    .line 1625
    return-void
.end method

.method private computeRecentsScrollIfInvisible()V
    .locals 1

    .line 1493
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1496
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->computeScroll()V

    .line 1498
    :cond_0
    return-void
.end method

.method private continueComputingRecentsScrollIfNecessary()V
    .locals 2

    .line 1501
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureState:Lcom/android/quickstep/GestureState;

    sget v1, Lcom/android/quickstep/GestureState;->STATE_RECENTS_SCROLLING_FINISHED:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/GestureState;->hasState(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_HANDLER_INVALIDATED:I

    .line 1502
    invoke-virtual {v0, v1}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mCanceled:Z

    if-nez v0, :cond_0

    .line 1504
    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->computeRecentsScrollIfInvisible()V

    .line 1505
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    new-instance v1, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda16;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/RecentsView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 1507
    :cond_0
    return-void
.end method

.method private createWindowAnimationToPip(Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;F)Lcom/android/quickstep/util/SwipePipToHomeAnimator;
    .locals 18
    .param p1, "homeAnimFactory"    # Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;
    .param p2, "runningTaskTarget"    # Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p3, "startProgress"    # F

    .line 1408
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1409
    .local v2, "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v3, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v3

    .line 1410
    invoke-virtual {v3}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v3

    .line 1411
    .local v3, "orientationState":Lcom/android/quickstep/util/RecentsOrientedState;
    invoke-direct {v0, v1, v3}, Lcom/android/quickstep/AbsSwipeUpHandler;->calculateWindowRotation(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/RecentsOrientedState;)I

    move-result v5

    .line 1412
    .local v5, "windowRotation":I
    invoke-virtual {v3}, Lcom/android/quickstep/util/RecentsOrientedState;->getRecentsActivityRotation()I

    move-result v12

    .line 1414
    .local v12, "homeRotation":I
    iget-object v6, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    array-length v6, v6

    new-array v13, v6, [Landroid/graphics/Matrix;

    .line 1415
    .local v13, "homeToWindowPositionMaps":[Landroid/graphics/Matrix;
    move/from16 v14, p3

    invoke-virtual {v0, v13, v14}, Lcom/android/quickstep/AbsSwipeUpHandler;->updateProgressForStartRect([Landroid/graphics/Matrix;F)[Landroid/graphics/RectF;

    move-result-object v6

    aget-object v15, v6, v4

    .line 1417
    .local v15, "startRect":Landroid/graphics/RectF;
    aget-object v11, v13, v4

    .line 1419
    .local v11, "homeToWindowPositionMap":Landroid/graphics/Matrix;
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    move-object v10, v6

    .line 1420
    .local v10, "windowToHomePositionMap":Landroid/graphics/Matrix;
    invoke-virtual {v11, v10}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 1421
    invoke-virtual {v10, v15}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1423
    sget-object v6, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v7, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/quickstep/SystemUiProxy;

    iget-object v7, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    iget-object v8, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    iget-object v4, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v4, v4, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    .line 1424
    move-object/from16 v16, v10

    .end local v10    # "windowToHomePositionMap":Landroid/graphics/Matrix;
    .local v16, "windowToHomePositionMap":Landroid/graphics/Matrix;
    move v10, v12

    move-object/from16 v17, v3

    move-object v3, v11

    .end local v11    # "homeToWindowPositionMap":Landroid/graphics/Matrix;
    .local v3, "homeToWindowPositionMap":Landroid/graphics/Matrix;
    .local v17, "orientationState":Lcom/android/quickstep/util/RecentsOrientedState;
    move v11, v4

    invoke-virtual/range {v6 .. v11}, Lcom/android/quickstep/SystemUiProxy;->startSwipePipToHome(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;Landroid/app/PictureInPictureParams;II)Landroid/graphics/Rect;

    move-result-object v4

    .line 1429
    .local v4, "destinationBounds":Landroid/graphics/Rect;
    new-instance v6, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;

    invoke-direct {v6}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;-><init>()V

    iget-object v7, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mContext:Landroid/content/Context;

    .line 1430
    invoke-virtual {v6, v7}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->setContext(Landroid/content/Context;)Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;

    move-result-object v6

    iget v7, v1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    .line 1431
    invoke-virtual {v6, v7}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->setTaskId(I)Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;

    move-result-object v6

    iget-object v7, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 1432
    invoke-virtual {v6, v7}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->setComponentName(Landroid/content/ComponentName;)Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;

    move-result-object v6

    iget-object v7, v1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    .line 1433
    invoke-virtual {v6, v7}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->setLeash(Landroid/view/SurfaceControl;)Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;

    move-result-object v6

    iget-object v7, v1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    .line 1435
    invoke-virtual {v7}, Landroid/app/PictureInPictureParams;->getSourceRectHint()Landroid/graphics/Rect;

    move-result-object v7

    .line 1434
    invoke-virtual {v6, v7}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->setSourceRectHint(Landroid/graphics/Rect;)Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;

    move-result-object v6

    iget-object v7, v2, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v7, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1436
    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->setAppBounds(Landroid/graphics/Rect;)Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;

    move-result-object v6

    .line 1437
    invoke-virtual {v6, v3}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->setHomeToWindowPositionMap(Landroid/graphics/Matrix;)Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;

    move-result-object v6

    .line 1438
    invoke-virtual {v6, v15}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->setStartBounds(Landroid/graphics/RectF;)Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;

    move-result-object v6

    .line 1439
    invoke-virtual {v6, v4}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->setDestinationBounds(Landroid/graphics/Rect;)Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 1440
    invoke-virtual {v7}, Lcom/android/quickstep/views/RecentsView;->getPipCornerRadius()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->setCornerRadius(I)Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 1441
    invoke-virtual {v7}, Lcom/android/quickstep/views/RecentsView;->getPipShadowRadius()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->setShadowRadius(I)Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 1442
    invoke-virtual {v6, v7}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->setAttachedView(Landroid/view/View;)Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;

    move-result-object v6

    .line 1445
    .local v6, "builder":Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;
    const/4 v7, 0x1

    if-nez v12, :cond_1

    if-eq v5, v7, :cond_0

    const/4 v8, 0x3

    if-ne v5, v8, :cond_1

    .line 1447
    :cond_0
    iget-object v8, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v8

    iget-object v9, v2, Landroid/app/ActivityManager$RunningTaskInfo;->displayCutoutInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v8, v5, v9}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->setFromRotation(Lcom/android/quickstep/util/TaskViewSimulator;ILandroid/graphics/Rect;)Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;

    .line 1450
    :cond_1
    invoke-virtual {v6}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->build()Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    move-result-object v8

    .line 1451
    .local v8, "swipePipToHomeAnimator":Lcom/android/quickstep/util/SwipePipToHomeAnimator;
    nop

    .line 1452
    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->createActivityAnimationToHome()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v9

    .line 1453
    .local v9, "activityAnimationToHome":Lcom/android/launcher3/anim/AnimatorPlaybackController;
    new-instance v10, Lcom/android/quickstep/AbsSwipeUpHandler$9;

    invoke-direct {v10, v0, v9}, Lcom/android/quickstep/AbsSwipeUpHandler$9;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;Lcom/android/launcher3/anim/AnimatorPlaybackController;)V

    invoke-virtual {v8, v10}, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1477
    new-array v7, v7, [Lcom/android/quickstep/util/RectFSpringAnim;

    const/4 v10, 0x0

    aput-object v8, v7, v10

    invoke-direct {v0, v7}, Lcom/android/quickstep/AbsSwipeUpHandler;->setupWindowAnimation([Lcom/android/quickstep/util/RectFSpringAnim;)V

    .line 1478
    return-object v8
.end method

.method private doLogGesture(Lcom/android/quickstep/GestureState$GestureEndTarget;Lcom/android/quickstep/views/TaskView;)V
    .locals 3
    .param p1, "endTarget"    # Lcom/android/quickstep/GestureState$GestureEndTarget;
    .param p2, "targetTask"    # Lcom/android/quickstep/views/TaskView;

    .line 1194
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mDp:Lcom/android/launcher3/DeviceProfile;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isGestureMode:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mDownPos:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    goto :goto_4

    .line 1200
    :cond_0
    sget-object v0, Lcom/android/quickstep/AbsSwipeUpHandler$11;->$SwitchMap$com$android$quickstep$GestureState$GestureEndTarget:[I

    invoke-virtual {p1}, Lcom/android/quickstep/GestureState$GestureEndTarget;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1213
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->IGNORE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .local v0, "event":Lcom/android/launcher3/logging/StatsLogManager$EventEnum;
    goto :goto_1

    .line 1209
    .end local v0    # "event":Lcom/android/launcher3/logging/StatsLogManager$EventEnum;
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLogDirectionUpOrLeft:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_QUICKSWITCH_LEFT:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    goto :goto_0

    .line 1210
    :cond_1
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_QUICKSWITCH_RIGHT:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    :goto_0
    nop

    .line 1211
    .restart local v0    # "event":Lcom/android/launcher3/logging/StatsLogManager$EventEnum;
    goto :goto_1

    .line 1205
    .end local v0    # "event":Lcom/android/launcher3/logging/StatsLogManager$EventEnum;
    :pswitch_1
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_OVERVIEW_GESTURE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 1206
    .restart local v0    # "event":Lcom/android/launcher3/logging/StatsLogManager$EventEnum;
    goto :goto_1

    .line 1202
    .end local v0    # "event":Lcom/android/launcher3/logging/StatsLogManager$EventEnum;
    :pswitch_2
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_HOME_GESTURE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 1203
    .restart local v0    # "event":Lcom/android/launcher3/logging/StatsLogManager$EventEnum;
    nop

    .line 1215
    :goto_1
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/logging/StatsLogManager;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    const/4 v2, 0x1

    .line 1216
    invoke-interface {v1, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withSrcState(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    iget v2, p1, Lcom/android/quickstep/GestureState$GestureEndTarget;->containerType:I

    .line 1217
    invoke-interface {v1, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withDstState(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    .line 1218
    .local v1, "logger":Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    if-eqz p2, :cond_2

    .line 1219
    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView;->getItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    .line 1222
    :cond_2
    sget-object v2, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eq p1, v2, :cond_4

    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-nez v2, :cond_3

    goto :goto_2

    .line 1224
    :cond_3
    invoke-virtual {v2}, Lcom/android/quickstep/views/RecentsView;->getNextPage()I

    move-result v2

    goto :goto_3

    .line 1223
    :cond_4
    :goto_2
    const/4 v2, -0x1

    .line 1224
    :goto_3
    nop

    .line 1225
    .local v2, "pageIndex":I
    invoke-interface {v1, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withRank(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    .line 1226
    invoke-interface {v1, v0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 1227
    return-void

    .line 1196
    .end local v0    # "event":Lcom/android/launcher3/logging/StatsLogManager$EventEnum;
    .end local v1    # "logger":Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    .end local v2    # "pageIndex":I
    :cond_5
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private endLauncherTransitionController()V
    .locals 2

    .line 1654
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mHasEndedLauncherTransition:Z

    .line 1656
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    if-eqz v0, :cond_0

    .line 1658
    invoke-virtual {v0}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->getNormalController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda10;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchSetInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1660
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    invoke-virtual {v0}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->getNormalController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 1661
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    .line 1664
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v0, :cond_1

    .line 1665
    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->abortScrollerAnimation()V

    .line 1667
    :cond_1
    return-void
.end method

.method private endRunningWindowAnim(Z)V
    .locals 4
    .param p1, "cancel"    # Z

    .line 953
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRunningWindowAnim:[Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    if-eqz v0, :cond_3

    .line 954
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 955
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 956
    .local v3, "r":Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;
    if-eqz v3, :cond_0

    .line 957
    invoke-interface {v3}, Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;->cancel()V

    .line 955
    .end local v3    # "r":Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 961
    :cond_1
    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 962
    .restart local v3    # "r":Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;
    if-eqz v3, :cond_2

    .line 963
    invoke-interface {v3}, Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;->end()V

    .line 961
    .end local v3    # "r":Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 968
    :cond_3
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mParallelRunningAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_4

    .line 971
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 973
    :cond_4
    return-void
.end method

.method private finishCurrentTransitionToHome()V
    .locals 3

    .line 1775
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->hasTargets()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1779
    :cond_0
    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->maybeFinishSwipeToHome()V

    .line 1780
    new-instance v0, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda57;

    invoke-direct {v0, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda57;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->finishRecentsControllerToHome(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1777
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_CURRENT_TASK_FINISHED:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/MultiStateCallback;->setStateOnUiThread(I)V

    .line 1783
    :goto_1
    sget-object v0, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    const/4 v1, 0x1

    const-string v2, "finishRecentsAnimation"

    invoke-virtual {v0, v2, v1}, Lcom/android/quickstep/util/ActiveGestureLog;->addLog(Ljava/lang/String;Z)V

    .line 1784
    sget-object v0, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->getCurrentPageTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    :goto_2
    invoke-direct {p0, v0, v1}, Lcom/android/quickstep/AbsSwipeUpHandler;->doLogGesture(Lcom/android/quickstep/GestureState$GestureEndTarget;Lcom/android/quickstep/views/TaskView;)V

    .line 1785
    return-void
.end method

.method private finishCurrentTransitionToRecents()V
    .locals 3

    .line 1759
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1760
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v2, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_CURRENT_TASK_FINISHED:I

    invoke-virtual {v0, v2}, Lcom/android/quickstep/MultiStateCallback;->setStateOnUiThread(I)V

    .line 1761
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz v0, :cond_3

    .line 1762
    invoke-virtual {v0, v1}, Lcom/android/quickstep/RecentsAnimationController;->detachNavigationBarFromApp(Z)V

    goto :goto_1

    .line 1764
    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->hasTargets()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-nez v0, :cond_1

    goto :goto_0

    .line 1768
    :cond_1
    new-instance v2, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda52;

    invoke-direct {v2, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda52;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/RecentsAnimationController;->finish(ZLjava/lang/Runnable;)V

    goto :goto_1

    .line 1766
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v2, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_CURRENT_TASK_FINISHED:I

    invoke-virtual {v0, v2}, Lcom/android/quickstep/MultiStateCallback;->setStateOnUiThread(I)V

    .line 1771
    :cond_3
    :goto_1
    sget-object v0, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    const-string v2, "finishRecentsAnimation"

    invoke-virtual {v0, v2, v1}, Lcom/android/quickstep/util/ActiveGestureLog;->addLog(Ljava/lang/String;Z)V

    .line 1772
    return-void
.end method

.method private flushOnRecentsAnimationAndLauncherBound()V
    .locals 2

    .line 1942
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_LAUNCHER_BIND_TO_SERVICE:I

    .line 1943
    invoke-virtual {v0, v1}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1947
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationStartCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1948
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationStartCallbacks:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 1949
    .local v1, "action":Ljava/lang/Runnable;
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1950
    .end local v1    # "action":Ljava/lang/Runnable;
    goto :goto_0

    .line 1951
    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationStartCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1953
    :cond_2
    return-void

    .line 1944
    :cond_3
    :goto_1
    return-void
.end method

.method private static getFlagForIndex(ILjava/lang/String;)I
    .locals 1
    .param p0, "index"    # I
    .param p1, "name"    # Ljava/lang/String;

    .line 187
    const/4 v0, 0x1

    shl-int/2addr v0, p0

    return v0
.end method

.method private getScaleProgressDueToScroll()F
    .locals 10

    .line 2046
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsViewScrollLinked:Z

    if-nez v1, :cond_0

    goto :goto_1

    .line 2051
    :cond_0
    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/RecentsView;->getScrollOffset(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    .line 2052
    .local v0, "scrollOffset":F
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 2053
    invoke-virtual {v2}, Lcom/android/quickstep/views/RecentsView;->getLastComputedTaskSize()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 2054
    invoke-virtual {v3}, Lcom/android/quickstep/views/RecentsView;->getLastComputedTaskSize()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 2052
    invoke-interface {v1, v2, v3}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(II)I

    move-result v1

    .line 2055
    .local v1, "maxScrollOffset":I
    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v2}, Lcom/android/quickstep/views/RecentsView;->getPageSpacing()I

    move-result v2

    add-int v7, v1, v2

    .line 2057
    .end local v1    # "maxScrollOffset":I
    .local v7, "maxScrollOffset":I
    const v1, 0x3d8f5c29    # 0.07f

    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 2058
    invoke-virtual {v2}, Lcom/android/quickstep/views/RecentsView;->getMaxScaleForFullScreen()F

    move-result v2

    mul-float v8, v2, v1

    .line 2059
    .local v8, "maxScaleProgress":F
    move v9, v8

    .line 2061
    .local v9, "scaleProgress":F
    iget v3, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mQuickSwitchScaleScrollThreshold:F

    cmpg-float v1, v0, v3

    if-gez v1, :cond_1

    .line 2062
    const/4 v2, 0x0

    const/4 v4, 0x0

    sget-object v6, Lcom/android/launcher3/anim/Interpolators;->ACCEL_DEACCEL:Landroid/view/animation/Interpolator;

    move v1, v0

    move v5, v8

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v9

    goto :goto_0

    .line 2064
    :cond_1
    int-to-float v1, v7

    sub-float/2addr v1, v3

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    .line 2065
    int-to-float v1, v7

    sub-float v2, v1, v3

    int-to-float v3, v7

    const/4 v5, 0x0

    sget-object v6, Lcom/android/launcher3/anim/Interpolators;->ACCEL_DEACCEL:Landroid/view/animation/Interpolator;

    move v1, v0

    move v4, v8

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v9

    .line 2070
    :cond_2
    :goto_0
    return v9

    .line 2048
    .end local v0    # "scrollOffset":F
    .end local v7    # "maxScrollOffset":I
    .end local v8    # "maxScaleProgress":F
    .end local v9    # "scaleProgress":F
    :cond_3
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method private handleNormalGestureEnd(FZLandroid/graphics/PointF;Z)V
    .locals 21
    .param p1, "endVelocity"    # F
    .param p2, "isFling"    # Z
    .param p3, "velocity"    # Landroid/graphics/PointF;
    .param p4, "isCancel"    # Z

    .line 1107
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    move-object/from16 v8, p0

    move/from16 v9, p2

    move-object/from16 v10, p3

    const-wide/16 v0, 0x15e

    .line 1108
    .local v0, "duration":J
    iget-object v2, v8, Lcom/android/quickstep/AbsSwipeUpHandler;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    iget v11, v2, Lcom/android/quickstep/AnimatedFloat;->value:F

    .line 1109
    .local v11, "currentShift":F
    move/from16 v12, p1

    move/from16 v13, p4

    invoke-direct {v8, v10, v12, v9, v13}, Lcom/android/quickstep/AbsSwipeUpHandler;->calculateEndTarget(Landroid/graphics/PointF;FZZ)Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v14

    .line 1112
    .local v14, "endTarget":Lcom/android/quickstep/GestureState$GestureEndTarget;
    iget-object v2, v8, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureState:Lcom/android/quickstep/GestureState;

    const/4 v3, 0x0

    invoke-virtual {v2, v14, v3}, Lcom/android/quickstep/GestureState;->setEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;Z)V

    .line 1113
    iget-object v2, v8, Lcom/android/quickstep/AbsSwipeUpHandler;->mAnimationFactory:Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;

    invoke-interface {v2, v14}, Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;->setEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;)V

    .line 1115
    iget-boolean v2, v14, Lcom/android/quickstep/GestureState$GestureEndTarget;->isLauncher:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    move v15, v2

    .line 1117
    .local v15, "endShift":F
    const-wide/16 v4, 0x15e

    if-nez v9, :cond_1

    .line 1118
    sub-float v2, v15, v11

    const/high16 v3, 0x43af0000    # 350.0f

    mul-float/2addr v2, v3

    sget v3, Lcom/android/quickstep/AbsSwipeUpHandler;->SWIPE_DURATION_MULTIPLIER:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-long v2, v2

    .line 1120
    .local v2, "expectedDuration":J
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 1121
    move v2, v11

    .line 1122
    .local v2, "startShift":F
    move/from16 v16, v2

    goto :goto_1

    .line 1123
    .end local v2    # "startShift":F
    :cond_1
    iget v2, v10, Landroid/graphics/PointF;->y:F

    iget-object v6, v8, Lcom/android/quickstep/AbsSwipeUpHandler;->mContext:Landroid/content/Context;

    .line 1124
    invoke-static {v6}, Lcom/android/launcher3/util/window/RefreshRateTracker;->getSingleFrameMs(Landroid/content/Context;)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v2, v6

    iget v6, v8, Lcom/android/quickstep/AbsSwipeUpHandler;->mTransitionDragLength:I

    int-to-float v6, v6

    div-float/2addr v2, v6

    sub-float v2, v11, v2

    iget v6, v8, Lcom/android/quickstep/AbsSwipeUpHandler;->mDragLengthFactor:F

    .line 1123
    invoke-static {v2, v3, v6}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v2

    .line 1125
    .restart local v2    # "startShift":F
    iget v3, v8, Lcom/android/quickstep/AbsSwipeUpHandler;->mTransitionDragLength:I

    if-lez v3, :cond_2

    .line 1126
    sub-float v3, v15, v11

    iget v6, v8, Lcom/android/quickstep/AbsSwipeUpHandler;->mTransitionDragLength:I

    int-to-float v6, v6

    mul-float/2addr v3, v6

    .line 1131
    .local v3, "distanceToTravel":F
    iget v6, v10, Landroid/graphics/PointF;->y:F

    div-float v6, v3, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-long v6, v6

    .line 1132
    .local v6, "baseDuration":J
    const-wide/16 v16, 0x2

    move-wide/from16 v18, v0

    .end local v0    # "duration":J
    .local v18, "duration":J
    mul-long v0, v6, v16

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    move/from16 v16, v2

    .end local v18    # "duration":J
    .restart local v0    # "duration":J
    goto :goto_1

    .line 1125
    .end local v3    # "distanceToTravel":F
    .end local v6    # "baseDuration":J
    :cond_2
    move-wide/from16 v18, v0

    .end local v0    # "duration":J
    .restart local v18    # "duration":J
    move/from16 v16, v2

    .line 1136
    .end local v2    # "startShift":F
    .end local v18    # "duration":J
    .restart local v0    # "duration":J
    .local v16, "startShift":F
    :goto_1
    iget-object v2, v8, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v2, v14}, Lcom/android/quickstep/BaseActivityInterface;->stateFromGestureEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;)Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v7

    .line 1137
    .local v7, "state":Lcom/android/launcher3/statemanager/BaseState;, "TS;"
    iget-object v2, v8, Lcom/android/quickstep/AbsSwipeUpHandler;->mDp:Lcom/android/launcher3/DeviceProfile;

    invoke-interface {v7, v2}, Lcom/android/launcher3/statemanager/BaseState;->displayOverviewTasksAsGrid(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1138
    sget-object v2, Lcom/android/launcher3/anim/Interpolators;->ACCEL_DEACCEL:Landroid/view/animation/Interpolator;

    move-object/from16 v17, v2

    .local v2, "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_2

    .line 1139
    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_3
    sget-object v2, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne v14, v2, :cond_4

    .line 1140
    sget-object v2, Lcom/android/launcher3/anim/Interpolators;->OVERSHOOT_1_2:Landroid/view/animation/Interpolator;

    move-object/from16 v17, v2

    .restart local v2    # "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_2

    .line 1142
    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_4
    sget-object v2, Lcom/android/launcher3/anim/Interpolators;->DEACCEL:Landroid/view/animation/Interpolator;

    move-object/from16 v17, v2

    .line 1145
    .local v17, "interpolator":Landroid/view/animation/Interpolator;
    :goto_2
    iget-boolean v2, v14, Lcom/android/quickstep/GestureState$GestureEndTarget;->isLauncher:Z

    if-eqz v2, :cond_5

    .line 1146
    iget-object v2, v8, Lcom/android/quickstep/AbsSwipeUpHandler;->mInputConsumerProxy:Lcom/android/quickstep/util/InputConsumerProxy;

    invoke-virtual {v2}, Lcom/android/quickstep/util/InputConsumerProxy;->enable()V

    .line 1148
    :cond_5
    sget-object v2, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne v14, v2, :cond_6

    .line 1149
    const-wide/16 v0, 0xfa

    .line 1151
    iget-object v2, v8, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz v2, :cond_b

    .line 1152
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/quickstep/RecentsAnimationController;->detachNavigationBarFromApp(Z)V

    goto :goto_3

    .line 1154
    :cond_6
    sget-object v2, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne v14, v2, :cond_b

    .line 1155
    iget-object v2, v8, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v2, :cond_b

    .line 1156
    invoke-virtual {v2}, Lcom/android/quickstep/views/RecentsView;->getDestinationPage()I

    move-result v2

    .line 1157
    .local v2, "nearestPage":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_7

    .line 1159
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    const-string v6, "AbsSwipeUpHandler"

    const-string v4, "RecentsView destination page is invalid"

    invoke-static {v6, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1164
    :cond_7
    const/4 v3, 0x0

    .line 1165
    .local v3, "isScrolling":Z
    iget-object v4, v8, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v4}, Lcom/android/quickstep/views/RecentsView;->getNextPage()I

    move-result v4

    if-eq v4, v2, :cond_8

    .line 1168
    iget-object v4, v8, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v0, v1}, Ljava/lang/Math;->toIntExact(J)I

    move-result v5

    invoke-virtual {v4, v2, v5}, Lcom/android/quickstep/views/RecentsView;->snapToPage(II)Z

    .line 1169
    const/4 v3, 0x1

    .line 1171
    :cond_8
    iget-object v4, v8, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v4}, Lcom/android/quickstep/views/RecentsView;->getScroller()Landroid/widget/OverScroller;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getDuration()I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v18, 0x15e

    cmp-long v4, v4, v18

    if-lez v4, :cond_9

    .line 1172
    iget-object v4, v8, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v4}, Lcom/android/quickstep/views/RecentsView;->getNextPage()I

    move-result v5

    const/16 v6, 0x15e

    invoke-virtual {v4, v5, v6}, Lcom/android/quickstep/views/RecentsView;->snapToPage(II)Z

    .line 1173
    const/4 v3, 0x1

    .line 1175
    :cond_9
    iget-object v4, v8, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v4}, Lcom/android/quickstep/GestureState;->isHandlingAtomicEvent()Z

    move-result v4

    if-eqz v4, :cond_a

    if-eqz v3, :cond_b

    .line 1176
    :cond_a
    iget-object v4, v8, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v4}, Lcom/android/quickstep/views/RecentsView;->getScroller()Landroid/widget/OverScroller;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getDuration()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    move-wide/from16 v18, v0

    goto :goto_4

    .line 1183
    .end local v2    # "nearestPage":I
    .end local v3    # "isScrolling":Z
    :cond_b
    :goto_3
    move-wide/from16 v18, v0

    .end local v0    # "duration":J
    .restart local v18    # "duration":J
    :goto_4
    iget-object v0, v8, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v0, :cond_c

    .line 1184
    new-instance v1, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda13;

    invoke-direct {v1, v8}, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda13;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/RecentsView;->setOnPageTransitionEndCallback(Ljava/lang/Runnable;)V

    goto :goto_5

    .line 1187
    :cond_c
    iget-object v0, v8, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureState:Lcom/android/quickstep/GestureState;

    sget v1, Lcom/android/quickstep/GestureState;->STATE_RECENTS_SCROLLING_FINISHED:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/GestureState;->setState(I)V

    .line 1190
    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v16

    move v2, v15

    move-wide/from16 v3, v18

    move-object/from16 v5, v17

    move-object v6, v14

    move-object/from16 v20, v7

    .end local v7    # "state":Lcom/android/launcher3/statemanager/BaseState;, "TS;"
    .local v20, "state":Lcom/android/launcher3/statemanager/BaseState;, "TS;"
    move-object/from16 v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/quickstep/AbsSwipeUpHandler;->animateToProgress(FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;)V

    .line 1191
    return-void
.end method

.method private initStateCallbacks()V
    .locals 12

    .line 327
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    new-instance v0, Lcom/android/quickstep/MultiStateCallback;

    sget-object v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_NAMES:[Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/quickstep/MultiStateCallback;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    .line 329
    sget v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_LAUNCHER_PRESENT:I

    sget v2, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_GESTURE_STARTED:I

    or-int v3, v1, v2

    new-instance v4, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda14;

    invoke-direct {v4, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda14;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v0, v3, v4}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    .line 332
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v3, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_LAUNCHER_DRAWN:I

    or-int v4, v3, v2

    new-instance v5, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda22;

    invoke-direct {v5, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda22;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v0, v4, v5}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    .line 335
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    or-int v4, v1, v3

    new-instance v5, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda23;

    invoke-direct {v5, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda23;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v0, v4, v5}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    .line 338
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v4, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_LAUNCHER_STARTED:I

    or-int/2addr v4, v1

    sget v5, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_GESTURE_CANCELLED:I

    or-int/2addr v4, v5

    new-instance v5, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda20;

    invoke-direct {v5, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda20;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v0, v4, v5}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    .line 342
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v4, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_RESUME_LAST_TASK:I

    sget v5, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_APP_CONTROLLER_RECEIVED:I

    or-int v6, v4, v5

    new-instance v7, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda24;

    invoke-direct {v7, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda24;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v0, v6, v7}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    .line 344
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v6, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_START_NEW_TASK:I

    sget v7, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_SCREENSHOT_CAPTURED:I

    or-int/2addr v6, v7

    new-instance v8, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda25;

    invoke-direct {v8, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda25;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v0, v6, v8}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    .line 347
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    or-int v6, v1, v5

    or-int/2addr v6, v3

    sget v8, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_CAPTURE_SCREENSHOT:I

    or-int/2addr v6, v8

    new-instance v9, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda26;

    invoke-direct {v9, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda26;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v0, v6, v9}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    .line 351
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v6, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_GESTURE_COMPLETED:I

    or-int v9, v7, v6

    sget v10, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_SCALED_CONTROLLER_RECENTS:I

    or-int/2addr v9, v10

    new-instance v11, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda27;

    invoke-direct {v11, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda27;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v0, v9, v11}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    .line 355
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    or-int/2addr v7, v6

    sget v9, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_SCALED_CONTROLLER_HOME:I

    or-int/2addr v7, v9

    new-instance v11, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda28;

    invoke-direct {v11, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda28;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v0, v7, v11}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    .line 358
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v7, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_CURRENT_TASK_FINISHED:I

    or-int/2addr v9, v7

    new-instance v11, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda29;

    invoke-direct {v11, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda29;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v0, v9, v11}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    .line 361
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    or-int v9, v1, v5

    or-int/2addr v3, v9

    or-int/2addr v3, v10

    or-int/2addr v3, v7

    or-int/2addr v3, v6

    or-int/2addr v2, v3

    new-instance v3, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda15;

    invoke-direct {v3, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda15;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v0, v2, v3}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    .line 367
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureState:Lcom/android/quickstep/GestureState;

    sget v2, Lcom/android/quickstep/GestureState;->STATE_END_TARGET_ANIMATION_FINISHED:I

    new-instance v3, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda16;

    invoke-direct {v3, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda16;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v0, v2, v3}, Lcom/android/quickstep/GestureState;->runOnceAtState(ILjava/lang/Runnable;)V

    .line 369
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureState:Lcom/android/quickstep/GestureState;

    sget v2, Lcom/android/quickstep/GestureState;->STATE_END_TARGET_ANIMATION_FINISHED:I

    sget v3, Lcom/android/quickstep/GestureState;->STATE_RECENTS_SCROLLING_FINISHED:I

    or-int/2addr v2, v3

    new-instance v3, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda17;

    invoke-direct {v3, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda17;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v0, v2, v3}, Lcom/android/quickstep/GestureState;->runOnceAtState(ILjava/lang/Runnable;)V

    .line 373
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v2, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_HANDLER_INVALIDATED:I

    new-instance v3, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda18;

    invoke-direct {v3, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda18;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v0, v2, v3}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    .line 374
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    or-int v3, v1, v2

    new-instance v6, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda19;

    invoke-direct {v6, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda19;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v0, v3, v6}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    .line 376
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    or-int v3, v2, v4

    new-instance v4, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda20;

    invoke-direct {v4, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda20;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v0, v3, v4}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    .line 378
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v3, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_FINISH_WITH_NO_END:I

    or-int/2addr v2, v3

    new-instance v3, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda20;

    invoke-direct {v3, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda20;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v0, v2, v3}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    .line 381
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    or-int/2addr v1, v5

    sget v2, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_SCREENSHOT_VIEW_SHOWN:I

    or-int/2addr v1, v2

    or-int/2addr v1, v8

    new-instance v2, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda21;

    invoke-direct {v2, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda21;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/MultiStateCallback;->addChangeListener(ILjava/util/function/Consumer;)V

    .line 386
    :cond_0
    return-void
.end method

.method private initializeLauncherAnimationController()V
    .locals 6

    .line 597
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->buildAnimationController()V

    .line 599
    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string v1, "logToggleRecents"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    .line 601
    .local v0, "traceToken":Ljava/lang/Object;
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherFrameDrawnTime:J

    iget-wide v4, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTouchTimeMs:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    invoke-static {v1, v2}, Lcom/android/systemui/shared/system/LatencyTrackerCompat;->logToggleRecents(Landroid/content/Context;I)V

    .line 603
    sget-object v1, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    .line 607
    sget-object v1, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/RecentsModel;

    invoke-virtual {v1}, Lcom/android/quickstep/RecentsModel;->getThumbnailCache()Lcom/android/quickstep/TaskThumbnailCache;

    move-result-object v1

    .line 608
    invoke-virtual {v1}, Lcom/android/quickstep/TaskThumbnailCache;->getHighResLoadingState()Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;->setVisible(Z)V

    .line 609
    return-void
.end method

.method private invalidateHandler()V
    .locals 3

    .line 1628
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->isInLiveTileMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureState:Lcom/android/quickstep/GestureState;

    .line 1629
    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    sget-object v2, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eq v0, v2, :cond_1

    .line 1630
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mInputConsumerProxy:Lcom/android/quickstep/util/InputConsumerProxy;

    invoke-virtual {v0}, Lcom/android/quickstep/util/InputConsumerProxy;->destroy()V

    .line 1631
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/TaskAnimationManager;->setLiveTileCleanUpHandler(Ljava/lang/Runnable;)V

    .line 1633
    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mInputConsumerProxy:Lcom/android/quickstep/util/InputConsumerProxy;

    invoke-virtual {v0}, Lcom/android/quickstep/util/InputConsumerProxy;->unregisterCallback()V

    .line 1634
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->endRunningWindowAnim(Z)V

    .line 1636
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureEndCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 1637
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1640
    :cond_2
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInitListener:Lcom/android/quickstep/util/ActivityInitListener;

    invoke-virtual {v0}, Lcom/android/quickstep/util/ActivityInitListener;->unregister()V

    .line 1641
    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object v0

    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityRestartListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, v2}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 1643
    iput-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskSnapshot:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    .line 1644
    return-void
.end method

.method private invalidateHandlerWithLauncher()V
    .locals 1

    .line 1647
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->endLauncherTransitionController()V

    .line 1649
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->onGestureAnimationEnd()V

    .line 1650
    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->resetLauncherListeners()V

    .line 1651
    return-void
.end method

.method private static isNotInRecents(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z
    .locals 2
    .param p0, "app"    # Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    .line 1840
    iget-boolean v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->isNotInRecents:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->activityType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

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

.method static synthetic lambda$linkRecentsViewScroll$27(Lcom/android/quickstep/util/SurfaceTransactionApplier;Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 1
    .param p0, "applier"    # Lcom/android/quickstep/util/SurfaceTransactionApplier;
    .param p1, "remoteTargetHandle"    # Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    .line 1867
    invoke-virtual {p1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v0

    .line 1868
    invoke-virtual {v0, p0}, Lcom/android/quickstep/util/TransformParams;->setSyncTransactionApplier(Lcom/android/quickstep/util/SurfaceTransactionApplier;)Lcom/android/quickstep/util/TransformParams;

    .line 1867
    return-void
.end method

.method static synthetic lambda$new$0(J)V
    .locals 0
    .param p0, "t"    # J

    .line 277
    return-void
.end method

.method static synthetic lambda$setDividerShown$33(ZLandroid/animation/ValueAnimator;)V
    .locals 0
    .param p0, "immediate"    # Z
    .param p1, "dividerAnimator"    # Landroid/animation/ValueAnimator;

    .line 2079
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 2080
    if-eqz p0, :cond_0

    .line 2081
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    .line 2083
    :cond_0
    return-void
.end method

.method private launcherFrameDrawn()V
    .locals 2

    .line 593
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherFrameDrawnTime:J

    .line 594
    return-void
.end method

.method private maybeFinishSwipeToHome()V
    .locals 7

    .line 1793
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mIsSwipingPipToHome:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mSwipePipToHomeAnimators:[Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 1794
    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mSwipePipToHomeAnimator:Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    .line 1795
    invoke-virtual {v2}, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->getTaskId()I

    move-result v2

    iget-object v3, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mSwipePipToHomeAnimator:Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    .line 1796
    invoke-virtual {v3}, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    iget-object v4, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mSwipePipToHomeAnimator:Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    .line 1797
    invoke-virtual {v4}, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->getDestinationBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget-object v5, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mSwipePipToHomeAnimator:Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    .line 1798
    invoke-virtual {v5}, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->getContentOverlay()Landroid/view/SurfaceControl;

    move-result-object v5

    .line 1794
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/quickstep/SystemUiProxy;->stopSwipePipToHome(ILandroid/content/ComponentName;Landroid/graphics/Rect;Landroid/view/SurfaceControl;)V

    .line 1799
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mSwipePipToHomeAnimator:Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    .line 1800
    invoke-virtual {v2}, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->getTaskId()I

    move-result v2

    iget-object v3, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mSwipePipToHomeAnimator:Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    .line 1801
    invoke-virtual {v3}, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->getFinishTransaction()Landroid/window/PictureInPictureSurfaceTransaction;

    move-result-object v3

    iget-object v4, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mSwipePipToHomeAnimator:Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    .line 1802
    invoke-virtual {v4}, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->getContentOverlay()Landroid/view/SurfaceControl;

    move-result-object v4

    .line 1799
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/quickstep/RecentsAnimationController;->setFinishTaskTransaction(ILandroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;)V

    .line 1803
    iput-boolean v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mIsSwipingPipToHome:Z

    goto :goto_1

    .line 1804
    :cond_0
    iget-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mIsSwipeForStagedSplit:Z

    if-eqz v0, :cond_1

    .line 1806
    new-instance v0, Landroid/window/PictureInPictureSurfaceTransaction$Builder;

    invoke-direct {v0}, Landroid/window/PictureInPictureSurfaceTransaction$Builder;-><init>()V

    const/4 v2, 0x0

    .line 1808
    invoke-virtual {v0, v2}, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->setAlpha(F)Landroid/window/PictureInPictureSurfaceTransaction$Builder;

    move-result-object v0

    .line 1809
    invoke-virtual {v0}, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->build()Landroid/window/PictureInPictureSurfaceTransaction;

    move-result-object v0

    .line 1810
    .local v0, "tx":Landroid/window/PictureInPictureSurfaceTransaction;
    sget-object v2, Lcom/android/quickstep/TopTaskTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v3, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/quickstep/TopTaskTracker;

    invoke-virtual {v2}, Lcom/android/quickstep/TopTaskTracker;->getRunningSplitTaskIds()[I

    move-result-object v2

    .line 1811
    .local v2, "taskIds":[I
    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget v4, v2, v1

    .line 1812
    .local v4, "taskId":I
    iget-object v5, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v0, v6}, Lcom/android/quickstep/RecentsAnimationController;->setFinishTaskTransaction(ILandroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;)V

    .line 1811
    .end local v4    # "taskId":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1816
    .end local v0    # "tx":Landroid/window/PictureInPictureSurfaceTransaction;
    .end local v2    # "taskIds":[I
    :cond_1
    :goto_1
    return-void
.end method

.method private maybeUpdateRecentsAttachedState()V
    .locals 1

    .line 628
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->maybeUpdateRecentsAttachedState(Z)V

    .line 629
    return-void
.end method

.method private maybeUpdateRecentsAttachedState(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .line 632
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->maybeUpdateRecentsAttachedState(ZZ)V

    .line 633
    return-void
.end method

.method private maybeUpdateRecentsAttachedState(ZZ)V
    .locals 6
    .param p1, "animate"    # Z
    .param p2, "moveFocusedTask"    # Z

    .line 645
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isFullyGesturalNavMode()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    if-eqz v0, :cond_1

    .line 649
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getRunningTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/RecentsAnimationTargets;->findTask(I)Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object v0

    goto :goto_0

    .line 650
    :cond_1
    const/4 v0, 0x0

    :goto_0
    nop

    .line 652
    .local v0, "runningTaskTarget":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 653
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->recentsAttachedToAppWindow:Z

    .local v1, "recentsAttachedToAppWindow":Z
    goto :goto_2

    .line 654
    .end local v1    # "recentsAttachedToAppWindow":Z
    :cond_2
    iget-boolean v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mContinuingLastGesture:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 655
    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskIndex()I

    move-result v1

    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v2}, Lcom/android/quickstep/views/RecentsView;->getNextPage()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 656
    const/4 v1, 0x1

    .restart local v1    # "recentsAttachedToAppWindow":Z
    goto :goto_2

    .line 657
    .end local v1    # "recentsAttachedToAppWindow":Z
    :cond_3
    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->isNotInRecents(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 659
    const/4 v1, 0x1

    .restart local v1    # "recentsAttachedToAppWindow":Z
    goto :goto_2

    .line 661
    .end local v1    # "recentsAttachedToAppWindow":Z
    :cond_4
    iget-boolean v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mHasMotionEverBeenPaused:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mIsLikelyToStartNewTask:Z

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v1, 0x1

    .line 663
    .restart local v1    # "recentsAttachedToAppWindow":Z
    :goto_2
    if-eqz p2, :cond_7

    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mAnimationFactory:Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;

    invoke-interface {v2}, Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;->hasRecentsEverAttachedToAppWindow()Z

    move-result v2

    if-nez v2, :cond_7

    if-eqz v1, :cond_7

    .line 667
    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v2}, Lcom/android/quickstep/views/RecentsView;->moveFocusedTaskToFront()V

    .line 669
    :cond_7
    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mAnimationFactory:Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;

    invoke-interface {v2, v1, p1}, Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;->setRecentsAttachedToAppWindow(ZZ)V

    .line 673
    if-eqz p1, :cond_8

    .line 674
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 675
    .local v2, "reapplyWindowTransformAnim":Landroid/animation/ValueAnimator;
    new-instance v3, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda55;

    invoke-direct {v3, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda55;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 680
    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 681
    iget-object v3, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v4, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_HANDLER_INVALIDATED:I

    .line 682
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda56;

    invoke-direct {v5, v2}, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda56;-><init>(Landroid/animation/ValueAnimator;)V

    .line 681
    invoke-virtual {v3, v4, v5}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    .line 683
    .end local v2    # "reapplyWindowTransformAnim":Landroid/animation/ValueAnimator;
    goto :goto_3

    .line 684
    :cond_8
    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->applyScrollAndTransform()V

    .line 686
    :goto_3
    return-void

    .line 646
    .end local v0    # "runningTaskTarget":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .end local v1    # "recentsAttachedToAppWindow":Z
    :cond_9
    :goto_4
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private notifyGestureStartedAsync()V
    .locals 3

    .line 906
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    .line 907
    .local v0, "curActivity":Lcom/android/launcher3/statemanager/StatefulActivity;, "TT;"
    if-eqz v0, :cond_0

    .line 910
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->clearForceInvisibleFlag(I)V

    .line 912
    :cond_0
    return-void
.end method

.method private onAnimatorPlaybackControllerCreated(Lcom/android/quickstep/util/AnimatorControllerWithResistance;)V
    .locals 4
    .param p1, "anim"    # Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    .line 727
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 728
    .local v0, "isFirstCreation":Z
    :goto_0
    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    .line 729
    if-eqz v0, :cond_1

    .line 730
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v2, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_GESTURE_STARTED:I

    new-instance v3, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda47;

    invoke-direct {v3, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda47;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    .line 738
    :cond_1
    return-void
.end method

.method private onDeferredActivityLaunch()V
    .locals 3

    .line 563
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda44;

    invoke-direct {v2, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda44;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/BaseActivityInterface;->switchRunningTaskViewToScreenshot(Ljava/util/HashMap;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/TaskAnimationManager;->finishRunningRecentsAnimation(Z)V

    .line 571
    :goto_0
    return-void
.end method

.method private onLauncherBindToService()V
    .locals 2

    .line 538
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_LAUNCHER_BIND_TO_SERVICE:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    .line 539
    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->flushOnRecentsAnimationAndLauncherBound()V

    .line 540
    return-void
.end method

.method private onLauncherPresentAndGestureStarted()V
    .locals 3

    .line 545
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->setupRecentsViewUi()V

    .line 549
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mOnDeferredActivityLaunch:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/BaseActivityInterface;->setOnDeferredActivityLaunchCallback(Ljava/lang/Runnable;)V

    .line 552
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureState:Lcom/android/quickstep/GestureState;

    sget v1, Lcom/android/quickstep/GestureState;->STATE_END_TARGET_SET:I

    new-instance v2, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda54;

    invoke-direct {v2, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda54;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/GestureState;->runOnceAtState(ILjava/lang/Runnable;)V

    .line 559
    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->notifyGestureStartedAsync()V

    .line 560
    return-void
.end method

.method private onLauncherStart()V
    .locals 5

    .line 469
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v0

    .line 470
    .local v0, "activity":Lcom/android/launcher3/statemanager/StatefulActivity;, "TT;"
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-eq v1, v0, :cond_0

    .line 471
    return-void

    .line 473
    :cond_0
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v2, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_HANDLER_INVALIDATED:I

    invoke-virtual {v1, v2}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 474
    return-void

    .line 478
    :cond_1
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->updateRecentsRotation()V

    .line 479
    new-instance v1, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda41;

    invoke-direct {v1, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda41;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {p0, v1}, Lcom/android/quickstep/AbsSwipeUpHandler;->runActionOnRemoteHandles(Ljava/util/function/Consumer;)V

    .line 484
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v1

    sget-object v2, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eq v1, v2, :cond_3

    .line 485
    new-instance v1, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda42;

    invoke-direct {v1, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda42;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    .line 494
    .local v1, "initAnimFactory":Ljava/lang/Runnable;
    iget-boolean v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mWasLauncherAlreadyVisible:Z

    if-eqz v2, :cond_2

    .line 498
    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v3, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_GESTURE_STARTED:I

    invoke-virtual {v2, v3, v1}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    goto :goto_0

    .line 500
    :cond_2
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 503
    .end local v1    # "initAnimFactory":Ljava/lang/Runnable;
    :cond_3
    :goto_0
    iget-boolean v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mWasLauncherAlreadyVisible:Z

    const/16 v2, 0x100

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViewsExcept(Lcom/android/launcher3/views/ActivityContext;ZI)V

    .line 506
    iget-boolean v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mWasLauncherAlreadyVisible:Z

    if-eqz v1, :cond_4

    .line 507
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v2, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_LAUNCHER_DRAWN:I

    invoke-virtual {v1, v2}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    goto :goto_1

    .line 509
    :cond_4
    sget-object v1, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string v2, "WTS-init"

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 510
    .local v1, "traceToken":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v2

    .line 511
    .local v2, "dragLayer":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Lcom/android/quickstep/AbsSwipeUpHandler$2;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/android/quickstep/AbsSwipeUpHandler$2;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;Ljava/lang/Object;Landroid/view/View;Lcom/android/launcher3/statemanager/StatefulActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 533
    .end local v1    # "traceToken":Ljava/lang/Object;
    .end local v2    # "dragLayer":Landroid/view/View;
    :goto_1
    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/launcher3/LauncherRootView;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 534
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v2, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_LAUNCHER_STARTED:I

    invoke-virtual {v1, v2}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    .line 535
    return-void
.end method

.method private onRecentsViewScroll()V
    .locals 1

    .line 1881
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->moveWindowWithRecentsScroll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1882
    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->updateFinalShift()V

    .line 1884
    :cond_0
    return-void
.end method

.method private onSettledOnEndTarget()V
    .locals 5

    .line 977
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->maybeUpdateRecentsAttachedState(Z)V

    .line 978
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    .line 980
    .local v0, "endTarget":Lcom/android/quickstep/GestureState$GestureEndTarget;
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v1, v0}, Lcom/android/quickstep/BaseActivityInterface;->onSettledOnEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;)Landroid/view/View;

    move-result-object v1

    .line 982
    .local v1, "postResumeLastTask":Landroid/view/View;
    sget-object v2, Lcom/android/quickstep/GestureState$GestureEndTarget;->NEW_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eq v0, v2, :cond_0

    .line 983
    const/16 v2, 0xb

    invoke-static {v2}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->cancel(I)V

    .line 986
    :cond_0
    sget-object v2, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eq v0, v2, :cond_1

    .line 987
    const/16 v2, 0x9

    invoke-static {v2}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->cancel(I)V

    .line 991
    :cond_1
    sget-object v2, Lcom/android/quickstep/AbsSwipeUpHandler$11;->$SwitchMap$com$android$quickstep$GestureState$GestureEndTarget:[I

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState$GestureEndTarget;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 1005
    :pswitch_0
    if-eqz v1, :cond_2

    .line 1006
    new-instance v2, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda43;

    invoke-direct {v2, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda43;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-static {v1, v2}, Lcom/android/quickstep/ViewUtils;->postFrameDrawn(Landroid/view/View;Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1009
    :cond_2
    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v3, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_RESUME_LAST_TASK:I

    invoke-virtual {v2, v3}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    .line 1011
    :goto_0
    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    if-eqz v2, :cond_3

    .line 1012
    const/4 v2, 0x1

    invoke-direct {p0, v2, v2}, Lcom/android/quickstep/AbsSwipeUpHandler;->setDividerShown(ZZ)V

    goto :goto_1

    .line 1002
    :pswitch_1
    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v3, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_START_NEW_TASK:I

    sget v4, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_CAPTURE_SCREENSHOT:I

    or-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    .line 1003
    goto :goto_1

    .line 998
    :pswitch_2
    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v3, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_SCALED_CONTROLLER_RECENTS:I

    sget v4, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_CAPTURE_SCREENSHOT:I

    or-int/2addr v3, v4

    sget v4, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_SCREENSHOT_VIEW_SHOWN:I

    or-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    .line 1000
    goto :goto_1

    .line 993
    :pswitch_3
    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v3, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_SCALED_CONTROLLER_HOME:I

    sget v4, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_CAPTURE_SCREENSHOT:I

    or-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    .line 995
    sget-object v2, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v3, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v2}, Lcom/android/quickstep/SystemUiProxy;->notifySwipeToHomeFinished()V

    .line 996
    nop

    .line 1016
    :cond_3
    :goto_1
    sget-object v2, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSettledOnEndTarget "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/quickstep/util/ActiveGestureLog;->addLog(Ljava/lang/String;)V

    .line 1017
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private reset()V
    .locals 2

    .line 1606
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_HANDLER_INVALIDATED:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/MultiStateCallback;->setStateOnUiThread(I)V

    .line 1607
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-eqz v0, :cond_0

    .line 1608
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLifecycleCallbacks:Lcom/android/launcher3/util/ActivityLifecycleCallbacksAdapter;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 1610
    :cond_0
    return-void
.end method

.method private resetLauncherListeners()V
    .locals 2

    .line 1675
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1676
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/BaseActivityInterface;->setOnDeferredActivityLaunchCallback(Ljava/lang/Runnable;)V

    .line 1678
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherRootView;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 1680
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mOnRecentsScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/RecentsView;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 1681
    return-void
.end method

.method private resetStateForAnimationCancel()V
    .locals 4

    .line 1684
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mWasLauncherAlreadyVisible:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureStarted:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 1685
    .local v0, "wasVisible":Z
    :goto_1
    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    iget-object v3, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v3}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/android/quickstep/BaseActivityInterface;->onTransitionCancelled(ZLcom/android/quickstep/GestureState$GestureEndTarget;)V

    .line 1687
    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    if-eqz v2, :cond_2

    .line 1688
    invoke-direct {p0, v1, v1}, Lcom/android/quickstep/AbsSwipeUpHandler;->setDividerShown(ZZ)V

    .line 1692
    :cond_2
    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-eqz v2, :cond_3

    .line 1693
    invoke-virtual {v2, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->clearForceInvisibleFlag(I)V

    .line 1695
    :cond_3
    return-void
.end method

.method private resumeLastTask()V
    .locals 4

    .line 1566
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1567
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/quickstep/RecentsAnimationController;->finish(ZLjava/lang/Runnable;)V

    .line 1568
    sget-object v0, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    const-string v3, "finishRecentsAnimation"

    invoke-virtual {v0, v3, v2}, Lcom/android/quickstep/util/ActiveGestureLog;->addLog(Ljava/lang/String;Z)V

    .line 1570
    :cond_0
    sget-object v0, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    invoke-direct {p0, v0, v1}, Lcom/android/quickstep/AbsSwipeUpHandler;->doLogGesture(Lcom/android/quickstep/GestureState$GestureEndTarget;Lcom/android/quickstep/views/TaskView;)V

    .line 1571
    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->reset()V

    .line 1572
    return-void
.end method

.method private runOnRecentsAnimationAndLauncherBound(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/Runnable;

    .line 1937
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationStartCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1938
    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->flushOnRecentsAnimationAndLauncherBound()V

    .line 1939
    return-void
.end method

.method private setDividerShown(ZZ)V
    .locals 2
    .param p1, "shown"    # Z
    .param p2, "immediate"    # Z

    .line 2074
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mDividerAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 2075
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2077
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    iget-object v0, v0, Lcom/android/quickstep/RecentsAnimationTargets;->nonApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    new-instance v1, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda11;

    invoke-direct {v1, p2}, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda11;-><init>(Z)V

    invoke-static {v0, p1, v1}, Lcom/android/quickstep/TaskViewUtils;->createSplitAuxiliarySurfacesAnimator([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;ZLjava/util/function/Consumer;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mDividerAnimator:Landroid/animation/ValueAnimator;

    .line 2084
    return-void
.end method

.method private setIsLikelyToStartNewTask(ZZ)V
    .locals 1
    .param p1, "isLikelyToStartNewTask"    # Z
    .param p2, "animate"    # Z

    .line 693
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mIsLikelyToStartNewTask:Z

    if-eq v0, p1, :cond_0

    .line 694
    iput-boolean p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mIsLikelyToStartNewTask:Z

    .line 695
    invoke-direct {p0, p2}, Lcom/android/quickstep/AbsSwipeUpHandler;->maybeUpdateRecentsAttachedState(Z)V

    .line 697
    :cond_0
    return-void
.end method

.method private setScreenshotCapturedState()V
    .locals 3

    .line 1752
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string v1, "ScreenshotCaptured"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    .line 1754
    .local v0, "traceToken":Ljava/lang/Object;
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v2, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_SCREENSHOT_CAPTURED:I

    invoke-virtual {v1, v2}, Lcom/android/quickstep/MultiStateCallback;->setStateOnUiThread(I)V

    .line 1755
    sget-object v1, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    .line 1756
    return-void
.end method

.method private setupLauncherUiAfterSwipeUpToRecentsAnimation()V
    .locals 3

    .line 1821
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_HANDLER_INVALIDATED:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1822
    return-void

    .line 1824
    :cond_0
    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->endLauncherTransitionController()V

    .line 1825
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->onSwipeUpAnimationSuccess()V

    .line 1826
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1827
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    new-instance v1, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda46;

    invoke-direct {v1, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda46;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/TaskAnimationManager;->setLiveTileCleanUpHandler(Ljava/lang/Runnable;)V

    .line 1831
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    invoke-virtual {v0}, Lcom/android/quickstep/TaskAnimationManager;->enableLiveTileRestartListener()V

    .line 1834
    :cond_1
    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    const/4 v1, 0x0

    const-string v2, "AbsSwipeUpHandler"

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/SystemUiProxy;->onOverviewShown(ZLjava/lang/String;)V

    .line 1835
    sget-object v0, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->getCurrentPageTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/quickstep/AbsSwipeUpHandler;->doLogGesture(Lcom/android/quickstep/GestureState$GestureEndTarget;Lcom/android/quickstep/views/TaskView;)V

    .line 1836
    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->reset()V

    .line 1837
    return-void
.end method

.method private setupRecentsViewUi()V
    .locals 1

    .line 574
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mContinuingLastGesture:Z

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    iget v0, v0, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-direct {p0, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->updateSysUiFlags(F)V

    .line 576
    return-void

    .line 578
    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->notifyGestureAnimationStartToRecents()V

    .line 579
    return-void
.end method

.method private setupWindowAnimation([Lcom/android/quickstep/util/RectFSpringAnim;)V
    .locals 3
    .param p1, "anims"    # [Lcom/android/quickstep/util/RectFSpringAnim;

    .line 1524
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    const/4 v0, 0x0

    aget-object v1, p1, v0

    new-instance v2, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda30;

    invoke-direct {v2, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda30;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v1, v2}, Lcom/android/quickstep/util/RectFSpringAnim;->addOnUpdateListener(Lcom/android/quickstep/util/RectFSpringAnim$OnUpdateListener;)V

    .line 1527
    aget-object v1, p1, v0

    new-instance v2, Lcom/android/quickstep/AbsSwipeUpHandler$10;

    invoke-direct {v2, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$10;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v1, v2}, Lcom/android/quickstep/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1538
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    if-eqz v1, :cond_0

    .line 1539
    aget-object v0, p1, v0

    invoke-virtual {v1, v0}, Lcom/android/quickstep/RecentsAnimationTargets;->addReleaseCheck(Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;)V

    .line 1541
    :cond_0
    return-void
.end method

.method private startInterceptingTouchesForGesture()V
    .locals 2

    .line 1482
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-nez v0, :cond_0

    .line 1483
    return-void

    .line 1486
    :cond_0
    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationController;->enableInputConsumer()V

    .line 1489
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/quickstep/AbsSwipeUpHandler;->setDividerShown(ZZ)V

    .line 1490
    return-void
.end method

.method private startNewTask()V
    .locals 2

    .line 1576
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getNextPageTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    .line 1577
    .local v0, "taskToLaunch":Lcom/android/quickstep/views/TaskView;
    :goto_0
    new-instance v1, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, v0}, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda12;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;Lcom/android/quickstep/views/TaskView;)V

    invoke-virtual {p0, v1}, Lcom/android/quickstep/AbsSwipeUpHandler;->startNewTask(Ljava/util/function/Consumer;)V

    .line 1587
    return-void
.end method

.method private updateLauncherTransitionProgress()V
    .locals 3

    .line 765
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    if-eqz v0, :cond_1

    .line 766
    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->canCreateNewOrUpdateExistingLauncherTransitionController()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 769
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    iget v1, v1, Lcom/android/quickstep/AnimatedFloat;->value:F

    .line 770
    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->getScaleProgressDueToScroll()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mDragLengthFactor:F

    .line 769
    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->setProgress(FF)V

    .line 771
    return-void

    .line 767
    :cond_1
    :goto_0
    return-void
.end method

.method private updateSysUiFlags(F)V
    .locals 8
    .param p1, "windowProgress"    # F

    .line 777
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v0, :cond_6

    .line 778
    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    .line 779
    .local v0, "runningTask":Lcom/android/quickstep/views/TaskView;
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewNearestToCenterOfScreen()Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    .line 780
    .local v1, "centermostTask":Lcom/android/quickstep/views/TaskView;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v3, v2

    goto :goto_0

    .line 781
    :cond_0
    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->getThumbnail()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskThumbnailView;->getSysUiStatusNavFlags()I

    move-result v3

    :goto_0
    nop

    .line 782
    .local v3, "centermostTaskFlags":I
    const v4, 0x3e199998    # 0.14999998f

    cmpl-float v4, p1, v4

    const/4 v5, 0x1

    if-lez v4, :cond_1

    move v4, v5

    goto :goto_1

    :cond_1
    move v4, v2

    .line 783
    .local v4, "swipeUpThresholdPassed":Z
    :goto_1
    if-eq v1, v0, :cond_2

    move v6, v5

    goto :goto_2

    :cond_2
    move v6, v2

    .line 786
    .local v6, "quickswitchThresholdPassed":Z
    :goto_2
    iget-object v7, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-nez v4, :cond_4

    if-eqz v6, :cond_3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    move v5, v2

    :cond_4
    :goto_3
    invoke-virtual {v7, v5}, Lcom/android/quickstep/RecentsAnimationController;->setUseLauncherSystemBarFlags(Z)V

    .line 788
    iget-object v5, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    iget-object v7, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7, v4}, Lcom/android/quickstep/RecentsAnimationController;->setSplitScreenMinimized(Landroid/content/Context;Z)V

    .line 791
    iget-object v5, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    invoke-virtual {v5, v4}, Lcom/android/quickstep/RecentsAnimationController;->setWillFinishToHome(Z)V

    .line 793
    const/4 v5, 0x3

    if-eqz v4, :cond_5

    .line 794
    iget-object v7, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v7}, Lcom/android/launcher3/statemanager/StatefulActivity;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    move-result-object v7

    invoke-virtual {v7, v5, v2}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(II)V

    goto :goto_4

    .line 796
    :cond_5
    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    move-result-object v2

    invoke-virtual {v2, v5, v3}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(II)V

    .line 800
    .end local v0    # "runningTask":Lcom/android/quickstep/views/TaskView;
    .end local v1    # "centermostTask":Lcom/android/quickstep/views/TaskView;
    .end local v3    # "centermostTaskFlags":I
    .end local v4    # "swipeUpThresholdPassed":Z
    .end local v6    # "quickswitchThresholdPassed":Z
    :cond_6
    :goto_4
    return-void
.end method

.method private updateThumbnail(IZ)Z
    .locals 4
    .param p1, "runningTaskId"    # I
    .param p2, "refreshView"    # Z

    .line 1731
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    const/4 v0, 0x0

    .line 1733
    .local v0, "finishTransitionPosted":Z
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v1

    sget-object v2, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v1

    sget-object v2, Lcom/android/quickstep/GestureState$GestureEndTarget;->NEW_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 1738
    :cond_0
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskSnapshot:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-virtual {v1, p1, v2, p2}, Lcom/android/quickstep/views/RecentsView;->updateThumbnail(ILcom/android/systemui/shared/recents/model/ThumbnailData;Z)Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    .local v1, "taskView":Lcom/android/quickstep/views/TaskView;
    goto :goto_1

    .line 1736
    .end local v1    # "taskView":Lcom/android/quickstep/views/TaskView;
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 1740
    .restart local v1    # "taskView":Lcom/android/quickstep/views/TaskView;
    :goto_1
    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    iget-boolean v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mCanceled:Z

    if-nez v2, :cond_2

    .line 1743
    new-instance v2, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda49;

    invoke-direct {v2, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda49;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    new-instance v3, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda50;

    invoke-direct {v3, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda50;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-static {v1, v2, v3}, Lcom/android/quickstep/ViewUtils;->postFrameDrawn(Landroid/view/View;Ljava/lang/Runnable;Ljava/util/function/BooleanSupplier;)Z

    move-result v0

    .line 1747
    :cond_2
    return v0
.end method


# virtual methods
.method protected applyScrollAndTransform()V
    .locals 9

    .line 2022
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureState:Lcom/android/quickstep/GestureState;

    .line 2023
    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    sget-object v3, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eq v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2024
    .local v0, "notSwipingToHome":Z
    :goto_0
    iget-boolean v3, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsViewScrollLinked:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 2025
    .local v1, "setRecentsScroll":Z
    :goto_1
    iget-object v3, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    array-length v4, v3

    :goto_2
    if-ge v2, v4, :cond_5

    aget-object v5, v3, v2

    .line 2026
    .local v5, "remoteHandle":Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    nop

    .line 2027
    invoke-virtual {v5}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getPlaybackController()Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    move-result-object v6

    .line 2028
    .local v6, "playbackController":Lcom/android/quickstep/util/AnimatorControllerWithResistance;
    if-eqz v6, :cond_2

    .line 2029
    iget-object v7, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    iget v7, v7, Lcom/android/quickstep/AnimatedFloat;->value:F

    .line 2030
    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->getScaleProgressDueToScroll()F

    move-result v8

    .line 2029
    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iget v8, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mDragLengthFactor:F

    invoke-virtual {v6, v7, v8}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->setProgress(FF)V

    .line 2033
    :cond_2
    if-eqz v0, :cond_4

    .line 2034
    invoke-virtual {v5}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v7

    .line 2035
    .local v7, "taskViewSimulator":Lcom/android/quickstep/util/TaskViewSimulator;
    if-eqz v1, :cond_3

    .line 2036
    iget-object v8, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v8}, Lcom/android/quickstep/views/RecentsView;->getScrollOffset()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Lcom/android/quickstep/util/TaskViewSimulator;->setScroll(F)V

    .line 2038
    :cond_3
    invoke-virtual {v5}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/quickstep/util/TaskViewSimulator;->apply(Lcom/android/quickstep/util/TransformParams;)V

    .line 2025
    .end local v5    # "remoteHandle":Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    .end local v6    # "playbackController":Lcom/android/quickstep/util/AnimatorControllerWithResistance;
    .end local v7    # "taskViewSimulator":Lcom/android/quickstep/util/TaskViewSimulator;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2041
    :cond_5
    sget-object v2, Lcom/android/quickstep/util/ProtoTracer;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v3, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/quickstep/util/ProtoTracer;

    invoke-virtual {v2}, Lcom/android/quickstep/util/ProtoTracer;->scheduleFrameUpdate()V

    .line 2042
    return-void
.end method

.method protected abstract createHomeAnimationFactory(Ljava/util/ArrayList;JZZLcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/os/IBinder;",
            ">;JZZ",
            "Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;",
            ")",
            "Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;"
        }
    .end annotation
.end method

.method protected createWindowAnimationToHome(FLcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;)[Lcom/android/quickstep/util/RectFSpringAnim;
    .locals 1
    .param p1, "startProgress"    # F
    .param p2, "homeAnimationFactory"    # Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;

    .line 1517
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    nop

    .line 1518
    invoke-super {p0, p1, p2}, Lcom/android/quickstep/SwipeUpAnimationLogic;->createWindowAnimationToHome(FLcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;)[Lcom/android/quickstep/util/RectFSpringAnim;

    move-result-object v0

    .line 1519
    .local v0, "anim":[Lcom/android/quickstep/util/RectFSpringAnim;
    invoke-direct {p0, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->setupWindowAnimation([Lcom/android/quickstep/util/RectFSpringAnim;)V

    .line 1520
    return-object v0
.end method

.method protected abstract finishRecentsControllerToHome(Ljava/lang/Runnable;)V
.end method

.method protected getLastAppearedTaskIndex()I
    .locals 2

    .line 1992
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getLastAppearedTaskId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1993
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getLastAppearedTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/RecentsView;->getTaskIndexForId(I)I

    move-result v0

    goto :goto_0

    .line 1994
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskIndex()I

    move-result v0

    .line 1992
    :goto_0
    return v0
.end method

.method public getLaunchIntent()Landroid/content/Intent;
    .locals 1

    .line 741
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getOverviewIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getMotionPauseListener()Lcom/android/quickstep/util/MotionPauseDetector$OnMotionPauseListener;
    .locals 1

    .line 612
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    new-instance v0, Lcom/android/quickstep/AbsSwipeUpHandler$3;

    invoke-direct {v0, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$3;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    return-object v0
.end method

.method public getRecentsViewDispatcher(F)Ljava/util/function/Consumer;
    .locals 1
    .param p1, "navbarRotation"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Ljava/util/function/Consumer<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation

    .line 1858
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/quickstep/views/RecentsView;->getEventDispatcher(F)Ljava/util/function/Consumer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected handleTaskAppeared([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z
    .locals 4
    .param p1, "appearedTaskTarget"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    .line 1021
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_HANDLER_INVALIDATED:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1022
    return v1

    .line 1024
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda48;

    invoke-direct {v2, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda48;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 1026
    .local v0, "hasStartedTaskBefore":Z
    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v3, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_START_NEW_TASK:I

    invoke-virtual {v2, v3}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 1027
    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->reset()V

    .line 1028
    const/4 v1, 0x1

    return v1

    .line 1030
    :cond_1
    return v1
.end method

.method protected hasStartedNewTask()Z
    .locals 2

    .line 2002
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getLastStartedTaskId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected hasTargets()Z
    .locals 1

    .line 1960
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationTargets;->hasTargets()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected initAfterSubclassConstructor()V
    .locals 2

    .line 1849
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v0

    .line 1850
    invoke-virtual {v0}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/util/RecentsOrientedState;->getLauncherDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 1849
    invoke-virtual {p0, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->initTransitionEndpoints(Lcom/android/launcher3/DeviceProfile;)V

    .line 1851
    return-void
.end method

.method public initWhenReady()V
    .locals 2

    .line 2010
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    sget-object v0, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/RecentsModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quickstep/RecentsModel;->getTasks(Ljava/util/function/Consumer;)I

    .line 2012
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInitListener:Lcom/android/quickstep/util/ActivityInitListener;

    invoke-virtual {v0}, Lcom/android/quickstep/util/ActivityInitListener;->register()V

    .line 2013
    return-void
.end method

.method public isCanceled()Z
    .locals 1

    .line 1561
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mCanceled:Z

    return v0
.end method

.method synthetic lambda$animateToProgress$16$com-android-quickstep-AbsSwipeUpHandler(FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;)V
    .locals 0
    .param p1, "start"    # F
    .param p2, "end"    # F
    .param p3, "duration"    # J
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p6, "target"    # Lcom/android/quickstep/GestureState$GestureEndTarget;
    .param p7, "velocityPxPerMs"    # Landroid/graphics/PointF;

    .line 1233
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    invoke-direct/range {p0 .. p7}, Lcom/android/quickstep/AbsSwipeUpHandler;->animateToProgressInternal(FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;)V

    return-void
.end method

.method synthetic lambda$animateToProgressInternal$17$com-android-quickstep-AbsSwipeUpHandler(Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .line 1346
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->computeRecentsScrollIfInvisible()V

    .line 1347
    return-void
.end method

.method synthetic lambda$endLauncherTransitionController$20$com-android-quickstep-AbsSwipeUpHandler(F)F
    .locals 3
    .param p1, "t"    # F

    .line 1659
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    iget v0, v0, Lcom/android/quickstep/AnimatedFloat;->value:F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v0

    return v0
.end method

.method synthetic lambda$finishCurrentTransitionToHome$25$com-android-quickstep-AbsSwipeUpHandler()V
    .locals 2

    .line 1781
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_CURRENT_TASK_FINISHED:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/MultiStateCallback;->setStateOnUiThread(I)V

    return-void
.end method

.method synthetic lambda$finishCurrentTransitionToRecents$24$com-android-quickstep-AbsSwipeUpHandler()V
    .locals 2

    .line 1769
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_CURRENT_TASK_FINISHED:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/MultiStateCallback;->setStateOnUiThread(I)V

    return-void
.end method

.method synthetic lambda$handleNormalGestureEnd$15$com-android-quickstep-AbsSwipeUpHandler()V
    .locals 2

    .line 1185
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureState:Lcom/android/quickstep/GestureState;

    sget v1, Lcom/android/quickstep/GestureState;->STATE_RECENTS_SCROLLING_FINISHED:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/GestureState;->setState(I)V

    return-void
.end method

.method synthetic lambda$handleTaskAppeared$14$com-android-quickstep-AbsSwipeUpHandler(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z
    .locals 2
    .param p1, "targetCompat"    # Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    .line 1025
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget v0, p1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getLastStartedTaskId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$initStateCallbacks$3$com-android-quickstep-AbsSwipeUpHandler(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "b"    # Ljava/lang/Boolean;

    .line 384
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/RecentsView;->setRunningTaskHidden(Z)V

    return-void
.end method

.method synthetic lambda$linkRecentsViewScroll$28$com-android-quickstep-AbsSwipeUpHandler(Lcom/android/quickstep/util/SurfaceTransactionApplier;)V
    .locals 1
    .param p1, "applier"    # Lcom/android/quickstep/util/SurfaceTransactionApplier;

    .line 1870
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/RecentsAnimationTargets;->addReleaseCheck(Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;)V

    return-void
.end method

.method synthetic lambda$linkRecentsViewScroll$29$com-android-quickstep-AbsSwipeUpHandler(Lcom/android/quickstep/util/SurfaceTransactionApplier;)V
    .locals 1
    .param p1, "applier"    # Lcom/android/quickstep/util/SurfaceTransactionApplier;

    .line 1867
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    new-instance v0, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda32;

    invoke-direct {v0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda32;-><init>(Lcom/android/quickstep/util/SurfaceTransactionApplier;)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->runActionOnRemoteHandles(Ljava/util/function/Consumer;)V

    .line 1869
    new-instance v0, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda33;

    invoke-direct {v0, p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda33;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;Lcom/android/quickstep/util/SurfaceTransactionApplier;)V

    invoke-direct {p0, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->runOnRecentsAnimationAndLauncherBound(Ljava/lang/Runnable;)V

    .line 1871
    return-void
.end method

.method synthetic lambda$linkRecentsViewScroll$30$com-android-quickstep-AbsSwipeUpHandler()V
    .locals 3

    .line 1875
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/views/RecentsView;->setRecentsAnimationTargets(Lcom/android/quickstep/RecentsAnimationController;Lcom/android/quickstep/RecentsAnimationTargets;)V

    return-void
.end method

.method synthetic lambda$maybeUpdateRecentsAttachedState$10$com-android-quickstep-AbsSwipeUpHandler(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "anim"    # Landroid/animation/ValueAnimator;

    .line 676
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRunningWindowAnim:[Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    if-eqz v0, :cond_0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 677
    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->applyScrollAndTransform()V

    .line 679
    :cond_1
    return-void
.end method

.method synthetic lambda$new$1$com-android-quickstep-AbsSwipeUpHandler()Ljava/lang/Integer;
    .locals 1

    .line 311
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getPagedViewOrientedState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/util/RecentsOrientedState;->getRecentsActivityRotation()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$new$2$com-android-quickstep-AbsSwipeUpHandler()V
    .locals 2

    .line 313
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->endRunningWindowAnim(Z)V

    .line 314
    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->endLauncherTransitionController()V

    .line 315
    return-void
.end method

.method synthetic lambda$onActivityInit$4$com-android-quickstep-AbsSwipeUpHandler()V
    .locals 1

    .line 442
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz v0, :cond_0

    .line 443
    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationController;->cleanupScreenshot()V

    goto :goto_0

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mDeferredCleanupRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz v0, :cond_1

    .line 445
    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationController;->cleanupScreenshot()V

    .line 446
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mDeferredCleanupRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    .line 448
    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$onActivityInit$5$com-android-quickstep-AbsSwipeUpHandler()V
    .locals 3

    .line 438
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureState:Lcom/android/quickstep/GestureState;

    .line 439
    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->consumeRecentsAnimationCanceledSnapshot()Ljava/util/HashMap;

    move-result-object v0

    .line 440
    .local v0, "snapshots":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/systemui/shared/recents/model/ThumbnailData;>;"
    if-eqz v0, :cond_0

    .line 441
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    new-instance v2, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda45;

    invoke-direct {v2, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda45;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/quickstep/views/RecentsView;->switchToScreenshot(Ljava/util/HashMap;Ljava/lang/Runnable;)V

    .line 449
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->onRecentsAnimationComplete()V

    .line 451
    :cond_0
    return-void
.end method

.method synthetic lambda$onAnimatorPlaybackControllerCreated$11$com-android-quickstep-AbsSwipeUpHandler()V
    .locals 1

    .line 734
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    invoke-virtual {v0}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->getNormalController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnStart()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 735
    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->updateLauncherTransitionProgress()V

    .line 736
    return-void
.end method

.method synthetic lambda$onDeferredActivityLaunch$9$com-android-quickstep-AbsSwipeUpHandler()V
    .locals 2

    .line 566
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/TaskAnimationManager;->finishRunningRecentsAnimation(Z)V

    .line 567
    return-void
.end method

.method synthetic lambda$onGestureEnded$12$com-android-quickstep-AbsSwipeUpHandler(FZLandroid/graphics/PointF;)V
    .locals 1
    .param p1, "endVelocity"    # F
    .param p2, "isFling"    # Z
    .param p3, "velocity"    # Landroid/graphics/PointF;

    .line 944
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->handleNormalGestureEnd(FZLandroid/graphics/PointF;Z)V

    return-void
.end method

.method synthetic lambda$onLauncherPresentAndGestureStarted$8$com-android-quickstep-AbsSwipeUpHandler()V
    .locals 3

    .line 554
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureState:Lcom/android/quickstep/GestureState;

    .line 555
    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/RotationTouchHelper;->onEndTargetCalculated(Lcom/android/quickstep/GestureState$GestureEndTarget;Lcom/android/quickstep/BaseActivityInterface;)V

    .line 557
    return-void
.end method

.method synthetic lambda$onLauncherStart$6$com-android-quickstep-AbsSwipeUpHandler(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 2
    .param p1, "remoteTargetHandle"    # Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    .line 479
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    invoke-virtual {p1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 480
    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->getPagedViewOrientedState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/TaskViewSimulator;->setOrientationState(Lcom/android/quickstep/util/RecentsOrientedState;)V

    .line 479
    return-void
.end method

.method synthetic lambda$onLauncherStart$7$com-android-quickstep-AbsSwipeUpHandler()V
    .locals 4

    .line 486
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    iget-boolean v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mWasLauncherAlreadyVisible:Z

    new-instance v3, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda51;

    invoke-direct {v3, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda51;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/quickstep/BaseActivityInterface;->prepareRecentsUI(Lcom/android/quickstep/RecentsAnimationDeviceState;ZLjava/util/function/Consumer;)Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mAnimationFactory:Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;

    .line 488
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->maybeUpdateRecentsAttachedState(Z)V

    .line 489
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mAnimationFactory:Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;->setEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;)V

    .line 493
    :cond_0
    return-void
.end method

.method synthetic lambda$onSettledOnEndTarget$13$com-android-quickstep-AbsSwipeUpHandler()V
    .locals 2

    .line 1007
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_RESUME_LAST_TASK:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    return-void
.end method

.method synthetic lambda$setupLauncherUiAfterSwipeUpToRecentsAnimation$26$com-android-quickstep-AbsSwipeUpHandler()V
    .locals 1

    .line 1828
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->cleanupRemoteTargets()V

    .line 1829
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mInputConsumerProxy:Lcom/android/quickstep/util/InputConsumerProxy;

    invoke-virtual {v0}, Lcom/android/quickstep/util/InputConsumerProxy;->destroy()V

    .line 1830
    return-void
.end method

.method synthetic lambda$setupWindowAnimation$18$com-android-quickstep-AbsSwipeUpHandler(Landroid/graphics/RectF;F)V
    .locals 1
    .param p1, "r"    # Landroid/graphics/RectF;
    .param p2, "p"    # F

    .line 1525
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    iget v0, v0, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->updateSysUiFlags(F)V

    .line 1526
    return-void
.end method

.method synthetic lambda$startNewTask$19$com-android-quickstep-AbsSwipeUpHandler(Lcom/android/quickstep/views/TaskView;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "taskToLaunch"    # Lcom/android/quickstep/views/TaskView;
    .param p2, "success"    # Ljava/lang/Boolean;

    .line 1578
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1579
    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->reset()V

    .line 1582
    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->endLauncherTransitionController()V

    .line 1583
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->updateSysUiFlags(F)V

    .line 1585
    :cond_0
    sget-object v0, Lcom/android/quickstep/GestureState$GestureEndTarget;->NEW_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    invoke-direct {p0, v0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->doLogGesture(Lcom/android/quickstep/GestureState$GestureEndTarget;Lcom/android/quickstep/views/TaskView;)V

    .line 1586
    return-void
.end method

.method synthetic lambda$startNewTask$31$com-android-quickstep-AbsSwipeUpHandler(Ljava/util/function/Consumer;ZLjava/lang/Boolean;)V
    .locals 1
    .param p1, "resultCallback"    # Ljava/util/function/Consumer;
    .param p2, "hasTaskPreviouslyAppeared"    # Z
    .param p3, "success"    # Ljava/lang/Boolean;

    .line 1911
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    invoke-interface {p1, p3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1912
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1913
    if-eqz p2, :cond_1

    .line 1914
    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->onRestartPreviouslyAppearedTask()V

    goto :goto_0

    .line 1917
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->onLaunchTaskFailed()V

    .line 1919
    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$startNewTask$32$com-android-quickstep-AbsSwipeUpHandler(Ljava/util/function/Consumer;)V
    .locals 7
    .param p1, "resultCallback"    # Ljava/util/function/Consumer;

    .line 1893
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mCanceled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 1894
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getNextPageTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    .line 1895
    .local v0, "nextTask":Lcom/android/quickstep/views/TaskView;
    if-eqz v0, :cond_1

    .line 1896
    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    .line 1897
    .local v2, "taskId":I
    iget-object v3, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v3, v2}, Lcom/android/quickstep/GestureState;->updateLastStartedTaskId(I)V

    .line 1898
    iget-object v3, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v3}, Lcom/android/quickstep/GestureState;->getPreviouslyAppearedTaskIds()Ljava/util/Set;

    move-result-object v3

    .line 1899
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 1903
    .local v3, "hasTaskPreviouslyAppeared":Z
    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mContext:Landroid/content/Context;

    .line 1904
    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v5

    iget-object v5, v5, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v5}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 1903
    invoke-static {v4, v5}, Lcom/sonymobile/quickstep/FreeFormUtil;->isRunningInFreeForm(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1905
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1906
    iget-object v4, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v4}, Lcom/android/quickstep/BaseActivityInterface;->onLaunchTaskFailed()V

    .line 1907
    iget-object v4, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/launcher3/R$string;->recents_error_toast_cannot_open_multi_window_from_popup_window:I

    invoke-static {v4, v5}, Lcom/sonymobile/quickstep/FreeFormUtil;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 1910
    :cond_0
    new-instance v4, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda40;

    invoke-direct {v4, p0, p1, v3}, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda40;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;Ljava/util/function/Consumer;Z)V

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Lcom/android/quickstep/views/TaskView;->launchTask(Ljava/util/function/Consumer;Z)V

    .line 1921
    :goto_0
    invoke-static {}, Lcom/sonymobile/launcher/idd/Idd$AppLaunch;->getInstance()Lcom/sonymobile/launcher/idd/Idd$AppLaunch;

    move-result-object v4

    iget-object v5, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    const-string v6, "scrub_recent"

    invoke-virtual {v4, v5, v6}, Lcom/sonymobile/launcher/idd/Idd$AppLaunch;->count(Landroid/content/Context;Ljava/lang/String;)V

    .line 1922
    .end local v2    # "taskId":I
    .end local v3    # "hasTaskPreviouslyAppeared":Z
    goto :goto_1

    .line 1923
    :cond_1
    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v2}, Lcom/android/quickstep/BaseActivityInterface;->onLaunchTaskFailed()V

    .line 1924
    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/launcher3/R$string;->activity_not_available:I

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1927
    .end local v0    # "nextTask":Lcom/android/quickstep/views/TaskView;
    :cond_2
    :goto_1
    iput-boolean v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mCanceled:Z

    .line 1928
    return-void
.end method

.method synthetic lambda$switchToScreenshot$21$com-android-quickstep-AbsSwipeUpHandler(Lcom/android/systemui/shared/recents/model/ThumbnailData;IZ)V
    .locals 1
    .param p1, "taskSnapshot"    # Lcom/android/systemui/shared/recents/model/ThumbnailData;
    .param p2, "runningTaskId"    # I
    .param p3, "refreshView"    # Z

    .line 1713
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskSnapshot:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    .line 1714
    invoke-direct {p0, p2, p3}, Lcom/android/quickstep/AbsSwipeUpHandler;->updateThumbnail(IZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1715
    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->setScreenshotCapturedState()V

    .line 1717
    :cond_0
    return-void
.end method

.method synthetic lambda$switchToScreenshot$22$com-android-quickstep-AbsSwipeUpHandler(IZ)V
    .locals 3
    .param p1, "runningTaskId"    # I
    .param p2, "refreshView"    # Z

    .line 1709
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-nez v0, :cond_0

    return-void

    .line 1710
    :cond_0
    nop

    .line 1711
    invoke-virtual {v0, p1}, Lcom/android/quickstep/RecentsAnimationController;->screenshotTask(I)Lcom/android/systemui/shared/recents/model/ThumbnailData;

    move-result-object v0

    .line 1712
    .local v0, "taskSnapshot":Lcom/android/systemui/shared/recents/model/ThumbnailData;
    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda36;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda36;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;Lcom/android/systemui/shared/recents/model/ThumbnailData;IZ)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1718
    return-void
.end method

.method synthetic lambda$updateThumbnail$23$com-android-quickstep-AbsSwipeUpHandler()V
    .locals 2

    .line 1744
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_SCREENSHOT_CAPTURED:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/MultiStateCallback;->setStateOnUiThread(I)V

    return-void
.end method

.method protected linkRecentsViewScroll()V
    .locals 2

    .line 1866
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    new-instance v1, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda37;

    invoke-direct {v1, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda37;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-static {v0, v1}, Lcom/android/quickstep/util/SurfaceTransactionApplier;->create(Landroid/view/View;Ljava/util/function/Consumer;)V

    .line 1873
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mOnRecentsScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/RecentsView;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 1874
    new-instance v0, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda38;

    invoke-direct {v0, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda38;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-direct {p0, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->runOnRecentsAnimationAndLauncherBound(Ljava/lang/Runnable;)V

    .line 1877
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsViewScrollLinked:Z

    .line 1878
    return-void
.end method

.method protected moveWindowWithRecentsScroll()Z
    .locals 2

    .line 465
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected notifyGestureAnimationStartToRecents()V
    .locals 3

    .line 583
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mIsSwipeForStagedSplit:Z

    if-eqz v0, :cond_0

    .line 584
    sget-object v0, Lcom/android/quickstep/TopTaskTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/TopTaskTracker;

    invoke-virtual {v0}, Lcom/android/quickstep/TopTaskTracker;->getRunningSplitTaskIds()[I

    move-result-object v0

    .line 585
    .local v0, "splitTaskIds":[I
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getPlaceholderTasks([I)[Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    .line 586
    .local v0, "runningTasks":[Lcom/android/systemui/shared/recents/model/Task;
    goto :goto_0

    .line 587
    .end local v0    # "runningTasks":[Lcom/android/systemui/shared/recents/model/Task;
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getPlaceholderTasks()[Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    .line 589
    .restart local v0    # "runningTasks":[Lcom/android/systemui/shared/recents/model/Task;
    :goto_0
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v2}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/quickstep/views/RecentsView;->onGestureAnimationStart([Lcom/android/systemui/shared/recents/model/Task;Lcom/android/quickstep/RotationTouchHelper;)V

    .line 590
    return-void
.end method

.method protected onActivityInit(Ljava/lang/Boolean;)Z
    .locals 6
    .param p1, "alreadyOnHome"    # Ljava/lang/Boolean;

    .line 389
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_HANDLER_INVALIDATED:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    const/4 v0, 0x0

    return v0

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v0

    .line 394
    .local v0, "createdActivity":Lcom/android/launcher3/statemanager/StatefulActivity;, "TT;"
    if-eqz v0, :cond_1

    .line 395
    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/quickstep/AbsSwipeUpHandler;->initTransitionEndpoints(Lcom/android/launcher3/DeviceProfile;)V

    .line 397
    :cond_1
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v1}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v1

    .line 398
    .local v1, "activity":Lcom/android/launcher3/statemanager/StatefulActivity;, "TT;"
    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    const/4 v3, 0x1

    if-ne v2, v1, :cond_2

    .line 399
    return v3

    .line 402
    :cond_2
    if-eqz v2, :cond_4

    .line 403
    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v4, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_GESTURE_COMPLETED:I

    invoke-virtual {v2, v4}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 406
    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureState:Lcom/android/quickstep/GestureState;

    sget v4, Lcom/android/quickstep/GestureState;->STATE_RECENTS_SCROLLING_FINISHED:I

    invoke-virtual {v2, v4}, Lcom/android/quickstep/GestureState;->setState(I)V

    .line 407
    return v3

    .line 411
    :cond_3
    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    invoke-virtual {v2}, Lcom/android/quickstep/MultiStateCallback;->getState()I

    move-result v2

    sget v4, Lcom/android/quickstep/AbsSwipeUpHandler;->LAUNCHER_UI_STATES:I

    not-int v4, v4

    and-int/2addr v2, v4

    .line 412
    .local v2, "oldState":I
    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->initStateCallbacks()V

    .line 413
    iget-object v4, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    invoke-virtual {v4, v2}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    .line 415
    .end local v2    # "oldState":I
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mWasLauncherAlreadyVisible:Z

    .line 416
    iput-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    .line 419
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/16 v4, 0x9

    if-eqz v2, :cond_5

    .line 420
    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v2, v4}, Lcom/android/launcher3/statemanager/StatefulActivity;->clearForceInvisibleFlag(I)V

    goto :goto_0

    .line 422
    :cond_5
    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v2, v4}, Lcom/android/launcher3/statemanager/StatefulActivity;->addForceInvisibleFlag(I)V

    .line 425
    :goto_0
    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/quickstep/views/RecentsView;

    iput-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 426
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/quickstep/views/RecentsView;->setOnPageTransitionEndCallback(Ljava/lang/Runnable;)V

    .line 428
    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v4, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_LAUNCHER_PRESENT:I

    invoke-virtual {v2, v4}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    .line 429
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 430
    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->onLauncherStart()V

    goto :goto_1

    .line 432
    :cond_6
    new-instance v2, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->runOnceOnStart(Ljava/lang/Runnable;)V

    .line 437
    :goto_1
    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureState:Lcom/android/quickstep/GestureState;

    sget v4, Lcom/android/quickstep/GestureState;->STATE_RECENTS_ANIMATION_CANCELED:I

    new-instance v5, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v2, v4, v5}, Lcom/android/quickstep/GestureState;->runOnceAtState(ILjava/lang/Runnable;)V

    .line 453
    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->setupRecentsViewUi()V

    .line 454
    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->linkRecentsViewScroll()V

    .line 455
    new-instance v2, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda2;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->runOnBindToTouchInteractionService(Ljava/lang/Runnable;)V

    .line 457
    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    iget-object v4, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLifecycleCallbacks:Lcom/android/launcher3/util/ActivityLifecycleCallbacksAdapter;

    invoke-virtual {v2, v4}, Lcom/android/launcher3/statemanager/StatefulActivity;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 458
    return v3
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "windowInsets"    # Landroid/view/WindowInsets;

    .line 718
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    invoke-virtual {p1, p2}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    .line 719
    .local v0, "result":Landroid/view/WindowInsets;
    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->buildAnimationController()V

    .line 722
    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->updateFinalShift()V

    .line 723
    return-object v0
.end method

.method public onConsumerAboutToBeSwitched()V
    .locals 2

    .line 1544
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-eqz v0, :cond_0

    .line 1547
    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->clearRunOnceOnStartCallback()V

    .line 1548
    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->resetLauncherListeners()V

    .line 1550
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->isRecentsAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureState:Lcom/android/quickstep/GestureState;

    .line 1551
    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/quickstep/GestureState$GestureEndTarget;->isLauncher:Z

    if-nez v0, :cond_1

    .line 1553
    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->cancelCurrentAnimation()V

    goto :goto_0

    .line 1555
    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_FINISH_WITH_NO_END:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/MultiStateCallback;->setStateOnUiThread(I)V

    .line 1556
    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->reset()V

    .line 1558
    :goto_0
    return-void
.end method

.method public onGestureCancelled()V
    .locals 4

    .line 919
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->updateDisplacement(F)V

    .line 920
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v2, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_GESTURE_COMPLETED:I

    invoke-virtual {v1, v2}, Lcom/android/quickstep/MultiStateCallback;->setStateOnUiThread(I)V

    .line 921
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/android/quickstep/AbsSwipeUpHandler;->handleNormalGestureEnd(FZLandroid/graphics/PointF;Z)V

    .line 922
    return-void
.end method

.method public onGestureEnded(FLandroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 7
    .param p1, "endVelocity"    # F
    .param p2, "velocity"    # Landroid/graphics/PointF;
    .param p3, "downPos"    # Landroid/graphics/PointF;

    .line 931
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->quickstep_fling_threshold_speed:I

    .line 932
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 933
    .local v0, "flingThreshold":F
    iget-boolean v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureStarted:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mIsMotionPaused:Z

    if-nez v1, :cond_0

    .line 934
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v0

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 935
    .local v1, "isFling":Z
    :goto_0
    iget-object v4, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v5, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_GESTURE_COMPLETED:I

    invoke-virtual {v4, v5}, Lcom/android/quickstep/MultiStateCallback;->setStateOnUiThread(I)V

    .line 936
    iget v4, p2, Landroid/graphics/PointF;->y:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    .line 937
    .local v4, "isVelocityVertical":Z
    :goto_1
    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 938
    iget v6, p2, Landroid/graphics/PointF;->y:F

    cmpg-float v5, v6, v5

    if-gez v5, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLogDirectionUpOrLeft:Z

    goto :goto_4

    .line 940
    :cond_3
    iget v6, p2, Landroid/graphics/PointF;->x:F

    cmpg-float v5, v6, v5

    if-gez v5, :cond_4

    goto :goto_3

    :cond_4
    move v2, v3

    :goto_3
    iput-boolean v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLogDirectionUpOrLeft:Z

    .line 942
    :goto_4
    iput-object p3, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mDownPos:Landroid/graphics/PointF;

    .line 943
    new-instance v2, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1, v1, p2}, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda3;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;FZLandroid/graphics/PointF;)V

    .line 945
    .local v2, "handleNormalGestureEndCallback":Ljava/lang/Runnable;
    iget-object v3, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v3, :cond_5

    .line 946
    invoke-virtual {v3, v2}, Lcom/android/quickstep/views/RecentsView;->runOnPageScrollsInitialized(Ljava/lang/Runnable;)V

    goto :goto_5

    .line 948
    :cond_5
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 950
    :goto_5
    return-void
.end method

.method public onGestureStarted(Z)V
    .locals 2
    .param p1, "isLikelyToStartNewTask"    # Z

    .line 870
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->closeOverlay()V

    .line 871
    const-string v0, "recentapps"

    invoke-static {v0}, Lcom/android/quickstep/TaskUtils;->closeSystemWindowsAsync(Ljava/lang/String;)V

    .line 873
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v0, :cond_0

    .line 874
    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/AbsSwipeUpHandler$4;

    invoke-direct {v1, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$4;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 894
    :cond_0
    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->notifyGestureStartedAsync()V

    .line 895
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->setIsLikelyToStartNewTask(ZZ)V

    .line 896
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_GESTURE_STARTED:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/MultiStateCallback;->setStateOnUiThread(I)V

    .line 897
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureStarted:Z

    .line 898
    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v0}, Lcom/android/quickstep/SystemUiProxy;->notifySwipeUpGestureStarted()V

    .line 899
    return-void
.end method

.method public onRecentsAnimationCanceled(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/shared/recents/model/ThumbnailData;",
            ">;)V"
        }
    .end annotation

    .line 849
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    .local p1, "thumbnailDatas":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/systemui/shared/recents/model/ThumbnailData;>;"
    sget-object v0, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    const-string v1, "cancelRecentsAnimation"

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/ActiveGestureLog;->addLog(Ljava/lang/String;)V

    .line 850
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInitListener:Lcom/android/quickstep/util/ActivityInitListener;

    invoke-virtual {v0}, Lcom/android/quickstep/util/ActivityInitListener;->unregister()V

    .line 853
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    iput-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mDeferredCleanupRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    .line 854
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_GESTURE_CANCELLED:I

    sget v2, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_HANDLER_INVALIDATED:I

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/quickstep/MultiStateCallback;->setStateOnUiThread(I)V

    .line 856
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    if-eqz v0, :cond_0

    .line 857
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/quickstep/AbsSwipeUpHandler;->setDividerShown(ZZ)V

    .line 861
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    .line 862
    iput-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    .line 863
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v1, :cond_1

    .line 864
    invoke-virtual {v1, v0, v0}, Lcom/android/quickstep/views/RecentsView;->setRecentsAnimationTargets(Lcom/android/quickstep/RecentsAnimationController;Lcom/android/quickstep/RecentsAnimationTargets;)V

    .line 866
    :cond_1
    return-void
.end method

.method public onRecentsAnimationFinished(Lcom/android/quickstep/RecentsAnimationController;)V
    .locals 2
    .param p1, "controller"    # Lcom/android/quickstep/RecentsAnimationController;

    .line 1965
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    invoke-virtual {p1}, Lcom/android/quickstep/RecentsAnimationController;->getFinishTargetIsLauncher()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1966
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/quickstep/AbsSwipeUpHandler;->setDividerShown(ZZ)V

    .line 1968
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    .line 1969
    iput-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    .line 1970
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v1, :cond_1

    .line 1971
    invoke-virtual {v1, v0, v0}, Lcom/android/quickstep/views/RecentsView;->setRecentsAnimationTargets(Lcom/android/quickstep/RecentsAnimationController;Lcom/android/quickstep/RecentsAnimationTargets;)V

    .line 1973
    :cond_1
    return-void
.end method

.method public onRecentsAnimationStart(Lcom/android/quickstep/RecentsAnimationController;Lcom/android/quickstep/RecentsAnimationTargets;)V
    .locals 8
    .param p1, "controller"    # Lcom/android/quickstep/RecentsAnimationController;
    .param p2, "targets"    # Lcom/android/quickstep/RecentsAnimationTargets;

    .line 805
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    invoke-super {p0, p1, p2}, Lcom/android/quickstep/SwipeUpAnimationLogic;->onRecentsAnimationStart(Lcom/android/quickstep/RecentsAnimationController;Lcom/android/quickstep/RecentsAnimationTargets;)V

    .line 806
    sget-object v0, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    iget-object v1, p2, Lcom/android/quickstep/RecentsAnimationTargets;->apps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length v1, v1

    const-string v2, "startRecentsAnimationCallback"

    invoke-virtual {v0, v2, v1}, Lcom/android/quickstep/util/ActiveGestureLog;->addLog(Ljava/lang/String;I)V

    .line 807
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTargetGluer:Lcom/android/quickstep/RemoteTargetGluer;

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2}, Lcom/android/quickstep/RemoteTargetGluer;->assignTargetsForSplitScreen(Landroid/content/Context;Lcom/android/quickstep/RemoteAnimationTargets;)[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    .line 808
    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    .line 809
    iput-object p2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    .line 813
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 814
    iget-object v0, p2, Lcom/android/quickstep/RecentsAnimationTargets;->apps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    aget-object v0, v0, v1

    .line 818
    .local v0, "primaryTaskTarget":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v2

    .line 819
    invoke-virtual {v2}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v2

    .line 820
    .local v2, "orientationState":Lcom/android/quickstep/util/RecentsOrientedState;
    invoke-virtual {v2}, Lcom/android/quickstep/util/RecentsOrientedState;->getLauncherDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v3

    .line 821
    .local v3, "dp":Lcom/android/launcher3/DeviceProfile;
    iget-object v4, p2, Lcom/android/quickstep/RecentsAnimationTargets;->minimizedHomeBounds:Landroid/graphics/Rect;

    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    .line 822
    iget-object v4, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    iget-object v5, p2, Lcom/android/quickstep/RecentsAnimationTargets;->minimizedHomeBounds:Landroid/graphics/Rect;

    .line 823
    invoke-virtual {v4, v5, v0}, Lcom/android/quickstep/BaseActivityInterface;->getOverviewWindowBounds(Landroid/graphics/Rect;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/graphics/Rect;

    move-result-object v4

    .line 824
    .local v4, "overviewStackBounds":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/launcher3/util/WindowBounds;

    iget-object v7, p2, Lcom/android/quickstep/RecentsAnimationTargets;->homeContentInsets:Landroid/graphics/Rect;

    invoke-direct {v6, v4, v7}, Lcom/android/launcher3/util/WindowBounds;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v3, v5, v6}, Lcom/android/launcher3/DeviceProfile;->getMultiWindowProfile(Landroid/content/Context;Lcom/android/launcher3/util/WindowBounds;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v3

    .line 826
    .end local v4    # "overviewStackBounds":Landroid/graphics/Rect;
    goto :goto_0

    .line 828
    :cond_0
    iget-object v4, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/DeviceProfile;->copy(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v3

    .line 830
    :goto_0
    iget-object v4, p2, Lcom/android/quickstep/RecentsAnimationTargets;->homeContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/DeviceProfile;->updateInsets(Landroid/graphics/Rect;)V

    .line 831
    iget-object v4, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/DeviceProfile;->updateIsSeascape(Landroid/content/Context;)Z

    .line 832
    invoke-virtual {p0, v3}, Lcom/android/quickstep/AbsSwipeUpHandler;->initTransitionEndpoints(Lcom/android/launcher3/DeviceProfile;)V

    .line 833
    iget-boolean v4, v3, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    invoke-virtual {v2, v4}, Lcom/android/quickstep/util/RecentsOrientedState;->setMultiWindowMode(Z)V

    .line 837
    .end local v0    # "primaryTaskTarget":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .end local v2    # "orientationState":Lcom/android/quickstep/util/RecentsOrientedState;
    .end local v3    # "dp":Lcom/android/launcher3/DeviceProfile;
    :cond_1
    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->flushOnRecentsAnimationAndLauncherBound()V

    .line 840
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v2, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_APP_CONTROLLER_RECEIVED:I

    sget v3, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_GESTURE_STARTED:I

    or-int/2addr v3, v2

    new-instance v4, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda34;

    invoke-direct {v4, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda34;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v0, v3, v4}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    .line 842
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    invoke-virtual {v0, v2}, Lcom/android/quickstep/MultiStateCallback;->setStateOnUiThread(I)V

    .line 844
    iput-boolean v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mPassedOverviewThreshold:Z

    .line 845
    return-void
.end method

.method protected onRestartPreviouslyAppearedTask()V
    .locals 3

    .line 1599
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz v0, :cond_0

    .line 1600
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/RecentsAnimationController;->finish(ZLjava/lang/Runnable;)V

    .line 1602
    :cond_0
    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->reset()V

    .line 1603
    return-void
.end method

.method public onTasksAppeared([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V
    .locals 3
    .param p1, "appearedTaskTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    .line 1977
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz v0, :cond_0

    .line 1978
    invoke-virtual {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->handleTaskAppeared([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1979
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/quickstep/RecentsAnimationController;->finish(ZLjava/lang/Runnable;)V

    .line 1981
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->onLaunchTaskSuccess()V

    .line 1982
    sget-object v0, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    const-string v1, "finishRecentsAnimation"

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/util/ActiveGestureLog;->addLog(Ljava/lang/String;Z)V

    .line 1985
    :cond_0
    return-void
.end method

.method protected performHapticFeedback()V
    .locals 2

    .line 1854
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    sget-object v0, Lcom/android/quickstep/util/VibratorWrapper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/util/VibratorWrapper;

    sget-object v1, Lcom/android/quickstep/util/VibratorWrapper;->OVERVIEW_HAPTIC:Landroid/os/VibrationEffect;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/VibratorWrapper;->vibrate(Landroid/os/VibrationEffect;)V

    .line 1855
    return-void
.end method

.method public setGestureEndCallback(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "gestureEndCallback"    # Ljava/lang/Runnable;

    .line 1862
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureEndCallback:Ljava/lang/Runnable;

    .line 1863
    return-void
.end method

.method public setIsLikelyToStartNewTask(Z)V
    .locals 1
    .param p1, "isLikelyToStartNewTask"    # Z

    .line 689
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->setIsLikelyToStartNewTask(ZZ)V

    .line 690
    return-void
.end method

.method protected startNewTask(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1887
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    .local p1, "resultCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-nez v0, :cond_0

    .line 1889
    return-void

    .line 1892
    :cond_0
    const/4 v1, 0x1

    new-instance v2, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda35;

    invoke-direct {v2, p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda35;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/RecentsAnimationController;->finish(ZLjava/lang/Runnable;)V

    .line 1929
    return-void
.end method

.method protected switchToScreenshot()V
    .locals 5

    .line 1698
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->hasTargets()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1700
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_SCREENSHOT_CAPTURED:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/MultiStateCallback;->setStateOnUiThread(I)V

    goto :goto_0

    .line 1702
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getRunningTaskId()I

    move-result v0

    .line 1703
    .local v0, "runningTaskId":I
    sget-object v1, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 1704
    .local v1, "refreshView":Z
    const/4 v2, 0x0

    .line 1705
    .local v2, "finishTransitionPosted":Z
    iget-object v3, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz v3, :cond_2

    .line 1707
    iget-object v3, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskSnapshot:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-nez v3, :cond_1

    .line 1708
    sget-object v3, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v4, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda39;

    invoke-direct {v4, p0, v0, v1}, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda39;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;IZ)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1719
    return-void

    .line 1721
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/android/quickstep/AbsSwipeUpHandler;->updateThumbnail(IZ)Z

    move-result v2

    .line 1723
    :cond_2
    if-nez v2, :cond_3

    .line 1724
    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->setScreenshotCapturedState()V

    .line 1727
    .end local v0    # "runningTaskId":I
    .end local v1    # "refreshView":Z
    .end local v2    # "finishTransitionPosted":Z
    :cond_3
    :goto_0
    return-void
.end method

.method public updateFinalShift()V
    .locals 2

    .line 750
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    iget v0, v0, Lcom/android/quickstep/AnimatedFloat;->value:F

    const v1, 0x3f333333    # 0.7f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 751
    .local v0, "passed":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mPassedOverviewThreshold:Z

    if-eq v0, v1, :cond_1

    .line 752
    iput-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mPassedOverviewThreshold:Z

    .line 753
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isTwoButtonNavMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->isHandlingAtomicEvent()Z

    move-result v1

    if-nez v1, :cond_1

    .line 754
    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->performHapticFeedback()V

    .line 758
    :cond_1
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    iget v1, v1, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-direct {p0, v1}, Lcom/android/quickstep/AbsSwipeUpHandler;->updateSysUiFlags(F)V

    .line 759
    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->applyScrollAndTransform()V

    .line 761
    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->updateLauncherTransitionProgress()V

    .line 762
    return-void
.end method

.method public writeToProto(Lcom/android/launcher3/tracing/InputConsumerProto$Builder;)V
    .locals 2
    .param p1, "inputConsumerProto"    # Lcom/android/launcher3/tracing/InputConsumerProto$Builder;

    .line 2092
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler;, "Lcom/android/quickstep/AbsSwipeUpHandler<TT;TQ;TS;>;"
    invoke-static {}, Lcom/android/launcher3/tracing/SwipeHandlerProto;->newBuilder()Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;

    move-result-object v0

    .line 2094
    .local v0, "swipeHandlerProto":Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v1, v0}, Lcom/android/quickstep/GestureState;->writeToProto(Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;)V

    .line 2096
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mAnimationFactory:Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;

    .line 2097
    invoke-interface {v1}, Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;->isRecentsAttachedToAppWindow()Z

    move-result v1

    .line 2096
    invoke-virtual {v0, v1}, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;->setIsRecentsAttachedToAppWindow(Z)Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;

    .line 2098
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-nez v1, :cond_0

    .line 2099
    const/4 v1, 0x0

    goto :goto_0

    .line 2100
    :cond_0
    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->getScrollOffset()I

    move-result v1

    .line 2098
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;->setScrollOffset(I)Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;

    .line 2101
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    iget v1, v1, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-virtual {v0, v1}, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;->setAppToOverviewProgress(F)Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;

    .line 2103
    invoke-virtual {p1, v0}, Lcom/android/launcher3/tracing/InputConsumerProto$Builder;->setSwipeHandler(Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;)Lcom/android/launcher3/tracing/InputConsumerProto$Builder;

    .line 2104
    return-void
.end method
