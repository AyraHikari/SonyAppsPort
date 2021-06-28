.class public Lcom/sonyericsson/music/fullplayer/SwipeView;
.super Landroid/widget/FrameLayout;
.source "SwipeView.java"

# interfaces
.implements Lcom/sonyericsson/music/fullplayer/ArtPagerObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;,
        Lcom/sonyericsson/music/fullplayer/SwipeView$OnScrollListener;
    }
.end annotation


# static fields
.field private static final JANK_DELAY:I = 0x12c

.field private static final MAX_SETTLE_DURATION:I = 0x190


# instance fields
.field private mAdapter:Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;

.field private mAdapterPos:F

.field private mDownPosition:I

.field private mDownX:F

.field private mDownY:F

.field private mHorizontalDrag:Z

.field private mIsBeingDragged:Z

.field private mLastTouchX:F

.field private mMaximumFlingVelocity:F

.field private mMinimumFlingVelocity:F

.field private mOnScrollListener:Lcom/sonyericsson/music/fullplayer/SwipeView$OnScrollListener;

.field private mScrollState:Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;

.field private final mScroller:Landroid/widget/Scroller;

.field private mTouchSlop:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/fullplayer/SwipeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/music/fullplayer/SwipeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 55
    iput p2, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mAdapterPos:F

    .line 70
    sget-object p2, Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;->IDLE:Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;

    iput-object p2, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mScrollState:Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;

    .line 83
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    .line 84
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mMinimumFlingVelocity:F

    .line 85
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mMaximumFlingVelocity:F

    .line 86
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mTouchSlop:F

    .line 87
    new-instance p2, Landroid/widget/Scroller;

    invoke-direct {p2, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mScroller:Landroid/widget/Scroller;

    return-void
.end method

.method private beginDrag(Z)V
    .locals 1

    .line 375
    iget-boolean v0, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mIsBeingDragged:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 376
    iput-boolean v0, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mIsBeingDragged:Z

    .line 377
    iput-boolean p1, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mHorizontalDrag:Z

    .line 378
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private calculateFlingTarget(IF)I
    .locals 2

    .line 231
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mMinimumFlingVelocity:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    if-lez p2, :cond_0

    .line 232
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/fullplayer/SwipeView;->toAdapterPos(I)F

    move-result p2

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p2, v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/fullplayer/SwipeView;->toAdapterPos(I)F

    move-result p2

    goto :goto_0

    .line 234
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/fullplayer/SwipeView;->toAdapterPos(I)F

    move-result p2

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p2, v0

    .line 236
    :goto_0
    invoke-direct {p0, p2}, Lcom/sonyericsson/music/fullplayer/SwipeView;->floor(F)I

    move-result p2

    int-to-float p2, p2

    invoke-direct {p0, p2}, Lcom/sonyericsson/music/fullplayer/SwipeView;->fromAdapterPos(F)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/fullplayer/SwipeView;->closestTargetWithWrap(II)I

    move-result p1

    return p1
.end method

.method private canScroll()Z
    .locals 2

    .line 371
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mAdapter:Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;

    invoke-interface {v0}, Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private closestTargetWithWrap(II)I
    .locals 4

    .line 240
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mAdapter:Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;

    invoke-interface {v0}, Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;->getCount()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/fullplayer/SwipeView;->fromAdapterPos(F)I

    move-result v0

    sub-int v1, p2, p1

    if-gez v1, :cond_0

    add-int v2, p2, v0

    sub-int v3, p1, v2

    if-ge v1, v3, :cond_0

    move p2, v2

    goto :goto_0

    :cond_0
    if-lez v1, :cond_1

    sub-int v0, p2, v0

    sub-int/2addr p1, v0

    if-le v1, p1, :cond_1

    move p2, v0

    :cond_1
    :goto_0
    return p2
.end method

.method private dispatchScrolled(F)V
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mOnScrollListener:Lcom/sonyericsson/music/fullplayer/SwipeView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 303
    invoke-interface {v0, p1}, Lcom/sonyericsson/music/fullplayer/SwipeView$OnScrollListener;->onScrolling(F)V

    :cond_0
    return-void
.end method

.method private dispatchScrolledToPosition(I)V
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mOnScrollListener:Lcom/sonyericsson/music/fullplayer/SwipeView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 309
    invoke-interface {v0, p1}, Lcom/sonyericsson/music/fullplayer/SwipeView$OnScrollListener;->onScrolledToPosition(I)V

    :cond_0
    return-void
.end method

.method private dispatchSwipeDown()V
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mOnScrollListener:Lcom/sonyericsson/music/fullplayer/SwipeView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 315
    invoke-interface {v0}, Lcom/sonyericsson/music/fullplayer/SwipeView$OnScrollListener;->onSwipeDown()V

    :cond_0
    return-void
.end method

.method private drag(Landroid/view/MotionEvent;)V
    .locals 1

    .line 383
    iget-boolean v0, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mIsBeingDragged:Z

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method private dynamicPos()I
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mScrollState:Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;

    sget-object v1, Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;->IDLE:Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;

    if-ne v0, v1, :cond_0

    .line 331
    iget v0, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mAdapterPos:F

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/fullplayer/SwipeView;->fromAdapterPos(F)I

    move-result v0

    return v0

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/fullplayer/SwipeView;->wrapPixelPosition(I)I

    move-result v0

    return v0
.end method

.method private endDrag()V
    .locals 1

    .line 389
    iget-boolean v0, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mIsBeingDragged:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 390
    iput-boolean v0, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mIsBeingDragged:Z

    .line 391
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 392
    iput-object v0, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private floor(F)I
    .locals 2

    float-to-double v0, p1

    .line 413
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1
.end method

.method private fromAdapterPos(F)I
    .locals 1

    .line 343
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/SwipeView;->throwIfNoLayout()V

    .line 344
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private hasLayout()Z
    .locals 1

    .line 129
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private normalizedX(F)F
    .locals 2

    .line 362
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/SwipeView;->throwIfNoLayout()V

    .line 363
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float p1, p1, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    return p1
.end method

.method private overridingPosition()Z
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mScrollState:Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;

    sget-object v1, Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;->DRAGGING:Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;->SNAPPING:Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;

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

.method private resetGesture()V
    .locals 1

    .line 401
    iget-boolean v0, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mIsBeingDragged:Z

    if-eqz v0, :cond_0

    .line 402
    iget v0, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mLastTouchX:F

    iput v0, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mDownX:F

    .line 403
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/SwipeView;->staticPos()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mDownPosition:I

    .line 405
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/SwipeView;->endDrag()V

    return-void
.end method

.method private setScrollState(Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;)V
    .locals 0

    .line 367
    iput-object p1, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mScrollState:Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;

    return-void
.end method

.method private startScroll(IIFLcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;I)V
    .locals 6

    .line 251
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/SwipeView;->stopScroll()V

    sub-int v3, p2, p1

    if-eqz v3, :cond_1

    .line 255
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const/4 p5, 0x0

    const/16 v0, 0x190

    cmpl-float p2, p2, p5

    if-lez p2, :cond_0

    const/high16 p2, 0x447a0000    # 1000.0f

    int-to-float p5, v3

    div-float/2addr p5, p3

    .line 257
    invoke-static {p5}, Ljava/lang/Math;->abs(F)F

    move-result p3

    mul-float p3, p3, p2

    const/high16 p2, 0x40000000    # 2.0f

    mul-float p3, p3, p2

    float-to-int p2, p3

    .line 258
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    move v5, p2

    goto :goto_0

    :cond_0
    const/16 v5, 0x190

    .line 263
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v4, 0x0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 264
    invoke-direct {p0, p4}, Lcom/sonyericsson/music/fullplayer/SwipeView;->setScrollState(Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;)V

    goto :goto_1

    .line 266
    :cond_1
    sget-object p1, Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;->IDLE:Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/fullplayer/SwipeView;->setScrollState(Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;)V

    .line 268
    :goto_1
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/SwipeView;->updateScroll()V

    return-void
.end method

.method private staticPos()I
    .locals 1

    .line 323
    iget v0, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mAdapterPos:F

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/fullplayer/SwipeView;->fromAdapterPos(F)I

    move-result v0

    return v0
.end method

.method private stopScroll()V
    .locals 2

    .line 409
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    return-void
.end method

.method private throwIfNoLayout()V
    .locals 2

    .line 417
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 418
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "has no width"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private toAdapterPos(I)F
    .locals 1

    .line 348
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/SwipeView;->throwIfNoLayout()V

    int-to-float p1, p1

    .line 349
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/fullplayer/SwipeView;->wrapAdapterPosition(F)F

    move-result p1

    return p1
.end method

.method private updateScroll()V
    .locals 3

    .line 272
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    .line 274
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/fullplayer/SwipeView;->toAdapterPos(I)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/fullplayer/SwipeView;->dispatchScrolled(F)V

    .line 275
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidateOnAnimation()V

    goto :goto_0

    .line 278
    :cond_0
    sget-object v0, Lcom/sonyericsson/music/fullplayer/SwipeView$1;->$SwitchMap$com$sonyericsson$music$fullplayer$SwipeView$ScrollState:[I

    iget-object v1, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mScrollState:Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 284
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    .line 285
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/fullplayer/SwipeView;->toAdapterPos(I)F

    move-result v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/music/fullplayer/SwipeView;->dispatchScrolled(F)V

    .line 286
    iget-object v1, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mScrollState:Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;

    sget-object v2, Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;->SNAPPING:Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;

    if-ne v1, v2, :cond_1

    .line 287
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/fullplayer/SwipeView;->toAdapterPos(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/fullplayer/SwipeView;->dispatchScrolledToPosition(I)V

    .line 289
    :cond_1
    sget-object v0, Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;->IDLE:Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/fullplayer/SwipeView;->setScrollState(Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;)V

    :goto_0
    :pswitch_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private wrapAdapterPosition(F)F
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mAdapter:Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;

    invoke-interface {v0}, Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;->getCount()I

    move-result v0

    int-to-float v0, v0

    rem-float/2addr p1, v0

    add-float/2addr p1, v0

    rem-float/2addr p1, v0

    return p1
.end method

.method private wrapPixelPosition(I)I
    .locals 2

    .line 338
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mAdapter:Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;

    invoke-interface {v0}, Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    mul-int v0, v0, v1

    .line 339
    rem-int/2addr p1, v0

    add-int/2addr p1, v0

    rem-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method public computeScroll()V
    .locals 0

    .line 297
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeScroll()V

    .line 298
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/SwipeView;->updateScroll()V

    return-void
.end method

.method public onBitmapChanged(Landroid/graphics/Bitmap;I)V
    .locals 0

    return-void
.end method

.method public onDataChanged()V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mAdapter:Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;

    invoke-interface {v0}, Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;->getPosition()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mAdapterPos:F

    .line 107
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/SwipeView;->stopScroll()V

    .line 108
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/SwipeView;->resetGesture()V

    .line 109
    sget-object v0, Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;->IDLE:Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/fullplayer/SwipeView;->setScrollState(Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;)V

    .line 110
    iget v0, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mAdapterPos:F

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/fullplayer/SwipeView;->dispatchScrolled(F)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 148
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 156
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mLastTouchX:F

    .line 157
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mDownX:F

    sub-float/2addr v0, v1

    .line 158
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mDownY:F

    sub-float/2addr v1, v2

    .line 159
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/SwipeView;->canScroll()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mTouchSlop:F

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_2

    :cond_1
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mTouchSlop:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    .line 160
    :cond_2
    iget v2, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mDownX:F

    add-float/2addr v2, v0

    iput v2, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mDownX:F

    .line 161
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/SwipeView;->dynamicPos()I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mDownPosition:I

    .line 162
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/SwipeView;->canScroll()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/fullplayer/SwipeView;->beginDrag(Z)V

    .line 163
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/SwipeView;->stopScroll()V

    .line 164
    sget-object v0, Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;->DRAGGING:Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/fullplayer/SwipeView;->setScrollState(Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;)V

    goto :goto_1

    .line 150
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mLastTouchX:F

    .line 151
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mDownX:F

    .line 152
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mDownY:F

    .line 153
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/SwipeView;->dynamicPos()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mDownPosition:I

    .line 168
    :cond_5
    :goto_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/fullplayer/SwipeView;->drag(Landroid/view/MotionEvent;)V

    .line 169
    iget-boolean p1, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mIsBeingDragged:Z

    return p1
.end method

.method public onPositionChanged()V
    .locals 7

    .line 115
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/SwipeView;->hasLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/SwipeView;->dynamicPos()I

    move-result v0

    move v2, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 116
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mAdapter:Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;

    invoke-interface {v0}, Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;->getPosition()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mAdapterPos:F

    .line 118
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/SwipeView;->overridingPosition()Z

    move-result v0

    if-nez v0, :cond_2

    .line 119
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/SwipeView;->hasLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    iget v0, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mAdapterPos:F

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/fullplayer/SwipeView;->fromAdapterPos(F)I

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/sonyericsson/music/fullplayer/SwipeView;->closestTargetWithWrap(II)I

    move-result v3

    const/4 v4, 0x0

    .line 121
    sget-object v5, Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;->SCROLLING:Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;

    const/16 v6, 0x12c

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/music/fullplayer/SwipeView;->startScroll(IIFLcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;I)V

    goto :goto_1

    .line 123
    :cond_1
    iget v0, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mAdapterPos:F

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/fullplayer/SwipeView;->dispatchScrolled(F)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 175
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/fullplayer/SwipeView;->drag(Landroid/view/MotionEvent;)V

    .line 176
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 216
    :pswitch_0
    iget-boolean v0, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mIsBeingDragged:Z

    if-eqz v0, :cond_7

    .line 217
    iget-boolean v0, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mHorizontalDrag:Z

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v0, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mDownX:F

    sub-float/2addr p1, v0

    .line 219
    iget v0, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mDownPosition:I

    int-to-float v0, v0

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/fullplayer/SwipeView;->normalizedX(F)F

    move-result p1

    sub-float/2addr v0, p1

    float-to-int v3, v0

    .line 220
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/SwipeView;->staticPos()I

    move-result v4

    const/4 v5, 0x0

    sget-object v6, Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;->SCROLLING:Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/music/fullplayer/SwipeView;->startScroll(IIFLcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;I)V

    .line 222
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/SwipeView;->endDrag()V

    goto/16 :goto_2

    .line 178
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mLastTouchX:F

    .line 179
    iget-boolean v0, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mIsBeingDragged:Z

    if-nez v0, :cond_4

    .line 180
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mDownX:F

    sub-float/2addr v0, v2

    .line 181
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mDownY:F

    sub-float/2addr v2, v3

    .line 182
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/SwipeView;->canScroll()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mTouchSlop:F

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_2

    :cond_1
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mTouchSlop:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 183
    :cond_2
    iget v3, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mDownX:F

    add-float/2addr v3, v0

    iput v3, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mDownX:F

    .line 184
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/SwipeView;->dynamicPos()I

    move-result v3

    iput v3, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mDownPosition:I

    .line 185
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/SwipeView;->canScroll()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/fullplayer/SwipeView;->beginDrag(Z)V

    .line 186
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/SwipeView;->stopScroll()V

    .line 187
    sget-object v0, Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;->DRAGGING:Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/fullplayer/SwipeView;->setScrollState(Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;)V

    .line 190
    :cond_4
    iget-boolean v0, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mIsBeingDragged:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mHorizontalDrag:Z

    if-eqz v0, :cond_7

    .line 191
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v0, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mDownX:F

    sub-float/2addr p1, v0

    .line 192
    iget v0, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mDownPosition:I

    int-to-float v0, v0

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/fullplayer/SwipeView;->normalizedX(F)F

    move-result p1

    sub-float/2addr v0, p1

    float-to-int p1, v0

    .line 193
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/fullplayer/SwipeView;->toAdapterPos(I)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/fullplayer/SwipeView;->dispatchScrolled(F)V

    goto :goto_2

    .line 197
    :pswitch_2
    iget-boolean v0, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mIsBeingDragged:Z

    if-eqz v0, :cond_7

    .line 198
    iget-boolean v0, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mHorizontalDrag:Z

    const/16 v2, 0x3e8

    if-eqz v0, :cond_5

    .line 199
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v3, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mMaximumFlingVelocity:F

    invoke-virtual {v0, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 200
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v0, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mDownX:F

    sub-float/2addr p1, v0

    .line 201
    iget v0, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mDownPosition:I

    int-to-float v0, v0

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/fullplayer/SwipeView;->normalizedX(F)F

    move-result p1

    sub-float/2addr v0, p1

    float-to-int v3, v0

    .line 202
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    neg-float v5, p1

    .line 203
    invoke-direct {p0, v3, v5}, Lcom/sonyericsson/music/fullplayer/SwipeView;->calculateFlingTarget(IF)I

    move-result v4

    .line 204
    sget-object v6, Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;->SNAPPING:Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/music/fullplayer/SwipeView;->startScroll(IIFLcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;I)V

    goto :goto_1

    .line 206
    :cond_5
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v0, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mMaximumFlingVelocity:F

    invoke-virtual {p1, v2, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 207
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p1

    .line 208
    iget v0, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mMinimumFlingVelocity:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_6

    .line 209
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/SwipeView;->dispatchSwipeDown()V

    .line 212
    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/SwipeView;->endDrag()V

    :cond_7
    :goto_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onUserPositionChanged()V
    .locals 0

    return-void
.end method

.method public setAdapter(Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mAdapter:Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;

    if-eqz v0, :cond_0

    .line 92
    invoke-interface {v0, p0}, Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;->unregisterObserver(Lcom/sonyericsson/music/fullplayer/ArtPagerObserver;)V

    .line 94
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mAdapter:Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;

    .line 95
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mAdapter:Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;

    if-eqz p1, :cond_1

    .line 96
    invoke-interface {p1, p0}, Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;->registerObserver(Lcom/sonyericsson/music/fullplayer/ArtPagerObserver;)V

    :cond_1
    return-void
.end method

.method public setOnScrollListener(Lcom/sonyericsson/music/fullplayer/SwipeView$OnScrollListener;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/sonyericsson/music/fullplayer/SwipeView;->mOnScrollListener:Lcom/sonyericsson/music/fullplayer/SwipeView$OnScrollListener;

    return-void
.end method
