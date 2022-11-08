.class public Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation


# static fields
.field public static final UNDEFINED_DURATION:I = -0x80000000


# instance fields
.field private mChanged:Z

.field private mConsecutiveUpdates:I

.field private mDuration:I

.field private mDx:I

.field private mDy:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mJumpToPosition:I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 12610
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;-><init>(IIILandroid/view/animation/Interpolator;)V

    .line 12611
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I

    .line 12619
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;-><init>(IIILandroid/view/animation/Interpolator;)V

    .line 12620
    return-void
.end method

.method public constructor <init>(IIILandroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 12630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12595
    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 12599
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 12603
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    .line 12631
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    .line 12632
    iput p2, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    .line 12633
    iput p3, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    .line 12634
    iput-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 12635
    return-void
.end method

.method private validate()V
    .locals 2

    .line 12685
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 12686
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "If you provide an interpolator, you must set a positive duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12688
    :cond_1
    :goto_0
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    if-lt v0, v1, :cond_2

    .line 12691
    return-void

    .line 12689
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Scroll duration must be a positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getDuration()I
    .locals 1

    .line 12714
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    return v0
.end method

.method public getDx()I
    .locals 1

    .line 12695
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    return v0
.end method

.method public getDy()I
    .locals 1

    .line 12705
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    return v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .line 12724
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method hasJumpTarget()Z
    .locals 1

    .line 12657
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public jumpTo(I)V
    .locals 0
    .param p1, "targetPosition"    # I

    .line 12653
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 12654
    return-void
.end method

.method runIfNecessary(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 6
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;

    .line 12661
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 12662
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 12663
    .local v0, "position":I
    const/4 v2, -0x1

    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 12664
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->jumpToPositionForSmoothScroller(I)V

    .line 12665
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 12666
    return-void

    .line 12668
    .end local v0    # "position":I
    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    if-eqz v0, :cond_2

    .line 12669
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->validate()V

    .line 12670
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;

    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    .line 12671
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    .line 12672
    const/16 v2, 0xa

    if-le v0, v2, :cond_1

    .line 12675
    const-string v0, "RecyclerView"

    const-string v2, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12678
    :cond_1
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    goto :goto_0

    .line 12680
    :cond_2
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    .line 12682
    :goto_0
    return-void
.end method

.method public setDuration(I)V
    .locals 1
    .param p1, "duration"    # I

    .line 12718
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 12719
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    .line 12720
    return-void
.end method

.method public setDx(I)V
    .locals 1
    .param p1, "dx"    # I

    .line 12699
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 12700
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    .line 12701
    return-void
.end method

.method public setDy(I)V
    .locals 1
    .param p1, "dy"    # I

    .line 12709
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 12710
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    .line 12711
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 12735
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 12736
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 12737
    return-void
.end method

.method public update(IIILandroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 12750
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    .line 12751
    iput p2, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    .line 12752
    iput p3, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    .line 12753
    iput-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 12754
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 12755
    return-void
.end method
