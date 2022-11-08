.class public Landroidx/slice/widget/TemplateView;
.super Landroidx/slice/widget/SliceChildView;
.source "TemplateView.java"

# interfaces
.implements Landroidx/slice/widget/SliceViewPolicy$PolicyChangeListener;


# instance fields
.field private mAdapter:Landroidx/slice/widget/SliceAdapter;

.field private mDisplayedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/slice/widget/SliceContent;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayedItemsHeight:I

.field private final mForeground:Landroid/view/View;

.field private mHiddenItemCount:I

.field private mListContent:Landroidx/slice/widget/ListContent;

.field private mLoc:[I

.field private mParent:Landroidx/slice/widget/SliceView;

.field private final mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 56
    invoke-direct {p0, p1}, Landroidx/slice/widget/SliceChildView;-><init>(Landroid/content/Context;)V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/TemplateView;->mDisplayedItems:Ljava/util/List;

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Landroidx/slice/widget/TemplateView;->mDisplayedItemsHeight:I

    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/slice/widget/TemplateView;->mLoc:[I

    .line 57
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/slice/widget/TemplateView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/slice/widget/TemplateView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 58
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/slice/widget/TemplateView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 59
    new-instance v1, Landroidx/slice/widget/SliceAdapter;

    invoke-direct {v1, p1}, Landroidx/slice/widget/SliceAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Landroidx/slice/widget/TemplateView;->setAdapter(Landroidx/slice/widget/SliceAdapter;)V

    .line 60
    new-instance v1, Landroidx/slice/widget/SliceAdapter;

    invoke-direct {v1, p1}, Landroidx/slice/widget/SliceAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/slice/widget/TemplateView;->mAdapter:Landroidx/slice/widget/SliceAdapter;

    .line 61
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 62
    invoke-virtual {p0, v0}, Landroidx/slice/widget/TemplateView;->addView(Landroid/view/View;)V

    .line 64
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroidx/slice/widget/TemplateView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/slice/widget/TemplateView;->mForeground:Landroid/view/View;

    .line 65
    invoke-virtual {p0}, Landroidx/slice/widget/TemplateView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x101030e

    invoke-static {v1, v2}, Landroidx/slice/widget/SliceViewUtil;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 67
    invoke-virtual {p0, v0}, Landroidx/slice/widget/TemplateView;->addView(Landroid/view/View;)V

    .line 69
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 70
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v2, -0x1

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 71
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 72
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    return-void
.end method

.method private applyRowStyle(Landroidx/slice/widget/RowStyle;)V
    .locals 2
    .param p1, "rowStyle"    # Landroidx/slice/widget/RowStyle;

    .line 229
    invoke-virtual {p1}, Landroidx/slice/widget/RowStyle;->getDisableRecyclerViewItemAnimator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 232
    :cond_0
    return-void
.end method

.method private updateDisplayedItems(I)V
    .locals 5
    .param p1, "height"    # I

    .line 264
    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 268
    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    iget-object v1, p0, Landroidx/slice/widget/TemplateView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    iget-object v2, p0, Landroidx/slice/widget/TemplateView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    invoke-virtual {v0, p1, v1, v2}, Landroidx/slice/widget/ListContent;->getRowItems(ILandroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)Landroidx/slice/widget/DisplayedListItems;

    move-result-object v0

    .line 270
    .local v0, "response":Landroidx/slice/widget/DisplayedListItems;
    invoke-virtual {v0}, Landroidx/slice/widget/DisplayedListItems;->getDisplayedItems()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroidx/slice/widget/TemplateView;->mDisplayedItems:Ljava/util/List;

    .line 271
    invoke-virtual {v0}, Landroidx/slice/widget/DisplayedListItems;->getHiddenItemCount()I

    move-result v1

    iput v1, p0, Landroidx/slice/widget/TemplateView;->mHiddenItemCount:I

    .line 272
    iget-object v1, p0, Landroidx/slice/widget/TemplateView;->mDisplayedItems:Ljava/util/List;

    iget-object v2, p0, Landroidx/slice/widget/TemplateView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    iget-object v3, p0, Landroidx/slice/widget/TemplateView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    invoke-static {v1, v2, v3}, Landroidx/slice/widget/ListContent;->getListHeight(Ljava/util/List;Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result v1

    iput v1, p0, Landroidx/slice/widget/TemplateView;->mDisplayedItemsHeight:I

    .line 274
    iget-object v1, p0, Landroidx/slice/widget/TemplateView;->mAdapter:Landroidx/slice/widget/SliceAdapter;

    iget-object v2, p0, Landroidx/slice/widget/TemplateView;->mDisplayedItems:Ljava/util/List;

    iget v3, p0, Landroidx/slice/widget/TemplateView;->mTintColor:I

    iget-object v4, p0, Landroidx/slice/widget/TemplateView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    invoke-virtual {v4}, Landroidx/slice/widget/SliceViewPolicy;->getMode()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroidx/slice/widget/SliceAdapter;->setSliceItems(Ljava/util/List;II)V

    .line 275
    invoke-direct {p0}, Landroidx/slice/widget/TemplateView;->updateOverscroll()V

    .line 276
    return-void

    .line 265
    .end local v0    # "response":Landroidx/slice/widget/DisplayedListItems;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/slice/widget/TemplateView;->resetView()V

    .line 266
    return-void
.end method

.method private updateOverscroll()V
    .locals 4

    .line 279
    iget v0, p0, Landroidx/slice/widget/TemplateView;->mDisplayedItemsHeight:I

    invoke-virtual {p0}, Landroidx/slice/widget/TemplateView;->getMeasuredHeight()I

    move-result v1

    const/4 v2, 0x1

    if-le v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 280
    .local v0, "scrollable":Z
    :goto_0
    iget-object v1, p0, Landroidx/slice/widget/TemplateView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Landroidx/slice/widget/TemplateView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    invoke-virtual {v3}, Landroidx/slice/widget/SliceViewPolicy;->isScrollable()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 281
    goto :goto_1

    .line 282
    :cond_1
    const/4 v2, 0x2

    .line 280
    :goto_1
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setOverScrollMode(I)V

    .line 283
    return-void
.end method


# virtual methods
.method public getHiddenItemCount()I
    .locals 1

    .line 351
    iget v0, p0, Landroidx/slice/widget/TemplateView;->mHiddenItemCount:I

    return v0
.end method

.method public getLoadingActions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mAdapter:Landroidx/slice/widget/SliceAdapter;

    invoke-virtual {v0}, Landroidx/slice/widget/SliceAdapter;->getLoadingActions()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 85
    invoke-super {p0}, Landroidx/slice/widget/SliceChildView;->onAttachedToWindow()V

    .line 86
    invoke-virtual {p0}, Landroidx/slice/widget/TemplateView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/slice/widget/SliceView;

    iput-object v0, p0, Landroidx/slice/widget/TemplateView;->mParent:Landroidx/slice/widget/SliceView;

    .line 87
    iget-object v1, p0, Landroidx/slice/widget/TemplateView;->mAdapter:Landroidx/slice/widget/SliceAdapter;

    invoke-virtual {v1, v0, p0}, Landroidx/slice/widget/SliceAdapter;->setParents(Landroidx/slice/widget/SliceView;Landroidx/slice/widget/TemplateView;)V

    .line 88
    return-void
.end method

.method public onForegroundActivated(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 117
    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mParent:Landroidx/slice/widget/SliceView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/slice/widget/SliceView;->isSliceViewClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mForeground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 120
    return-void

    .line 122
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, 0x1

    if-lt v0, v2, :cond_1

    .line 123
    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mForeground:Landroid/view/View;

    iget-object v2, p0, Landroidx/slice/widget/TemplateView;->mLoc:[I

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 124
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v2, p0, Landroidx/slice/widget/TemplateView;->mLoc:[I

    aget v2, v2, v1

    int-to-float v2, v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    .line 125
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget-object v4, p0, Landroidx/slice/widget/TemplateView;->mLoc:[I

    aget v4, v4, v3

    int-to-float v4, v4

    sub-float/2addr v2, v4

    float-to-int v2, v2

    .line 126
    .local v2, "y":I
    iget-object v4, p0, Landroidx/slice/widget/TemplateView;->mForeground:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    int-to-float v5, v0

    int-to-float v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 128
    .end local v0    # "x":I
    .end local v2    # "y":I
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 129
    .local v0, "action":I
    if-nez v0, :cond_2

    .line 130
    iget-object v1, p0, Landroidx/slice/widget/TemplateView;->mForeground:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 131
    :cond_2
    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    if-eq v0, v3, :cond_3

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 134
    :cond_3
    iget-object v2, p0, Landroidx/slice/widget/TemplateView;->mForeground:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setPressed(Z)V

    .line 136
    :cond_4
    :goto_0
    return-void
.end method

.method public onMaxHeightChanged(I)V
    .locals 3
    .param p1, "newNewHeight"    # I

    .line 318
    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    if-eqz v0, :cond_0

    .line 319
    iget-object v1, p0, Landroidx/slice/widget/TemplateView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    iget-object v2, p0, Landroidx/slice/widget/TemplateView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    invoke-virtual {v0, v1, v2}, Landroidx/slice/widget/ListContent;->getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/slice/widget/TemplateView;->updateDisplayedItems(I)V

    .line 321
    :cond_0
    return-void
.end method

.method public onMaxSmallChanged(I)V
    .locals 1
    .param p1, "newMaxSmallHeight"    # I

    .line 329
    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mAdapter:Landroidx/slice/widget/SliceAdapter;

    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {v0}, Landroidx/slice/widget/SliceAdapter;->notifyHeaderChanged()V

    .line 332
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 92
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 93
    .local v0, "height":I
    iget-object v1, p0, Landroidx/slice/widget/TemplateView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    invoke-virtual {v1}, Landroidx/slice/widget/SliceViewPolicy;->isScrollable()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/slice/widget/TemplateView;->mDisplayedItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget v1, p0, Landroidx/slice/widget/TemplateView;->mDisplayedItemsHeight:I

    if-eq v1, v0, :cond_0

    .line 95
    invoke-direct {p0, v0}, Landroidx/slice/widget/TemplateView;->updateDisplayedItems(I)V

    .line 97
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/slice/widget/SliceChildView;->onMeasure(II)V

    .line 98
    return-void
.end method

.method public onModeChanged(I)V
    .locals 3
    .param p1, "newMode"    # I

    .line 340
    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    if-eqz v0, :cond_0

    .line 341
    iget-object v1, p0, Landroidx/slice/widget/TemplateView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    iget-object v2, p0, Landroidx/slice/widget/TemplateView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    invoke-virtual {v0, v1, v2}, Landroidx/slice/widget/ListContent;->getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/slice/widget/TemplateView;->updateDisplayedItems(I)V

    .line 343
    :cond_0
    return-void
.end method

.method public onScrollingChanged(Z)V
    .locals 3
    .param p1, "newScrolling"    # Z

    .line 305
    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 307
    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    if-eqz v0, :cond_0

    .line 308
    iget-object v1, p0, Landroidx/slice/widget/TemplateView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    iget-object v2, p0, Landroidx/slice/widget/TemplateView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    invoke-virtual {v0, v1, v2}, Landroidx/slice/widget/ListContent;->getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/slice/widget/TemplateView;->updateDisplayedItems(I)V

    .line 310
    :cond_0
    return-void
.end method

.method public resetView()V
    .locals 4

    .line 291
    const/4 v0, 0x0

    iput v0, p0, Landroidx/slice/widget/TemplateView;->mDisplayedItemsHeight:I

    .line 292
    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mDisplayedItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 293
    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mAdapter:Landroidx/slice/widget/SliceAdapter;

    invoke-virtual {p0}, Landroidx/slice/widget/TemplateView;->getMode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3, v1}, Landroidx/slice/widget/SliceAdapter;->setSliceItems(Ljava/util/List;II)V

    .line 294
    iput-object v2, p0, Landroidx/slice/widget/TemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    .line 295
    return-void
.end method

.method public setActionLoading(Landroidx/slice/SliceItem;)V
    .locals 2
    .param p1, "item"    # Landroidx/slice/SliceItem;

    .line 155
    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mAdapter:Landroidx/slice/widget/SliceAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/slice/widget/SliceAdapter;->onSliceActionLoading(Landroidx/slice/SliceItem;I)V

    .line 156
    return-void
.end method

.method public setAdapter(Landroidx/slice/widget/SliceAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroidx/slice/widget/SliceAdapter;

    .line 79
    iput-object p1, p0, Landroidx/slice/widget/TemplateView;->mAdapter:Landroidx/slice/widget/SliceAdapter;

    .line 80
    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 81
    return-void
.end method

.method public setAllowTwoLines(Z)V
    .locals 1
    .param p1, "allowTwoLines"    # Z

    .line 260
    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mAdapter:Landroidx/slice/widget/SliceAdapter;

    invoke-virtual {v0, p1}, Landroidx/slice/widget/SliceAdapter;->setAllowTwoLines(Z)V

    .line 261
    return-void
.end method

.method public setInsets(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .line 106
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/slice/widget/SliceChildView;->setInsets(IIII)V

    .line 107
    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mAdapter:Landroidx/slice/widget/SliceAdapter;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/slice/widget/SliceAdapter;->setInsets(IIII)V

    .line 108
    return-void
.end method

.method public setLastUpdated(J)V
    .locals 1
    .param p1, "lastUpdated"    # J

    .line 250
    invoke-super {p0, p1, p2}, Landroidx/slice/widget/SliceChildView;->setLastUpdated(J)V

    .line 251
    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mAdapter:Landroidx/slice/widget/SliceAdapter;

    invoke-virtual {v0, p1, p2}, Landroidx/slice/widget/SliceAdapter;->setLastUpdated(J)V

    .line 252
    return-void
.end method

.method public setLoadingActions(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceItem;",
            ">;)V"
        }
    .end annotation

    .line 164
    .local p1, "loadingActions":Ljava/util/Set;, "Ljava/util/Set<Landroidx/slice/SliceItem;>;"
    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mAdapter:Landroidx/slice/widget/SliceAdapter;

    invoke-virtual {v0, p1}, Landroidx/slice/widget/SliceAdapter;->setLoadingActions(Ljava/util/Set;)V

    .line 165
    return-void
.end method

.method public setPolicy(Landroidx/slice/widget/SliceViewPolicy;)V
    .locals 1
    .param p1, "policy"    # Landroidx/slice/widget/SliceViewPolicy;

    .line 144
    invoke-super {p0, p1}, Landroidx/slice/widget/SliceChildView;->setPolicy(Landroidx/slice/widget/SliceViewPolicy;)V

    .line 145
    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mAdapter:Landroidx/slice/widget/SliceAdapter;

    invoke-virtual {v0, p1}, Landroidx/slice/widget/SliceAdapter;->setPolicy(Landroidx/slice/widget/SliceViewPolicy;)V

    .line 146
    invoke-virtual {p1, p0}, Landroidx/slice/widget/SliceViewPolicy;->setListener(Landroidx/slice/widget/SliceViewPolicy$PolicyChangeListener;)V

    .line 147
    return-void
.end method

.method public setShowLastUpdated(Z)V
    .locals 1
    .param p1, "showLastUpdated"    # Z

    .line 240
    invoke-super {p0, p1}, Landroidx/slice/widget/SliceChildView;->setShowLastUpdated(Z)V

    .line 241
    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mAdapter:Landroidx/slice/widget/SliceAdapter;

    invoke-virtual {v0, p1}, Landroidx/slice/widget/SliceAdapter;->setShowLastUpdated(Z)V

    .line 242
    return-void
.end method

.method public setSliceActionListener(Landroidx/slice/widget/SliceView$OnSliceActionListener;)V
    .locals 2
    .param p1, "observer"    # Landroidx/slice/widget/SliceView$OnSliceActionListener;

    .line 191
    iput-object p1, p0, Landroidx/slice/widget/TemplateView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    .line 192
    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mAdapter:Landroidx/slice/widget/SliceAdapter;

    if-eqz v0, :cond_0

    .line 193
    iget-object v1, p0, Landroidx/slice/widget/TemplateView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceAdapter;->setSliceObserver(Landroidx/slice/widget/SliceView$OnSliceActionListener;)V

    .line 195
    :cond_0
    return-void
.end method

.method public setSliceActions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;)V"
        }
    .end annotation

    .line 203
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/core/SliceAction;>;"
    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mAdapter:Landroidx/slice/widget/SliceAdapter;

    invoke-virtual {v0, p1}, Landroidx/slice/widget/SliceAdapter;->setSliceActions(Ljava/util/List;)V

    .line 204
    return-void
.end method

.method public setSliceContent(Landroidx/slice/widget/ListContent;)V
    .locals 2
    .param p1, "sliceContent"    # Landroidx/slice/widget/ListContent;

    .line 212
    iput-object p1, p0, Landroidx/slice/widget/TemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    .line 213
    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    iget-object v1, p0, Landroidx/slice/widget/TemplateView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    invoke-virtual {p1, v0, v1}, Landroidx/slice/widget/ListContent;->getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result v0

    .line 214
    .local v0, "sliceHeight":I
    invoke-direct {p0, v0}, Landroidx/slice/widget/TemplateView;->updateDisplayedItems(I)V

    .line 215
    return-void
.end method

.method public setStyle(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/RowStyle;)V
    .locals 1
    .param p1, "style"    # Landroidx/slice/widget/SliceStyle;
    .param p2, "rowStyle"    # Landroidx/slice/widget/RowStyle;

    .line 223
    invoke-super {p0, p1, p2}, Landroidx/slice/widget/SliceChildView;->setStyle(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/RowStyle;)V

    .line 224
    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mAdapter:Landroidx/slice/widget/SliceAdapter;

    invoke-virtual {v0, p1}, Landroidx/slice/widget/SliceAdapter;->setStyle(Landroidx/slice/widget/SliceStyle;)V

    .line 225
    invoke-direct {p0, p2}, Landroidx/slice/widget/TemplateView;->applyRowStyle(Landroidx/slice/widget/RowStyle;)V

    .line 226
    return-void
.end method

.method public setTint(I)V
    .locals 1
    .param p1, "tint"    # I

    .line 182
    invoke-super {p0, p1}, Landroidx/slice/widget/SliceChildView;->setTint(I)V

    .line 183
    invoke-virtual {p0}, Landroidx/slice/widget/TemplateView;->getMeasuredHeight()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/slice/widget/TemplateView;->updateDisplayedItems(I)V

    .line 184
    return-void
.end method
