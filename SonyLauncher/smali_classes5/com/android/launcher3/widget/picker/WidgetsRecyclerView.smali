.class public Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;
.super Lcom/android/launcher3/FastScrollRecyclerView;
.source "WidgetsRecyclerView.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/widget/picker/WidgetsRecyclerView$HeaderViewDimensionsProvider;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

.field private final mFastScrollerOffset:Landroid/graphics/Point;

.field private mHeaderViewDimensionsProvider:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView$HeaderViewDimensionsProvider;

.field private mLastVisibleWidgetContentTableHeight:I

.field private final mScrollbarTop:I

.field private final mSpacingBetweenEntries:I

.field private mTouchDownOnScroller:Z

.field private mWidgetEmptySpaceHeight:I

.field private mWidgetHeaderHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/FastScrollRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->mFastScrollerOffset:Landroid/graphics/Point;

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->mLastVisibleWidgetContentTableHeight:I

    .line 56
    iput v0, p0, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->mWidgetHeaderHeight:I

    .line 57
    iput v0, p0, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->mWidgetEmptySpaceHeight:I

    .line 72
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->dynamic_grid_edge_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->mScrollbarTop:I

    .line 73
    invoke-virtual {p0, p0}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    .line 76
    .local v0, "activity":Lcom/android/launcher3/views/ActivityContext;
    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    .line 79
    .local v1, "grid":Lcom/android/launcher3/DeviceProfile;
    nop

    .line 80
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/launcher3/R$dimen;->widget_list_entry_spacing:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->mSpacingBetweenEntries:I

    .line 81
    return-void
.end method

.method private getItemsHeight(I)I
    .locals 6
    .param p1, "untilIndex"    # I

    .line 250
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->mAdapter:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->mAdapter:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    .line 253
    :cond_0
    const/4 v0, 0x0

    .line 254
    .local v0, "totalItemsHeight":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_6

    .line 255
    iget-object v2, p0, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->mAdapter:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    invoke-virtual {v2}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    .line 256
    .local v2, "entry":Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;
    instance-of v3, v2, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;

    if-nez v3, :cond_4

    instance-of v3, v2, Lcom/android/launcher3/widget/model/WidgetsListSearchHeaderEntry;

    if-eqz v3, :cond_1

    goto :goto_1

    .line 264
    :cond_1
    instance-of v3, v2, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;

    if-eqz v3, :cond_2

    .line 265
    iget v3, p0, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->mLastVisibleWidgetContentTableHeight:I

    add-int/2addr v0, v3

    goto :goto_2

    .line 266
    :cond_2
    instance-of v3, v2, Lcom/android/launcher3/widget/model/WidgetListSpaceEntry;

    if-eqz v3, :cond_3

    .line 267
    iget v3, p0, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->mWidgetEmptySpaceHeight:I

    add-int/2addr v0, v3

    goto :goto_2

    .line 269
    :cond_3
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t estimate height for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 258
    :cond_4
    :goto_1
    iget v3, p0, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->mWidgetHeaderHeight:I

    add-int/2addr v0, v3

    .line 259
    if-lez v1, :cond_5

    .line 262
    iget v3, p0, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->mSpacingBetweenEntries:I

    add-int/2addr v0, v3

    .line 254
    .end local v2    # "entry":Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;
    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 272
    .end local v1    # "i":I
    :cond_6
    return v0
.end method

.method private isModelNotReady()Z
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->mAdapter:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected getAvailableScrollHeight()I
    .locals 4

    .line 196
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 197
    .local v0, "firstPageHeight":I
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->mAdapter:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->getItemCount()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->getItemsHeight(I)I

    move-result v1

    .line 198
    .local v1, "totalHeightOfAllItems":I
    sub-int v2, v1, v0

    .line 199
    .local v2, "availableScrollHeight":I
    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    return v3
.end method

.method public getCurrentScrollY()I
    .locals 6

    .line 144
    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->isModelNotReady()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 148
    :cond_0
    const/4 v0, -0x1

    .line 149
    .local v0, "rowIndex":I
    const/4 v1, 0x0

    .line 151
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    .line 152
    .local v2, "layoutManager":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    instance-of v3, v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v3, :cond_1

    .line 156
    move-object v3, v2

    check-cast v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 157
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    .line 160
    :cond_1
    if-nez v1, :cond_2

    .line 163
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 164
    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result v0

    .line 167
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 168
    invoke-virtual {p0, v3}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 169
    .local v4, "view":Landroid/view/View;
    instance-of v5, v4, Landroid/widget/TableLayout;

    if-eqz v5, :cond_3

    .line 171
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iput v5, p0, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->mLastVisibleWidgetContentTableHeight:I

    goto :goto_1

    .line 172
    :cond_3
    instance-of v5, v4, Lcom/android/launcher3/widget/picker/WidgetsListHeader;

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->mWidgetHeaderHeight:I

    if-nez v5, :cond_4

    .line 174
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-lez v5, :cond_4

    .line 176
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iput v5, p0, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->mWidgetHeaderHeight:I

    goto :goto_1

    .line 177
    :cond_4
    instance-of v5, v4, Lcom/android/launcher3/widget/picker/WidgetsSpaceViewHolderBinder$EmptySpaceView;

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-lez v5, :cond_5

    .line 178
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iput v5, p0, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->mWidgetEmptySpaceHeight:I

    .line 167
    .end local v4    # "view":Landroid/view/View;
    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 182
    .end local v3    # "i":I
    :cond_6
    invoke-direct {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->getItemsHeight(I)I

    move-result v3

    .line 183
    .local v3, "scrollPosition":I
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v4

    .line 185
    .local v4, "offset":I
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->getPaddingTop()I

    move-result v5

    add-int/2addr v5, v3

    sub-int/2addr v5, v4

    return v5

    .line 145
    .end local v0    # "rowIndex":I
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "layoutManager":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .end local v3    # "scrollPosition":I
    .end local v4    # "offset":I
    :cond_7
    :goto_2
    const/4 v0, -0x1

    return v0
.end method

.method public getScrollBarTop()I
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->mHeaderViewDimensionsProvider:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView$HeaderViewDimensionsProvider;

    if-nez v0, :cond_0

    .line 209
    iget v0, p0, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->mScrollbarTop:I

    goto :goto_0

    .line 210
    :cond_0
    invoke-interface {v0}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView$HeaderViewDimensionsProvider;->getHeaderViewHeight()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->mScrollbarTop:I

    add-int/2addr v0, v1

    .line 208
    :goto_0
    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 85
    invoke-super {p0}, Lcom/android/launcher3/FastScrollRecyclerView;->onFinishInflate()V

    .line 88
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 89
    return-void
.end method

.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "rv"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .line 215
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    .line 217
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->mFastScrollerOffset:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->isHitInParent(FFLandroid/graphics/Point;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->mTouchDownOnScroller:Z

    .line 219
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->mTouchDownOnScroller:Z

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->mFastScrollerOffset:Landroid/graphics/Point;

    invoke-virtual {v0, p2, v1}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Point;)Z

    move-result v0

    .line 221
    .local v0, "result":Z
    return v0

    .line 223
    .end local v0    # "result":Z
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .line 235
    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "rv"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .line 228
    iget-boolean v0, p0, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->mTouchDownOnScroller:Z

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->mFastScrollerOffset:Landroid/graphics/Point;

    invoke-virtual {v0, p2, v1}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Point;)Z

    .line 231
    :cond_0
    return-void
.end method

.method public onUpdateScrollbar(I)V
    .locals 3
    .param p1, "dy"    # I

    .line 126
    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->isModelNotReady()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->setThumbOffsetY(I)V

    .line 128
    return-void

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->getCurrentScrollY()I

    move-result v0

    .line 133
    .local v0, "scrollY":I
    if-gez v0, :cond_1

    .line 134
    iget-object v2, p0, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->setThumbOffsetY(I)V

    .line 135
    return-void

    .line 138
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->getAvailableScrollHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->synchronizeScrollBarThumbOffsetToViewScroll(II)V

    .line 139
    return-void
.end method

.method public scrollToPositionAtProgress(F)Ljava/lang/String;
    .locals 6
    .param p1, "touchFraction"    # F

    .line 103
    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->isModelNotReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    const-string v0, ""

    return-object v0

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->stopScroll()V

    .line 110
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->mAdapter:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->getItemCount()I

    move-result v0

    .line 111
    .local v0, "rowCount":I
    int-to-float v1, v0

    mul-float/2addr v1, p1

    .line 112
    .local v1, "pos":F
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->getAvailableScrollHeight()I

    move-result v2

    .line 113
    .local v2, "availableScrollHeight":I
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 114
    .local v3, "layoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    const/4 v4, 0x0

    int-to-float v5, v2

    mul-float/2addr v5, p1

    neg-float v5, v5

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 116
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v5, p1, v4

    if-nez v5, :cond_1

    sub-float v4, v1, v4

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    float-to-int v4, v4

    .line 117
    .local v4, "posInt":I
    iget-object v5, p0, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->mAdapter:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    invoke-virtual {v5, v4}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->getSectionName(I)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1
    .param p1, "adapter"    # Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 93
    invoke-super {p0, p1}, Lcom/android/launcher3/FastScrollRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 94
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->mAdapter:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    .line 95
    return-void
.end method

.method public setHeaderViewDimensionsProvider(Lcom/android/launcher3/widget/picker/WidgetsRecyclerView$HeaderViewDimensionsProvider;)V
    .locals 0
    .param p1, "headerViewDimensionsProvider"    # Lcom/android/launcher3/widget/picker/WidgetsRecyclerView$HeaderViewDimensionsProvider;

    .line 239
    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->mHeaderViewDimensionsProvider:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView$HeaderViewDimensionsProvider;

    .line 240
    return-void
.end method
