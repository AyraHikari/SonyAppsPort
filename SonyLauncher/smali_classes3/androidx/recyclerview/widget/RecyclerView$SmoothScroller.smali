.class public abstract Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SmoothScroller"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;,
        Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;
    }
.end annotation


# instance fields
.field private mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field private mPendingInitialRun:Z

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final mRecyclingAction:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;

.field private mRunning:Z

.field private mStarted:Z

.field private mTargetPosition:I

.field private mTargetView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12298
    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    .line 12315
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;-><init>(II)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;

    .line 12316
    return-void
.end method


# virtual methods
.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 3
    .param p1, "targetPosition"    # I

    .line 12372
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 12373
    .local v0, "layoutManager":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    instance-of v1, v0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    if-eqz v1, :cond_0

    .line 12374
    move-object v1, v0

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    .line 12375
    invoke-interface {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v1

    .line 12374
    return-object v1

    .line 12377
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You should override computeScrollVectorForPosition when the LayoutManager does not implement "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    .line 12378
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12377
    const-string v2, "RecyclerView"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12379
    const/4 v1, 0x0

    return-object v1
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I

    .line 12509
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .line 12502
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getChildPosition(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 12495
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 1

    .line 12388
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    return-object v0
.end method

.method public getTargetPosition()I
    .locals 1

    .line 12440
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    return v0
.end method

.method public instantScrollToPosition(I)V
    .locals 1
    .param p1, "position"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 12518
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 12519
    return-void
.end method

.method public isPendingInitialRun()Z
    .locals 1

    .line 12422
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 12430
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mRunning:Z

    return v0
.end method

.method protected normalize(Landroid/graphics/PointF;)V
    .locals 3
    .param p1, "scrollVector"    # Landroid/graphics/PointF;

    .line 12536
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 12538
    .local v0, "magnitude":F
    iget v1, p1, Landroid/graphics/PointF;->x:F

    div-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/PointF;->x:F

    .line 12539
    iget v1, p1, Landroid/graphics/PointF;->y:F

    div-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/PointF;->y:F

    .line 12540
    return-void
.end method

.method onAnimation(II)V
    .locals 5
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 12444
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 12445
    .local v0, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-nez v0, :cond_1

    .line 12446
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->stop()V

    .line 12454
    :cond_1
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    if-nez v1, :cond_3

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_3

    .line 12455
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v1

    .line 12456
    .local v1, "pointF":Landroid/graphics/PointF;
    if-eqz v1, :cond_3

    iget v3, v1, Landroid/graphics/PointF;->x:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    iget v3, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3

    .line 12457
    :cond_2
    iget v3, v1, Landroid/graphics/PointF;->x:F

    .line 12458
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    float-to-int v3, v3

    iget v4, v1, Landroid/graphics/PointF;->y:F

    .line 12459
    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    float-to-int v4, v4

    .line 12457
    invoke-virtual {v0, v3, v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollStep(II[I)V

    .line 12464
    .end local v1    # "pointF":Landroid/graphics/PointF;
    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 12466
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 12468
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->getChildPosition(Landroid/view/View;)I

    move-result v1

    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    if-ne v1, v3, :cond_4

    .line 12469
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {p0, v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->onTargetFound(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V

    .line 12470
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->runIfNecessary(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 12471
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->stop()V

    goto :goto_0

    .line 12473
    :cond_4
    const-string v1, "RecyclerView"

    const-string v3, "Passed over target position while smooth scrolling."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12474
    iput-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    .line 12477
    :cond_5
    :goto_0
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mRunning:Z

    if-eqz v1, :cond_6

    .line 12478
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {p0, p1, p2, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->onSeekTargetStep(IILandroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V

    .line 12479
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->hasJumpTarget()Z

    move-result v1

    .line 12480
    .local v1, "hadJumpTarget":Z
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->runIfNecessary(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 12481
    if-eqz v1, :cond_6

    .line 12483
    iget-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mRunning:Z

    if-eqz v2, :cond_6

    .line 12484
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 12485
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 12489
    .end local v1    # "hadJumpTarget":Z
    :cond_6
    return-void
.end method

.method protected onChildAttachedToWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 12522
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->getChildPosition(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 12523
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    .line 12528
    :cond_0
    return-void
.end method

.method protected abstract onSeekTargetStep(IILandroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V
.end method

.method protected abstract onStart()V
.end method

.method protected abstract onStop()V
.end method

.method protected abstract onTargetFound(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V
.end method

.method public setTargetPosition(I)V
    .locals 0
    .param p1, "targetPosition"    # I

    .line 12358
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    .line 12359
    return-void
.end method

.method start(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 2
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "layoutManager"    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 12333
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->stop()V

    .line 12335
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mStarted:Z

    if-eqz v0, :cond_0

    .line 12336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "An instance of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " was started more than once. Each instance of"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 12337
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is intended to only be used once. You should create a new instance for each use."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12336
    const-string v1, "RecyclerView"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12342
    :cond_0
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 12343
    iput-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 12344
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 12347
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mTargetPosition:I

    .line 12348
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mRunning:Z

    .line 12349
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 12350
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    .line 12351
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->onStart()V

    .line 12352
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 12354
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mStarted:Z

    .line 12355
    return-void

    .line 12345
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid target position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final stop()V
    .locals 3

    .line 12398
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mRunning:Z

    if-nez v0, :cond_0

    .line 12399
    return-void

    .line 12401
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mRunning:Z

    .line 12402
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->onStop()V

    .line 12403
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    const/4 v2, -0x1

    iput v2, v1, Landroidx/recyclerview/widget/RecyclerView$State;->mTargetPosition:I

    .line 12404
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    .line 12405
    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    .line 12406
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 12408
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onSmoothScrollerStopped(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    .line 12410
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 12411
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 12412
    return-void
.end method
