.class public Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;
.super Landroid/content/ContextWrapper;
.source "OtherActivityInputConsumer.java"

# interfaces
.implements Lcom/android/quickstep/InputConsumer;


# static fields
.field public static final DOWN_EVT:Ljava/lang/String; = "OtherActivityInputConsumer.DOWN"

.field public static final OVERVIEW_MIN_DEGREES:I = 0xf

.field public static final QUICKSTEP_TOUCH_SLOP_RATIO_GESTURAL:F = 2.0f

.field public static final QUICKSTEP_TOUCH_SLOP_RATIO_TWO_BUTTON:F = 9.0f

.field private static final UP_EVT:Ljava/lang/String; = "OtherActivityInputConsumer.UP"


# instance fields
.field private mActiveCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

.field private mActivePointerId:I

.field private final mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

.field private mCancelRecentsAnimationRunnable:Ljava/lang/Runnable;

.field private final mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

.field private final mDisableHorizontalSwipe:Z

.field private final mDownPos:Landroid/graphics/PointF;

.field private final mGestureState:Lcom/android/quickstep/GestureState;

.field private final mHandlerFactory:Lcom/android/quickstep/AbsSwipeUpHandler$Factory;

.field private final mInputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

.field private final mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

.field private mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

.field private final mIsDeferredDownTarget:Z

.field private final mLastPos:Landroid/graphics/PointF;

.field private mMainThreadHandler:Landroid/os/Handler;

.field private final mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

.field private final mMotionPauseMinDisplacement:F

.field private final mNavBarPosition:Lcom/android/quickstep/util/NavBarPosition;

.field private final mOnCompleteCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;",
            ">;"
        }
    .end annotation
.end field

.field private mPassedPilferInputSlop:Z

.field private mPassedSlopOnThisGesture:Z

.field private mPassedWindowMoveSlop:Z

.field private final mRecentsViewDispatcher:Lcom/android/quickstep/util/CachedEventDispatcher;

.field private final mRotationTouchHelper:Lcom/android/quickstep/RotationTouchHelper;

.field private final mSquaredTouchSlop:F

.field private mStartDisplacement:F

.field private final mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

.field private final mTouchSlop:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public static synthetic $r8$lambda$JaVS4jRZdR6zfxuB3eSHAAnUTLY(Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->onInteractionGestureFinished()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/TaskAnimationManager;Lcom/android/quickstep/GestureState;ZLjava/util/function/Consumer;Lcom/android/systemui/shared/system/InputMonitorCompat;Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;ZLcom/android/quickstep/AbsSwipeUpHandler$Factory;)V
    .locals 15
    .param p1, "base"    # Landroid/content/Context;
    .param p2, "deviceState"    # Lcom/android/quickstep/RecentsAnimationDeviceState;
    .param p3, "taskAnimationManager"    # Lcom/android/quickstep/TaskAnimationManager;
    .param p4, "gestureState"    # Lcom/android/quickstep/GestureState;
    .param p5, "isDeferredDownTarget"    # Z
    .param p7, "inputMonitorCompat"    # Lcom/android/systemui/shared/system/InputMonitorCompat;
    .param p8, "inputEventReceiver"    # Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;
    .param p9, "disableHorizontalSwipe"    # Z
    .param p10, "handlerFactory"    # Lcom/android/quickstep/AbsSwipeUpHandler$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/quickstep/RecentsAnimationDeviceState;",
            "Lcom/android/quickstep/TaskAnimationManager;",
            "Lcom/android/quickstep/GestureState;",
            "Z",
            "Ljava/util/function/Consumer<",
            "Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;",
            ">;",
            "Lcom/android/systemui/shared/system/InputMonitorCompat;",
            "Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;",
            "Z",
            "Lcom/android/quickstep/AbsSwipeUpHandler$Factory;",
            ")V"
        }
    .end annotation

    .line 144
    .local p6, "onCompleteCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;>;"
    move-object v0, p0

    invoke-direct/range {p0 .. p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 96
    new-instance v1, Lcom/android/quickstep/util/CachedEventDispatcher;

    invoke-direct {v1}, Lcom/android/quickstep/util/CachedEventDispatcher;-><init>()V

    iput-object v1, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mRecentsViewDispatcher:Lcom/android/quickstep/util/CachedEventDispatcher;

    .line 112
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mDownPos:Landroid/graphics/PointF;

    .line 113
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mLastPos:Landroid/graphics/PointF;

    .line 114
    const/4 v1, -0x1

    iput v1, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mActivePointerId:I

    .line 134
    new-instance v1, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer$$ExternalSyntheticLambda1;-><init>()V

    iput-object v1, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mCancelRecentsAnimationRunnable:Ljava/lang/Runnable;

    .line 145
    move-object/from16 v1, p2

    iput-object v1, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    .line 146
    invoke-virtual/range {p2 .. p2}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getNavBarPosition()Lcom/android/quickstep/util/NavBarPosition;

    move-result-object v2

    iput-object v2, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mNavBarPosition:Lcom/android/quickstep/util/NavBarPosition;

    .line 147
    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    .line 148
    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mGestureState:Lcom/android/quickstep/GestureState;

    .line 149
    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v5, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mMainThreadHandler:Landroid/os/Handler;

    .line 150
    move-object/from16 v5, p10

    iput-object v5, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mHandlerFactory:Lcom/android/quickstep/AbsSwipeUpHandler$Factory;

    .line 151
    invoke-virtual/range {p4 .. p4}, Lcom/android/quickstep/GestureState;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v6

    iput-object v6, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    .line 153
    new-instance v6, Lcom/android/quickstep/util/MotionPauseDetector;

    .line 154
    invoke-virtual {v2}, Lcom/android/quickstep/util/NavBarPosition;->isLeftEdge()Z

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v7, :cond_1

    invoke-virtual {v2}, Lcom/android/quickstep/util/NavBarPosition;->isRightEdge()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 155
    :cond_0
    move v2, v8

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v9

    :goto_1
    move-object/from16 v7, p1

    invoke-direct {v6, v7, v9, v2}, Lcom/android/quickstep/util/MotionPauseDetector;-><init>(Landroid/content/Context;ZI)V

    iput-object v6, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

    .line 156
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v6, Lcom/android/launcher3/R$dimen;->motion_pause_detector_min_displacement_from_app:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mMotionPauseMinDisplacement:F

    .line 158
    move-object/from16 v2, p6

    iput-object v2, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mOnCompleteCallback:Ljava/util/function/Consumer;

    .line 159
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v6

    iput-object v6, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 160
    move-object/from16 v6, p7

    iput-object v6, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    .line 161
    move-object/from16 v10, p8

    iput-object v10, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    .line 163
    invoke-virtual/range {p3 .. p3}, Lcom/android/quickstep/TaskAnimationManager;->isRecentsAnimationRunning()Z

    move-result v11

    .line 164
    .local v11, "continuingPreviousGesture":Z
    if-nez v11, :cond_2

    if-eqz p5, :cond_2

    move v12, v8

    goto :goto_2

    :cond_2
    move v12, v9

    :goto_2
    iput-boolean v12, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mIsDeferredDownTarget:Z

    .line 166
    invoke-virtual/range {p2 .. p2}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isFullyGesturalNavMode()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 167
    const/high16 v12, 0x40000000    # 2.0f

    goto :goto_3

    .line 168
    :cond_3
    const/high16 v12, 0x41100000    # 9.0f

    :goto_3
    nop

    .line 169
    .local v12, "slopMultiplier":F
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v13

    int-to-float v13, v13

    iput v13, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mTouchSlop:F

    .line 170
    mul-float v14, v12, v13

    mul-float/2addr v14, v13

    iput v14, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mSquaredTouchSlop:F

    .line 172
    iput-boolean v11, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mPassedWindowMoveSlop:Z

    iput-boolean v11, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mPassedPilferInputSlop:Z

    .line 173
    if-nez v11, :cond_4

    if-eqz p9, :cond_4

    goto :goto_4

    :cond_4
    move v8, v9

    :goto_4
    iput-boolean v8, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mDisableHorizontalSwipe:Z

    .line 174
    invoke-virtual/range {p2 .. p2}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;

    move-result-object v8

    iput-object v8, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mRotationTouchHelper:Lcom/android/quickstep/RotationTouchHelper;

    .line 175
    return-void
.end method

.method private cleanupAfterGesture()V
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 434
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 435
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

    invoke-virtual {v0}, Lcom/android/quickstep/util/MotionPauseDetector;->clear()V

    .line 438
    return-void
.end method

.method private finishTouchTracking(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 396
    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string v1, "OtherActivityInputConsumer.UP"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    .line 399
    .local v0, "traceToken":Ljava/lang/Object;
    iget-boolean v1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mPassedWindowMoveSlop:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    if-eqz v1, :cond_3

    .line 400
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 401
    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-virtual {v1}, Lcom/android/quickstep/AbsSwipeUpHandler;->onGestureCancelled()V

    goto :goto_1

    .line 403
    :cond_0
    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 404
    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mActivePointerId:I

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v1

    .line 405
    .local v1, "velocityX":F
    iget-object v2, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v3, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mActivePointerId:I

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    .line 406
    .local v2, "velocityY":F
    iget-object v3, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mNavBarPosition:Lcom/android/quickstep/util/NavBarPosition;

    invoke-virtual {v3}, Lcom/android/quickstep/util/NavBarPosition;->isRightEdge()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 407
    move v3, v1

    goto :goto_0

    .line 408
    :cond_1
    iget-object v3, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mNavBarPosition:Lcom/android/quickstep/util/NavBarPosition;

    invoke-virtual {v3}, Lcom/android/quickstep/util/NavBarPosition;->isLeftEdge()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 409
    neg-float v3, v1

    goto :goto_0

    .line 410
    :cond_2
    move v3, v2

    :goto_0
    nop

    .line 411
    .local v3, "velocity":F
    iget-object v4, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-direct {p0, p1}, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->getDisplacement(Landroid/view/MotionEvent;)F

    move-result v5

    iget v6, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mStartDisplacement:F

    sub-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/android/quickstep/AbsSwipeUpHandler;->updateDisplacement(F)V

    .line 412
    iget-object v4, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v6, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mDownPos:Landroid/graphics/PointF;

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/quickstep/AbsSwipeUpHandler;->onGestureEnded(FLandroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 414
    .end local v1    # "velocityX":F
    .end local v2    # "velocityY":F
    .end local v3    # "velocity":F
    goto :goto_1

    .line 418
    :cond_3
    invoke-virtual {p0}, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->onConsumerAboutToBeSwitched()V

    .line 419
    invoke-direct {p0}, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->onInteractionGestureFinished()V

    .line 425
    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mCancelRecentsAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 426
    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mCancelRecentsAnimationRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 428
    :goto_1
    invoke-direct {p0}, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->cleanupAfterGesture()V

    .line 429
    sget-object v1, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    .line 430
    return-void
.end method

.method private forceCancelGesture(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 188
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 189
    .local v0, "action":I
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 190
    invoke-direct {p0, p1}, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->finishTouchTracking(Landroid/view/MotionEvent;)V

    .line 191
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 192
    return-void
.end method

.method private getDisplacement(Landroid/view/MotionEvent;)F
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 473
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mNavBarPosition:Lcom/android/quickstep/util/NavBarPosition;

    invoke-virtual {v0}, Lcom/android/quickstep/util/NavBarPosition;->isRightEdge()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mDownPos:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    return v0

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mNavBarPosition:Lcom/android/quickstep/util/NavBarPosition;

    invoke-virtual {v0}, Lcom/android/quickstep/util/NavBarPosition;->isLeftEdge()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 476
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mDownPos:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    return v0

    .line 478
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mDownPos:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    return v0
.end method

.method static synthetic lambda$new$0()V
    .locals 2

    .line 135
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->cancelRecentsAnimation(Z)V

    .line 137
    return-void
.end method

.method private notifyGestureStarted(Z)V
    .locals 2
    .param p1, "isLikelyToStartNewTask"    # Z

    .line 357
    sget-object v0, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    const-string v1, "startQuickstep"

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/ActiveGestureLog;->addLog(Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    if-nez v0, :cond_0

    .line 359
    return-void

    .line 361
    :cond_0
    const-string v0, "Pilfer"

    const-string v1, "pilferPointers"

    invoke-static {v0, v1}, Lcom/android/launcher3/testing/TestLogging;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/InputMonitorCompat;->pilferPointers()V

    .line 364
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;->setBatchingEnabled(Z)V

    .line 367
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->onGestureStarted(Z)V

    .line 368
    return-void
.end method

.method private onInteractionGestureFinished()V
    .locals 1

    .line 459
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    .line 460
    invoke-direct {p0}, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->removeListener()V

    .line 461
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    .line 462
    invoke-direct {p0}, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->cleanupAfterGesture()V

    .line 463
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mOnCompleteCallback:Ljava/util/function/Consumer;

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 464
    return-void
.end method

.method private removeListener()V
    .locals 2

    .line 467
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mActiveCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

    if-eqz v0, :cond_0

    .line 468
    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/RecentsAnimationCallbacks;->removeListener(Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;)V

    .line 470
    :cond_0
    return-void
.end method

.method private startTouchTrackingForWindowAnimation(J)V
    .locals 4
    .param p1, "touchTimeMs"    # J

    .line 371
    sget-object v0, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    const-string v1, "startRecentsAnimation"

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/ActiveGestureLog;->addLog(Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mHandlerFactory:Lcom/android/quickstep/AbsSwipeUpHandler$Factory;

    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/quickstep/AbsSwipeUpHandler$Factory;->newHandler(Lcom/android/quickstep/GestureState;J)Lcom/android/quickstep/AbsSwipeUpHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    .line 374
    new-instance v1, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;)V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/AbsSwipeUpHandler;->setGestureEndCallback(Ljava/lang/Runnable;)V

    .line 375
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-virtual {v1}, Lcom/android/quickstep/AbsSwipeUpHandler;->getMotionPauseListener()Lcom/android/quickstep/util/MotionPauseDetector$OnMotionPauseListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/MotionPauseDetector;->setOnMotionPauseListener(Lcom/android/quickstep/util/MotionPauseDetector$OnMotionPauseListener;)V

    .line 376
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-virtual {v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->initWhenReady()V

    .line 378
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    invoke-virtual {v0}, Lcom/android/quickstep/TaskAnimationManager;->isRecentsAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/TaskAnimationManager;->continueRecentsAnimation(Lcom/android/quickstep/GestureState;)Lcom/android/quickstep/RecentsAnimationCallbacks;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mActiveCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

    .line 380
    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/RecentsAnimationCallbacks;->addListener(Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;)V

    .line 381
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/TaskAnimationManager;->notifyRecentsAnimationState(Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;)V

    .line 382
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->notifyGestureStarted(Z)V

    goto :goto_0

    .line 384
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-virtual {v1}, Lcom/android/quickstep/AbsSwipeUpHandler;->getLaunchIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 385
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getGestureId()I

    move-result v1

    const-string v2, "INTENT_EXTRA_LOG_TRACE_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 386
    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    iget-object v2, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mGestureState:Lcom/android/quickstep/GestureState;

    iget-object v3, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/quickstep/TaskAnimationManager;->startRecentsAnimation(Lcom/android/quickstep/GestureState;Landroid/content/Intent;Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;)Lcom/android/quickstep/RecentsAnimationCallbacks;

    move-result-object v1

    iput-object v1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mActiveCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

    .line 389
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void
.end method


# virtual methods
.method public allowInterceptByParent()Z
    .locals 1

    .line 484
    iget-boolean v0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mPassedPilferInputSlop:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getType()I
    .locals 1

    .line 179
    const/4 v0, 0x4

    return v0
.end method

.method public isConsumerDetachedFromGesture()Z
    .locals 1

    .line 184
    const/4 v0, 0x1

    return v0
.end method

.method public notifyOrientationSetup()V
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mRotationTouchHelper:Lcom/android/quickstep/RotationTouchHelper;

    invoke-virtual {v0}, Lcom/android/quickstep/RotationTouchHelper;->onStartGesture()V

    .line 443
    return-void
.end method

.method public onConsumerAboutToBeSwitched()V
    .locals 2

    .line 447
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    .line 448
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mCancelRecentsAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 449
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    if-eqz v0, :cond_0

    .line 452
    invoke-direct {p0}, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->removeListener()V

    .line 453
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-virtual {v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->onConsumerAboutToBeSwitched()V

    .line 455
    :cond_0
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 18
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 196
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_0

    .line 197
    return-void

    .line 201
    :cond_0
    iget-boolean v2, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mPassedWindowMoveSlop:Z

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mRecentsViewDispatcher:Lcom/android/quickstep/util/CachedEventDispatcher;

    .line 202
    invoke-virtual {v2}, Lcom/android/quickstep/util/CachedEventDispatcher;->hasConsumer()Z

    move-result v2

    if-nez v2, :cond_1

    .line 203
    iget-object v2, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mRecentsViewDispatcher:Lcom/android/quickstep/util/CachedEventDispatcher;

    iget-object v3, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    iget-object v4, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mNavBarPosition:Lcom/android/quickstep/util/NavBarPosition;

    .line 204
    invoke-virtual {v4}, Lcom/android/quickstep/util/NavBarPosition;->getRotation()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/quickstep/AbsSwipeUpHandler;->getRecentsViewDispatcher(F)Ljava/util/function/Consumer;

    move-result-object v3

    .line 203
    invoke-virtual {v2, v3}, Lcom/android/quickstep/util/CachedEventDispatcher;->setConsumer(Ljava/util/function/Consumer;)V

    .line 205
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 206
    .local v2, "action":I
    const/16 v3, 0xfe

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 207
    iget-object v3, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mRecentsViewDispatcher:Lcom/android/quickstep/util/CachedEventDispatcher;

    invoke-virtual {v3, v1}, Lcom/android/quickstep/util/CachedEventDispatcher;->dispatchEvent(Landroid/view/MotionEvent;)V

    .line 208
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 210
    .end local v2    # "action":I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v2

    .line 211
    .local v2, "edgeFlags":I
    or-int/lit16 v3, v2, 0x100

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->setEdgeFlags(I)V

    .line 212
    iget-object v3, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mRecentsViewDispatcher:Lcom/android/quickstep/util/CachedEventDispatcher;

    invoke-virtual {v3, v1}, Lcom/android/quickstep/util/CachedEventDispatcher;->dispatchEvent(Landroid/view/MotionEvent;)V

    .line 213
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setEdgeFlags(I)V

    .line 215
    iget-object v3, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 216
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_2

    .line 217
    iget-object v3, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 218
    iget-object v3, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

    invoke-virtual {v3}, Lcom/android/quickstep/util/MotionPauseDetector;->clear()V

    .line 221
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v5, 0x1

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_a

    .line 252
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 253
    .local v3, "ptrIdx":I
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 254
    .local v6, "ptrId":I
    iget v7, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mActivePointerId:I

    if-ne v6, v7, :cond_15

    .line 255
    if-nez v3, :cond_3

    move v4, v5

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    .line 256
    .local v4, "newPointerIdx":I
    :goto_0
    iget-object v5, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mDownPos:Landroid/graphics/PointF;

    .line 257
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    iget-object v8, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mLastPos:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    iget-object v9, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mDownPos:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    sub-float/2addr v8, v9

    sub-float/2addr v7, v8

    .line 258
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    iget-object v9, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mLastPos:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    iget-object v10, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mDownPos:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->y:F

    sub-float/2addr v9, v10

    sub-float/2addr v8, v9

    .line 256
    invoke-virtual {v5, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    .line 259
    iget-object v5, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mLastPos:Landroid/graphics/PointF;

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    invoke-virtual {v5, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    .line 260
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mActivePointerId:I

    .line 261
    .end local v4    # "newPointerIdx":I
    goto/16 :goto_a

    .line 242
    .end local v3    # "ptrIdx":I
    .end local v6    # "ptrId":I
    :pswitch_2
    iget-boolean v3, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mPassedPilferInputSlop:Z

    if-nez v3, :cond_15

    .line 244
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 245
    .restart local v3    # "ptrIdx":I
    iget-object v4, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mRotationTouchHelper:Lcom/android/quickstep/RotationTouchHelper;

    invoke-virtual {v4, v1, v3}, Lcom/android/quickstep/RotationTouchHelper;->isInSwipeUpTouchRegion(Landroid/view/MotionEvent;I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 246
    invoke-direct/range {p0 .. p1}, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->forceCancelGesture(Landroid/view/MotionEvent;)V

    .line 248
    .end local v3    # "ptrIdx":I
    :cond_4
    goto/16 :goto_a

    .line 265
    :pswitch_3
    iget v3, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mActivePointerId:I

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 266
    .local v3, "pointerIndex":I
    const/4 v6, -0x1

    if-ne v3, v6, :cond_5

    .line 267
    goto/16 :goto_a

    .line 269
    :cond_5
    iget-object v6, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mLastPos:Landroid/graphics/PointF;

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    .line 270
    invoke-direct/range {p0 .. p1}, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->getDisplacement(Landroid/view/MotionEvent;)F

    move-result v6

    .line 271
    .local v6, "displacement":F
    iget-object v7, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mLastPos:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    iget-object v8, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mDownPos:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v8

    .line 272
    .local v7, "displacementX":F
    iget-object v8, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mLastPos:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    iget-object v9, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mDownPos:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    sub-float/2addr v8, v9

    .line 274
    .local v8, "displacementY":F
    iget-boolean v9, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mPassedWindowMoveSlop:Z

    if-nez v9, :cond_6

    .line 275
    iget-boolean v9, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mIsDeferredDownTarget:Z

    if-nez v9, :cond_6

    .line 278
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mTouchSlop:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_6

    .line 279
    iput-boolean v5, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mPassedWindowMoveSlop:Z

    .line 280
    neg-float v9, v10

    invoke-static {v6, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    iput v9, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mStartDisplacement:F

    .line 285
    :cond_6
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 286
    .local v9, "horizontalDist":F
    neg-float v10, v6

    .line 287
    .local v10, "upDist":F
    invoke-static {v7, v8}, Lcom/android/launcher3/Utilities;->squaredHypot(FF)F

    move-result v11

    iget v12, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mSquaredTouchSlop:F

    cmpl-float v11, v11, v12

    if-ltz v11, :cond_7

    move v11, v5

    goto :goto_1

    :cond_7
    const/4 v11, 0x0

    .line 289
    .local v11, "passedSlop":Z
    :goto_1
    iget-boolean v12, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mPassedSlopOnThisGesture:Z

    if-nez v12, :cond_8

    if-eqz v11, :cond_8

    .line 290
    iput-boolean v5, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mPassedSlopOnThisGesture:Z

    .line 295
    :cond_8
    iget-boolean v12, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mPassedSlopOnThisGesture:Z

    if-nez v12, :cond_9

    iget-boolean v12, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mPassedPilferInputSlop:Z

    if-eqz v12, :cond_9

    move v12, v5

    goto :goto_2

    :cond_9
    const/4 v12, 0x0

    .line 297
    .local v12, "haveNotPassedSlopOnContinuedGesture":Z
    :goto_2
    div-float v13, v10, v9

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->atan(D)D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v13

    .line 298
    .local v13, "degrees":D
    if-nez v12, :cond_b

    const-wide/high16 v15, 0x402e000000000000L    # 15.0

    cmpg-double v15, v13, v15

    if-gtz v15, :cond_a

    goto :goto_3

    :cond_a
    const/4 v15, 0x0

    goto :goto_4

    :cond_b
    :goto_3
    move v15, v5

    .line 301
    .local v15, "isLikelyToStartNewTask":Z
    :goto_4
    iget-boolean v4, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mPassedPilferInputSlop:Z

    if-nez v4, :cond_10

    .line 302
    if-eqz v11, :cond_f

    .line 303
    iget-boolean v4, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mDisableHorizontalSwipe:Z

    if-eqz v4, :cond_c

    .line 304
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v17

    cmpl-float v4, v4, v17

    if-lez v4, :cond_c

    .line 306
    invoke-direct/range {p0 .. p1}, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->forceCancelGesture(Landroid/view/MotionEvent;)V

    .line 307
    goto/16 :goto_a

    .line 310
    :cond_c
    iput-boolean v5, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mPassedPilferInputSlop:Z

    .line 312
    iget-boolean v4, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mIsDeferredDownTarget:Z

    if-eqz v4, :cond_d

    .line 315
    move/from16 v17, v6

    .end local v6    # "displacement":F
    .local v17, "displacement":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-direct {v0, v5, v6}, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->startTouchTrackingForWindowAnimation(J)V

    goto :goto_5

    .line 312
    .end local v17    # "displacement":F
    .restart local v6    # "displacement":F
    :cond_d
    move/from16 v17, v6

    .line 317
    .end local v6    # "displacement":F
    .restart local v17    # "displacement":F
    :goto_5
    iget-boolean v5, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mPassedWindowMoveSlop:Z

    if-nez v5, :cond_e

    .line 318
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mPassedWindowMoveSlop:Z

    .line 319
    iget v5, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mTouchSlop:F

    neg-float v5, v5

    move/from16 v6, v17

    .end local v17    # "displacement":F
    .restart local v6    # "displacement":F
    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iput v5, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mStartDisplacement:F

    goto :goto_6

    .line 317
    .end local v6    # "displacement":F
    .restart local v17    # "displacement":F
    :cond_e
    move/from16 v6, v17

    const/4 v4, 0x1

    .line 322
    .end local v17    # "displacement":F
    .restart local v6    # "displacement":F
    :goto_6
    invoke-direct {v0, v15}, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->notifyGestureStarted(Z)V

    goto :goto_7

    .line 302
    :cond_f
    move v4, v5

    goto :goto_7

    .line 301
    :cond_10
    move v4, v5

    .line 326
    :goto_7
    iget-object v5, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    if-eqz v5, :cond_15

    .line 327
    iget-boolean v4, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mPassedWindowMoveSlop:Z

    if-eqz v4, :cond_11

    .line 329
    iget v4, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mStartDisplacement:F

    sub-float v4, v6, v4

    invoke-virtual {v5, v4}, Lcom/android/quickstep/AbsSwipeUpHandler;->updateDisplacement(F)V

    .line 332
    :cond_11
    iget-object v4, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v4}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isFullyGesturalNavMode()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 333
    iget-object v4, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

    iget v5, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mMotionPauseMinDisplacement:F

    cmpg-float v5, v10, v5

    if-ltz v5, :cond_13

    if-eqz v15, :cond_12

    goto :goto_8

    :cond_12
    const/4 v5, 0x0

    goto :goto_9

    :cond_13
    :goto_8
    const/4 v5, 0x1

    :goto_9
    invoke-virtual {v4, v5}, Lcom/android/quickstep/util/MotionPauseDetector;->setDisallowPause(Z)V

    .line 335
    iget-object v4, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

    invoke-virtual {v4, v1}, Lcom/android/quickstep/util/MotionPauseDetector;->addPosition(Landroid/view/MotionEvent;)V

    .line 336
    iget-object v4, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-virtual {v4, v15}, Lcom/android/quickstep/AbsSwipeUpHandler;->setIsLikelyToStartNewTask(Z)V

    goto :goto_a

    .line 350
    .end local v3    # "pointerIndex":I
    .end local v6    # "displacement":F
    .end local v7    # "displacementX":F
    .end local v8    # "displacementY":F
    .end local v9    # "horizontalDist":F
    .end local v10    # "upDist":F
    .end local v11    # "passedSlop":Z
    .end local v12    # "haveNotPassedSlopOnContinuedGesture":Z
    .end local v13    # "degrees":D
    .end local v15    # "isLikelyToStartNewTask":Z
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->finishTouchTracking(Landroid/view/MotionEvent;)V

    goto :goto_a

    .line 224
    :pswitch_5
    iget-object v3, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;->setBatchingEnabled(Z)V

    .line 226
    sget-object v3, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const/4 v5, 0x4

    const-string v6, "OtherActivityInputConsumer.DOWN"

    invoke-virtual {v3, v6, v5}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v3

    .line 228
    .local v3, "traceToken":Ljava/lang/Object;
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mActivePointerId:I

    .line 229
    iget-object v4, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mDownPos:Landroid/graphics/PointF;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    .line 230
    iget-object v4, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mLastPos:Landroid/graphics/PointF;

    iget-object v5, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mDownPos:Landroid/graphics/PointF;

    invoke-virtual {v4, v5}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 234
    iget-boolean v4, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mIsDeferredDownTarget:Z

    if-nez v4, :cond_14

    .line 235
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->startTouchTrackingForWindowAnimation(J)V

    .line 238
    :cond_14
    sget-object v4, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {v4, v3}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    .line 239
    nop

    .line 354
    .end local v3    # "traceToken":Ljava/lang/Object;
    :cond_15
    :goto_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public writeToProtoInternal(Lcom/android/launcher3/tracing/InputConsumerProto$Builder;)V
    .locals 1
    .param p1, "inputConsumerProto"    # Lcom/android/launcher3/tracing/InputConsumerProto$Builder;

    .line 489
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    if-eqz v0, :cond_0

    .line 490
    invoke-virtual {v0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->writeToProto(Lcom/android/launcher3/tracing/InputConsumerProto$Builder;)V

    .line 492
    :cond_0
    return-void
.end method
