.class public Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer;
.super Ljava/lang/Object;
.source "ProgressDelegateInputConsumer.java"

# interfaces
.implements Lcom/android/quickstep/InputConsumer;
.implements Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;
.implements Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;


# static fields
.field private static final STATE_FLING_FINISHED:I

.field private static final STATE_HANDLER_INVALIDATED:I

.field private static final STATE_NAMES:[Ljava/lang/String;

.field private static final STATE_TARGET_RECEIVED:I

.field private static final SWIPE_DISTANCE_THRESHOLD:F = 0.2f


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDisplaySize:Landroid/graphics/Point;

.field private mDragStarted:Z

.field private mFlingEndsOnHome:Ljava/lang/Boolean;

.field private final mGestureState:Lcom/android/quickstep/GestureState;

.field private final mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

.field private final mProgress:Lcom/android/quickstep/AnimatedFloat;

.field private mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

.field private final mStateCallback:Lcom/android/quickstep/MultiStateCallback;

.field private final mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

.field private final mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;


# direct methods
.method public static synthetic $r8$lambda$BNYXIISo6hjrdGPyr9fgOyN9t64(Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer;->endRemoteAnimation()V

    return-void
.end method

.method public static synthetic $r8$lambda$YpTffzFFZCgZCt17IotGI8muEdQ(Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer;->onFlingFinished()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 58
    const/4 v0, 0x0

    sput-object v0, Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer;->STATE_NAMES:[Ljava/lang/String;

    .line 66
    nop

    .line 67
    const/4 v0, 0x0

    const-string v1, "STATE_TARGET_RECEIVED"

    invoke-static {v0, v1}, Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer;->getFlagForIndex(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer;->STATE_TARGET_RECEIVED:I

    .line 68
    nop

    .line 69
    const/4 v0, 0x1

    const-string v1, "STATE_HANDLER_INVALIDATED"

    invoke-static {v0, v1}, Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer;->getFlagForIndex(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer;->STATE_HANDLER_INVALIDATED:I

    .line 70
    nop

    .line 71
    const/4 v0, 0x2

    const-string v1, "STATE_FLING_FINISHED"

    invoke-static {v0, v1}, Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer;->getFlagForIndex(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer;->STATE_FLING_FINISHED:I

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/quickstep/TaskAnimationManager;Lcom/android/quickstep/GestureState;Lcom/android/systemui/shared/system/InputMonitorCompat;Lcom/android/quickstep/AnimatedFloat;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "taskAnimationManager"    # Lcom/android/quickstep/TaskAnimationManager;
    .param p3, "gestureState"    # Lcom/android/quickstep/GestureState;
    .param p4, "inputMonitorCompat"    # Lcom/android/systemui/shared/system/InputMonitorCompat;
    .param p5, "progress"    # Lcom/android/quickstep/AnimatedFloat;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer;->mDragStarted:Z

    .line 92
    iput-object p1, p0, Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer;->mContext:Landroid/content/Context;

    .line 93
    iput-object p2, p0, Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    .line 94
    iput-object p3, p0, Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer;->mGestureState:Lcom/android/quickstep/GestureState;

    .line 95
    iput-object p4, p0, Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    .line 96
    iput-object p5, p0, Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer;->mProgress:Lcom/android/quickstep/AnimatedFloat;

    .line 99
    sget-object v1, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v1}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    iput-object v1, p0, Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer;->mDisplaySize:Landroid/graphics/Point;

    .line 102
    new-instance v1, Lcom/android/quickstep/MultiStateCallback;

    sget-object v2, Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer;->STATE_NAMES:[Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/android/quickstep/MultiStateCallback;-><init>([Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    .line 103
    sget v2, Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer;->STATE_TARGET_RECEIVED:I

    sget v3, Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer;->STATE_HANDLER_INVALIDATED:I

    or-int/2addr v3, v2

    new-instance v4, Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer;)V

    invoke-virtual {v1, v3, v4}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    .line 105
    sget v3, Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer;->STATE_FLING_FINISHED:I

    or-int/2addr v2, v3

    new-instance v3, Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer$$ExternalSyntheticLambda1;-><init>(Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    .line 108
    new-instance v1, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    sget-object v2, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->VERTICAL:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

    invoke-direct {v1, p1, p0, v2}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;-><init>(Landroid/content/Context;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;)V

    iput-object v1, p0, Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    .line 109
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->setDetectableScrollConditions(IZ)V

    .line 110
    return-void
.end method

.method private endRemoteAnimation()V
    .locals 1

    .line 182
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer;->onDragEnd(F)V

    .line 183
    return-void
.end method

.method private static getFlagForIndex(ILjava/lang/String;)I
    .locals 1
    .param p0, "index"    # I
    .param p1, "name"    # Ljava/lang/String;

    .line 63
    const/4 v0, 0x1

    shl-int/2addr v0, p0

    return v0
.end method

.method private onFlingFinished()V
    .locals 4

    .line 162
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer;->mFlingEndsOnHome:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 164
    .local v0, "endToRecents":Z
    :goto_0
    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/quickstep/RecentsAnimationController;->finishController(ZLjava/lang/Runnable;Z)V

    .line 167
    .end local v0    # "endToRecents":Z
    :cond_1
    return-void
.end method


# virtual methods
.method public allowInterceptByParent()Z
    .locals 1

    .line 192
    iget-boolean v0, p0, Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer;->mDragStarted:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getType()I
    .locals 1

    .line 114
    const/16 v0, 0x200

    return v0
.end method

.method synthetic lambda$onDragEnd$0$com-android-quickstep-inputconsumers-ProgressDelegateInputConsumer()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer;->STATE_FLING_FINISHED:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    return-void
.end method

.method public onConsumerAboutToBeSwitched()V
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer;->STATE_HANDLER_INVALIDATED:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    .line 188
    return-void
.end method

.method public onDrag(F)Z
    .locals 2
    .param p1, "displacement"    # F

    .line 136
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer;->mDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-lez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer;->mProgress:Lcom/android/quickstep/AnimatedFloat;

    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer;->mDisplaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    neg-int v1, v1

    int-to-float v1, v1

    div-float v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/AnimatedFloat;->updateValue(F)V

    .line 139
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onDragEnd(F)V
    .locals 7
    .param p1, "velocity"    # F

    .line 145
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->isFling(F)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 146
    cmpg-float v0, p1, v3

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    move v0, v1

    .local v0, "willExit":Z
    goto :goto_2

    .line 148
    .end local v0    # "willExit":Z
    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer;->mProgress:Lcom/android/quickstep/AnimatedFloat;

    iget v0, v0, Lcom/android/quickstep/AnimatedFloat;->value:F

    const v4, 0x3e4ccccd    # 0.2f

    cmpl-float v0, v0, v4

    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    move v0, v1

    .line 150
    .restart local v0    # "willExit":Z
    :goto_2
    if-eqz v0, :cond_3

    const/high16 v3, 0x3f800000    # 1.0f

    :cond_3
    move v1, v3

    .line 151
    .local v1, "endValue":F
    iget-object v2, p0, Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer;->mProgress:Lcom/android/quickstep/AnimatedFloat;

    iget v2, v2, Lcom/android/quickstep/AnimatedFloat;->value:F

    sub-float v2, v1, v2

    invoke-static {p1, v2}, Lcom/android/launcher3/touch/BaseSwipeDetector;->calculateDuration(FF)J

    move-result-wide v2

    .line 152
    .local v2, "duration":J
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer;->mFlingEndsOnHome:Ljava/lang/Boolean;

    .line 154
    iget-object v4, p0, Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer;->mProgress:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v4, v1}, Lcom/android/quickstep/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 155
    .local v4, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v4, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-static {p1}, Lcom/android/launcher3/anim/Interpolators;->scrollInterpolatorForVelocity(F)Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 156
    new-instance v5, Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0}, Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer$$ExternalSyntheticLambda2;-><init>(Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer;)V

    invoke-static {v5}, Lcom/android/launcher3/anim/AnimatorListeners;->forSuccessCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 158
    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    .line 159
    return-void
.end method

.method public onDragStart(ZF)V
    .locals 3
    .param p1, "start"    # Z
    .param p2, "startDisplacement"    # F

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer;->mDragStarted:Z

    .line 127
    const-string v0, "Pilfer"

    const-string v1, "pilferPointers"

    invoke-static {v0, v1}, Lcom/android/launcher3/testing/TestLogging;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/InputMonitorCompat;->pilferPointers()V

    .line 129
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getHomeIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer;->mGestureState:Lcom/android/quickstep/GestureState;

    .line 130
    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getGestureId()I

    move-result v1

    const-string v2, "INTENT_EXTRA_LOG_TRACE_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 131
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    iget-object v2, p0, Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v1, v2, v0, p0}, Lcom/android/quickstep/TaskAnimationManager;->startRecentsAnimation(Lcom/android/quickstep/GestureState;Landroid/content/Intent;Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;)Lcom/android/quickstep/RecentsAnimationCallbacks;

    .line 132
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 119
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer;->mFlingEndsOnHome:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 122
    :cond_0
    return-void
.end method

.method public onRecentsAnimationCanceled(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/shared/recents/model/ThumbnailData;",
            ">;)V"
        }
    .end annotation

    .line 178
    .local p1, "thumbnailDatas":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/systemui/shared/recents/model/ThumbnailData;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    .line 179
    return-void
.end method

.method public onRecentsAnimationStart(Lcom/android/quickstep/RecentsAnimationController;Lcom/android/quickstep/RecentsAnimationTargets;)V
    .locals 2
    .param p1, "controller"    # Lcom/android/quickstep/RecentsAnimationController;
    .param p2, "targets"    # Lcom/android/quickstep/RecentsAnimationTargets;

    .line 172
    iput-object p1, p0, Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    .line 173
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer;->STATE_TARGET_RECEIVED:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    .line 174
    return-void
.end method
