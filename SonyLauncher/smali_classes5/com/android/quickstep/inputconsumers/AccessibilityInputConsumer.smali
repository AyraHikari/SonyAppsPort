.class public Lcom/android/quickstep/inputconsumers/AccessibilityInputConsumer;
.super Lcom/android/quickstep/inputconsumers/DelegateInputConsumer;
.source "AccessibilityInputConsumer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "A11yInputConsumer"


# instance fields
.field private mActivePointerId:I

.field private final mContext:Landroid/content/Context;

.field private final mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

.field private mDownY:F

.field private final mMinFlingVelocity:F

.field private final mMinGestureDistance:F

.field private final mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

.field private mTotalY:F

.field private final mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/InputConsumer;Lcom/android/systemui/shared/system/InputMonitorCompat;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deviceState"    # Lcom/android/quickstep/RecentsAnimationDeviceState;
    .param p3, "delegate"    # Lcom/android/quickstep/InputConsumer;
    .param p4, "inputMonitor"    # Lcom/android/systemui/shared/system/InputMonitorCompat;

    .line 59
    invoke-direct {p0, p3, p4}, Lcom/android/quickstep/inputconsumers/DelegateInputConsumer;-><init>(Lcom/android/quickstep/InputConsumer;Lcom/android/systemui/shared/system/InputMonitorCompat;)V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/quickstep/inputconsumers/AccessibilityInputConsumer;->mActivePointerId:I

    .line 60
    iput-object p1, p0, Lcom/android/quickstep/inputconsumers/AccessibilityInputConsumer;->mContext:Landroid/content/Context;

    .line 61
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/inputconsumers/AccessibilityInputConsumer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->accessibility_gesture_min_swipe_distance:I

    .line 63
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/quickstep/inputconsumers/AccessibilityInputConsumer;->mMinGestureDistance:F

    .line 64
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/quickstep/inputconsumers/AccessibilityInputConsumer;->mMinFlingVelocity:F

    .line 65
    iput-object p2, p0, Lcom/android/quickstep/inputconsumers/AccessibilityInputConsumer;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    .line 67
    new-instance v0, Lcom/android/quickstep/util/MotionPauseDetector;

    invoke-direct {v0, p1}, Lcom/android/quickstep/util/MotionPauseDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/quickstep/inputconsumers/AccessibilityInputConsumer;->mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

    .line 68
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/AccessibilityInputConsumer;->mDelegate:Lcom/android/quickstep/InputConsumer;

    invoke-interface {v0}, Lcom/android/quickstep/InputConsumer;->getType()I

    move-result v0

    or-int/lit8 v0, v0, 0x20

    return v0
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 77
    iget v0, p0, Lcom/android/quickstep/inputconsumers/AccessibilityInputConsumer;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/AccessibilityInputConsumer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 81
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 86
    :pswitch_1
    iget v0, p0, Lcom/android/quickstep/inputconsumers/AccessibilityInputConsumer;->mState:I

    if-ne v0, v3, :cond_8

    .line 87
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 88
    .local v0, "pointerIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 89
    .local v1, "pointerId":I
    iget v4, p0, Lcom/android/quickstep/inputconsumers/AccessibilityInputConsumer;->mActivePointerId:I

    if-ne v1, v4, :cond_2

    .line 90
    if-nez v0, :cond_1

    move v2, v3

    .line 92
    .local v2, "newPointerIdx":I
    :cond_1
    iget v4, p0, Lcom/android/quickstep/inputconsumers/AccessibilityInputConsumer;->mTotalY:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    iget v6, p0, Lcom/android/quickstep/inputconsumers/AccessibilityInputConsumer;->mDownY:F

    sub-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, p0, Lcom/android/quickstep/inputconsumers/AccessibilityInputConsumer;->mTotalY:F

    .line 93
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iput v4, p0, Lcom/android/quickstep/inputconsumers/AccessibilityInputConsumer;->mDownY:F

    .line 94
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Lcom/android/quickstep/inputconsumers/AccessibilityInputConsumer;->mActivePointerId:I

    .line 96
    .end local v0    # "pointerIndex":I
    .end local v1    # "pointerId":I
    .end local v2    # "newPointerIdx":I
    :cond_2
    goto/16 :goto_2

    .line 100
    :pswitch_2
    iget v0, p0, Lcom/android/quickstep/inputconsumers/AccessibilityInputConsumer;->mState:I

    if-nez v0, :cond_8

    .line 101
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 102
    .restart local v0    # "pointerIndex":I
    iget-object v2, p0, Lcom/android/quickstep/inputconsumers/AccessibilityInputConsumer;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v2}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;

    move-result-object v2

    .line 103
    invoke-virtual {v2, p1, v0}, Lcom/android/quickstep/RotationTouchHelper;->isInSwipeUpTouchRegion(Landroid/view/MotionEvent;I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/quickstep/inputconsumers/AccessibilityInputConsumer;->mDelegate:Lcom/android/quickstep/InputConsumer;

    .line 104
    invoke-interface {v2}, Lcom/android/quickstep/InputConsumer;->allowInterceptByParent()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 105
    invoke-virtual {p0, p1}, Lcom/android/quickstep/inputconsumers/AccessibilityInputConsumer;->setActive(Landroid/view/MotionEvent;)V

    .line 107
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/android/quickstep/inputconsumers/AccessibilityInputConsumer;->mActivePointerId:I

    .line 108
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Lcom/android/quickstep/inputconsumers/AccessibilityInputConsumer;->mDownY:F

    goto :goto_0

    .line 110
    :cond_3
    iput v1, p0, Lcom/android/quickstep/inputconsumers/AccessibilityInputConsumer;->mState:I

    .line 112
    .end local v0    # "pointerIndex":I
    :goto_0
    goto/16 :goto_2

    .line 116
    :pswitch_3
    iget v0, p0, Lcom/android/quickstep/inputconsumers/AccessibilityInputConsumer;->mState:I

    if-ne v0, v3, :cond_8

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/AccessibilityInputConsumer;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isAccessibilityMenuShortcutAvailable()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 117
    iget v0, p0, Lcom/android/quickstep/inputconsumers/AccessibilityInputConsumer;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 118
    .restart local v0    # "pointerIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    .line 119
    goto :goto_2

    .line 121
    :cond_4
    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/AccessibilityInputConsumer;->mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

    invoke-virtual {v1, p1, v0}, Lcom/android/quickstep/util/MotionPauseDetector;->addPosition(Landroid/view/MotionEvent;I)V

    .line 122
    .end local v0    # "pointerIndex":I
    goto :goto_2

    .line 126
    :pswitch_4
    iget v0, p0, Lcom/android/quickstep/inputconsumers/AccessibilityInputConsumer;->mState:I

    if-ne v0, v3, :cond_7

    .line 127
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/AccessibilityInputConsumer;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isAccessibilityMenuShortcutAvailable()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/AccessibilityInputConsumer;->mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

    .line 128
    invoke-virtual {v0}, Lcom/android/quickstep/util/MotionPauseDetector;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 129
    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/AccessibilityInputConsumer;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v0}, Lcom/android/quickstep/SystemUiProxy;->notifyAccessibilityButtonLongClicked()V

    goto :goto_1

    .line 131
    :cond_5
    iget v0, p0, Lcom/android/quickstep/inputconsumers/AccessibilityInputConsumer;->mTotalY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v4, p0, Lcom/android/quickstep/inputconsumers/AccessibilityInputConsumer;->mDownY:F

    sub-float/2addr v1, v4

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/quickstep/inputconsumers/AccessibilityInputConsumer;->mTotalY:F

    .line 132
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/AccessibilityInputConsumer;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 134
    iget v0, p0, Lcom/android/quickstep/inputconsumers/AccessibilityInputConsumer;->mTotalY:F

    neg-float v0, v0

    iget v1, p0, Lcom/android/quickstep/inputconsumers/AccessibilityInputConsumer;->mMinGestureDistance:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_6

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/AccessibilityInputConsumer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 135
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    neg-float v0, v0

    iget v1, p0, Lcom/android/quickstep/inputconsumers/AccessibilityInputConsumer;->mMinFlingVelocity:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    .line 136
    :cond_6
    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/AccessibilityInputConsumer;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v0, v2}, Lcom/android/quickstep/SystemUiProxy;->notifyAccessibilityButtonClicked(I)V

    .line 143
    :cond_7
    :goto_1
    :pswitch_5
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/AccessibilityInputConsumer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 144
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/AccessibilityInputConsumer;->mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

    invoke-virtual {v0}, Lcom/android/quickstep/util/MotionPauseDetector;->clear()V

    goto :goto_2

    .line 83
    :pswitch_6
    nop

    .line 149
    :cond_8
    :goto_2
    iget v0, p0, Lcom/android/quickstep/inputconsumers/AccessibilityInputConsumer;->mState:I

    if-eq v0, v3, :cond_9

    .line 150
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/AccessibilityInputConsumer;->mDelegate:Lcom/android/quickstep/InputConsumer;

    invoke-interface {v0, p1}, Lcom/android/quickstep/InputConsumer;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 152
    :cond_9
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
