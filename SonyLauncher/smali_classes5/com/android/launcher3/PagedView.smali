.class public abstract Lcom/android/launcher3/PagedView;
.super Landroid/view/ViewGroup;
.source "PagedView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/PagedView$ComputePageScrollsLogic;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ":",
        "Lcom/android/launcher3/pageindicators/PageIndicator;",
        ">",
        "Landroid/view/ViewGroup;"
    }
.end annotation


# static fields
.field public static final ACTION_MOVE_ALLOW_EASY_FLING:I = 0xfe

.field private static final DEBUG:Z = false

.field public static final DEBUG_FAILED_QUICKSWITCH:Z = false

.field public static final INVALID_PAGE:I = -0x1

.field protected static final INVALID_POINTER:I = -0x1

.field private static final MAX_SCROLL_PROGRESS:F = 1.0f

.field private static final RETURN_TO_ORIGINAL_PAGE_THRESHOLD:F = 0.33f

.field private static final SIGNIFICANT_MOVE_THRESHOLD:F = 0.4f

.field protected static final SIMPLE_SCROLL_LOGIC:Lcom/android/launcher3/PagedView$ComputePageScrollsLogic;

.field private static final TAG:Ljava/lang/String; = "PagedView"


# instance fields
.field protected mActivePointerId:I

.field private mAllowEasyFling:Z

.field protected mAllowOverScroll:Z

.field protected mCurrentPage:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field protected mCurrentPageScrollDiff:I

.field protected mCurrentScrollOverPage:I

.field private mDownMotionPrimary:F

.field private mDownMotionX:F

.field private mDownMotionY:F

.field private mEasyFlingThresholdVelocity:I

.field protected mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

.field protected mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

.field protected mFirstLayout:Z

.field private mFlingThresholdVelocity:I

.field private mFreeScroll:Z

.field protected final mInsets:Landroid/graphics/Rect;

.field private mIsBeingDragged:Z

.field protected mIsLayoutValid:Z

.field protected mIsPageInTransition:Z

.field protected mIsRtl:Z

.field private mLastMotion:F

.field private mLastMotionRemainder:F

.field protected mMaxScroll:I

.field private mMaximumVelocity:I

.field private mMinFlingVelocity:I

.field protected mMinScroll:I

.field private mMinSnapVelocity:I

.field protected mNextPage:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private final mOnPageScrollsInitializedCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mOnPageTransitionEndCallback:Ljava/lang/Runnable;

.field protected mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

.field protected mPageIndicator:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field mPageIndicatorViewId:I

.field protected mPageScrolls:[I

.field protected mPageSlop:I

.field private mPageSnapAnimationDuration:I

.field protected mPageSpacing:I

.field protected mScroller:Landroid/widget/OverScroller;

.field private mTmpIntPair:[I

.field private mTotalMotion:F

.field protected mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    new-instance v0, Lcom/android/launcher3/PagedView$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/PagedView$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/launcher3/PagedView;->SIMPLE_SCROLL_LOGIC:Lcom/android/launcher3/PagedView$ComputePageScrollsLogic;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 162
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 163
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 166
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 167
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 170
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    .line 97
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/PagedView;->mFirstLayout:Z

    .line 108
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    .line 114
    iput v0, p0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    .line 124
    sget-object v3, Lcom/android/launcher3/touch/PagedOrientationHandler;->PORTRAIT:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iput-object v3, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    .line 126
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/launcher3/PagedView;->mOnPageScrollsInitializedCallbacks:Ljava/util/ArrayList;

    .line 129
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    .line 137
    iput-boolean v1, p0, Lcom/android/launcher3/PagedView;->mAllowOverScroll:Z

    .line 141
    iput v2, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    .line 143
    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsPageInTransition:Z

    .line 150
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    .line 156
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/launcher3/PagedView;->mTmpIntPair:[I

    .line 172
    sget-object v1, Lcom/android/launcher3/R$styleable;->PagedView:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 174
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v3, Lcom/android/launcher3/R$styleable;->PagedView_pageIndicator:I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/PagedView;->mPageIndicatorViewId:I

    .line 175
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 177
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->setHapticFeedbackEnabled(Z)V

    .line 178
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    .line 180
    new-instance v2, Landroid/widget/OverScroller;

    sget-object v3, Lcom/android/launcher3/anim/Interpolators;->SCROLL:Landroid/view/animation/Interpolator;

    invoke-direct {v2, p1, v3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    .line 181
    iput v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    .line 182
    iput v0, p0, Lcom/android/launcher3/PagedView;->mCurrentScrollOverPage:I

    .line 184
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 185
    .local v2, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/PagedView;->mTouchSlop:I

    .line 186
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/PagedView;->mPageSlop:I

    .line 187
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/PagedView;->mMaximumVelocity:I

    .line 189
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->updateVelocityValues()V

    .line 191
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->initEdgeEffect()V

    .line 192
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->setDefaultFocusHighlightEnabled(Z)V

    .line 193
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->setWillNotDraw(Z)V

    .line 194
    return-void
.end method

.method private abortScrollerAnimation(Z)V
    .locals 1
    .param p1, "resetNextPage"    # Z

    .line 263
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 266
    if-eqz p1, :cond_0

    .line 267
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    .line 268
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageEndTransition()V

    .line 270
    :cond_0
    return-void
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1529
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1530
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1532
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1533
    return-void
.end method

.method private dispatchPageCountChanged()V
    .locals 3

    .line 867
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 868
    check-cast v0, Lcom/android/launcher3/pageindicators/PageIndicator;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result v2

    div-int/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/android/launcher3/pageindicators/PageIndicator;->setMarkersCount(I)V

    .line 872
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->invalidate()V

    .line 873
    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F

    .line 1636
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 1637
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 1638
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private ensureWithinScrollBounds(I)I
    .locals 5
    .param p1, "page"    # I

    .line 396
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 397
    .local v0, "dir":I
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v1

    .line 399
    .local v1, "currScroll":I
    :cond_1
    iget v2, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    const-string v3, "PagedView"

    if-ge v1, v2, :cond_2

    .line 400
    add-int/2addr p1, v0

    .line 401
    move v2, v1

    .line 402
    .local v2, "prevScroll":I
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v1

    .line 403
    if-gt v1, v2, :cond_1

    .line 404
    const-string v4, "validateNewPage: failed to find a page > mMinScrollX"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    .end local v2    # "prevScroll":I
    :cond_2
    iget v2, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    if-le v1, v2, :cond_3

    .line 409
    sub-int/2addr p1, v0

    .line 410
    move v2, v1

    .line 411
    .restart local v2    # "prevScroll":I
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v1

    .line 412
    if-lt v1, v2, :cond_2

    .line 413
    const-string v4, "validateNewPage: failed to find a page < mMaxScrollX"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    .end local v2    # "prevScroll":I
    :cond_3
    return p1
.end method

.method private getDisplacementFromScreenCenter(II)I
    .locals 4
    .param p1, "childIndex"    # I
    .param p2, "screenCenter"    # I

    .line 1607
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getChildVisibleSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1608
    .local v0, "childSize":I
    div-int/lit8 v1, v0, 0x2

    .line 1609
    .local v1, "halfChildSize":I
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getChildOffset(I)I

    move-result v2

    add-int/2addr v2, v1

    .line 1610
    .local v2, "childCenter":I
    sub-int v3, v2, p2

    return v3
.end method

.method private getNeighbourPageIndices(I)Lcom/android/launcher3/util/IntSet;
    .locals 4
    .param p1, "focus"    # I

    .line 344
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result v0

    .line 346
    .local v0, "panelCount":I
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v1

    .line 349
    .local v1, "currentPage":I
    const/16 v2, 0x11

    if-ne p1, v2, :cond_0

    .line 350
    sub-int v2, v1, v0

    .local v2, "nextPage":I
    goto :goto_0

    .line 351
    .end local v2    # "nextPage":I
    :cond_0
    const/16 v2, 0x42

    if-ne p1, v2, :cond_2

    .line 352
    add-int v2, v1, v0

    .line 357
    .restart local v2    # "nextPage":I
    :goto_0
    invoke-direct {p0, v2}, Lcom/android/launcher3/PagedView;->validateNewPage(I)I

    move-result v2

    .line 358
    if-ne v2, v1, :cond_1

    .line 360
    new-instance v3, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v3}, Lcom/android/launcher3/util/IntSet;-><init>()V

    return-object v3

    .line 363
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/launcher3/PagedView;->getPageIndices(I)Lcom/android/launcher3/util/IntSet;

    move-result-object v3

    return-object v3

    .line 355
    .end local v2    # "nextPage":I
    :cond_2
    new-instance v2, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v2}, Lcom/android/launcher3/util/IntSet;-><init>()V

    return-object v2
.end method

.method private getPageIndices(I)Lcom/android/launcher3/util/IntSet;
    .locals 5
    .param p1, "pageIndex"    # I

    .line 329
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getLeftmostVisiblePageForIndex(I)I

    move-result p1

    .line 331
    new-instance v0, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntSet;-><init>()V

    .line 332
    .local v0, "pageIndices":Lcom/android/launcher3/util/IntSet;
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result v1

    .line 333
    .local v1, "panelCount":I
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v2

    .line 334
    .local v2, "pageCount":I
    move v3, p1

    .local v3, "page":I
    :goto_0
    add-int v4, p1, v1

    if-ge v3, v4, :cond_0

    if-ge v3, v2, :cond_0

    .line 335
    invoke-virtual {v0, v3}, Lcom/android/launcher3/util/IntSet;->add(I)V

    .line 334
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 337
    .end local v3    # "page":I
    :cond_0
    return-object v0
.end method

.method private getPageNearestToCenterOfScreen(I)I
    .locals 6
    .param p1, "primaryScroll"    # I

    .line 1591
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getScreenCenter(I)I

    move-result v0

    .line 1592
    .local v0, "screenCenter":I
    const v1, 0x7fffffff

    .line 1593
    .local v1, "minDistanceFromScreenCenter":I
    const/4 v2, -0x1

    .line 1594
    .local v2, "minDistanceFromScreenCenterIndex":I
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v3

    .line 1595
    .local v3, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 1596
    nop

    .line 1597
    invoke-direct {p0, v4, v0}, Lcom/android/launcher3/PagedView;->getDisplacementFromScreenCenter(II)I

    move-result v5

    .line 1596
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 1598
    .local v5, "distanceFromScreenCenter":I
    if-ge v5, v1, :cond_0

    .line 1599
    move v1, v5

    .line 1600
    move v2, v4

    .line 1595
    .end local v5    # "distanceFromScreenCenter":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1603
    .end local v4    # "i":I
    :cond_1
    return v2
.end method

.method private getPageWidthSize(I)I
    .locals 2
    .param p1, "widthSize"    # I

    .line 652
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int v0, p1, v0

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 653
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result v1

    div-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 652
    return v0
.end method

.method private isVisible(I)Z
    .locals 2
    .param p1, "pageIndex"    # I

    .line 389
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getLeftmostVisiblePageForIndex(I)I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$static$0(Landroid/view/View;)Z
    .locals 2
    .param p0, "v"    # Landroid/view/View;

    .line 81
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onPageScrollsInitialized()V
    .locals 2

    .line 712
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOnPageScrollsInitializedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 713
    .local v1, "callback":Ljava/lang/Runnable;
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 714
    .end local v1    # "callback":Ljava/lang/Runnable;
    goto :goto_0

    .line 715
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOnPageScrollsInitializedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 716
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1544
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 1545
    .local v0, "pointerIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1546
    .local v1, "pointerId":I
    iget v2, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    .line 1550
    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1551
    .local v2, "newPointerIndex":I
    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v3, p1, v2}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryDirection(Landroid/view/MotionEvent;I)F

    move-result v3

    iput v3, p0, Lcom/android/launcher3/PagedView;->mDownMotionPrimary:F

    iput v3, p0, Lcom/android/launcher3/PagedView;->mLastMotion:F

    .line 1553
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/launcher3/PagedView;->mLastMotionRemainder:F

    .line 1554
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    .line 1555
    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_1

    .line 1556
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 1559
    .end local v2    # "newPointerIndex":I
    :cond_1
    return-void
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .line 1536
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1537
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 1538
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1539
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1541
    :cond_0
    return-void
.end method

.method private sendScrollAccessibilityEvent()V
    .locals 3

    .line 526
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x1000

    invoke-static {v0, v1}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->isObservedEventType(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 528
    nop

    .line 529
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 530
    .local v0, "ev":Landroid/view/accessibility/AccessibilityEvent;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 531
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollX()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    .line 532
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollY()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 533
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget v2, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    invoke-interface {v1, v0, v2}, Lcom/android/launcher3/touch/PagedOrientationHandler;->setMaxScroll(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 534
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 537
    .end local v0    # "ev":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method

.method private updatePageIndicator()V
    .locals 2

    .line 453
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 454
    check-cast v0, Lcom/android/launcher3/pageindicators/PageIndicator;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/launcher3/pageindicators/PageIndicator;->setActiveMarker(I)V

    .line 456
    :cond_0
    return-void
.end method

.method private updateVelocityValues()V
    .locals 2

    .line 622
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 623
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/android/launcher3/R$dimen;->fling_threshold_velocity:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/PagedView;->mFlingThresholdVelocity:I

    .line 624
    sget v1, Lcom/android/launcher3/R$dimen;->easy_fling_threshold_velocity:I

    .line 625
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/PagedView;->mEasyFlingThresholdVelocity:I

    .line 626
    sget v1, Lcom/android/launcher3/R$dimen;->min_fling_velocity:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/PagedView;->mMinFlingVelocity:I

    .line 627
    sget v1, Lcom/android/launcher3/R$dimen;->min_page_snap_velocity:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/PagedView;->mMinSnapVelocity:I

    .line 628
    sget v1, Lcom/android/launcher3/R$integer;->config_pageSnapAnimationDuration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/PagedView;->mPageSnapAnimationDuration:I

    .line 629
    return-void
.end method

.method private validateNewPage(I)I
    .locals 3
    .param p1, "newPage"    # I

    .line 285
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-direct {p0, p1}, Lcom/android/launcher3/PagedView;->ensureWithinScrollBounds(I)I

    move-result p1

    .line 287
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result p1

    .line 289
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 291
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getLeftmostVisiblePageForIndex(I)I

    move-result p1

    .line 293
    :cond_0
    return p1
.end method


# virtual methods
.method public abortScrollerAnimation()V
    .locals 1

    .line 257
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v0}, Lcom/android/launcher3/util/EdgeEffectCompat;->finish()V

    .line 258
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v0}, Lcom/android/launcher3/util/EdgeEffectCompat;->finish()V

    .line 259
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/PagedView;->abortScrollerAnimation(Z)V

    .line 260
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 2
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 968
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-ne v0, v1, :cond_0

    .line 969
    return-void

    .line 974
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/PagedView;->getPageIndices(I)Lcom/android/launcher3/util/IntSet;

    move-result-object v0

    .line 975
    invoke-direct {p0, p2}, Lcom/android/launcher3/PagedView;->getNeighbourPageIndices(I)Lcom/android/launcher3/util/IntSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntSet;->addAll(Lcom/android/launcher3/util/IntSet;)Lcom/android/launcher3/util/IntSet;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/PagedView$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/launcher3/PagedView$$ExternalSyntheticLambda4;-><init>(Lcom/android/launcher3/PagedView;Ljava/util/ArrayList;II)V

    .line 976
    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntSet;->forEach(Ljava/util/function/Consumer;)V

    .line 978
    return-void
.end method

.method protected announcePageForAccessibility()V
    .locals 1

    .line 540
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 544
    :cond_0
    return-void
.end method

.method protected canAnnouncePageDescription()Z
    .locals 1

    .line 1865
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method protected canScroll(FF)Z
    .locals 2
    .param p1, "absVScroll"    # F
    .param p2, "absHScroll"    # F

    .line 1524
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    .line 1525
    .local v0, "ac":Lcom/android/launcher3/views/ActivityContext;
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method protected cancelCurrentPageLongPress()V
    .locals 1

    .line 1162
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    new-instance v0, Lcom/android/launcher3/PagedView$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/PagedView$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->forEachVisiblePage(Ljava/util/function/Consumer;)V

    .line 1163
    return-void
.end method

.method protected computeMaxScroll()I
    .locals 3

    .line 848
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v0

    .line 849
    .local v0, "childCount":I
    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 850
    iget-boolean v2, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, -0x1

    .line 851
    .local v1, "index":I
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v2

    return v2

    .line 853
    .end local v1    # "index":I
    :cond_1
    return v1
.end method

.method protected computeMinScroll()I
    .locals 1

    .line 844
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public computeScroll()V
    .locals 0

    .line 600
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->computeScrollHelper()Z

    .line 601
    return-void
.end method

.method protected computeScrollHelper()Z
    .locals 5

    .line 547
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 549
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v0

    .line 550
    .local v0, "oldPos":I
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v1

    .line 551
    .local v1, "newPos":I
    if-eq v0, v1, :cond_0

    .line 552
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    sget-object v3, Lcom/android/launcher3/touch/PagedOrientationHandler;->VIEW_SCROLL_TO:Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;

    iget-object v4, p0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v4

    invoke-interface {v2, p0, v3, v4}, Lcom/android/launcher3/touch/PagedOrientationHandler;->setPrimary(Ljava/lang/Object;Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;I)V

    .line 555
    :cond_0
    iget-boolean v2, p0, Lcom/android/launcher3/PagedView;->mAllowOverScroll:Z

    if-eqz v2, :cond_2

    .line 556
    iget v2, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    if-ge v1, v2, :cond_1

    if-lt v0, v2, :cond_1

    .line 557
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/EdgeEffectCompat;->onAbsorb(I)V

    .line 558
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 559
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->onEdgeAbsorbingScroll()V

    goto :goto_0

    .line 560
    :cond_1
    iget v2, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    if-le v1, v2, :cond_2

    if-gt v0, v2, :cond_2

    .line 561
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/EdgeEffectCompat;->onAbsorb(I)V

    .line 562
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 563
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->onEdgeAbsorbingScroll()V

    .line 569
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    .line 570
    invoke-virtual {v4}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v4

    .line 569
    invoke-interface {v2, v3, v4}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(II)I

    move-result v2

    .line 571
    .local v2, "finalPos":I
    if-ne v1, v2, :cond_3

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v3}, Lcom/android/launcher3/util/EdgeEffectCompat;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v3}, Lcom/android/launcher3/util/EdgeEffectCompat;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 572
    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 575
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->invalidate()V

    .line 576
    const/4 v3, 0x1

    return v3

    .line 577
    .end local v0    # "oldPos":I
    .end local v1    # "newPos":I
    .end local v2    # "finalPos":I
    :cond_4
    iget v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 578
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->sendScrollAccessibilityEvent()V

    .line 579
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    .line 580
    .local v0, "prevPage":I
    iget v2, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    invoke-direct {p0, v2}, Lcom/android/launcher3/PagedView;->validateNewPage(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    .line 581
    iput v2, p0, Lcom/android/launcher3/PagedView;->mCurrentScrollOverPage:I

    .line 582
    iput v1, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    .line 583
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->notifyPageSwitchListener(I)V

    .line 587
    iget-boolean v1, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    if-nez v1, :cond_5

    .line 588
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageEndTransition()V

    .line 591
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->canAnnouncePageDescription()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 592
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->announcePageForAccessibility()V

    .line 595
    .end local v0    # "prevPage":I
    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1129
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    .line 1130
    return-void
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;F)V
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "touchSlopScale"    # F

    .line 1138
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget v0, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1139
    .local v0, "pointerIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 1141
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v1, p1, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryDirection(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 1142
    .local v1, "primaryDirection":F
    iget v2, p0, Lcom/android/launcher3/PagedView;->mLastMotion:F

    sub-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    .line 1143
    .local v2, "diff":I
    iget v3, p0, Lcom/android/launcher3/PagedView;->mTouchSlop:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1144
    .local v3, "touchSlop":I
    const/4 v4, 0x1

    if-gt v2, v3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/16 v6, 0xfe

    if-ne v5, v6, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v5, v4

    .line 1146
    .local v5, "moved":Z
    :goto_1
    if-eqz v5, :cond_3

    .line 1148
    iput-boolean v4, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    .line 1149
    iget v6, p0, Lcom/android/launcher3/PagedView;->mTotalMotion:F

    iget v7, p0, Lcom/android/launcher3/PagedView;->mLastMotion:F

    sub-float/2addr v7, v1

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v6, v7

    iput v6, p0, Lcom/android/launcher3/PagedView;->mTotalMotion:F

    .line 1150
    iput v1, p0, Lcom/android/launcher3/PagedView;->mLastMotion:F

    .line 1151
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/launcher3/PagedView;->mLastMotionRemainder:F

    .line 1152
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageBeginTransition()V

    .line 1154
    invoke-virtual {p0, v4}, Lcom/android/launcher3/PagedView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1156
    :cond_3
    return-void
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 7
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .line 933
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 934
    return v1

    .line 937
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_2

    .line 938
    const/16 v0, 0x11

    if-ne p2, v0, :cond_1

    .line 939
    const/16 p2, 0x42

    goto :goto_0

    .line 940
    :cond_1
    const/16 v0, 0x42

    if-ne p2, v0, :cond_2

    .line 941
    const/16 p2, 0x11

    .line 945
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    .line 946
    .local v0, "currentPage":I
    const/4 v2, -0x1

    .line 947
    .local v2, "closestNeighbourIndex":I
    const v3, 0x7fffffff

    .line 949
    .local v3, "closestNeighbourDistance":I
    invoke-direct {p0, p2}, Lcom/android/launcher3/PagedView;->getNeighbourPageIndices(I)Lcom/android/launcher3/util/IntSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/util/IntSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 950
    .local v5, "neighbourPageIndex":I
    sub-int v6, v5, v0

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 951
    .local v6, "distance":I
    if-le v3, v6, :cond_3

    .line 952
    move v3, v6

    .line 953
    move v2, v5

    .line 955
    .end local v5    # "neighbourPageIndex":I
    .end local v6    # "distance":I
    :cond_3
    goto :goto_1

    .line 956
    :cond_4
    const/4 v4, -0x1

    if-eq v2, v4, :cond_5

    .line 957
    invoke-virtual {p0, v2}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    .line 958
    .local v4, "page":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    .line 959
    invoke-virtual {v4, p2}, Landroid/view/View;->requestFocus(I)Z

    .line 960
    return v1

    .line 963
    .end local v4    # "page":Landroid/view/View;
    :cond_5
    const/4 v1, 0x0

    return v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1917
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 1918
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->drawEdgeEffect(Landroid/graphics/Canvas;)V

    .line 1919
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageEndTransition()V

    .line 1920
    return-void
.end method

.method protected drawEdgeEffect(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1923
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mAllowOverScroll:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v0}, Lcom/android/launcher3/util/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v0}, Lcom/android/launcher3/util/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1924
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getWidth()I

    move-result v0

    .line 1925
    .local v0, "width":I
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getHeight()I

    move-result v1

    .line 1926
    .local v1, "height":I
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v2}, Lcom/android/launcher3/util/EdgeEffectCompat;->isFinished()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1927
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 1928
    .local v2, "restoreCount":I
    const/high16 v3, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1929
    neg-int v3, v1

    int-to-float v3, v3

    iget v4, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollX()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1930
    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v3, v1, v0}, Lcom/android/launcher3/util/EdgeEffectCompat;->setSize(II)V

    .line 1931
    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v3, p1}, Lcom/android/launcher3/util/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1932
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->postInvalidateOnAnimation()V

    .line 1934
    :cond_1
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1936
    .end local v2    # "restoreCount":I
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v2}, Lcom/android/launcher3/util/EdgeEffectCompat;->isFinished()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1937
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 1938
    .restart local v2    # "restoreCount":I
    const/high16 v3, 0x42b40000    # 90.0f

    int-to-float v4, v0

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1939
    int-to-float v3, v0

    iget v4, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollX()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1941
    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v3, v1, v0}, Lcom/android/launcher3/util/EdgeEffectCompat;->setSize(II)V

    .line 1942
    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v3, p1}, Lcom/android/launcher3/util/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1943
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->postInvalidateOnAnimation()V

    .line 1945
    :cond_3
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1948
    .end local v0    # "width":I
    .end local v1    # "height":I
    .end local v2    # "restoreCount":I
    :cond_4
    return-void
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 4
    .param p1, "focused"    # Landroid/view/View;

    .line 989
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 990
    .local v0, "current":Landroid/view/View;
    move-object v1, p1

    .line 992
    .local v1, "v":Landroid/view/View;
    :goto_0
    if-ne v1, v0, :cond_0

    .line 993
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    .line 994
    return-void

    .line 996
    :cond_0
    if-ne v1, p0, :cond_1

    .line 997
    return-void

    .line 999
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 1000
    .local v2, "parent":Landroid/view/ViewParent;
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_2

    .line 1001
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Landroid/view/View;

    .line 1005
    .end local v2    # "parent":Landroid/view/ViewParent;
    goto :goto_0

    .line 1003
    .restart local v2    # "parent":Landroid/view/ViewParent;
    :cond_2
    return-void
.end method

.method public forEachVisiblePage(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 370
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getVisiblePageIndices()Lcom/android/launcher3/util/IntSet;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/PagedView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/PagedView$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/PagedView;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntSet;->forEach(Ljava/util/function/Consumer;)V

    .line 376
    return-void
.end method

.method public forceFinishScroller()V
    .locals 2

    .line 277
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 280
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    .line 281
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageEndTransition()V

    .line 282
    return-void
.end method

.method public forceLayout()V
    .locals 1

    .line 645
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsLayoutValid:Z

    .line 646
    invoke-super {p0}, Landroid/view/ViewGroup;->forceLayout()V

    .line 647
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 1774
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    const-class v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getChildGap(II)I
    .locals 1
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 835
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected getChildOffset(I)I
    .locals 2
    .param p1, "index"    # I

    .line 892
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 893
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 894
    .local v0, "pageAtIndex":Landroid/view/View;
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v1, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getChildStart(Landroid/view/View;)I

    move-result v1

    return v1

    .line 892
    .end local v0    # "pageAtIndex":Landroid/view/View;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method protected getChildVisibleSize(I)I
    .locals 2
    .param p1, "index"    # I

    .line 898
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 899
    .local v0, "layout":Landroid/view/View;
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v1, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getMeasuredSize(Landroid/view/View;)I

    move-result v1

    return v1
.end method

.method public getCurrentPage()I
    .locals 1

    .line 219
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    return v0
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 6

    .line 1869
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$string;->default_scroll_format:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 1870
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v2, v5

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 1869
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDestinationPage()I
    .locals 1

    .line 1579
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getDestinationPage(I)I

    move-result v0

    return v0
.end method

.method protected getDestinationPage(I)I
    .locals 1
    .param p1, "primaryScroll"    # I

    .line 1583
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-direct {p0, p1}, Lcom/android/launcher3/PagedView;->getPageNearestToCenterOfScreen(I)I

    move-result v0

    return v0
.end method

.method protected getDisplacementFromScreenCenter(I)I
    .locals 3
    .param p1, "childIndex"    # I

    .line 1614
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v0

    .line 1615
    .local v0, "primaryScroll":I
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getScreenCenter(I)I

    move-result v1

    .line 1616
    .local v1, "screenCenter":I
    invoke-direct {p0, p1, v1}, Lcom/android/launcher3/PagedView;->getDisplacementFromScreenCenter(II)I

    move-result v2

    return v2
.end method

.method protected getDownMotionX()F
    .locals 1

    .line 1874
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget v0, p0, Lcom/android/launcher3/PagedView;->mDownMotionX:F

    return v0
.end method

.method protected getDownMotionY()F
    .locals 1

    .line 1878
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget v0, p0, Lcom/android/launcher3/PagedView;->mDownMotionY:F

    return v0
.end method

.method public getExpectedHeight()I
    .locals 1

    .line 604
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public getExpectedWidth()I
    .locals 1

    .line 613
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public getLayoutTransitionOffsetForPage(I)I
    .locals 5
    .param p1, "index"    # I

    .line 1202
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageScrollsInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    array-length v0, v0

    if-ge p1, v0, :cond_2

    if-gez p1, :cond_0

    goto :goto_1

    .line 1205
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1207
    .local v0, "child":Landroid/view/View;
    iget-boolean v1, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingRight()I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingLeft()I

    move-result v1

    .line 1208
    .local v1, "scrollOffset":I
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    aget v2, v2, p1

    add-int/2addr v2, v1

    .line 1209
    .local v2, "baselineX":I
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v3

    int-to-float v4, v2

    sub-float/2addr v3, v4

    float-to-int v3, v3

    return v3

    .line 1203
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "scrollOffset":I
    .end local v2    # "baselineX":I
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public getLeftmostVisiblePageForIndex(I)I
    .locals 2
    .param p1, "pageIndex"    # I

    .line 303
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result v0

    .line 304
    .local v0, "panelCount":I
    rem-int v1, p1, v0

    sub-int v1, p1, v1

    return v1
.end method

.method public getNextPage()I
    .locals 2

    .line 226
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    :goto_0
    return v0
.end method

.method public getNormalChildHeight()I
    .locals 2

    .line 608
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getExpectedHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getNormalChildWidth()I
    .locals 2

    .line 617
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getExpectedWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getPageAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .line 234
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPageCount()I
    .locals 1

    .line 230
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getPageIndicator()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 209
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Landroid/view/View;

    return-object v0
.end method

.method public getPageNearestToCenterOfScreen()I
    .locals 1

    .line 1587
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/PagedView;->getPageNearestToCenterOfScreen(I)I

    move-result v0

    return v0
.end method

.method protected getPageScrolls([IZLcom/android/launcher3/PagedView$ComputePageScrollsLogic;)Z
    .locals 22
    .param p1, "outPageScrolls"    # [I
    .param p2, "layoutChildren"    # Z
    .param p3, "scrollLogic"    # Lcom/android/launcher3/PagedView$ComputePageScrollsLogic;

    .line 781
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v1

    .line 783
    .local v1, "childCount":I
    iget-boolean v2, v0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v2, :cond_0

    add-int/lit8 v4, v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 784
    .local v4, "startIndex":I
    :goto_0
    const/4 v5, -0x1

    if-eqz v2, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    move v6, v1

    .line 785
    .local v6, "endIndex":I
    :goto_1
    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v5, 0x1

    :goto_2
    move v2, v5

    .line 787
    .local v2, "delta":I
    iget-object v5, v0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v8, v0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    invoke-interface {v5, v0, v8}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getCenterForPage(Landroid/view/View;Landroid/graphics/Rect;)I

    move-result v5

    .line 789
    .local v5, "pageCenter":I
    iget-object v8, v0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v9, v0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    invoke-interface {v8, v0, v9}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getScrollOffsetStart(Landroid/view/View;Landroid/graphics/Rect;)I

    move-result v8

    .line 790
    .local v8, "scrollOffsetStart":I
    iget-object v9, v0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v10, v0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    invoke-interface {v9, v0, v10}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getScrollOffsetEnd(Landroid/view/View;Landroid/graphics/Rect;)I

    move-result v9

    .line 791
    .local v9, "scrollOffsetEnd":I
    const/4 v10, 0x0

    .line 792
    .local v10, "pageScrollChanged":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result v11

    .line 794
    .local v11, "panelCount":I
    move v12, v4

    .local v12, "i":I
    move v13, v8

    .local v13, "childStart":I
    :goto_3
    if-eq v12, v6, :cond_8

    .line 795
    invoke-virtual {v0, v12}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v14

    .line 796
    .local v14, "child":Landroid/view/View;
    move-object/from16 v15, p3

    invoke-interface {v15, v14}, Lcom/android/launcher3/PagedView$ComputePageScrollsLogic;->shouldIncludeView(Landroid/view/View;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 797
    iget-object v3, v0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    move/from16 v7, p2

    invoke-interface {v3, v14, v13, v5, v7}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getChildBounds(Landroid/view/View;IIZ)Lcom/android/launcher3/touch/PagedOrientationHandler$ChildBounds;

    move-result-object v3

    .line 799
    .local v3, "bounds":Lcom/android/launcher3/touch/PagedOrientationHandler$ChildBounds;
    move/from16 v17, v4

    .end local v4    # "startIndex":I
    .local v17, "startIndex":I
    iget v4, v3, Lcom/android/launcher3/touch/PagedOrientationHandler$ChildBounds;->primaryDimension:I

    .line 800
    .local v4, "primaryDimension":I
    move/from16 v18, v5

    .end local v5    # "pageCenter":I
    .local v18, "pageCenter":I
    iget v5, v3, Lcom/android/launcher3/touch/PagedOrientationHandler$ChildBounds;->childPrimaryEnd:I

    .line 805
    .local v5, "childPrimaryEnd":I
    move-object/from16 v19, v3

    .end local v3    # "bounds":Lcom/android/launcher3/touch/PagedOrientationHandler$ChildBounds;
    .local v19, "bounds":Lcom/android/launcher3/touch/PagedOrientationHandler$ChildBounds;
    iget-boolean v3, v0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v3, :cond_3

    sub-int v3, v5, v9

    goto :goto_4

    :cond_3
    sub-int v3, v13, v8

    .line 806
    .local v3, "pageScroll":I
    :goto_4
    move/from16 v20, v5

    .end local v5    # "childPrimaryEnd":I
    .local v20, "childPrimaryEnd":I
    aget v5, p1, v12

    if-eq v5, v3, :cond_4

    .line 807
    const/4 v10, 0x1

    .line 808
    aput v3, p1, v12

    .line 810
    :cond_4
    add-int v5, v12, v2

    invoke-virtual {v0, v12, v5}, Lcom/android/launcher3/PagedView;->getChildGap(II)I

    move-result v5

    add-int/2addr v5, v4

    add-int/2addr v13, v5

    .line 813
    iget-boolean v5, v0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    goto :goto_5

    :cond_5
    add-int/lit8 v5, v11, -0x1

    .line 814
    .local v5, "lastPanel":I
    :goto_5
    move/from16 v21, v3

    .end local v3    # "pageScroll":I
    .local v21, "pageScroll":I
    rem-int v3, v12, v11

    if-ne v3, v5, :cond_7

    .line 815
    iget v3, v0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    add-int/2addr v13, v3

    goto :goto_6

    .line 796
    .end local v17    # "startIndex":I
    .end local v18    # "pageCenter":I
    .end local v19    # "bounds":Lcom/android/launcher3/touch/PagedOrientationHandler$ChildBounds;
    .end local v20    # "childPrimaryEnd":I
    .end local v21    # "pageScroll":I
    .local v4, "startIndex":I
    .local v5, "pageCenter":I
    :cond_6
    move/from16 v7, p2

    move/from16 v17, v4

    move/from16 v18, v5

    .line 794
    .end local v4    # "startIndex":I
    .end local v5    # "pageCenter":I
    .end local v14    # "child":Landroid/view/View;
    .restart local v17    # "startIndex":I
    .restart local v18    # "pageCenter":I
    :cond_7
    :goto_6
    add-int/2addr v12, v2

    move/from16 v4, v17

    move/from16 v5, v18

    goto :goto_3

    .end local v17    # "startIndex":I
    .end local v18    # "pageCenter":I
    .restart local v4    # "startIndex":I
    .restart local v5    # "pageCenter":I
    :cond_8
    move/from16 v7, p2

    move-object/from16 v15, p3

    move/from16 v17, v4

    move/from16 v18, v5

    .line 820
    .end local v4    # "startIndex":I
    .end local v5    # "pageCenter":I
    .end local v12    # "i":I
    .end local v13    # "childStart":I
    .restart local v17    # "startIndex":I
    .restart local v18    # "pageCenter":I
    const/4 v3, 0x1

    if-le v11, v3, :cond_a

    .line 821
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    if-ge v3, v1, :cond_a

    .line 824
    invoke-virtual {v0, v3}, Lcom/android/launcher3/PagedView;->getLeftmostVisiblePageForIndex(I)I

    move-result v4

    aget v4, p1, v4

    .line 825
    .local v4, "adjustedScroll":I
    aget v5, p1, v3

    if-eq v5, v4, :cond_9

    .line 826
    aput v4, p1, v3

    .line 827
    const/4 v10, 0x1

    .line 821
    .end local v4    # "adjustedScroll":I
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 831
    .end local v3    # "i":I
    :cond_a
    return v10
.end method

.method public getPageSpacing()I
    .locals 1

    .line 863
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget v0, p0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    return v0
.end method

.method protected getPanelCount()I
    .locals 1

    .line 311
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method protected getScreenCenter(I)I
    .locals 6
    .param p1, "primaryScroll"    # I

    .line 1620
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScale(Landroid/view/View;)F

    move-result v0

    .line 1621
    .local v0, "primaryScale":F
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPivotX()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPivotY()F

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(FF)F

    move-result v1

    .line 1622
    .local v1, "primaryPivot":F
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v2, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getMeasuredSize(Landroid/view/View;)I

    move-result v2

    .line 1623
    .local v2, "pageOrientationSize":I
    int-to-float v3, p1

    int-to-float v4, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v4, v1

    div-float/2addr v4, v0

    add-float/2addr v3, v4

    add-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    return v3
.end method

.method public getScrollForPage(I)I
    .locals 2
    .param p1, "index"    # I

    .line 1192
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    if-eqz v0, :cond_1

    array-length v1, v0

    if-ge p1, v1, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 1195
    :cond_0
    aget v0, v0, p1

    return v0

    .line 1193
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method protected getScrollProgress(ILandroid/view/View;I)F
    .locals 9
    .param p1, "screenCenter"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "page"    # I

    .line 1166
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 1167
    .local v0, "halfScreenSize":I
    invoke-virtual {p0, p3}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v1

    add-int/2addr v1, v0

    sub-int v1, p1, v1

    .line 1168
    .local v1, "delta":I
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result v2

    .line 1169
    .local v2, "panelCount":I
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v3

    .line 1171
    .local v3, "pageCount":I
    add-int v4, p3, v2

    .line 1172
    .local v4, "adjacentPage":I
    if-gez v1, :cond_0

    iget-boolean v5, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v5, :cond_1

    :cond_0
    if-lez v1, :cond_2

    iget-boolean v5, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v5, :cond_2

    .line 1173
    :cond_1
    sub-int v4, p3, v2

    .line 1177
    :cond_2
    if-ltz v4, :cond_4

    add-int/lit8 v5, v3, -0x1

    if-le v4, v5, :cond_3

    goto :goto_0

    .line 1180
    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v5

    invoke-virtual {p0, p3}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .local v5, "totalDistance":I
    goto :goto_1

    .line 1178
    .end local v5    # "totalDistance":I
    :cond_4
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget v6, p0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    add-int/2addr v5, v6

    mul-int/2addr v5, v2

    .line 1183
    .restart local v5    # "totalDistance":I
    :goto_1
    int-to-float v6, v1

    int-to-float v7, v5

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float/2addr v7, v8

    div-float/2addr v6, v7

    .line 1184
    .local v6, "scrollProgress":F
    invoke-static {v6, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 1185
    const/high16 v7, -0x40800000    # -1.0f

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 1186
    return v6
.end method

.method public getVisibleChildrenRange()[I
    .locals 10

    .line 1887
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    const/4 v0, 0x0

    .line 1888
    .local v0, "visibleLeft":F
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    .line 1889
    .local v1, "visibleRight":F
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScaleX()F

    move-result v2

    .line 1890
    .local v2, "scaleX":F
    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_0

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    .line 1891
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    .line 1892
    .local v3, "mid":F
    sub-float v4, v3, v0

    div-float/2addr v4, v2

    sub-float v0, v3, v4

    .line 1893
    sub-float v4, v1, v3

    div-float/2addr v4, v2

    add-float v1, v3, v4

    .line 1896
    .end local v3    # "mid":F
    :cond_0
    const/4 v3, -0x1

    .line 1897
    .local v3, "leftChild":I
    const/4 v4, -0x1

    .line 1898
    .local v4, "rightChild":I
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v5

    .line 1899
    .local v5, "childCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_3

    .line 1900
    invoke-virtual {p0, v6}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v7

    .line 1902
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7}, Landroid/view/View;->getTranslationX()F

    move-result v9

    add-float/2addr v8, v9

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollX()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    .line 1903
    .local v8, "left":F
    cmpg-float v9, v8, v1

    if-gtz v9, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v8

    cmpl-float v9, v9, v0

    if-ltz v9, :cond_2

    .line 1904
    const/4 v9, -0x1

    if-ne v3, v9, :cond_1

    .line 1905
    move v3, v6

    .line 1907
    :cond_1
    move v4, v6

    .line 1899
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "left":F
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1910
    .end local v6    # "i":I
    :cond_3
    iget-object v6, p0, Lcom/android/launcher3/PagedView;->mTmpIntPair:[I

    const/4 v7, 0x0

    aput v3, v6, v7

    .line 1911
    const/4 v7, 0x1

    aput v4, v6, v7

    .line 1912
    return-object v6
.end method

.method public getVisiblePageIndices()Lcom/android/launcher3/util/IntSet;
    .locals 1

    .line 319
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-direct {p0, v0}, Lcom/android/launcher3/PagedView;->getPageIndices(I)Lcom/android/launcher3/util/IntSet;

    move-result-object v0

    return-object v0
.end method

.method protected initEdgeEffect()V
    .locals 2

    .line 197
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    new-instance v0, Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    .line 198
    new-instance v0, Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    .line 199
    return-void
.end method

.method public initParentViews(Landroid/view/View;)V
    .locals 3
    .param p1, "parent"    # Landroid/view/View;

    .line 202
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicatorViewId:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 203
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Landroid/view/View;

    .line 204
    check-cast v0, Lcom/android/launcher3/pageindicators/PageIndicator;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result v2

    div-int/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/android/launcher3/pageindicators/PageIndicator;->setMarkersCount(I)V

    .line 206
    :cond_0
    return-void
.end method

.method public isHandlingTouch()Z
    .locals 1

    .line 1125
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    return v0
.end method

.method protected isPageInTransition()Z
    .locals 1

    .line 479
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsPageInTransition:Z

    return v0
.end method

.method protected isPageOrderFlipped()Z
    .locals 1

    .line 1778
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected isSignificantMove(FI)Z
    .locals 2
    .param p1, "absoluteDelta"    # F
    .param p2, "pageOrientedSize"    # I

    .line 1235
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    int-to-float v0, p2

    const v1, 0x3ecccccd    # 0.4f

    mul-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVisible(Landroid/view/View;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 382
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/PagedView;->isVisible(I)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$addFocusables$3$com-android-launcher3-PagedView(Ljava/util/ArrayList;IILjava/lang/Integer;)V
    .locals 1
    .param p1, "views"    # Ljava/util/ArrayList;
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .param p4, "pageIndex"    # Ljava/lang/Integer;

    .line 977
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    return-void
.end method

.method synthetic lambda$forEachVisiblePage$1$com-android-launcher3-PagedView(Ljava/util/function/Consumer;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "callback"    # Ljava/util/function/Consumer;
    .param p2, "pageIndex"    # Ljava/lang/Integer;

    .line 371
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 372
    .local v0, "page":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 373
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 375
    :cond_0
    return-void
.end method

.method synthetic lambda$onViewRemoved$2$com-android-launcher3-PagedView()V
    .locals 1

    .line 885
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-direct {p0, v0}, Lcom/android/launcher3/PagedView;->validateNewPage(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    .line 886
    iput v0, p0, Lcom/android/launcher3/PagedView;->mCurrentScrollOverPage:I

    .line 887
    return-void
.end method

.method protected notifyPageSwitchListener(I)V
    .locals 0
    .param p1, "prevPage"    # I

    .line 449
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->updatePageIndicator()V

    .line 450
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 633
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 634
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->updateVelocityValues()V

    .line 635
    return-void
.end method

.method protected onEdgeAbsorbingScroll()V
    .locals 0

    .line 1465
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1487
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    .line 1488
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    .line 1493
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/16 v2, 0x9

    if-eqz v0, :cond_0

    .line 1494
    const/4 v0, 0x0

    .line 1495
    .local v0, "vscroll":F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    .local v2, "hscroll":F
    goto :goto_0

    .line 1497
    .end local v0    # "vscroll":F
    .end local v2    # "hscroll":F
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    neg-float v0, v0

    .line 1498
    .restart local v0    # "vscroll":F
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    .line 1500
    .restart local v2    # "hscroll":F
    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher3/PagedView;->canScroll(FF)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 1501
    return v4

    .line 1503
    :cond_1
    const/4 v3, 0x0

    cmpl-float v5, v2, v3

    if-nez v5, :cond_2

    cmpl-float v5, v0, v3

    if-eqz v5, :cond_8

    .line 1504
    :cond_2
    iget-boolean v5, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v5, :cond_4

    cmpg-float v5, v2, v3

    if-ltz v5, :cond_3

    cmpg-float v3, v0, v3

    if-gez v3, :cond_6

    :cond_3
    move v4, v1

    goto :goto_1

    .line 1505
    :cond_4
    cmpl-float v5, v2, v3

    if-gtz v5, :cond_5

    cmpl-float v3, v0, v3

    if-lez v3, :cond_6

    :cond_5
    move v4, v1

    :cond_6
    :goto_1
    move v3, v4

    .line 1506
    .local v3, "isForwardScroll":Z
    if-eqz v3, :cond_7

    .line 1507
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->scrollRight()Z

    goto :goto_2

    .line 1509
    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->scrollLeft()Z

    .line 1511
    :goto_2
    return v1

    .line 1516
    .end local v0    # "vscroll":F
    .end local v2    # "hscroll":F
    .end local v3    # "isForwardScroll":Z
    :cond_8
    :goto_3
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1825
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1826
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mAllowOverScroll:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v0

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 1827
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 6
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1785
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1786
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isPageOrderFlipped()Z

    move-result v0

    .line 1787
    .local v0, "pagesFlipped":Z
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1788
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v1, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v1

    .line 1789
    .local v1, "primaryScroll":I
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result v5

    sub-int/2addr v4, v5

    if-lt v3, v4, :cond_1

    .line 1790
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result v5

    sub-int/2addr v4, v5

    if-ne v3, v4, :cond_4

    .line 1791
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v3

    if-eq v1, v3, :cond_4

    .line 1792
    :cond_1
    if-eqz v0, :cond_2

    .line 1793
    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_1

    .line 1794
    :cond_2
    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 1792
    :goto_1
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1795
    iget-boolean v3, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v3, :cond_3

    .line 1796
    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_LEFT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_2

    .line 1797
    :cond_3
    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_RIGHT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 1795
    :goto_2
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1799
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v3

    if-gtz v3, :cond_5

    .line 1800
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {p0, v2}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v3

    if-eq v1, v3, :cond_8

    .line 1801
    :cond_5
    if-eqz v0, :cond_6

    .line 1802
    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_3

    .line 1803
    :cond_6
    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 1801
    :goto_3
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1804
    iget-boolean v3, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v3, :cond_7

    .line 1805
    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_RIGHT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_4

    .line 1806
    :cond_7
    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_LEFT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 1804
    :goto_4
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1811
    :cond_8
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 1812
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_LONG_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    .line 1813
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1030
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    .line 1032
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher3/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 1039
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1040
    .local v0, "action":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget-boolean v2, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    if-eqz v2, :cond_1

    .line 1041
    const/4 v1, 0x1

    return v1

    .line 1044
    :cond_1
    and-int/lit16 v2, v0, 0xff

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1082
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/launcher3/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1083
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->releaseVelocityTracker()V

    goto :goto_0

    .line 1050
    :pswitch_2
    iget v1, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 1051
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 1078
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->resetTouchState()V

    .line 1079
    goto :goto_0

    .line 1062
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 1063
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 1065
    .local v3, "y":F
    iput v2, p0, Lcom/android/launcher3/PagedView;->mDownMotionX:F

    .line 1066
    iput v3, p0, Lcom/android/launcher3/PagedView;->mDownMotionY:F

    .line 1067
    iget-object v4, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v4, p1, v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryDirection(Landroid/view/MotionEvent;I)F

    move-result v4

    iput v4, p0, Lcom/android/launcher3/PagedView;->mLastMotion:F

    iput v4, p0, Lcom/android/launcher3/PagedView;->mDownMotionPrimary:F

    .line 1068
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/launcher3/PagedView;->mLastMotionRemainder:F

    .line 1069
    iput v4, p0, Lcom/android/launcher3/PagedView;->mTotalMotion:F

    .line 1070
    iput-boolean v1, p0, Lcom/android/launcher3/PagedView;->mAllowEasyFling:Z

    .line 1071
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    .line 1072
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->updateIsBeingDraggedOnTouchDown(Landroid/view/MotionEvent;)V

    .line 1073
    nop

    .line 1091
    .end local v2    # "x":F
    .end local v3    # "y":F
    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    return v1

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

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 721
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsLayoutValid:Z

    .line 722
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v1

    .line 723
    .local v1, "childCount":I
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    .line 724
    .local v2, "pageScrolls":[I
    const/4 v3, 0x0

    .line 725
    .local v3, "pageScrollChanged":Z
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageScrollsInitialized()Z

    move-result v4

    if-nez v4, :cond_0

    .line 726
    new-array v2, v1, [I

    .line 727
    const/4 v3, 0x1

    .line 732
    :cond_0
    sget-object v4, Lcom/android/launcher3/PagedView;->SIMPLE_SCROLL_LOGIC:Lcom/android/launcher3/PagedView$ComputePageScrollsLogic;

    invoke-virtual {p0, v2, v0, v4}, Lcom/android/launcher3/PagedView;->getPageScrolls([IZLcom/android/launcher3/PagedView$ComputePageScrollsLogic;)Z

    move-result v0

    or-int/2addr v0, v3

    .line 733
    .end local v3    # "pageScrollChanged":Z
    .local v0, "pageScrollChanged":Z
    iput-object v2, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    .line 735
    if-nez v1, :cond_1

    .line 736
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->onPageScrollsInitialized()V

    .line 737
    return-void

    .line 740
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v3

    .line 743
    .local v3, "transition":Landroid/animation/LayoutTransition;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 744
    new-instance v4, Lcom/android/launcher3/PagedView$1;

    invoke-direct {v4, p0}, Lcom/android/launcher3/PagedView$1;-><init>(Lcom/android/launcher3/PagedView;)V

    invoke-virtual {v3, v4}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    goto :goto_0

    .line 761
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->updateMinAndMaxScrollX()V

    .line 764
    :goto_0
    iget-boolean v4, p0, Lcom/android/launcher3/PagedView;->mFirstLayout:Z

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-ltz v4, :cond_3

    if-ge v4, v1, :cond_3

    .line 765
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->updateCurrentPageScroll()V

    .line 766
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/launcher3/PagedView;->mFirstLayout:Z

    .line 769
    :cond_3
    iget-object v4, p0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v0, :cond_4

    .line 770
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    .line 772
    :cond_4
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->onPageScrollsInitialized()V

    .line 773
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 658
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 659
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 660
    return-void

    .line 665
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 666
    .local v0, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 667
    .local v1, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 668
    .local v2, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 670
    .local v3, "heightSize":I
    if-eqz v0, :cond_4

    if-nez v2, :cond_1

    goto :goto_1

    .line 676
    :cond_1
    if-lez v1, :cond_3

    if-gtz v3, :cond_2

    goto :goto_0

    .line 685
    :cond_2
    nop

    .line 686
    invoke-direct {p0, v1}, Lcom/android/launcher3/PagedView;->getPageWidthSize(I)I

    move-result v4

    .line 685
    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 687
    .local v4, "myWidthSpec":I
    iget-object v6, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int v6, v3, v6

    iget-object v7, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 692
    .local v5, "myHeightSpec":I
    invoke-virtual {p0, v4, v5}, Lcom/android/launcher3/PagedView;->measureChildren(II)V

    .line 693
    invoke-virtual {p0, v1, v3}, Lcom/android/launcher3/PagedView;->setMeasuredDimension(II)V

    .line 694
    return-void

    .line 677
    .end local v4    # "myWidthSpec":I
    .end local v5    # "myHeightSpec":I
    :cond_3
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 678
    return-void

    .line 671
    :cond_4
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 672
    return-void
.end method

.method protected onNotSnappingToPageInFreeScroll()V
    .locals 0

    .line 1458
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    return-void
.end method

.method protected onPageBeginTransition()V
    .locals 0

    .line 487
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    return-void
.end method

.method protected onPageEndTransition()V
    .locals 3

    .line 494
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPageScrollDiff:I

    .line 495
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->sendScrollFinishedEventToTest(Landroid/content/Context;)V

    .line 496
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->sendCustomAccessibilityEvent(Landroid/view/View;ILjava/lang/String;)V

    .line 498
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOnPageTransitionEndCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 499
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 500
    iput-object v2, p0, Lcom/android/launcher3/PagedView;->mOnPageTransitionEndCallback:Ljava/lang/Runnable;

    .line 502
    :cond_0
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 3
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 919
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 920
    iget v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    .local v0, "focusablePage":I
    goto :goto_0

    .line 922
    .end local v0    # "focusablePage":I
    :cond_0
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    .line 924
    .restart local v0    # "focusablePage":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    .line 925
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 926
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v2

    return v2

    .line 928
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method protected onScrollChanged(IIII)V
    .locals 2
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .line 1759
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1761
    return-void

    .line 1763
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getDestinationPage()I

    move-result v0

    .line 1764
    .local v0, "newDestinationPage":I
    if-ltz v0, :cond_1

    iget v1, p0, Lcom/android/launcher3/PagedView;->mCurrentScrollOverPage:I

    if-eq v0, v1, :cond_1

    .line 1765
    iput v0, p0, Lcom/android/launcher3/PagedView;->mCurrentScrollOverPage:I

    .line 1766
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->onScrollOverPageChanged()V

    .line 1768
    :cond_1
    return-void
.end method

.method protected onScrollOverPageChanged()V
    .locals 0

    .line 1472
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 33
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1241
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    if-gtz v2, :cond_0

    return v3

    .line 1243
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 1245
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 1247
    .local v2, "action":I
    and-int/lit16 v4, v2, 0xff

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    sparse-switch v4, :sswitch_data_0

    move/from16 v19, v2

    .end local v2    # "action":I
    .local v19, "action":I
    goto/16 :goto_11

    .line 1274
    .end local v19    # "action":I
    .restart local v2    # "action":I
    :sswitch_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    .line 1275
    iput-boolean v7, v0, Lcom/android/launcher3/PagedView;->mAllowEasyFling:Z

    .line 1276
    move/from16 v19, v2

    goto/16 :goto_11

    .line 1450
    :sswitch_1
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1451
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->releaseVelocityTracker()V

    move/from16 v19, v2

    goto/16 :goto_11

    .line 1441
    :sswitch_2
    iget-boolean v3, v0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    if-eqz v3, :cond_1

    .line 1442
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->snapToDestination()V

    .line 1444
    :cond_1
    iget-object v3, v0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v3}, Lcom/android/launcher3/util/EdgeEffectCompat;->onRelease()V

    .line 1445
    iget-object v3, v0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v3}, Lcom/android/launcher3/util/EdgeEffectCompat;->onRelease()V

    .line 1446
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->resetTouchState()V

    .line 1447
    move/from16 v19, v2

    goto/16 :goto_11

    .line 1279
    :sswitch_3
    iget-boolean v3, v0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    if-eqz v3, :cond_c

    .line 1281
    iget v3, v0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 1283
    .local v3, "pointerIndex":I
    if-ne v3, v5, :cond_2

    return v7

    .line 1284
    :cond_2
    iget-object v4, v0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v4, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v4

    int-to-float v4, v4

    .line 1285
    .local v4, "oldScroll":F
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 1286
    .local v5, "dx":F
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 1288
    .local v8, "dy":F
    iget-object v9, v0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v9, v5, v8}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(FF)F

    move-result v9

    .line 1289
    .local v9, "direction":F
    iget v10, v0, Lcom/android/launcher3/PagedView;->mLastMotion:F

    iget v11, v0, Lcom/android/launcher3/PagedView;->mLastMotionRemainder:F

    add-float/2addr v10, v11

    sub-float/2addr v10, v9

    .line 1291
    .local v10, "delta":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getWidth()I

    move-result v11

    .line 1292
    .local v11, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getHeight()I

    move-result v12

    .line 1293
    .local v12, "height":I
    iget-object v13, v0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v13, v11, v12}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(II)I

    move-result v13

    .line 1295
    .local v13, "size":I
    iget-object v14, v0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v14, v5, v8}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryValue(FF)F

    move-result v14

    iget-object v15, v0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    .line 1296
    invoke-interface {v15, v11, v12}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryValue(II)I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v14, v15

    .line 1297
    .local v14, "displacement":F
    iget v15, v0, Lcom/android/launcher3/PagedView;->mTotalMotion:F

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v16

    add-float v15, v15, v16

    iput v15, v0, Lcom/android/launcher3/PagedView;->mTotalMotion:F

    .line 1299
    iget-boolean v15, v0, Lcom/android/launcher3/PagedView;->mAllowOverScroll:Z

    const/high16 v16, 0x3f800000    # 1.0f

    if-eqz v15, :cond_5

    .line 1300
    const/4 v15, 0x0

    .line 1301
    .local v15, "consumed":F
    cmpg-float v17, v10, v6

    if-gez v17, :cond_3

    iget-object v7, v0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v7}, Lcom/android/launcher3/util/EdgeEffectCompat;->getDistance()F

    move-result v7

    cmpl-float v7, v7, v6

    if-eqz v7, :cond_3

    .line 1302
    int-to-float v7, v13

    iget-object v6, v0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    move/from16 v19, v2

    .end local v2    # "action":I
    .restart local v19    # "action":I
    int-to-float v2, v13

    div-float v2, v10, v2

    invoke-virtual {v6, v2, v14}, Lcom/android/launcher3/util/EdgeEffectCompat;->onPullDistance(FF)F

    move-result v2

    mul-float v15, v7, v2

    move/from16 v20, v3

    goto :goto_0

    .line 1301
    .end local v19    # "action":I
    .restart local v2    # "action":I
    :cond_3
    move/from16 v19, v2

    .line 1303
    .end local v2    # "action":I
    .restart local v19    # "action":I
    const/4 v2, 0x0

    cmpl-float v6, v10, v2

    if-lez v6, :cond_4

    iget-object v6, v0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v6}, Lcom/android/launcher3/util/EdgeEffectCompat;->getDistance()F

    move-result v6

    cmpl-float v6, v6, v2

    if-eqz v6, :cond_4

    .line 1304
    neg-int v2, v13

    int-to-float v2, v2

    iget-object v6, v0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    neg-float v7, v10

    move/from16 v20, v3

    .end local v3    # "pointerIndex":I
    .local v20, "pointerIndex":I
    int-to-float v3, v13

    div-float/2addr v7, v3

    sub-float v3, v16, v14

    invoke-virtual {v6, v7, v3}, Lcom/android/launcher3/util/EdgeEffectCompat;->onPullDistance(FF)F

    move-result v3

    mul-float v15, v2, v3

    goto :goto_0

    .line 1303
    .end local v20    # "pointerIndex":I
    .restart local v3    # "pointerIndex":I
    :cond_4
    move/from16 v20, v3

    .line 1307
    .end local v3    # "pointerIndex":I
    .restart local v20    # "pointerIndex":I
    :goto_0
    sub-float/2addr v10, v15

    goto :goto_1

    .line 1299
    .end local v15    # "consumed":F
    .end local v19    # "action":I
    .end local v20    # "pointerIndex":I
    .restart local v2    # "action":I
    .restart local v3    # "pointerIndex":I
    :cond_5
    move/from16 v19, v2

    move/from16 v20, v3

    .line 1309
    .end local v2    # "action":I
    .end local v3    # "pointerIndex":I
    .restart local v19    # "action":I
    .restart local v20    # "pointerIndex":I
    :goto_1
    iget-object v2, v0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v2, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScale(Landroid/view/View;)F

    move-result v2

    div-float/2addr v10, v2

    .line 1314
    iput v9, v0, Lcom/android/launcher3/PagedView;->mLastMotion:F

    .line 1315
    float-to-int v2, v10

    .line 1316
    .local v2, "movedDelta":I
    int-to-float v3, v2

    sub-float v3, v10, v3

    iput v3, v0, Lcom/android/launcher3/PagedView;->mLastMotionRemainder:F

    .line 1318
    const/4 v3, 0x0

    cmpl-float v3, v10, v3

    if-eqz v3, :cond_a

    .line 1319
    iget-object v3, v0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    sget-object v6, Lcom/android/launcher3/touch/PagedOrientationHandler;->VIEW_SCROLL_BY:Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;

    invoke-interface {v3, v0, v6, v2}, Lcom/android/launcher3/touch/PagedOrientationHandler;->setPrimary(Ljava/lang/Object;Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;I)V

    .line 1321
    iget-boolean v3, v0, Lcom/android/launcher3/PagedView;->mAllowOverScroll:Z

    if-eqz v3, :cond_b

    .line 1322
    add-float v3, v4, v10

    .line 1324
    .local v3, "pulledToX":F
    iget v6, v0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    int-to-float v6, v6

    cmpg-float v6, v3, v6

    if-gez v6, :cond_6

    .line 1325
    iget-object v6, v0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    neg-float v7, v10

    int-to-float v15, v13

    div-float/2addr v7, v15

    sub-float v15, v16, v14

    invoke-virtual {v6, v7, v15}, Lcom/android/launcher3/util/EdgeEffectCompat;->onPullDistance(FF)F

    .line 1326
    iget-object v6, v0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v6}, Lcom/android/launcher3/util/EdgeEffectCompat;->isFinished()Z

    move-result v6

    if-nez v6, :cond_7

    .line 1327
    iget-object v6, v0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v6}, Lcom/android/launcher3/util/EdgeEffectCompat;->onRelease()V

    goto :goto_2

    .line 1329
    :cond_6
    iget v6, v0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    int-to-float v6, v6

    cmpl-float v6, v3, v6

    if-lez v6, :cond_7

    .line 1330
    iget-object v6, v0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    int-to-float v7, v13

    div-float v7, v10, v7

    invoke-virtual {v6, v7, v14}, Lcom/android/launcher3/util/EdgeEffectCompat;->onPullDistance(FF)F

    .line 1331
    iget-object v6, v0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v6}, Lcom/android/launcher3/util/EdgeEffectCompat;->isFinished()Z

    move-result v6

    if-nez v6, :cond_7

    .line 1332
    iget-object v6, v0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v6}, Lcom/android/launcher3/util/EdgeEffectCompat;->onRelease()V

    .line 1336
    :cond_7
    :goto_2
    iget-object v6, v0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v6}, Lcom/android/launcher3/util/EdgeEffectCompat;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, v0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v6}, Lcom/android/launcher3/util/EdgeEffectCompat;->isFinished()Z

    move-result v6

    if-nez v6, :cond_9

    .line 1337
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->postInvalidateOnAnimation()V

    .line 1339
    .end local v3    # "pulledToX":F
    :cond_9
    goto :goto_3

    .line 1342
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->awakenScrollBars()Z

    .line 1344
    .end local v2    # "movedDelta":I
    .end local v4    # "oldScroll":F
    .end local v5    # "dx":F
    .end local v8    # "dy":F
    .end local v9    # "direction":F
    .end local v10    # "delta":F
    .end local v11    # "width":I
    .end local v12    # "height":I
    .end local v13    # "size":I
    .end local v14    # "displacement":F
    .end local v20    # "pointerIndex":I
    :cond_b
    :goto_3
    goto/16 :goto_11

    .line 1345
    .end local v19    # "action":I
    .local v2, "action":I
    :cond_c
    move/from16 v19, v2

    .end local v2    # "action":I
    .restart local v19    # "action":I
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    .line 1347
    goto/16 :goto_11

    .line 1350
    .end local v19    # "action":I
    .restart local v2    # "action":I
    :sswitch_4
    move/from16 v19, v2

    .end local v2    # "action":I
    .restart local v19    # "action":I
    iget-boolean v2, v0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    if-eqz v2, :cond_24

    .line 1351
    iget v2, v0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    .line 1352
    .local v2, "activePointerId":I
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 1353
    .local v4, "pointerIndex":I
    if-ne v4, v5, :cond_d

    const/4 v3, 0x1

    return v3

    .line 1355
    :cond_d
    iget-object v5, v0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v5, v1, v4}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryDirection(Landroid/view/MotionEvent;I)F

    move-result v5

    .line 1357
    .local v5, "primaryDirection":F
    iget-object v6, v0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1358
    .local v6, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v7, 0x3e8

    iget v8, v0, Lcom/android/launcher3/PagedView;->mMaximumVelocity:I

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1360
    iget-object v7, v0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget v8, v0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    invoke-interface {v7, v6, v8}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryVelocity(Landroid/view/VelocityTracker;I)F

    move-result v7

    float-to-int v7, v7

    .line 1362
    .local v7, "velocity":I
    iget v8, v0, Lcom/android/launcher3/PagedView;->mDownMotionPrimary:F

    sub-float v8, v5, v8

    .line 1363
    .local v8, "delta":F
    iget-object v9, v0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget v10, v0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    .line 1364
    invoke-virtual {v0, v10}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v10

    .line 1363
    invoke-interface {v9, v10}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getMeasuredSize(Landroid/view/View;)I

    move-result v9

    int-to-float v9, v9

    iget-object v10, v0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    .line 1365
    invoke-interface {v10, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScale(Landroid/view/View;)F

    move-result v10

    mul-float/2addr v9, v10

    float-to-int v9, v9

    .line 1366
    .local v9, "pageOrientedSize":I
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v10

    invoke-virtual {v0, v10, v9}, Lcom/android/launcher3/PagedView;->isSignificantMove(FI)Z

    move-result v10

    .line 1368
    .local v10, "isSignificantMove":Z
    iget v11, v0, Lcom/android/launcher3/PagedView;->mTotalMotion:F

    iget v12, v0, Lcom/android/launcher3/PagedView;->mLastMotion:F

    iget v13, v0, Lcom/android/launcher3/PagedView;->mLastMotionRemainder:F

    add-float/2addr v12, v13

    sub-float/2addr v12, v5

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    add-float/2addr v11, v12

    iput v11, v0, Lcom/android/launcher3/PagedView;->mTotalMotion:F

    .line 1369
    iget-boolean v12, v0, Lcom/android/launcher3/PagedView;->mAllowEasyFling:Z

    if-nez v12, :cond_f

    iget v12, v0, Lcom/android/launcher3/PagedView;->mPageSlop:I

    int-to-float v12, v12

    cmpl-float v11, v11, v12

    if-lez v11, :cond_e

    goto :goto_4

    :cond_e
    move v11, v3

    goto :goto_5

    :cond_f
    :goto_4
    const/4 v11, 0x1

    .line 1370
    .local v11, "passedSlop":Z
    :goto_5
    if-eqz v11, :cond_10

    invoke-virtual {v0, v7}, Lcom/android/launcher3/PagedView;->shouldFlingForVelocity(I)Z

    move-result v12

    if-eqz v12, :cond_10

    const/4 v12, 0x1

    goto :goto_6

    :cond_10
    move v12, v3

    .line 1371
    .local v12, "isFling":Z
    :goto_6
    iget-boolean v13, v0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v13, :cond_11

    const/4 v14, 0x0

    cmpl-float v14, v8, v14

    if-lez v14, :cond_12

    goto :goto_7

    :cond_11
    const/4 v14, 0x0

    cmpg-float v14, v8, v14

    if-gez v14, :cond_12

    :goto_7
    const/4 v14, 0x1

    goto :goto_8

    :cond_12
    move v14, v3

    .line 1372
    .local v14, "isDeltaLeft":Z
    :goto_8
    if-eqz v13, :cond_13

    if-lez v7, :cond_14

    goto :goto_9

    :cond_13
    if-gez v7, :cond_14

    :goto_9
    const/4 v3, 0x1

    .line 1378
    .local v3, "isVelocityLeft":Z
    :cond_14
    iget-boolean v13, v0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    if-nez v13, :cond_1e

    .line 1382
    const/4 v13, 0x0

    .line 1383
    .local v13, "returnToOriginalPage":Z
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v15

    move/from16 v16, v2

    .end local v2    # "activePointerId":I
    .local v16, "activePointerId":I
    int-to-float v2, v9

    const v18, 0x3ea8f5c3    # 0.33f

    mul-float v2, v2, v18

    cmpl-float v2, v15, v2

    if-lez v2, :cond_15

    int-to-float v2, v7

    .line 1384
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    invoke-static {v8}, Ljava/lang/Math;->signum(F)F

    move-result v15

    cmpl-float v2, v2, v15

    if-eqz v2, :cond_15

    if-eqz v12, :cond_15

    .line 1385
    const/4 v13, 0x1

    .line 1393
    :cond_15
    if-eqz v10, :cond_16

    if-nez v14, :cond_16

    if-eqz v12, :cond_17

    :cond_16
    if-eqz v12, :cond_19

    if-nez v3, :cond_19

    :cond_17
    iget v2, v0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-lez v2, :cond_19

    .line 1395
    if-eqz v13, :cond_18

    .line 1396
    goto :goto_a

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result v15

    sub-int/2addr v2, v15

    .line 1397
    .local v2, "finalPage":I
    :goto_a
    invoke-virtual {v0, v2, v7}, Lcom/android/launcher3/PagedView;->snapToPageWithVelocity(II)Z

    goto :goto_c

    .line 1398
    .end local v2    # "finalPage":I
    :cond_19
    if-eqz v10, :cond_1a

    if-eqz v14, :cond_1a

    if-eqz v12, :cond_1b

    :cond_1a
    if-eqz v12, :cond_1d

    if-eqz v3, :cond_1d

    :cond_1b
    iget v2, v0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    .line 1400
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v15

    const/16 v17, 0x1

    add-int/lit8 v15, v15, -0x1

    if-ge v2, v15, :cond_1d

    .line 1401
    if-eqz v13, :cond_1c

    .line 1402
    iget v2, v0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    goto :goto_b

    :cond_1c
    iget v2, v0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result v15

    add-int/2addr v2, v15

    .line 1403
    .restart local v2    # "finalPage":I
    :goto_b
    invoke-virtual {v0, v2, v7}, Lcom/android/launcher3/PagedView;->snapToPageWithVelocity(II)Z

    goto :goto_c

    .line 1405
    .end local v2    # "finalPage":I
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->snapToDestination()V

    .line 1407
    .end local v13    # "returnToOriginalPage":Z
    :goto_c
    goto/16 :goto_10

    .line 1408
    .end local v16    # "activePointerId":I
    .local v2, "activePointerId":I
    :cond_1e
    move/from16 v16, v2

    .end local v2    # "activePointerId":I
    .restart local v16    # "activePointerId":I
    iget-object v2, v0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 1409
    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/android/launcher3/PagedView;->abortScrollerAnimation(Z)V

    .line 1412
    :cond_1f
    iget-object v2, v0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v2, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v2

    .line 1413
    .local v2, "initialScroll":I
    iget v13, v0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    .line 1414
    .local v13, "maxScroll":I
    iget v15, v0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    .line 1416
    .local v15, "minScroll":I
    if-lt v2, v13, :cond_20

    if-nez v3, :cond_22

    if-eqz v12, :cond_22

    :cond_20
    if-gt v2, v15, :cond_23

    if-eqz v3, :cond_22

    if-nez v12, :cond_21

    goto :goto_d

    :cond_21
    move/from16 v18, v3

    goto :goto_e

    .line 1418
    :cond_22
    :goto_d
    move/from16 v18, v3

    .end local v3    # "isVelocityLeft":Z
    .local v18, "isVelocityLeft":Z
    iget-object v3, v0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    const/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v20, v3

    move/from16 v21, v2

    move/from16 v23, v15

    move/from16 v24, v13

    invoke-virtual/range {v20 .. v26}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 1419
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getDestinationPage()I

    move-result v3

    iput v3, v0, Lcom/android/launcher3/PagedView;->mNextPage:I

    move/from16 v31, v4

    move/from16 v32, v5

    goto :goto_f

    .line 1416
    .end local v18    # "isVelocityLeft":Z
    .restart local v3    # "isVelocityLeft":Z
    :cond_23
    move/from16 v18, v3

    .line 1421
    .end local v3    # "isVelocityLeft":Z
    .restart local v18    # "isVelocityLeft":Z
    :goto_e
    neg-int v3, v7

    .line 1423
    .local v3, "velocity1":I
    move/from16 v31, v4

    .end local v4    # "pointerIndex":I
    .local v31, "pointerIndex":I
    iget-object v4, v0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    .line 1424
    move/from16 v32, v5

    .end local v5    # "primaryDirection":F
    .local v32, "primaryDirection":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v20, 0x3f000000    # 0.5f

    mul-float v5, v5, v20

    const v20, 0x3d8f5c29    # 0.07f

    mul-float v5, v5, v20

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v29

    const/16 v30, 0x0

    .line 1423
    move-object/from16 v20, v4

    move/from16 v21, v2

    move/from16 v23, v3

    move/from16 v25, v15

    move/from16 v26, v13

    invoke-virtual/range {v20 .. v30}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 1426
    iget-object v4, v0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v4

    .line 1427
    .local v4, "finalPos":I
    invoke-virtual {v0, v4}, Lcom/android/launcher3/PagedView;->getDestinationPage(I)I

    move-result v5

    iput v5, v0, Lcom/android/launcher3/PagedView;->mNextPage:I

    .line 1428
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->onNotSnappingToPageInFreeScroll()V

    .line 1430
    .end local v3    # "velocity1":I
    .end local v4    # "finalPos":I
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->invalidate()V

    .line 1434
    .end local v2    # "initialScroll":I
    .end local v6    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v7    # "velocity":I
    .end local v8    # "delta":F
    .end local v9    # "pageOrientedSize":I
    .end local v10    # "isSignificantMove":Z
    .end local v11    # "passedSlop":Z
    .end local v12    # "isFling":Z
    .end local v13    # "maxScroll":I
    .end local v14    # "isDeltaLeft":Z
    .end local v15    # "minScroll":I
    .end local v16    # "activePointerId":I
    .end local v18    # "isVelocityLeft":Z
    .end local v31    # "pointerIndex":I
    .end local v32    # "primaryDirection":F
    :cond_24
    :goto_10
    iget-object v2, v0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v2}, Lcom/android/launcher3/util/EdgeEffectCompat;->onRelease()V

    .line 1435
    iget-object v2, v0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v2}, Lcom/android/launcher3/util/EdgeEffectCompat;->onRelease()V

    .line 1437
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->resetTouchState()V

    .line 1438
    goto :goto_11

    .line 1249
    .end local v19    # "action":I
    .local v2, "action":I
    :sswitch_5
    move/from16 v19, v2

    .end local v2    # "action":I
    .restart local v19    # "action":I
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/PagedView;->updateIsBeingDraggedOnTouchDown(Landroid/view/MotionEvent;)V

    .line 1255
    iget-object v2, v0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_25

    .line 1256
    invoke-direct {v0, v3}, Lcom/android/launcher3/PagedView;->abortScrollerAnimation(Z)V

    .line 1260
    :cond_25
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, v0, Lcom/android/launcher3/PagedView;->mDownMotionX:F

    .line 1261
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, v0, Lcom/android/launcher3/PagedView;->mDownMotionY:F

    .line 1262
    iget-object v2, v0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v2, v1, v3}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryDirection(Landroid/view/MotionEvent;I)F

    move-result v2

    iput v2, v0, Lcom/android/launcher3/PagedView;->mLastMotion:F

    iput v2, v0, Lcom/android/launcher3/PagedView;->mDownMotionPrimary:F

    .line 1263
    const/4 v2, 0x0

    iput v2, v0, Lcom/android/launcher3/PagedView;->mLastMotionRemainder:F

    .line 1264
    iput v2, v0, Lcom/android/launcher3/PagedView;->mTotalMotion:F

    .line 1265
    iput-boolean v3, v0, Lcom/android/launcher3/PagedView;->mAllowEasyFling:Z

    .line 1266
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    .line 1267
    iget-boolean v2, v0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    if-eqz v2, :cond_26

    .line 1268
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->pageBeginTransition()V

    .line 1455
    :cond_26
    :goto_11
    const/4 v2, 0x1

    return v2

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_5
        0x1 -> :sswitch_4
        0x2 -> :sswitch_3
        0x3 -> :sswitch_2
        0x6 -> :sswitch_1
        0xfe -> :sswitch_0
    .end sparse-switch
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .line 877
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 878
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->dispatchPageCountChanged()V

    .line 879
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 883
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 884
    new-instance v0, Lcom/android/launcher3/PagedView$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/launcher3/PagedView$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/PagedView;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->runOnPageScrollsInitialized(Ljava/lang/Runnable;)V

    .line 888
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->dispatchPageCountChanged()V

    .line 889
    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .locals 0
    .param p1, "isVisible"    # Z

    .line 474
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageEndTransition()V

    .line 475
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onVisibilityAggregated(Z)V

    .line 476
    return-void
.end method

.method protected pageBeginTransition()V
    .locals 1

    .line 458
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsPageInTransition:Z

    if-nez v0, :cond_0

    .line 459
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsPageInTransition:Z

    .line 460
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->onPageBeginTransition()V

    .line 462
    :cond_0
    return-void
.end method

.method protected pageEndTransition()V
    .locals 1

    .line 465
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsPageInTransition:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 466
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v0}, Lcom/android/launcher3/util/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v0}, Lcom/android/launcher3/util/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 467
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsPageInTransition:Z

    .line 468
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->onPageEndTransition()V

    .line 470
    :cond_1
    return-void
.end method

.method protected pageScrollsInitialized()Z
    .locals 2

    .line 698
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    if-eqz v0, :cond_0

    array-length v0, v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 3
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .line 1831
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1832
    return v1

    .line 1834
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isPageOrderFlipped()Z

    move-result v0

    .line 1835
    .local v0, "pagesFlipped":Z
    sparse-switch p1, :sswitch_data_0

    goto :goto_2

    .line 1847
    :sswitch_0
    iget-boolean v1, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-nez v1, :cond_1

    .line 1848
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->scrollRight()Z

    move-result v1

    return v1

    .line 1850
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->scrollLeft()Z

    move-result v1

    return v1

    .line 1854
    :sswitch_1
    iget-boolean v1, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-nez v1, :cond_2

    .line 1855
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->scrollLeft()Z

    move-result v1

    return v1

    .line 1857
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->scrollRight()Z

    move-result v1

    return v1

    .line 1842
    :sswitch_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->scrollRight()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->scrollLeft()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1843
    :goto_0
    return v1

    .line 1837
    :sswitch_3
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->scrollLeft()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->scrollRight()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1838
    :goto_1
    return v1

    .line 1861
    :cond_5
    :goto_2
    const/4 v1, 0x0

    return v1

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_3
        0x2000 -> :sswitch_2
        0x1020048 -> :sswitch_1
        0x1020049 -> :sswitch_0
    .end sparse-switch
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .line 1563
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1567
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    .line 1568
    .local v0, "nextPage":I
    iget v1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-eq v0, v1, :cond_0

    .line 1569
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    .line 1572
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 1573
    .local v1, "page":I
    if-ltz v1, :cond_1

    invoke-direct {p0, v1}, Lcom/android/launcher3/PagedView;->isVisible(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isInTouchMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1574
    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    .line 1576
    :cond_1
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .line 904
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 905
    .local v0, "page":I
    invoke-direct {p0, v0}, Lcom/android/launcher3/PagedView;->isVisible(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 913
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 906
    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    .line 907
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    goto :goto_1

    .line 909
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    .line 911
    :goto_1
    const/4 v1, 0x1

    return v1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .line 1013
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    if-eqz p1, :cond_0

    .line 1016
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->cancelCurrentPageLongPress()V

    .line 1018
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 1019
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 639
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsLayoutValid:Z

    .line 640
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 641
    return-void
.end method

.method protected resetTouchState()V
    .locals 1

    .line 1480
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->releaseVelocityTracker()V

    .line 1481
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    .line 1482
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    .line 1483
    return-void
.end method

.method public runOnPageScrollsInitialized(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 705
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOnPageScrollsInitializedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 706
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageScrollsInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 707
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->onPageScrollsInitialized()V

    .line 709
    :cond_0
    return-void
.end method

.method public scrollLeft()Z
    .locals 2

    .line 1742
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    if-lez v0, :cond_0

    .line 1743
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    .line 1744
    const/4 v0, 0x1

    return v0

    .line 1746
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mAllowOverScroll:Z

    return v0
.end method

.method public scrollRight()Z
    .locals 3

    .line 1750
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 1751
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    .line 1752
    return v2

    .line 1754
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mAllowOverScroll:Z

    return v0
.end method

.method public scrollTo(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 518
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget v1, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    .line 519
    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(II)I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    .line 518
    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result p1

    .line 520
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget v1, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    .line 521
    invoke-interface {v0, v2, v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(II)I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    .line 520
    invoke-static {p2, v0, v1}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result p2

    .line 522
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 523
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 1
    .param p1, "eventType"    # I

    .line 1818
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    const/16 v0, 0x1000

    if-eq p1, v0, :cond_0

    .line 1819
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 1821
    :cond_0
    return-void
.end method

.method public setCurrentPage(I)V
    .locals 1
    .param p1, "currentPage"    # I

    .line 421
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/PagedView;->setCurrentPage(II)V

    .line 422
    return-void
.end method

.method public setCurrentPage(II)V
    .locals 2
    .param p1, "currentPage"    # I
    .param p2, "overridePrevPage"    # I

    .line 428
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 429
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/PagedView;->abortScrollerAnimation(Z)V

    .line 433
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 434
    return-void

    .line 436
    :cond_1
    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    move v0, p2

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    .line 437
    .local v0, "prevPage":I
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/launcher3/PagedView;->validateNewPage(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    .line 438
    iput v1, p0, Lcom/android/launcher3/PagedView;->mCurrentScrollOverPage:I

    .line 439
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->updateCurrentPageScroll()V

    .line 440
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->notifyPageSwitchListener(I)V

    .line 441
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->invalidate()V

    .line 442
    return-void
.end method

.method public setEnableFreeScroll(Z)V
    .locals 3
    .param p1, "freeScroll"    # Z

    .line 1214
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    if-ne v0, p1, :cond_0

    .line 1215
    return-void

    .line 1218
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    .line 1219
    .local v0, "wasFreeScroll":Z
    iput-boolean p1, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    .line 1221
    if-eqz p1, :cond_1

    .line 1222
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    goto :goto_0

    .line 1223
    :cond_1
    if-eqz v0, :cond_2

    .line 1224
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollX()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 1225
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    .line 1228
    :cond_2
    :goto_0
    return-void
.end method

.method protected setEnableOverscroll(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 1231
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iput-boolean p1, p0, Lcom/android/launcher3/PagedView;->mAllowOverScroll:Z

    .line 1232
    return-void
.end method

.method public setOnPageTransitionEndCallback(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 509
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsPageInTransition:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 512
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 510
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/launcher3/PagedView;->mOnPageTransitionEndCallback:Ljava/lang/Runnable;

    .line 514
    :goto_1
    return-void
.end method

.method public setPageSpacing(I)V
    .locals 0
    .param p1, "pageSpacing"    # I

    .line 858
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iput p1, p0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    .line 859
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->requestLayout()V

    .line 860
    return-void
.end method

.method protected shouldFlingForVelocity(I)Z
    .locals 2
    .param p1, "velocity"    # I

    .line 1475
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mAllowEasyFling:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/PagedView;->mEasyFlingThresholdVelocity:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/launcher3/PagedView;->mFlingThresholdVelocity:I

    :goto_0
    int-to-float v0, v0

    .line 1476
    .local v0, "threshold":F
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v1, v0

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method protected snapToDestination()V
    .locals 2

    .line 1628
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getDestinationPage()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/PagedView;->mPageSnapAnimationDuration:I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/PagedView;->snapToPage(II)Z

    .line 1629
    return-void
.end method

.method public snapToPage(I)Z
    .locals 1
    .param p1, "whichPage"    # I

    .line 1675
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget v0, p0, Lcom/android/launcher3/PagedView;->mPageSnapAnimationDuration:I

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/PagedView;->snapToPage(II)Z

    move-result v0

    return v0
.end method

.method public snapToPage(II)Z
    .locals 1
    .param p1, "whichPage"    # I
    .param p2, "duration"    # I

    .line 1683
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/PagedView;->snapToPage(IIZ)Z

    move-result v0

    return v0
.end method

.method protected snapToPage(III)Z
    .locals 1
    .param p1, "whichPage"    # I
    .param p2, "delta"    # I
    .param p3, "duration"    # I

    .line 1695
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/launcher3/PagedView;->snapToPage(IIIZ)Z

    move-result v0

    return v0
.end method

.method protected snapToPage(IIIZ)Z
    .locals 8
    .param p1, "whichPage"    # I
    .param p2, "delta"    # I
    .param p3, "duration"    # I
    .param p4, "immediate"    # Z

    .line 1699
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mFirstLayout:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1700
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    .line 1701
    return v1

    .line 1709
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher3/PagedView;->validateNewPage(I)I

    move-result p1

    .line 1711
    iput p1, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    .line 1713
    invoke-virtual {p0, p3}, Lcom/android/launcher3/PagedView;->awakenScrollBars(I)Z

    .line 1714
    if-eqz p4, :cond_1

    .line 1715
    const/4 p3, 0x0

    goto :goto_0

    .line 1716
    :cond_1
    if-nez p3, :cond_2

    .line 1717
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p3

    .line 1720
    :cond_2
    :goto_0
    if-eqz p3, :cond_3

    .line 1721
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageBeginTransition()V

    .line 1724
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1725
    invoke-direct {p0, v1}, Lcom/android/launcher3/PagedView;->abortScrollerAnimation(Z)V

    .line 1728
    :cond_4
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v5, p2

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 1729
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->updatePageIndicator()V

    .line 1732
    if-eqz p4, :cond_5

    .line 1733
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->computeScroll()V

    .line 1734
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageEndTransition()V

    .line 1737
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->invalidate()V

    .line 1738
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lez v0, :cond_6

    const/4 v1, 0x1

    :cond_6
    return v1
.end method

.method protected snapToPage(IIZ)Z
    .locals 3
    .param p1, "whichPage"    # I
    .param p2, "duration"    # I
    .param p3, "immediate"    # Z

    .line 1687
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-direct {p0, p1}, Lcom/android/launcher3/PagedView;->validateNewPage(I)I

    move-result p1

    .line 1689
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v0

    .line 1690
    .local v0, "newLoc":I
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v1, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v1

    sub-int v1, v0, v1

    .line 1691
    .local v1, "delta":I
    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/android/launcher3/PagedView;->snapToPage(IIIZ)Z

    move-result v2

    return v2
.end method

.method public snapToPageImmediately(I)Z
    .locals 2
    .param p1, "whichPage"    # I

    .line 1679
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget v0, p0, Lcom/android/launcher3/PagedView;->mPageSnapAnimationDuration:I

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher3/PagedView;->snapToPage(IIZ)Z

    move-result v0

    return v0
.end method

.method protected snapToPageWithVelocity(II)Z
    .locals 8
    .param p1, "whichPage"    # I
    .param p2, "velocity"    # I

    .line 1642
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-direct {p0, p1}, Lcom/android/launcher3/PagedView;->validateNewPage(I)I

    move-result p1

    .line 1643
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getMeasuredSize(Landroid/view/View;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 1645
    .local v0, "halfScreenSize":I
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v1

    .line 1646
    .local v1, "newLoc":I
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v2, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v2

    sub-int v2, v1, v2

    .line 1647
    .local v2, "delta":I
    const/4 v3, 0x0

    .line 1649
    .local v3, "duration":I
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/android/launcher3/PagedView;->mMinFlingVelocity:I

    if-ge v4, v5, :cond_0

    .line 1652
    iget v4, p0, Lcom/android/launcher3/PagedView;->mPageSnapAnimationDuration:I

    invoke-virtual {p0, p1, v4}, Lcom/android/launcher3/PagedView;->snapToPage(II)Z

    move-result v4

    return v4

    .line 1659
    :cond_0
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v4, v5

    mul-int/lit8 v6, v0, 0x2

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 1660
    .local v4, "distanceRatio":F
    int-to-float v5, v0

    int-to-float v6, v0

    .line 1661
    invoke-direct {p0, v4}, Lcom/android/launcher3/PagedView;->distanceInfluenceForSnapDuration(F)F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    .line 1663
    .local v5, "distance":F
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 1664
    iget v6, p0, Lcom/android/launcher3/PagedView;->mMinSnapVelocity:I

    invoke-static {v6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1669
    const/high16 v6, 0x447a0000    # 1000.0f

    int-to-float v7, p2

    div-float v7, v5, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v6

    mul-int/lit8 v6, v6, 0x4

    .line 1671
    .end local v3    # "duration":I
    .local v6, "duration":I
    invoke-virtual {p0, p1, v2, v6}, Lcom/android/launcher3/PagedView;->snapToPage(III)Z

    move-result v3

    return v3
.end method

.method protected updateCurrentPageScroll()V
    .locals 5

    .line 244
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    const/4 v0, 0x0

    .line 245
    .local v0, "newPosition":I
    iget v1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 246
    iget v1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/PagedView;->mCurrentPageScrollDiff:I

    add-int v0, v1, v2

    .line 248
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    sget-object v2, Lcom/android/launcher3/touch/PagedOrientationHandler;->VIEW_SCROLL_TO:Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;

    invoke-interface {v1, p0, v2, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->setPrimary(Ljava/lang/Object;Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;I)V

    .line 249
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v3

    sub-int v3, v0, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 250
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->forceFinishScroller()V

    .line 251
    return-void
.end method

.method protected updateIsBeingDraggedOnTouchDown(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1099
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1100
    .local v0, "xDist":I
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/launcher3/PagedView;->mPageSlop:I

    div-int/lit8 v1, v1, 0x3

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    .line 1102
    .local v1, "finishedScrolling":Z
    :goto_1
    if-eqz v1, :cond_5

    .line 1103
    iput-boolean v2, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    .line 1104
    iget-object v4, p0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v4

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    if-nez v4, :cond_2

    .line 1105
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    .line 1106
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageEndTransition()V

    .line 1108
    :cond_2
    iget-object v4, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v4}, Lcom/android/launcher3/util/EdgeEffectCompat;->isFinished()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v4}, Lcom/android/launcher3/util/EdgeEffectCompat;->isFinished()Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    move v2, v3

    :cond_4
    iput-boolean v2, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    goto :goto_2

    .line 1110
    :cond_5
    iput-boolean v3, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    .line 1114
    :goto_2
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryValue(FF)F

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    .line 1115
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getHeight()I

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryValue(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 1116
    .local v2, "displacement":F
    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v3}, Lcom/android/launcher3/util/EdgeEffectCompat;->isFinished()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_6

    .line 1117
    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/util/EdgeEffectCompat;->onPullDistance(FF)F

    .line 1119
    :cond_6
    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v3}, Lcom/android/launcher3/util/EdgeEffectCompat;->isFinished()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1120
    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v3, v4, v2}, Lcom/android/launcher3/util/EdgeEffectCompat;->onPullDistance(FF)F

    .line 1122
    :cond_7
    return-void
.end method

.method protected updateMinAndMaxScrollX()V
    .locals 1

    .line 839
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->computeMinScroll()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    .line 840
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->computeMaxScroll()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    .line 841
    return-void
.end method
