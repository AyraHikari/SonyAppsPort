.class public Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;
.super Ljava/lang/Object;
.source "TriggerSwipeUpTouchTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker$OnSwipeUpListener;
    }
.end annotation


# instance fields
.field private final mDisableHorizontalSwipe:Z

.field private final mDownPos:Landroid/graphics/PointF;

.field private mInterceptedTouch:Z

.field private final mMinFlingVelocity:F

.field private final mNavBarPosition:Lcom/android/quickstep/util/NavBarPosition;

.field private final mOnInterceptTouch:Ljava/lang/Runnable;

.field private final mOnSwipeUp:Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker$OnSwipeUpListener;

.field private final mSquaredTouchSlop:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/android/quickstep/util/NavBarPosition;Ljava/lang/Runnable;Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker$OnSwipeUpListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "disableHorizontalSwipe"    # Z
    .param p3, "navBarPosition"    # Lcom/android/quickstep/util/NavBarPosition;
    .param p4, "onInterceptTouch"    # Ljava/lang/Runnable;
    .param p5, "onSwipeUp"    # Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker$OnSwipeUpListener;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;->mDownPos:Landroid/graphics/PointF;

    .line 53
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->squaredTouchSlop(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;->mSquaredTouchSlop:F

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->quickstep_fling_threshold_speed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;->mMinFlingVelocity:F

    .line 56
    iput-object p3, p0, Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;->mNavBarPosition:Lcom/android/quickstep/util/NavBarPosition;

    .line 57
    iput-boolean p2, p0, Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;->mDisableHorizontalSwipe:Z

    .line 58
    iput-object p4, p0, Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;->mOnInterceptTouch:Ljava/lang/Runnable;

    .line 59
    iput-object p5, p0, Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;->mOnSwipeUp:Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker$OnSwipeUpListener;

    .line 61
    invoke-virtual {p0}, Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;->init()V

    .line 62
    return-void
.end method

.method private endTouchTracking()V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 132
    :cond_0
    return-void
.end method

.method private onGestureEnd(Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 135
    iget-object v0, p0, Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 136
    iget-object v0, p0, Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    .line 137
    .local v0, "velocityX":F
    iget-object v2, p0, Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    .line 138
    .local v2, "velocityY":F
    iget-object v3, p0, Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;->mNavBarPosition:Lcom/android/quickstep/util/NavBarPosition;

    invoke-virtual {v3}, Lcom/android/quickstep/util/NavBarPosition;->isRightEdge()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 139
    neg-float v3, v0

    goto :goto_0

    .line 140
    :cond_0
    iget-object v3, p0, Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;->mNavBarPosition:Lcom/android/quickstep/util/NavBarPosition;

    invoke-virtual {v3}, Lcom/android/quickstep/util/NavBarPosition;->isLeftEdge()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 141
    move v3, v0

    goto :goto_0

    .line 142
    :cond_1
    neg-float v3, v2

    :goto_0
    nop

    .line 144
    .local v3, "velocity":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;->mMinFlingVelocity:F

    cmpl-float v4, v4, v5

    const/4 v5, 0x0

    if-ltz v4, :cond_2

    move v4, v1

    goto :goto_1

    :cond_2
    move v4, v5

    .line 146
    .local v4, "wasFling":Z
    :goto_1
    const/4 v6, 0x0

    if-eqz v4, :cond_4

    .line 147
    cmpl-float v6, v3, v6

    if-lez v6, :cond_3

    goto :goto_2

    :cond_3
    move v1, v5

    .local v1, "isSwipeUp":Z
    :goto_2
    goto :goto_4

    .line 149
    .end local v1    # "isSwipeUp":Z
    :cond_4
    iget-boolean v7, p0, Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;->mDisableHorizontalSwipe:Z

    if-eqz v7, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget-object v7, p0, Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;->mDownPos:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    .line 150
    .local v6, "displacementX":F
    :goto_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget-object v8, p0, Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;->mDownPos:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v8

    .line 151
    .local v7, "displacementY":F
    invoke-static {v6, v7}, Lcom/android/launcher3/Utilities;->squaredHypot(FF)F

    move-result v8

    iget v9, p0, Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;->mSquaredTouchSlop:F

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_6

    goto :goto_4

    :cond_6
    move v1, v5

    .line 154
    .end local v6    # "displacementX":F
    .end local v7    # "displacementY":F
    .restart local v1    # "isSwipeUp":Z
    :goto_4
    iget-object v5, p0, Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;->mOnSwipeUp:Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker$OnSwipeUpListener;

    if-eqz v5, :cond_8

    .line 155
    if-eqz v1, :cond_7

    .line 156
    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6, v0, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v5, v4, v6}, Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker$OnSwipeUpListener;->onSwipeUp(ZLandroid/graphics/PointF;)V

    goto :goto_5

    .line 158
    :cond_7
    invoke-interface {v5}, Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker$OnSwipeUpListener;->onSwipeUpCancelled()V

    .line 161
    :cond_8
    :goto_5
    return-void
.end method


# virtual methods
.method public init()V
    .locals 1

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;->mInterceptedTouch:Z

    .line 69
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 70
    return-void
.end method

.method public interceptedTouch()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;->mInterceptedTouch:Z

    return v0
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 83
    iget-object v0, p0, Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 84
    return-void

    .line 87
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 88
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 116
    :pswitch_0
    invoke-direct {p0}, Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;->endTouchTracking()V

    .line 117
    goto :goto_0

    .line 94
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;->mInterceptedTouch:Z

    if-nez v0, :cond_3

    .line 95
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;->mDownPos:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    .line 96
    .local v0, "displacementX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;->mDownPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    .line 97
    .local v1, "displacementY":F
    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->squaredHypot(FF)F

    move-result v2

    iget v3, p0, Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;->mSquaredTouchSlop:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    .line 98
    iget-boolean v2, p0, Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;->mDisableHorizontalSwipe:Z

    if-eqz v2, :cond_1

    .line 99
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 101
    invoke-direct {p0}, Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;->endTouchTracking()V

    .line 102
    goto :goto_0

    .line 105
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;->mInterceptedTouch:Z

    .line 107
    iget-object v2, p0, Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;->mOnInterceptTouch:Ljava/lang/Runnable;

    if-eqz v2, :cond_2

    .line 108
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 111
    .end local v0    # "displacementX":F
    .end local v1    # "displacementY":F
    :cond_2
    goto :goto_0

    .line 120
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;->onGestureEnd(Landroid/view/MotionEvent;)V

    .line 121
    invoke-direct {p0}, Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;->endTouchTracking()V

    goto :goto_0

    .line 90
    :pswitch_3
    iget-object v0, p0, Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;->mDownPos:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 91
    nop

    .line 125
    :cond_3
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
