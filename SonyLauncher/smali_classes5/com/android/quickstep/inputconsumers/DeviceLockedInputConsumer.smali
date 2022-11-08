.class public Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;
.super Ljava/lang/Object;
.source "DeviceLockedInputConsumer.java"

# interfaces
.implements Lcom/android/quickstep/InputConsumer;
.implements Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;
.implements Lcom/android/quickstep/util/TransformParams$BuilderProxy;


# static fields
.field private static final STATE_HANDLER_INVALIDATED:I

.field private static final STATE_NAMES:[Ljava/lang/String;

.field private static final STATE_TARGET_RECEIVED:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

.field private final mDisplaySize:Landroid/graphics/Point;

.field private final mGestureState:Lcom/android/quickstep/GestureState;

.field private mHomeLaunched:Z

.field private final mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

.field private final mMatrix:Landroid/graphics/Matrix;

.field private final mMaxTranslationY:F

.field private final mProgress:Lcom/android/quickstep/AnimatedFloat;

.field private mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

.field private final mStateCallback:Lcom/android/quickstep/MultiStateCallback;

.field private final mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

.field private mThresholdCrossed:Z

.field private final mTouchDown:Landroid/graphics/PointF;

.field private final mTouchSlopSquared:F

.field private final mTransformParams:Lcom/android/quickstep/util/TransformParams;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public static synthetic $r8$lambda$FHlgMKJUiGUn87oIIlGDaKrujk4(Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->applyTransform()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZgCxbg7REHv7tduAgg8Ae6xIfXI(Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->endRemoteAnimation()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStateCallback(Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;)Lcom/android/quickstep/MultiStateCallback;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmHomeLaunched(Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mHomeLaunched:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetSTATE_HANDLER_INVALIDATED()I
    .locals 1

    sget v0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->STATE_HANDLER_INVALIDATED:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->STATE_NAMES:[Ljava/lang/String;

    .line 79
    nop

    .line 80
    const/4 v0, 0x0

    const-string v1, "STATE_TARGET_RECEIVED"

    invoke-static {v0, v1}, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->getFlagForIndex(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->STATE_TARGET_RECEIVED:I

    .line 81
    nop

    .line 82
    const/4 v0, 0x1

    const-string v1, "STATE_HANDLER_INVALIDATED"

    invoke-static {v0, v1}, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->getFlagForIndex(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->STATE_HANDLER_INVALIDATED:I

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/TaskAnimationManager;Lcom/android/quickstep/GestureState;Lcom/android/systemui/shared/system/InputMonitorCompat;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deviceState"    # Lcom/android/quickstep/RecentsAnimationDeviceState;
    .param p3, "taskAnimationManager"    # Lcom/android/quickstep/TaskAnimationManager;
    .param p4, "gestureState"    # Lcom/android/quickstep/GestureState;
    .param p5, "inputMonitorCompat"    # Lcom/android/systemui/shared/system/InputMonitorCompat;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mTouchDown:Landroid/graphics/PointF;

    .line 96
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mMatrix:Landroid/graphics/Matrix;

    .line 100
    new-instance v0, Lcom/android/quickstep/AnimatedFloat;

    new-instance v1, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;)V

    invoke-direct {v0, v1}, Lcom/android/quickstep/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mProgress:Lcom/android/quickstep/AnimatedFloat;

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mThresholdCrossed:Z

    .line 103
    iput-boolean v0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mHomeLaunched:Z

    .line 110
    iput-object p1, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mContext:Landroid/content/Context;

    .line 111
    iput-object p2, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    .line 112
    iput-object p3, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    .line 113
    iput-object p4, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mGestureState:Lcom/android/quickstep/GestureState;

    .line 114
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->squaredTouchSlop(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mTouchSlopSquared:F

    .line 115
    new-instance v0, Lcom/android/quickstep/util/TransformParams;

    invoke-direct {v0}, Lcom/android/quickstep/util/TransformParams;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mTransformParams:Lcom/android/quickstep/util/TransformParams;

    .line 116
    iput-object p5, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->device_locked_y_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mMaxTranslationY:F

    .line 121
    sget-object v0, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v0}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mDisplaySize:Landroid/graphics/Point;

    .line 124
    new-instance v0, Lcom/android/quickstep/MultiStateCallback;

    sget-object v1, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->STATE_NAMES:[Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/quickstep/MultiStateCallback;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    .line 125
    sget v1, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->STATE_TARGET_RECEIVED:I

    sget v2, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->STATE_HANDLER_INVALIDATED:I

    or-int/2addr v1, v2

    new-instance v2, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer$$ExternalSyntheticLambda1;-><init>(Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    .line 128
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 129
    return-void
.end method

.method private applyTransform()V
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mTransformParams:Lcom/android/quickstep/util/TransformParams;

    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mProgress:Lcom/android/quickstep/AnimatedFloat;

    iget v1, v1, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/TransformParams;->setProgress(F)Lcom/android/quickstep/util/TransformParams;

    .line 260
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mTransformParams:Lcom/android/quickstep/util/TransformParams;

    invoke-virtual {v0}, Lcom/android/quickstep/util/TransformParams;->getTargetSet()Lcom/android/quickstep/RemoteAnimationTargets;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mTransformParams:Lcom/android/quickstep/util/TransformParams;

    invoke-virtual {v0, p0}, Lcom/android/quickstep/util/TransformParams;->createSurfaceParams(Lcom/android/quickstep/util/TransformParams$BuilderProxy;)[Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/TransformParams;->applySurfaceParams([Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V

    .line 263
    :cond_0
    return-void
.end method

.method private endRemoteAnimation()V
    .locals 3

    .line 250
    iget-boolean v0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mHomeLaunched:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 251
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->cancelRecentsAnimation(Z)V

    goto :goto_0

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz v0, :cond_1

    .line 253
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v1}, Lcom/android/quickstep/RecentsAnimationController;->finishController(ZLjava/lang/Runnable;Z)V

    .line 256
    :cond_1
    :goto_0
    return-void
.end method

.method private finishTouchTracking(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 185
    iget-boolean v0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mThresholdCrossed:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 186
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 188
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    .line 189
    .local v0, "velocityY":F
    iget-object v2, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/launcher3/R$dimen;->quickstep_fling_threshold_speed:I

    .line 190
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 193
    .local v2, "flingThreshold":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-lez v3, :cond_1

    .line 195
    cmpg-float v3, v0, v5

    if-gez v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    .local v1, "dismissTask":Z
    :goto_0
    goto :goto_1

    .line 197
    .end local v1    # "dismissTask":Z
    :cond_1
    iget-object v3, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mProgress:Lcom/android/quickstep/AnimatedFloat;

    iget v3, v3, Lcom/android/quickstep/AnimatedFloat;->value:F

    const v6, 0x3e99999a    # 0.3f

    cmpl-float v3, v3, v6

    if-ltz v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v4

    .line 201
    .restart local v1    # "dismissTask":Z
    :goto_1
    iget-object v3, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mProgress:Lcom/android/quickstep/AnimatedFloat;

    iget v4, v3, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-virtual {v3, v4, v5}, Lcom/android/quickstep/AnimatedFloat;->animateToValue(FF)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 202
    .local v3, "animator":Landroid/animation/ObjectAnimator;
    const-wide/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 203
    sget-object v4, Lcom/android/launcher3/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 204
    new-instance v4, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer$1;

    invoke-direct {v4, p0, v1}, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer$1;-><init>(Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;Z)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 215
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 216
    .end local v0    # "velocityY":F
    .end local v1    # "dismissTask":Z
    .end local v2    # "flingThreshold":F
    .end local v3    # "animator":Landroid/animation/ObjectAnimator;
    goto :goto_2

    .line 217
    :cond_3
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->STATE_HANDLER_INVALIDATED:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    .line 219
    :goto_2
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 221
    return-void
.end method

.method private static getFlagForIndex(ILjava/lang/String;)I
    .locals 1
    .param p0, "index"    # I
    .param p1, "name"    # Ljava/lang/String;

    .line 76
    const/4 v0, 0x1

    shl-int/2addr v0, p0

    return v0
.end method

.method private startRecentsTransition()V
    .locals 3

    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mThresholdCrossed:Z

    .line 225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mHomeLaunched:Z

    .line 226
    const-string v0, "Pilfer"

    const-string v1, "pilferPointers"

    invoke-static {v0, v1}, Lcom/android/launcher3/testing/TestLogging;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/InputMonitorCompat;->pilferPointers()V

    .line 229
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getHomeIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mGestureState:Lcom/android/quickstep/GestureState;

    .line 230
    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getGestureId()I

    move-result v1

    const-string v2, "INTENT_EXTRA_LOG_TRACE_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 231
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    iget-object v2, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v1, v2, v0, p0}, Lcom/android/quickstep/TaskAnimationManager;->startRecentsAnimation(Lcom/android/quickstep/GestureState;Landroid/content/Intent;Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;)Lcom/android/quickstep/RecentsAnimationCallbacks;

    .line 232
    return-void
.end method


# virtual methods
.method public allowInterceptByParent()Z
    .locals 1

    .line 279
    iget-boolean v0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mThresholdCrossed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getType()I
    .locals 1

    .line 133
    const/16 v0, 0x10

    return v0
.end method

.method public onBuildTargetParams(Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/TransformParams;)V
    .locals 3
    .param p1, "builder"    # Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;
    .param p2, "app"    # Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p3, "params"    # Lcom/android/quickstep/util/TransformParams;

    .line 268
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mProgress:Lcom/android/quickstep/AnimatedFloat;

    iget v1, v1, Lcom/android/quickstep/AnimatedFloat;->value:F

    iget v2, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mMaxTranslationY:F

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 269
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    .line 270
    return-void
.end method

.method public onConsumerAboutToBeSwitched()V
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->STATE_HANDLER_INVALIDATED:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    .line 275
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 138
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 139
    return-void

    .line 141
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 143
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 144
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 145
    .local v1, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 150
    :pswitch_1
    iget-boolean v2, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mThresholdCrossed:Z

    if-nez v2, :cond_3

    .line 152
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 153
    .local v2, "ptrIdx":I
    iget-object v3, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v3}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Lcom/android/quickstep/RotationTouchHelper;->isInSwipeUpTouchRegion(Landroid/view/MotionEvent;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 154
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 155
    .local v3, "action":I
    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 156
    invoke-direct {p0, p1}, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->finishTouchTracking(Landroid/view/MotionEvent;)V

    .line 157
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 159
    .end local v2    # "ptrIdx":I
    .end local v3    # "action":I
    :cond_1
    goto :goto_0

    .line 163
    :pswitch_2
    iget-boolean v2, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mThresholdCrossed:Z

    if-nez v2, :cond_2

    .line 164
    iget-object v2, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mTouchDown:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float v2, v0, v2

    iget-object v3, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mTouchDown:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float v3, v1, v3

    invoke-static {v2, v3}, Lcom/android/launcher3/Utilities;->squaredHypot(FF)F

    move-result v2

    iget v3, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mTouchSlopSquared:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 165
    invoke-direct {p0}, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->startRecentsTransition()V

    goto :goto_0

    .line 168
    :cond_2
    iget-object v2, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mTouchDown:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 169
    .local v2, "dy":F
    iget-object v3, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mProgress:Lcom/android/quickstep/AnimatedFloat;

    iget-object v4, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mDisplaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    div-float v4, v2, v4

    invoke-virtual {v3, v4}, Lcom/android/quickstep/AnimatedFloat;->updateValue(F)V

    .line 171
    .end local v2    # "dy":F
    goto :goto_0

    .line 175
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->finishTouchTracking(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 147
    :pswitch_4
    iget-object v2, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mTouchDown:Landroid/graphics/PointF;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 148
    nop

    .line 178
    :cond_3
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onRecentsAnimationCanceled(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/shared/recents/model/ThumbnailData;",
            ">;)V"
        }
    .end annotation

    .line 245
    .local p1, "thumbnailDatas":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/systemui/shared/recents/model/ThumbnailData;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    .line 246
    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mTransformParams:Lcom/android/quickstep/util/TransformParams;

    invoke-virtual {v1, v0}, Lcom/android/quickstep/util/TransformParams;->setTargetSet(Lcom/android/quickstep/RemoteAnimationTargets;)Lcom/android/quickstep/util/TransformParams;

    .line 247
    return-void
.end method

.method public onRecentsAnimationStart(Lcom/android/quickstep/RecentsAnimationController;Lcom/android/quickstep/RecentsAnimationTargets;)V
    .locals 2
    .param p1, "controller"    # Lcom/android/quickstep/RecentsAnimationController;
    .param p2, "targets"    # Lcom/android/quickstep/RecentsAnimationTargets;

    .line 237
    iput-object p1, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    .line 238
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mTransformParams:Lcom/android/quickstep/util/TransformParams;

    invoke-virtual {v0, p2}, Lcom/android/quickstep/util/TransformParams;->setTargetSet(Lcom/android/quickstep/RemoteAnimationTargets;)Lcom/android/quickstep/util/TransformParams;

    .line 239
    invoke-direct {p0}, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->applyTransform()V

    .line 240
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->STATE_TARGET_RECEIVED:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    .line 241
    return-void
.end method
