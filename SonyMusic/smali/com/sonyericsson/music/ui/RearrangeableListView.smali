.class public Lcom/sonyericsson/music/ui/RearrangeableListView;
.super Landroid/widget/ListView;
.source "RearrangeableListView.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/ui/RearrangeableListView$OnItemMovedListener;
    }
.end annotation


# static fields
.field private static final DIRECTION_DOWN:I = 0x1

.field private static final DIRECTION_UP:I = 0x0

.field private static final IGNORE_HW_BACK_TIME:I = 0x1f4

.field private static final SCROLL_SPEED:I = 0x7fff


# instance fields
.field protected mFlyView:Landroid/view/View;

.field private mFlyViewOrginalPos:I

.field final mFlyWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private mGlobalOffsetY:I

.field private mInsertPos:I

.field private mItemHeight:I

.field private mItemLayoutHeight:I

.field private mListener:Lcom/sonyericsson/music/ui/RearrangeableListView$OnItemMovedListener;

.field protected mMovingItemEnabled:Z

.field mRearranging:Z

.field mScrolling:Z

.field private mTempRect:Landroid/graphics/Rect;

.field private mTimeRearrangingStopped:J

.field private mTouchOffsetY:I

.field private mTriggerViewId:I

.field mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 142
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 73
    iput-boolean p1, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mMovingItemEnabled:Z

    .line 81
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mFlyWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 85
    iput-boolean p1, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mScrolling:Z

    .line 87
    iput-boolean p1, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mRearranging:Z

    const/4 p1, -0x1

    .line 97
    iput p1, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mTriggerViewId:I

    .line 101
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mTempRect:Landroid/graphics/Rect;

    const-wide/16 v0, 0x0

    .line 111
    iput-wide v0, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mTimeRearrangingStopped:J

    .line 143
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/RearrangeableListView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 147
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 73
    iput-boolean p1, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mMovingItemEnabled:Z

    .line 81
    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p2, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mFlyWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 85
    iput-boolean p1, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mScrolling:Z

    .line 87
    iput-boolean p1, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mRearranging:Z

    const/4 p1, -0x1

    .line 97
    iput p1, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mTriggerViewId:I

    .line 101
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mTempRect:Landroid/graphics/Rect;

    const-wide/16 p1, 0x0

    .line 111
    iput-wide p1, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mTimeRearrangingStopped:J

    .line 148
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/RearrangeableListView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 152
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 73
    iput-boolean p1, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mMovingItemEnabled:Z

    .line 81
    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p2, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mFlyWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 85
    iput-boolean p1, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mScrolling:Z

    .line 87
    iput-boolean p1, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mRearranging:Z

    const/4 p1, -0x1

    .line 97
    iput p1, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mTriggerViewId:I

    .line 101
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mTempRect:Landroid/graphics/Rect;

    const-wide/16 p1, 0x0

    .line 111
    iput-wide p1, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mTimeRearrangingStopped:J

    .line 153
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/RearrangeableListView;->init()V

    return-void
.end method

.method private canScrollDown()Z
    .locals 4

    .line 390
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 391
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 392
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingBottom()I

    move-result v3

    sub-int/2addr v1, v3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v2
.end method

.method private canScrollUp()Z
    .locals 2

    .line 383
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-ltz v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private canStartMoving(III)Z
    .locals 3

    .line 203
    iget-boolean v0, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mScrolling:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 206
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-lt p1, v0, :cond_5

    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v2

    sub-int/2addr v0, v2

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mListener:Lcom/sonyericsson/music/ui/RearrangeableListView$OnItemMovedListener;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/sonyericsson/music/ui/RearrangeableListView$OnItemMovedListener;->isMovableView(I)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 213
    :cond_2
    iget v0, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mTriggerViewId:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    .line 214
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int/2addr p1, v0

    .line 215
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 216
    iget v0, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mTriggerViewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 218
    iget-object v0, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 219
    iget-object p1, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1

    :cond_3
    return v1

    :cond_4
    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_0
    return v1
.end method

.method private correctPosition()V
    .locals 4

    .line 343
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    const/4 v1, 0x0

    .line 344
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 345
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 346
    iget v2, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mFlyViewOrginalPos:I

    iget v3, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mInsertPos:I

    if-ge v2, v3, :cond_0

    if-ge v2, v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 347
    invoke-virtual {p0, v0, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    :cond_0
    return-void
.end method

.method private createFlyView(Landroid/graphics/Bitmap;)Landroid/view/View;
    .locals 2

    .line 256
    invoke-virtual {p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 257
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 258
    invoke-static {v0}, Lcom/sonyericsson/music/common/ThemeColor;->movingItemBackground(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 259
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method private expandView(Landroid/view/View;Z)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 471
    iget v1, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mItemHeight:I

    move v2, v1

    const/4 v1, 0x0

    goto :goto_0

    .line 475
    :cond_0
    iget v1, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mItemHeight:I

    const/4 v2, 0x0

    .line 477
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 478
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v4, :cond_1

    .line 479
    iget v4, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mItemLayoutHeight:I

    mul-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 480
    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 482
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    invoke-virtual {p1, v3, v2, v4, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 483
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 484
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/ui/RearrangeableListView;->notifyItemExpanded(Landroid/view/View;Z)V

    return-void
.end method

.method private getChildIndexForInsertPosition(I)I
    .locals 2

    .line 446
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    .line 448
    iget v1, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mFlyViewOrginalPos:I

    if-le p1, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method private getItemForPosition(I)I
    .locals 1

    .line 511
    iget v0, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mTouchOffsetY:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mItemHeight:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    .line 512
    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v0

    .line 513
    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/music/ui/RearrangeableListView;->myPointToPosition(II)I

    move-result v0

    if-ltz v0, :cond_0

    .line 515
    iget p1, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mFlyViewOrginalPos:I

    if-gt v0, p1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private handleScroll(I)V
    .locals 3

    .line 370
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v0

    .line 371
    div-int/lit8 v1, v0, 0x5

    mul-int/lit8 v0, v0, 0x4

    .line 372
    div-int/lit8 v0, v0, 0x5

    if-lt p1, v0, :cond_0

    .line 373
    iget-boolean v2, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mScrolling:Z

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/music/ui/RearrangeableListView;->canScrollDown()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    .line 374
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/ui/RearrangeableListView;->startScrolling(I)V

    goto :goto_0

    :cond_0
    if-gt p1, v1, :cond_1

    .line 375
    iget-boolean v2, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mScrolling:Z

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/sonyericsson/music/ui/RearrangeableListView;->canScrollUp()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x0

    .line 376
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/ui/RearrangeableListView;->startScrolling(I)V

    goto :goto_0

    .line 377
    :cond_1
    iget-boolean v2, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mScrolling:Z

    if-eqz v2, :cond_2

    if-ge p1, v0, :cond_2

    if-le p1, v1, :cond_2

    .line 378
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/RearrangeableListView;->stopScrolling()V

    :cond_2
    :goto_0
    return-void
.end method

.method private hideFlyViewItemInList(Landroid/view/View;Z)V
    .locals 3

    .line 488
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 490
    iget p2, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mItemLayoutHeight:I

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 491
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 492
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    invoke-virtual {p1, p2, v2, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 493
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 495
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 496
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 497
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    invoke-virtual {p1, p2, v2, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 498
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private init()V
    .locals 0

    .line 161
    invoke-virtual {p0, p0}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    return-void
.end method

.method private move(II)V
    .locals 4

    .line 352
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/ui/RearrangeableListView;->moveFlyView(II)V

    .line 354
    invoke-direct {p0, p2}, Lcom/sonyericsson/music/ui/RearrangeableListView;->getItemForPosition(I)I

    move-result p1

    .line 355
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 356
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    .line 357
    invoke-virtual {p0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v2

    .line 358
    iget-object v3, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mListener:Lcom/sonyericsson/music/ui/RearrangeableListView$OnItemMovedListener;

    if-eqz v3, :cond_1

    invoke-interface {v3, p1}, Lcom/sonyericsson/music/ui/RearrangeableListView$OnItemMovedListener;->isMovableView(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_3

    if-lt p1, v1, :cond_3

    sub-int/2addr v0, v2

    if-gt p1, v0, :cond_3

    .line 361
    iget v0, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mInsertPos:I

    if-eq p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mScrolling:Z

    if-nez v0, :cond_2

    .line 362
    iput p1, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mInsertPos:I

    .line 363
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/RearrangeableListView;->resizeListItems()V

    .line 365
    :cond_2
    invoke-direct {p0, p2}, Lcom/sonyericsson/music/ui/RearrangeableListView;->handleScroll(I)V

    :cond_3
    return-void
.end method

.method private moveFlyView(II)V
    .locals 1

    .line 412
    iget-object p1, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mFlyWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mTouchOffsetY:I

    sub-int/2addr p2, v0

    iget v0, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mGlobalOffsetY:I

    add-int/2addr p2, v0

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 413
    iget-object p2, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mFlyView:Landroid/view/View;

    invoke-interface {p2, v0, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private myPointToPosition(II)I
    .locals 3

    if-gez p2, :cond_0

    .line 530
    iget v0, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mItemHeight:I

    add-int/2addr v0, p2

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/ui/RearrangeableListView;->myPointToPosition(II)I

    move-result v0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mTempRect:Landroid/graphics/Rect;

    .line 537
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 539
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 540
    invoke-virtual {v2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 541
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 542
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result p1

    add-int/2addr p1, v1

    return p1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method private notifyItemCollapsed(Landroid/view/View;)V
    .locals 1

    .line 563
    iget-object v0, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mListener:Lcom/sonyericsson/music/ui/RearrangeableListView$OnItemMovedListener;

    if-eqz v0, :cond_0

    .line 564
    invoke-interface {v0, p1}, Lcom/sonyericsson/music/ui/RearrangeableListView$OnItemMovedListener;->onItemCollapsed(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private notifyItemExpanded(Landroid/view/View;Z)V
    .locals 1

    .line 557
    iget-object v0, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mListener:Lcom/sonyericsson/music/ui/RearrangeableListView$OnItemMovedListener;

    if-eqz v0, :cond_0

    .line 558
    invoke-interface {v0, p1, p2}, Lcom/sonyericsson/music/ui/RearrangeableListView$OnItemMovedListener;->onItemExpanded(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method private notifyItemMoved(II)V
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mListener:Lcom/sonyericsson/music/ui/RearrangeableListView$OnItemMovedListener;

    if-eqz v0, :cond_0

    if-eq p1, p2, :cond_0

    .line 550
    invoke-interface {v0, p1, p2}, Lcom/sonyericsson/music/ui/RearrangeableListView$OnItemMovedListener;->onItemMoved(II)V

    :cond_0
    const/4 p1, 0x0

    .line 552
    iput-boolean p1, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mRearranging:Z

    .line 553
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mTimeRearrangingStopped:J

    return-void
.end method

.method private removeFlyView()V
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mFlyView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 292
    iget-object v1, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mFlyView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 293
    iput-object v0, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mFlyView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method private resetListItems()V
    .locals 3

    .line 438
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 440
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 441
    invoke-direct {p0, v2}, Lcom/sonyericsson/music/ui/RearrangeableListView;->resetView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private resetView(Landroid/view/View;)V
    .locals 4

    .line 455
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 456
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 457
    :goto_1
    iget v3, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mItemLayoutHeight:I

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 458
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 459
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {p1, v0, v2, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 460
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz v1, :cond_2

    .line 463
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/ui/RearrangeableListView;->notifyItemCollapsed(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method private resizeListItems()V
    .locals 10

    .line 417
    iget v0, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mFlyViewOrginalPos:I

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/ui/RearrangeableListView;->getChildIndexForInsertPosition(I)I

    move-result v0

    .line 418
    iget v1, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mInsertPos:I

    invoke-direct {p0, v1}, Lcom/sonyericsson/music/ui/RearrangeableListView;->getChildIndexForInsertPosition(I)I

    move-result v1

    .line 419
    iget v2, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mInsertPos:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 421
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v3, :cond_5

    .line 423
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-ne v6, v0, :cond_2

    .line 425
    iget v8, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mInsertPos:I

    iget v9, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mFlyViewOrginalPos:I

    if-ne v8, v9, :cond_1

    const/4 v8, 0x1

    goto :goto_2

    :cond_1
    const/4 v8, 0x0

    .line 426
    :goto_2
    invoke-direct {p0, v7, v8}, Lcom/sonyericsson/music/ui/RearrangeableListView;->hideFlyViewItemInList(Landroid/view/View;Z)V

    goto :goto_3

    :cond_2
    if-ne v6, v1, :cond_3

    .line 428
    invoke-direct {p0, v7, v4}, Lcom/sonyericsson/music/ui/RearrangeableListView;->expandView(Landroid/view/View;Z)V

    goto :goto_3

    :cond_3
    if-eqz v2, :cond_4

    add-int/lit8 v8, v3, -0x1

    if-ne v6, v8, :cond_4

    .line 430
    invoke-direct {p0, v7, v5}, Lcom/sonyericsson/music/ui/RearrangeableListView;->expandView(Landroid/view/View;Z)V

    goto :goto_3

    .line 432
    :cond_4
    invoke-direct {p0, v7}, Lcom/sonyericsson/music/ui/RearrangeableListView;->resetView(Landroid/view/View;)V

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method private setupFlyView(Landroid/view/View;I)V
    .locals 1

    .line 247
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/RearrangeableListView;->removeFlyView()V

    .line 248
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    const/4 v0, 0x1

    .line 249
    invoke-virtual {p1, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 250
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 251
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/ui/RearrangeableListView;->createFlyView(Landroid/graphics/Bitmap;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mFlyView:Landroid/view/View;

    .line 252
    invoke-direct {p0, p2}, Lcom/sonyericsson/music/ui/RearrangeableListView;->showFlyView(I)V

    return-void
.end method

.method private showFlyView(I)V
    .locals 4

    .line 265
    iget-object v0, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mFlyView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 269
    new-array v0, v0, [I

    .line 270
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getLocationInWindow([I)V

    .line 271
    iget-object v1, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mFlyWindowParams:Landroid/view/WindowManager$LayoutParams;

    const v2, 0x800033

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v2, 0x0

    .line 272
    aget v0, v0, v2

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v0, v3

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 273
    iget-object v0, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mFlyWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mTouchOffsetY:I

    sub-int/2addr p1, v1

    iget v1, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mGlobalOffsetY:I

    add-int/2addr p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 p1, -0x2

    .line 275
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 276
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 p1, 0x398

    .line 277
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 p1, -0x3

    .line 282
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 283
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 285
    invoke-virtual {p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mWindowManager:Landroid/view/WindowManager;

    .line 286
    iget-object p1, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mFlyView:Landroid/view/View;

    iget-object v1, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mFlyWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private startMovingItem(III)V
    .locals 3

    const/4 v0, 0x1

    .line 227
    iput-boolean v0, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mRearranging:Z

    const-wide/16 v1, 0x0

    .line 228
    iput-wide v1, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mTimeRearrangingStopped:J

    .line 229
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    .line 230
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 232
    iput p1, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mFlyViewOrginalPos:I

    .line 233
    iput p1, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mInsertPos:I

    .line 234
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int p1, p2, p1

    iput p1, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mTouchOffsetY:I

    sub-int/2addr p3, p2

    .line 235
    iput p3, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mGlobalOffsetY:I

    .line 236
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mItemHeight:I

    .line 237
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p1, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mItemLayoutHeight:I

    .line 238
    iget p1, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mItemLayoutHeight:I

    if-nez p1, :cond_0

    .line 239
    iget p1, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mItemHeight:I

    iput p1, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mItemLayoutHeight:I

    .line 242
    :cond_0
    invoke-direct {p0, v1, p2}, Lcom/sonyericsson/music/ui/RearrangeableListView;->setupFlyView(Landroid/view/View;I)V

    .line 243
    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/music/ui/RearrangeableListView;->hideFlyViewItemInList(Landroid/view/View;Z)V

    return-void
.end method

.method private startScrolling(I)V
    .locals 1

    const/16 v0, 0x7fff

    if-nez p1, :cond_0

    const/16 p1, -0x8000

    goto :goto_0

    :cond_0
    const/16 p1, 0x7fff

    .line 402
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/widget/ListView;->smoothScrollBy(II)V

    const/4 p1, 0x1

    .line 403
    iput-boolean p1, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mScrolling:Z

    return-void
.end method

.method private stopMovingItem(II)V
    .locals 0

    .line 335
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/RearrangeableListView;->stopScrolling()V

    .line 336
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/RearrangeableListView;->resetListItems()V

    .line 337
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/RearrangeableListView;->removeFlyView()V

    .line 338
    iget p1, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mFlyViewOrginalPos:I

    iget p2, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mInsertPos:I

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/ui/RearrangeableListView;->notifyItemMoved(II)V

    .line 339
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/RearrangeableListView;->correctPosition()V

    return-void
.end method

.method private stopScrolling()V
    .locals 1

    const/4 v0, 0x0

    .line 407
    invoke-virtual {p0, v0, v0}, Landroid/widget/ListView;->smoothScrollBy(II)V

    .line 408
    iput-boolean v0, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mScrolling:Z

    return-void
.end method


# virtual methods
.method public getMovingItemEnabled()Z
    .locals 1

    .line 169
    iget-boolean v0, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mMovingItemEnabled:Z

    return v0
.end method

.method public isRearranging()Z
    .locals 1

    .line 157
    iget-boolean v0, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mRearranging:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 182
    iget-boolean v0, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mMovingItemEnabled:Z

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 184
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 185
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 189
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 190
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 191
    invoke-virtual {p0, v0, v1}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    .line 192
    invoke-direct {p0, v0, v2, v3}, Lcom/sonyericsson/music/ui/RearrangeableListView;->canStartMoving(III)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    invoke-direct {p0, v0, v1, v3}, Lcom/sonyericsson/music/ui/RearrangeableListView;->startMovingItem(III)V

    const/4 p1, 0x1

    return p1

    .line 199
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 317
    iget-boolean v0, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mRearranging:Z

    if-nez v0, :cond_0

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mTimeRearrangingStopped:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    const-wide/16 v2, 0x1f4

    add-long/2addr v0, v2

    .line 319
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 331
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1

    .line 504
    iget-object v0, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mFlyView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mMovingItemEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 507
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/ui/RearrangeableListView;->resetView(Landroid/view/View;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 299
    iget-boolean v0, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mMovingItemEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mFlyView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 306
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/music/ui/RearrangeableListView;->move(II)V

    goto :goto_0

    .line 303
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/music/ui/RearrangeableListView;->stopMovingItem(II)V

    :goto_0
    const/4 p1, 0x1

    return p1

    .line 312
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setItemMovedListener(Lcom/sonyericsson/music/ui/RearrangeableListView$OnItemMovedListener;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mListener:Lcom/sonyericsson/music/ui/RearrangeableListView$OnItemMovedListener;

    return-void
.end method

.method public setMovingHandleViewId(I)V
    .locals 0

    .line 177
    iput p1, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mTriggerViewId:I

    return-void
.end method

.method public setMovingItemEnabled(Z)V
    .locals 0

    .line 165
    iput-boolean p1, p0, Lcom/sonyericsson/music/ui/RearrangeableListView;->mMovingItemEnabled:Z

    return-void
.end method
