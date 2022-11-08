.class public Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;
.super Lcom/android/quickstep/inputconsumers/DelegateInputConsumer;
.source "OneHandedModeInputConsumer.java"


# static fields
.field private static final ANGLE_MAX:I = 0x96

.field private static final ANGLE_MIN:I = 0x1e


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

.field private final mDisplaySize:Landroid/graphics/Point;

.field private final mDownPos:Landroid/graphics/PointF;

.field private final mDragDistThreshold:F

.field private mIsStopGesture:Z

.field private final mLastPos:Landroid/graphics/PointF;

.field private final mNavBarSize:I

.field private mPassedSlop:Z

.field private final mSquaredSlop:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/InputConsumer;Lcom/android/systemui/shared/system/InputMonitorCompat;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deviceState"    # Lcom/android/quickstep/RecentsAnimationDeviceState;
    .param p3, "delegate"    # Lcom/android/quickstep/InputConsumer;
    .param p4, "inputMonitor"    # Lcom/android/systemui/shared/system/InputMonitorCompat;

    .line 67
    invoke-direct {p0, p3, p4}, Lcom/android/quickstep/inputconsumers/DelegateInputConsumer;-><init>(Lcom/android/quickstep/InputConsumer;Lcom/android/systemui/shared/system/InputMonitorCompat;)V

    .line 59
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->mDownPos:Landroid/graphics/PointF;

    .line 60
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->mLastPos:Landroid/graphics/PointF;

    .line 68
    iput-object p1, p0, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->gestures_onehanded_drag_threshold:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->mDragDistThreshold:F

    .line 72
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->squaredTouchSlop(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->mSquaredSlop:F

    .line 73
    sget-object v0, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v0}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->mDisplaySize:Landroid/graphics/Point;

    .line 74
    nop

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 74
    const-string v1, "navigation_bar_gesture_height"

    invoke-static {v1, v0}, Lcom/android/launcher3/ResourceUtils;->getNavbarSize(Ljava/lang/String;Landroid/content/res/Resources;)I

    move-result v0

    iput v0, p0, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->mNavBarSize:I

    .line 76
    return-void
.end method

.method private clearState()V
    .locals 1

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->mPassedSlop:Z

    .line 145
    iput v0, p0, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->mState:I

    .line 146
    iput-boolean v0, p0, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->mIsStopGesture:Z

    .line 147
    return-void
.end method

.method private isInSystemGestureRegion(Landroid/graphics/PointF;)Z
    .locals 3
    .param p1, "lastPos"    # Landroid/graphics/PointF;

    .line 166
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->mDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->mNavBarSize:I

    sub-int/2addr v0, v1

    .line 167
    .local v0, "navBarUpperBound":I
    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isGesturalNavMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p1, Landroid/graphics/PointF;->y:F

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isValidExitAngle(FF)Z
    .locals 4
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F

    .line 176
    float-to-double v0, p2

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 177
    .local v0, "angle":F
    const/high16 v1, 0x41f00000    # 30.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    const/high16 v1, 0x43160000    # 150.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isValidStartAngle(FF)Z
    .locals 4
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F

    .line 171
    float-to-double v0, p2

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 172
    .local v0, "angle":F
    const/high16 v1, -0x3cea0000    # -150.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    const/high16 v1, -0x3e100000    # -30.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private onStartGestureDetected()V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isSwipeToNotificationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v0}, Lcom/android/quickstep/SystemUiProxy;->expandNotificationPanel()V

    goto :goto_0

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isOneHandedModeActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 153
    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v0}, Lcom/android/quickstep/SystemUiProxy;->startOneHandedMode()V

    .line 155
    :cond_1
    :goto_0
    return-void
.end method

.method private onStopGestureDetected()V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isOneHandedModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isOneHandedModeActive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v0}, Lcom/android/quickstep/SystemUiProxy;->stopOneHandedMode()V

    .line 163
    return-void

    .line 159
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->mDelegate:Lcom/android/quickstep/InputConsumer;

    invoke-interface {v0}, Lcom/android/quickstep/InputConsumer;->getType()I

    move-result v0

    or-int/lit16 v0, v0, 0x800

    return v0
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 85
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 134
    :pswitch_0
    invoke-direct {p0}, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->clearState()V

    goto/16 :goto_1

    .line 92
    :pswitch_1
    iget v0, p0, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->mState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 93
    goto/16 :goto_1

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->mDelegate:Lcom/android/quickstep/InputConsumer;

    invoke-interface {v0}, Lcom/android/quickstep/InputConsumer;->allowInterceptByParent()Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    iput v2, p0, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->mState:I

    .line 97
    goto/16 :goto_1

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->mLastPos:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 101
    iget-boolean v0, p0, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->mPassedSlop:Z

    if-nez v0, :cond_5

    .line 102
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->mLastPos:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->mDownPos:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v3

    iget-object v3, p0, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->mLastPos:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->mDownPos:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    invoke-static {v0, v3}, Lcom/android/launcher3/Utilities;->squaredHypot(FF)F

    move-result v0

    iget v3, p0, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->mSquaredSlop:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_9

    .line 104
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isOneHandedModeActive()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->mDownPos:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->mLastPos:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v3

    iget-object v3, p0, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->mDownPos:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->mLastPos:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    invoke-direct {p0, v0, v3}, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->isValidStartAngle(FF)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    .line 106
    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isOneHandedModeActive()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->mDownPos:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->mLastPos:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v3

    iget-object v3, p0, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->mDownPos:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->mLastPos:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    invoke-direct {p0, v0, v3}, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->isValidExitAngle(FF)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 109
    :cond_3
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->mLastPos:Landroid/graphics/PointF;

    invoke-direct {p0, v0}, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->isInSystemGestureRegion(Landroid/graphics/PointF;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->mPassedSlop:Z

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->setActive(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 112
    :cond_4
    iput v2, p0, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->mState:I

    goto :goto_1

    .line 116
    :cond_5
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->mLastPos:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->mDownPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v2

    float-to-double v2, v0

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->mLastPos:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->mDownPos:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v4

    float-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v0, v2

    .line 118
    .local v0, "distance":F
    iget v2, p0, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->mDragDistThreshold:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_6

    iget-boolean v2, p0, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->mPassedSlop:Z

    if-eqz v2, :cond_6

    .line 119
    iput-boolean v1, p0, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->mIsStopGesture:Z

    .line 122
    .end local v0    # "distance":F
    :cond_6
    goto :goto_1

    .line 125
    :pswitch_2
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->mLastPos:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->mDownPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->mPassedSlop:Z

    if-eqz v0, :cond_7

    .line 126
    invoke-direct {p0}, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->onStartGestureDetected()V

    goto :goto_0

    .line 127
    :cond_7
    iget-boolean v0, p0, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->mIsStopGesture:Z

    if-eqz v0, :cond_8

    .line 128
    invoke-direct {p0}, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->onStopGestureDetected()V

    .line 130
    :cond_8
    :goto_0
    invoke-direct {p0}, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->clearState()V

    .line 131
    goto :goto_1

    .line 87
    :pswitch_3
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->mDownPos:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 88
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->mLastPos:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->mDownPos:Landroid/graphics/PointF;

    invoke-virtual {v0, v2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 89
    nop

    .line 138
    :cond_9
    :goto_1
    iget v0, p0, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->mState:I

    if-eq v0, v1, :cond_a

    .line 139
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;->mDelegate:Lcom/android/quickstep/InputConsumer;

    invoke-interface {v0, p1}, Lcom/android/quickstep/InputConsumer;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 141
    :cond_a
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
