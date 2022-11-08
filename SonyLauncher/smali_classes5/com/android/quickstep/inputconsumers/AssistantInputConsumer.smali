.class public Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;
.super Lcom/android/quickstep/inputconsumers/DelegateInputConsumer;
.source "AssistantInputConsumer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/inputconsumers/AssistantInputConsumer$AssistantGestureListener;
    }
.end annotation


# static fields
.field private static final OPA_BUNDLE_TRIGGER:Ljava/lang/String; = "triggered_by"

.field private static final OPA_BUNDLE_TRIGGER_DIAG_SWIPE_GESTURE:I = 0x53

.field private static final RETRACT_ANIMATION_DURATION_MS:J = 0x12cL

.field private static final TAG:Ljava/lang/String; = "AssistantInputConsumer"


# instance fields
.field private mActivePointerId:I

.field private mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

.field private final mAngleThreshold:I

.field private final mContext:Landroid/content/Context;

.field private mDistance:F

.field private final mDownPos:Landroid/graphics/PointF;

.field private final mDragDistThreshold:F

.field private mDragTime:J

.field private final mFlingDistThreshold:F

.field private final mGestureDetector:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastPos:Landroid/graphics/PointF;

.field private mLastProgress:F

.field private mLaunchedAssistant:Z

.field private mPassedSlop:Z

.field private final mSquaredSlop:F

.field private final mStartDragPos:Landroid/graphics/PointF;

.field private mTimeFraction:F

.field private final mTimeThreshold:J


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDistance(Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;)F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mDistance:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFlingDistThreshold(Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;)F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mFlingDistThreshold:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLaunchedAssistant(Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mLaunchedAssistant:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmLastProgress(Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;F)V
    .locals 0

    iput p1, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mLastProgress:F

    return-void
.end method

.method static bridge synthetic -$$Nest$misValidAssistantGestureAngle(Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;FF)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->isValidAssistantGestureAngle(FF)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mstartAssistantInternal(Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->startAssistantInternal()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/quickstep/GestureState;Lcom/android/quickstep/InputConsumer;Lcom/android/systemui/shared/system/InputMonitorCompat;Lcom/android/quickstep/RecentsAnimationDeviceState;Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gestureState"    # Lcom/android/quickstep/GestureState;
    .param p3, "delegate"    # Lcom/android/quickstep/InputConsumer;
    .param p4, "inputMonitor"    # Lcom/android/systemui/shared/system/InputMonitorCompat;
    .param p5, "deviceState"    # Lcom/android/quickstep/RecentsAnimationDeviceState;
    .param p6, "startEvent"    # Landroid/view/MotionEvent;

    .line 98
    invoke-direct {p0, p3, p4}, Lcom/android/quickstep/inputconsumers/DelegateInputConsumer;-><init>(Lcom/android/quickstep/InputConsumer;Lcom/android/systemui/shared/system/InputMonitorCompat;)V

    .line 70
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mDownPos:Landroid/graphics/PointF;

    .line 71
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mLastPos:Landroid/graphics/PointF;

    .line 72
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mStartDragPos:Landroid/graphics/PointF;

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mActivePointerId:I

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 100
    .local v0, "res":Landroid/content/res/Resources;
    iput-object p1, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mContext:Landroid/content/Context;

    .line 101
    sget v1, Lcom/android/launcher3/R$dimen;->gestures_assistant_drag_threshold:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mDragDistThreshold:F

    .line 102
    sget v1, Lcom/android/launcher3/R$dimen;->gestures_assistant_fling_threshold:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mFlingDistThreshold:F

    .line 103
    sget v1, Lcom/android/launcher3/R$integer;->assistant_gesture_min_time_threshold:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mTimeThreshold:J

    .line 104
    sget v1, Lcom/android/launcher3/R$integer;->assistant_gesture_corner_deg_threshold:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mAngleThreshold:I

    .line 106
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    int-to-float v1, v1

    .line 108
    .local v1, "slop":F
    mul-float v2, v1, v1

    iput v2, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mSquaredSlop:F

    .line 109
    invoke-virtual {p2}, Lcom/android/quickstep/GestureState;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v2

    iput-object v2, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    .line 111
    invoke-virtual {p5}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isAssistantGestureIsConstrained()Z

    move-result v2

    if-nez v2, :cond_1

    .line 112
    invoke-virtual {p5, p6}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isInDeferredGestureRegion(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 113
    .local v2, "flingDisabled":Z
    :goto_1
    if-eqz v2, :cond_2

    .line 114
    new-instance v3, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer$$ExternalSyntheticLambda0;-><init>()V

    goto :goto_2

    .line 115
    :cond_2
    new-instance v3, Landroid/view/GestureDetector;

    new-instance v4, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer$AssistantGestureListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer$AssistantGestureListener;-><init>(Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;Lcom/android/quickstep/inputconsumers/AssistantInputConsumer$AssistantGestureListener-IA;)V

    invoke-direct {v3, p1, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    new-instance v4, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer$$ExternalSyntheticLambda1;

    invoke-direct {v4, v3}, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer$$ExternalSyntheticLambda1;-><init>(Landroid/view/GestureDetector;)V

    move-object v3, v4

    :goto_2
    iput-object v3, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mGestureDetector:Ljava/util/function/Consumer;

    .line 116
    return-void
.end method

.method private isValidAssistantGestureAngle(FF)Z
    .locals 4
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F

    .line 258
    float-to-double v0, p2

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 262
    .local v0, "angle":F
    const/high16 v1, 0x42b40000    # 90.0f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    const/high16 v2, 0x43340000    # 180.0f

    sub-float/2addr v2, v0

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    move v0, v2

    .line 263
    iget v2, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mAngleThreshold:I

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method static synthetic lambda$new$0(Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "ev"    # Landroid/view/MotionEvent;

    .line 114
    return-void
.end method

.method private startAssistantInternal()V
    .locals 5

    .line 240
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v0

    .line 241
    .local v0, "launcherActivity":Lcom/android/launcher3/BaseDraggingActivity;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {v0}, Lcom/android/launcher3/BaseDraggingActivity;->getRootView()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0xd

    invoke-virtual {v2, v3, v1}, Landroid/view/View;->performHapticFeedback(II)Z

    .line 247
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 248
    .local v2, "args":Landroid/os/Bundle;
    const/16 v3, 0x53

    const-string v4, "triggered_by"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 249
    const-string v3, "invocation_type"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 250
    sget-object v3, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v4, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v3, v2}, Lcom/android/quickstep/SystemUiProxy;->startAssistant(Landroid/os/Bundle;)V

    .line 251
    iput-boolean v1, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mLaunchedAssistant:Z

    .line 252
    return-void
.end method

.method private updateAssistantProgress()V
    .locals 4

    .line 228
    iget-boolean v0, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mLaunchedAssistant:Z

    if-nez v0, :cond_1

    .line 229
    iget v0, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mDistance:F

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget v2, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mDragDistThreshold:F

    div-float/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v2, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mTimeFraction:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mLastProgress:F

    .line 230
    iget v0, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mDistance:F

    iget v3, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mDragDistThreshold:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_0

    cmpl-float v0, v2, v1

    if-ltz v0, :cond_0

    .line 231
    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quickstep/SystemUiProxy;->onAssistantGestureCompletion(F)V

    .line 232
    invoke-direct {p0}, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->startAssistantInternal()V

    goto :goto_0

    .line 234
    :cond_0
    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    iget v1, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mLastProgress:F

    invoke-virtual {v0, v1}, Lcom/android/quickstep/SystemUiProxy;->onAssistantProgress(F)V

    .line 237
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mDelegate:Lcom/android/quickstep/InputConsumer;

    invoke-interface {v0}, Lcom/android/quickstep/InputConsumer;->getType()I

    move-result v0

    or-int/lit8 v0, v0, 0x8

    return v0
.end method

.method synthetic lambda$onMotionEvent$1$com-android-quickstep-inputconsumers-AssistantInputConsumer(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .line 201
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 202
    .local v0, "progress":F
    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v2, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v1, v0}, Lcom/android/quickstep/SystemUiProxy;->onAssistantProgress(F)V

    .line 203
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 126
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 141
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 142
    .local v0, "ptrIdx":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 143
    .local v1, "ptrId":I
    iget v4, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mActivePointerId:I

    if-ne v1, v4, :cond_7

    .line 144
    if-nez v0, :cond_0

    move v2, v3

    .line 145
    .local v2, "newPointerIdx":I
    :cond_0
    iget-object v4, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mDownPos:Landroid/graphics/PointF;

    .line 146
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    iget-object v6, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mLastPos:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mDownPos:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    sub-float/2addr v5, v6

    .line 147
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    iget-object v7, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mLastPos:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    iget-object v8, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mDownPos:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v8

    sub-float/2addr v6, v7

    .line 145
    invoke-virtual {v4, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    .line 148
    iget-object v4, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mLastPos:Landroid/graphics/PointF;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    .line 149
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mActivePointerId:I

    .line 150
    .end local v2    # "newPointerIdx":I
    goto/16 :goto_0

    .line 135
    .end local v0    # "ptrIdx":I
    .end local v1    # "ptrId":I
    :pswitch_2
    iget v0, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mState:I

    if-eq v0, v3, :cond_7

    .line 136
    iput v4, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mState:I

    goto/16 :goto_0

    .line 154
    :pswitch_3
    iget v0, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mState:I

    if-ne v0, v4, :cond_1

    .line 155
    goto/16 :goto_0

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mDelegate:Lcom/android/quickstep/InputConsumer;

    invoke-interface {v0}, Lcom/android/quickstep/InputConsumer;->allowInterceptByParent()Z

    move-result v0

    if-nez v0, :cond_2

    .line 158
    iput v4, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mState:I

    .line 159
    goto/16 :goto_0

    .line 161
    :cond_2
    iget v0, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 162
    .local v0, "pointerIndex":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    .line 163
    goto/16 :goto_0

    .line 165
    :cond_3
    iget-object v2, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mLastPos:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    .line 167
    iget-boolean v2, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mPassedSlop:Z

    if-nez v2, :cond_5

    .line 169
    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mLastPos:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mDownPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mLastPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mDownPos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v5

    invoke-static {v1, v2}, Lcom/android/launcher3/Utilities;->squaredHypot(FF)F

    move-result v1

    iget v2, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mSquaredSlop:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_7

    .line 172
    iput-boolean v3, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mPassedSlop:Z

    .line 173
    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mStartDragPos:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mLastPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mLastPos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 174
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mDragTime:J

    .line 176
    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mDownPos:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mLastPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mDownPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mLastPos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v5

    invoke-direct {p0, v1, v2}, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->isValidAssistantGestureAngle(FF)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 178
    invoke-virtual {p0, p1}, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->setActive(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 180
    :cond_4
    iput v4, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mState:I

    goto/16 :goto_0

    .line 185
    :cond_5
    iget-object v2, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mLastPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mStartDragPos:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v4

    float-to-double v4, v2

    iget-object v2, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mLastPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mStartDragPos:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v6

    float-to-double v6, v2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v2, v4

    iput v2, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mDistance:F

    .line 187
    cmpl-float v1, v2, v1

    if-ltz v1, :cond_7

    .line 188
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v4, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mDragTime:J

    sub-long/2addr v1, v4

    .line 189
    .local v1, "diff":J
    long-to-float v4, v1

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v4, v5

    iget-wide v6, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mTimeThreshold:J

    long-to-float v6, v6

    div-float/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mTimeFraction:F

    .line 190
    invoke-direct {p0}, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->updateAssistantProgress()V

    .line 191
    .end local v1    # "diff":J
    goto :goto_0

    .line 197
    .end local v0    # "pointerIndex":I
    :pswitch_4
    iget v0, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mState:I

    if-eq v0, v4, :cond_6

    iget-boolean v0, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mLaunchedAssistant:Z

    if-nez v0, :cond_6

    .line 198
    new-array v0, v4, [F

    iget v4, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mLastProgress:F

    aput v4, v0, v2

    aput v1, v0, v3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v4, 0x12c

    .line 199
    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 200
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer$$ExternalSyntheticLambda2;-><init>(Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 205
    new-instance v1, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer$1;

    invoke-direct {v1, p0}, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer$1;-><init>(Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 212
    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_2:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 213
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 215
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_6
    iput-boolean v2, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mPassedSlop:Z

    .line 216
    iput v2, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mState:I

    goto :goto_0

    .line 128
    :pswitch_5
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mActivePointerId:I

    .line 129
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mDownPos:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v0, v2, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 130
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mLastPos:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mDownPos:Landroid/graphics/PointF;

    invoke-virtual {v0, v2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 131
    iput v1, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mTimeFraction:F

    .line 132
    nop

    .line 220
    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mGestureDetector:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 222
    iget v0, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mState:I

    if-eq v0, v3, :cond_8

    .line 223
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mDelegate:Lcom/android/quickstep/InputConsumer;

    invoke-interface {v0, p1}, Lcom/android/quickstep/InputConsumer;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 225
    :cond_8
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
