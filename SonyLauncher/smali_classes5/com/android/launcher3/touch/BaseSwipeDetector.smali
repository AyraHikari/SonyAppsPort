.class public abstract Lcom/android/launcher3/touch/BaseSwipeDetector;
.super Ljava/lang/Object;
.source "BaseSwipeDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:F = 1200.0f

.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "BaseSwipeDetector"

.field private static final sTempPoint:Landroid/graphics/PointF;


# instance fields
.field private mActivePointerId:I

.field protected mContext:Landroid/content/Context;

.field private mDisplacement:Landroid/graphics/PointF;

.field private final mDownPos:Landroid/graphics/PointF;

.field protected mIgnoreSlopWhenSettling:Z

.field protected final mIsRtl:Z

.field private mIsSettingState:Z

.field private mLastDisplacement:Landroid/graphics/PointF;

.field private final mLastPos:Landroid/graphics/PointF;

.field protected final mMaxVelocity:F

.field private final mReleaseVelocity:F

.field private final mSetStateQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field mState:Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;

.field protected mSubtractDisplacement:Landroid/graphics/PointF;

.field protected final mTouchSlop:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    sput-object v0, Lcom/android/launcher3/touch/BaseSwipeDetector;->sTempPoint:Landroid/graphics/PointF;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/view/ViewConfiguration;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Landroid/view/ViewConfiguration;
    .param p3, "isRtl"    # Z

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mDownPos:Landroid/graphics/PointF;

    .line 54
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mLastPos:Landroid/graphics/PointF;

    .line 58
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mSetStateQueue:Ljava/util/Queue;

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mActivePointerId:I

    .line 62
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mLastDisplacement:Landroid/graphics/PointF;

    .line 63
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mDisplacement:Landroid/graphics/PointF;

    .line 64
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mSubtractDisplacement:Landroid/graphics/PointF;

    .line 65
    sget-object v0, Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;->IDLE:Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;

    iput-object v0, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mState:Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;

    .line 79
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mTouchSlop:F

    .line 80
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mMaxVelocity:F

    .line 81
    iput-boolean p3, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mIsRtl:Z

    .line 82
    iput-object p1, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mContext:Landroid/content/Context;

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->base_swift_detector_fling_release_velocity:I

    .line 84
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mReleaseVelocity:F

    .line 85
    return-void
.end method

.method public static calculateDuration(FF)J
    .locals 4
    .param p0, "velocity"    # F
    .param p1, "progressNeeded"    # F

    .line 89
    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 90
    .local v0, "velocityDivisor":F
    const v1, 0x3e4ccccd    # 0.2f

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 91
    .local v1, "travelDistance":F
    const/high16 v2, 0x44960000    # 1200.0f

    div-float/2addr v2, v0

    mul-float/2addr v2, v1

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-long v2, v2

    .line 96
    .local v2, "duration":J
    return-wide v2
.end method

.method private initializeDragging()V
    .locals 3

    .line 241
    iget-object v0, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mState:Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;

    sget-object v1, Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;->SETTLING:Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mIgnoreSlopWhenSettling:Z

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mSubtractDisplacement:Landroid/graphics/PointF;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_2

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mSubtractDisplacement:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mDisplacement:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iget v1, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mTouchSlop:F

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mTouchSlop:F

    neg-float v1, v1

    :goto_0
    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 245
    iget-object v0, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mSubtractDisplacement:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mDisplacement:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    iget v1, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mTouchSlop:F

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mTouchSlop:F

    neg-float v1, v1

    :goto_1
    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 247
    :goto_2
    return-void
.end method

.method private reportDragEnd()V
    .locals 4

    .line 276
    iget-object v0, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mMaxVelocity:F

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 277
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    iget-object v3, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 278
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v3

    div-float/2addr v3, v2

    invoke-direct {v0, v1, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 279
    .local v0, "velocity":Landroid/graphics/PointF;
    iget-boolean v1, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mIsRtl:Z

    if-eqz v1, :cond_0

    .line 280
    iget v1, v0, Landroid/graphics/PointF;->x:F

    neg-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 287
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/touch/BaseSwipeDetector;->reportDragEndInternal(Landroid/graphics/PointF;)V

    .line 288
    return-void
.end method

.method private reportDragStart(Z)V
    .locals 0
    .param p1, "recatch"    # Z

    .line 252
    invoke-virtual {p0, p1}, Lcom/android/launcher3/touch/BaseSwipeDetector;->reportDragStartInternal(Z)V

    .line 256
    return-void
.end method

.method private reportDragging(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 261
    iget-object v0, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mDisplacement:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mLastDisplacement:Landroid/graphics/PointF;

    if-eq v0, v1, :cond_0

    .line 266
    invoke-virtual {v1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 267
    sget-object v0, Lcom/android/launcher3/touch/BaseSwipeDetector;->sTempPoint:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mDisplacement:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mSubtractDisplacement:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mDisplacement:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mSubtractDisplacement:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 269
    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/touch/BaseSwipeDetector;->reportDraggingInternal(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V

    .line 271
    :cond_0
    return-void
.end method

.method private setState(Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;)V
    .locals 4
    .param p1, "newState"    # Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;

    .line 211
    iget-boolean v0, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mIsSettingState:Z

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mSetStateQueue:Ljava/util/Queue;

    new-instance v1, Lcom/android/launcher3/touch/BaseSwipeDetector$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/touch/BaseSwipeDetector$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/touch/BaseSwipeDetector;Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 213
    return-void

    .line 215
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mIsSettingState:Z

    .line 221
    sget-object v1, Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;->DRAGGING:Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_2

    .line 222
    invoke-direct {p0}, Lcom/android/launcher3/touch/BaseSwipeDetector;->initializeDragging()V

    .line 223
    iget-object v1, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mState:Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;

    sget-object v3, Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;->IDLE:Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;

    if-ne v1, v3, :cond_1

    .line 224
    invoke-direct {p0, v2}, Lcom/android/launcher3/touch/BaseSwipeDetector;->reportDragStart(Z)V

    goto :goto_0

    .line 225
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mState:Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;

    sget-object v3, Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;->SETTLING:Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;

    if-ne v1, v3, :cond_2

    .line 226
    invoke-direct {p0, v0}, Lcom/android/launcher3/touch/BaseSwipeDetector;->reportDragStart(Z)V

    .line 229
    :cond_2
    :goto_0
    sget-object v0, Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;->SETTLING:Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;

    if-ne p1, v0, :cond_3

    .line 230
    invoke-direct {p0}, Lcom/android/launcher3/touch/BaseSwipeDetector;->reportDragEnd()V

    .line 233
    :cond_3
    iput-object p1, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mState:Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;

    .line 234
    iput-boolean v2, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mIsSettingState:Z

    .line 235
    iget-object v0, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mSetStateQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 236
    iget-object v0, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mSetStateQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 238
    :cond_4
    return-void
.end method


# virtual methods
.method public finishedScrolling()V
    .locals 1

    .line 126
    sget-object v0, Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;->IDLE:Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;

    invoke-direct {p0, v0}, Lcom/android/launcher3/touch/BaseSwipeDetector;->setState(Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;)V

    .line 127
    return-void
.end method

.method public getDownX()I
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mDownPos:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    float-to-int v0, v0

    return v0
.end method

.method public getDownY()I
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mDownPos:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    return v0
.end method

.method public isDraggingOrSettling()Z
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mState:Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;

    sget-object v1, Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;->DRAGGING:Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mState:Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;

    sget-object v1, Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;->SETTLING:Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;

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

.method public isDraggingState()Z
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mState:Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;

    sget-object v1, Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;->DRAGGING:Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFling(F)Z
    .locals 2
    .param p1, "velocity"    # F

    .line 130
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mReleaseVelocity:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIdleState()Z
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mState:Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;

    sget-object v1, Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;->IDLE:Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSettlingState()Z
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mState:Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;

    sget-object v1, Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;->SETTLING:Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$setState$0$com-android-launcher3-touch-BaseSwipeDetector(Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;)V
    .locals 0
    .param p1, "newState"    # Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;

    .line 212
    invoke-direct {p0, p1}, Lcom/android/launcher3/touch/BaseSwipeDetector;->setState(Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 134
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 135
    .local v0, "actionMasked":I
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_0

    .line 136
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_1

    .line 139
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 141
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 143
    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 157
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 158
    .local v3, "ptrIdx":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 159
    .local v4, "ptrId":I
    iget v5, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mActivePointerId:I

    if-ne v4, v5, :cond_8

    .line 160
    if-nez v3, :cond_2

    move v1, v2

    .line 161
    .local v1, "newPointerIdx":I
    :cond_2
    iget-object v5, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mDownPos:Landroid/graphics/PointF;

    .line 162
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    iget-object v7, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mLastPos:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    iget-object v8, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mDownPos:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v8

    sub-float/2addr v6, v7

    .line 163
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    iget-object v8, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mLastPos:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    iget-object v9, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mDownPos:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    sub-float/2addr v8, v9

    sub-float/2addr v7, v8

    .line 161
    invoke-virtual {v5, v6, v7}, Landroid/graphics/PointF;->set(FF)V

    .line 164
    iget-object v5, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mLastPos:Landroid/graphics/PointF;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/PointF;->set(FF)V

    .line 165
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mActivePointerId:I

    .line 166
    .end local v1    # "newPointerIdx":I
    goto/16 :goto_0

    .line 169
    .end local v3    # "ptrIdx":I
    .end local v4    # "ptrId":I
    :pswitch_2
    iget v1, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 170
    .local v1, "pointerIndex":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_3

    .line 171
    goto/16 :goto_0

    .line 173
    :cond_3
    iget-object v3, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mDisplacement:Landroid/graphics/PointF;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mDownPos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    .line 174
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    iget-object v6, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mDownPos:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v6

    .line 173
    invoke-virtual {v3, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 175
    iget-boolean v3, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mIsRtl:Z

    if-eqz v3, :cond_4

    .line 176
    iget-object v3, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mDisplacement:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    neg-float v4, v4

    iput v4, v3, Landroid/graphics/PointF;->x:F

    .line 180
    :cond_4
    iget-object v3, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mState:Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;

    sget-object v4, Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;->DRAGGING:Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;

    if-eq v3, v4, :cond_5

    iget-object v3, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mDisplacement:Landroid/graphics/PointF;

    invoke-virtual {p0, v3}, Lcom/android/launcher3/touch/BaseSwipeDetector;->shouldScrollStart(Landroid/graphics/PointF;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 181
    sget-object v3, Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;->DRAGGING:Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;

    invoke-direct {p0, v3}, Lcom/android/launcher3/touch/BaseSwipeDetector;->setState(Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;)V

    .line 183
    :cond_5
    iget-object v3, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mState:Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;

    sget-object v4, Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;->DRAGGING:Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;

    if-ne v3, v4, :cond_6

    .line 184
    invoke-direct {p0, p1}, Lcom/android/launcher3/touch/BaseSwipeDetector;->reportDragging(Landroid/view/MotionEvent;)V

    .line 186
    :cond_6
    iget-object v3, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mLastPos:Landroid/graphics/PointF;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 187
    goto :goto_0

    .line 191
    .end local v1    # "pointerIndex":I
    :pswitch_3
    iget-object v1, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mState:Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;

    sget-object v3, Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;->DRAGGING:Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;

    if-ne v1, v3, :cond_7

    .line 192
    sget-object v1, Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;->SETTLING:Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;

    invoke-direct {p0, v1}, Lcom/android/launcher3/touch/BaseSwipeDetector;->setState(Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;)V

    .line 194
    :cond_7
    iget-object v1, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 195
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 196
    goto :goto_0

    .line 145
    :pswitch_4
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mActivePointerId:I

    .line 146
    iget-object v1, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mDownPos:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 147
    iget-object v1, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mLastPos:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mDownPos:Landroid/graphics/PointF;

    invoke-virtual {v1, v3}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 148
    iget-object v1, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mLastDisplacement:Landroid/graphics/PointF;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 149
    iget-object v1, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mDisplacement:Landroid/graphics/PointF;

    invoke-virtual {v1, v3, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 151
    iget-object v1, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mState:Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;

    sget-object v3, Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;->SETTLING:Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;

    if-ne v1, v3, :cond_8

    iget-boolean v1, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mIgnoreSlopWhenSettling:Z

    if-eqz v1, :cond_8

    .line 152
    sget-object v1, Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;->DRAGGING:Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;

    invoke-direct {p0, v1}, Lcom/android/launcher3/touch/BaseSwipeDetector;->setState(Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;)V

    .line 200
    :cond_8
    :goto_0
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected abstract reportDragEndInternal(Landroid/graphics/PointF;)V
.end method

.method protected abstract reportDragStartInternal(Z)V
.end method

.method protected abstract reportDraggingInternal(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V
.end method

.method protected abstract shouldScrollStart(Landroid/graphics/PointF;)Z
.end method
