.class public abstract Lcom/android/launcher3/FastScrollRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "FastScrollRecyclerView.java"


# instance fields
.field protected mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/FastScrollRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/FastScrollRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method


# virtual methods
.method public bindFastScrollbar()V
    .locals 3

    .line 63
    invoke-virtual {p0}, Lcom/android/launcher3/FastScrollRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 64
    .local v0, "parent":Landroid/view/ViewGroup;
    sget v1, Lcom/android/launcher3/R$id;->fast_scroller:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/views/RecyclerViewFastScroller;

    iput-object v1, p0, Lcom/android/launcher3/FastScrollRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    .line 65
    sget v2, Lcom/android/launcher3/R$id;->fast_scroller_popup:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v1, p0, v2}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->setRecyclerView(Lcom/android/launcher3/FastScrollRecyclerView;Landroid/widget/TextView;)V

    .line 66
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/FastScrollRecyclerView;->onUpdateScrollbar(I)V

    .line 67
    return-void
.end method

.method protected getAvailableScrollBarHeight()I
    .locals 2

    .line 96
    invoke-virtual {p0}, Lcom/android/launcher3/FastScrollRecyclerView;->getScrollbarTrackHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/FastScrollRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-virtual {v1}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->getThumbHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 97
    .local v0, "availableScrollBarHeight":I
    return v0
.end method

.method protected abstract getAvailableScrollHeight()I
.end method

.method public abstract getCurrentScrollY()I
.end method

.method public getScrollBarTop()I
    .locals 1

    .line 75
    invoke-virtual {p0}, Lcom/android/launcher3/FastScrollRecyclerView;->getPaddingTop()I

    move-result v0

    return v0
.end method

.method public getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/android/launcher3/FastScrollRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    return-object v0
.end method

.method public getScrollbarTrackHeight()I
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/android/launcher3/FastScrollRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/FastScrollRecyclerView;->getScrollBarTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/FastScrollRecyclerView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 58
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onAttachedToWindow()V

    .line 59
    invoke-virtual {p0}, Lcom/android/launcher3/FastScrollRecyclerView;->bindFastScrollbar()V

    .line 60
    return-void
.end method

.method public onFastScrollCompleted()V
    .locals 0

    .line 177
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 190
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 191
    invoke-virtual {p0}, Lcom/android/launcher3/FastScrollRecyclerView;->isLayoutSuppressed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 192
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .line 181
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onScrollStateChanged(I)V

    .line 183
    if-nez p1, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/android/launcher3/FastScrollRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->sendScrollFinishedEventToTest(Landroid/content/Context;)V

    .line 186
    :cond_0
    return-void
.end method

.method public abstract onUpdateScrollbar(I)V
.end method

.method public abstract scrollToPositionAtProgress(F)Ljava/lang/String;
.end method

.method public scrollToTop()V
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/android/launcher3/FastScrollRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->reattachThumbToScroll()V

    .line 201
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/FastScrollRecyclerView;->scrollToPosition(I)V

    .line 202
    return-void
.end method

.method public shouldContainerScroll(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "eventSource"    # Landroid/view/View;

    .line 130
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 131
    .local v0, "point":[F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 132
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 133
    iget-object v1, p0, Lcom/android/launcher3/FastScrollRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-static {v1, p2, v0}, Lcom/android/launcher3/Utilities;->mapCoordInSelfToDescendant(Landroid/view/View;Landroid/view/View;[F)V

    .line 135
    iget-object v1, p0, Lcom/android/launcher3/FastScrollRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    aget v4, v0, v2

    float-to-int v4, v4

    aget v5, v0, v3

    float-to-int v5, v5

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->shouldBlockIntercept(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    return v2

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/FastScrollRecyclerView;->getCurrentScrollY()I

    move-result v1

    if-nez v1, :cond_1

    .line 142
    return v3

    .line 144
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/FastScrollRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/FastScrollRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    return v2
.end method

.method public supportsFastScrolling()Z
    .locals 1

    .line 151
    const/4 v0, 0x1

    return v0
.end method

.method protected synchronizeScrollBarThumbOffsetToViewScroll(II)V
    .locals 2
    .param p1, "scrollY"    # I
    .param p2, "availableScrollHeight"    # I

    .line 110
    if-gtz p2, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/launcher3/FastScrollRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->setThumbOffsetY(I)V

    .line 112
    return-void

    .line 118
    :cond_0
    int-to-float v0, p1

    int-to-float v1, p2

    div-float/2addr v0, v1

    .line 119
    invoke-virtual {p0}, Lcom/android/launcher3/FastScrollRecyclerView;->getAvailableScrollBarHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 122
    .local v0, "scrollBarY":I
    iget-object v1, p0, Lcom/android/launcher3/FastScrollRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->setThumbOffsetY(I)V

    .line 123
    return-void
.end method
