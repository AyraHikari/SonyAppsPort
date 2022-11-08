.class public Landroidx/slice/widget/SliceAdapter$SliceViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SliceAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/widget/SliceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SliceViewHolder"
.end annotation


# instance fields
.field public final mSliceChildView:Landroidx/slice/widget/SliceChildView;

.field final synthetic this$0:Landroidx/slice/widget/SliceAdapter;


# direct methods
.method public constructor <init>(Landroidx/slice/widget/SliceAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Landroidx/slice/widget/SliceAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .line 363
    iput-object p1, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    .line 364
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 365
    instance-of v0, p2, Landroidx/slice/widget/SliceChildView;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/slice/widget/SliceChildView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    .line 366
    return-void
.end method


# virtual methods
.method bind(Landroidx/slice/widget/SliceContent;I)V
    .locals 12
    .param p1, "item"    # Landroidx/slice/widget/SliceContent;
    .param p2, "position"    # I

    .line 369
    iget-object v0, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    if-eqz v0, :cond_8

    if-nez p1, :cond_0

    goto/16 :goto_6

    .line 373
    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    iget-object v0, v0, Landroidx/slice/widget/SliceAdapter;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {p1}, Landroidx/slice/widget/SliceContent;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceStyle;->getRowStyle(Landroidx/slice/SliceItem;)Landroidx/slice/widget/RowStyle;

    move-result-object v0

    .line 376
    .local v0, "rowStyle":Landroidx/slice/widget/RowStyle;
    iget-object v1, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {v1, p0}, Landroidx/slice/widget/SliceChildView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    iget-object v1, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {v1, p0}, Landroidx/slice/widget/SliceChildView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 379
    iget-object v1, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    iget-object v2, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    invoke-virtual {v1, v2}, Landroidx/slice/widget/SliceChildView;->setSliceActionLoadingListener(Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;)V

    .line 381
    instance-of v1, p1, Landroidx/slice/widget/RowContent;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 382
    move-object v1, p1

    check-cast v1, Landroidx/slice/widget/RowContent;

    invoke-virtual {v1}, Landroidx/slice/widget/RowContent;->getIsHeader()Z

    move-result v1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v3

    .line 383
    .local v1, "isHeader":Z
    :goto_0
    iget-object v4, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    iget-object v5, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    iget-object v5, v5, Landroidx/slice/widget/SliceAdapter;->mLoadingActions:Ljava/util/Set;

    invoke-virtual {v4, v5}, Landroidx/slice/widget/SliceChildView;->setLoadingActions(Ljava/util/Set;)V

    .line 384
    iget-object v4, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    iget-object v5, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    iget-object v5, v5, Landroidx/slice/widget/SliceAdapter;->mPolicy:Landroidx/slice/widget/SliceViewPolicy;

    invoke-virtual {v4, v5}, Landroidx/slice/widget/SliceChildView;->setPolicy(Landroidx/slice/widget/SliceViewPolicy;)V

    .line 385
    iget-object v4, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {v0}, Landroidx/slice/widget/RowStyle;->getTintColor()I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/slice/widget/SliceChildView;->setTint(I)V

    .line 386
    iget-object v4, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    iget-object v5, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    iget-object v5, v5, Landroidx/slice/widget/SliceAdapter;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v4, v5, v0}, Landroidx/slice/widget/SliceChildView;->setStyle(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/RowStyle;)V

    .line 387
    iget-object v4, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    if-eqz v1, :cond_3

    iget-object v5, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    iget-boolean v5, v5, Landroidx/slice/widget/SliceAdapter;->mShowLastUpdated:Z

    if-eqz v5, :cond_3

    move v5, v2

    goto :goto_1

    :cond_3
    move v5, v3

    :goto_1
    invoke-virtual {v4, v5}, Landroidx/slice/widget/SliceChildView;->setShowLastUpdated(Z)V

    .line 388
    iget-object v4, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    if-eqz v1, :cond_4

    iget-object v5, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    iget-wide v5, v5, Landroidx/slice/widget/SliceAdapter;->mLastUpdated:J

    goto :goto_2

    :cond_4
    const-wide/16 v5, -0x1

    :goto_2
    invoke-virtual {v4, v5, v6}, Landroidx/slice/widget/SliceChildView;->setLastUpdated(J)V

    .line 390
    if-nez p2, :cond_5

    iget-object v4, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    iget v4, v4, Landroidx/slice/widget/SliceAdapter;->mInsetTop:I

    goto :goto_3

    :cond_5
    move v4, v3

    :goto_3
    move v10, v4

    .line 391
    .local v10, "top":I
    iget-object v4, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    invoke-virtual {v4}, Landroidx/slice/widget/SliceAdapter;->getItemCount()I

    move-result v4

    sub-int/2addr v4, v2

    if-ne p2, v4, :cond_6

    iget-object v4, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    iget v4, v4, Landroidx/slice/widget/SliceAdapter;->mInsetBottom:I

    goto :goto_4

    :cond_6
    move v4, v3

    :goto_4
    move v11, v4

    .line 392
    .local v11, "bottom":I
    iget-object v4, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    iget-object v5, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    iget v5, v5, Landroidx/slice/widget/SliceAdapter;->mInsetStart:I

    iget-object v6, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    iget v6, v6, Landroidx/slice/widget/SliceAdapter;->mInsetEnd:I

    invoke-virtual {v4, v5, v10, v6, v11}, Landroidx/slice/widget/SliceChildView;->setInsets(IIII)V

    .line 393
    iget-object v4, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    iget-object v5, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    iget-boolean v5, v5, Landroidx/slice/widget/SliceAdapter;->mAllowTwoLines:Z

    invoke-virtual {v4, v5}, Landroidx/slice/widget/SliceChildView;->setAllowTwoLines(Z)V

    .line 394
    iget-object v4, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    if-eqz v1, :cond_7

    iget-object v5, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    iget-object v5, v5, Landroidx/slice/widget/SliceAdapter;->mSliceActions:Ljava/util/List;

    goto :goto_5

    :cond_7
    const/4 v5, 0x0

    :goto_5
    invoke-virtual {v4, v5}, Landroidx/slice/widget/SliceChildView;->setSliceActions(Ljava/util/List;)V

    .line 395
    iget-object v4, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    iget-object v5, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    invoke-virtual {v5}, Landroidx/slice/widget/SliceAdapter;->getItemCount()I

    move-result v8

    iget-object v5, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    iget-object v9, v5, Landroidx/slice/widget/SliceAdapter;->mSliceObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    move-object v5, p1

    move v6, v1

    move v7, p2

    invoke-virtual/range {v4 .. v9}, Landroidx/slice/widget/SliceChildView;->setSliceItem(Landroidx/slice/widget/SliceContent;ZIILandroidx/slice/widget/SliceView$OnSliceActionListener;)V

    .line 396
    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 397
    .local v4, "info":[I
    iget-object v5, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    iget-object v5, v5, Landroidx/slice/widget/SliceAdapter;->mSliceActions:Ljava/util/List;

    invoke-static {p1, v1, v5}, Landroidx/slice/widget/ListContent;->getRowType(Landroidx/slice/widget/SliceContent;ZLjava/util/List;)I

    move-result v5

    aput v5, v4, v3

    .line 398
    aput p2, v4, v2

    .line 399
    iget-object v2, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {v2, v4}, Landroidx/slice/widget/SliceChildView;->setTag(Ljava/lang/Object;)V

    .line 400
    return-void

    .line 370
    .end local v0    # "rowStyle":Landroidx/slice/widget/RowStyle;
    .end local v1    # "isHeader":Z
    .end local v4    # "info":[I
    .end local v10    # "top":I
    .end local v11    # "bottom":I
    :cond_8
    :goto_6
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 404
    iget-object v0, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    iget-object v0, v0, Landroidx/slice/widget/SliceAdapter;->mParent:Landroidx/slice/widget/SliceView;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    iget-object v0, v0, Landroidx/slice/widget/SliceAdapter;->mParent:Landroidx/slice/widget/SliceView;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceView;->setClickInfo([I)V

    .line 406
    iget-object v0, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    iget-object v0, v0, Landroidx/slice/widget/SliceAdapter;->mParent:Landroidx/slice/widget/SliceView;

    invoke-virtual {v0}, Landroidx/slice/widget/SliceView;->performClick()Z

    .line 408
    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 412
    iget-object v0, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    iget-object v0, v0, Landroidx/slice/widget/SliceAdapter;->mTemplateView:Landroidx/slice/widget/TemplateView;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    iget-object v0, v0, Landroidx/slice/widget/SliceAdapter;->mTemplateView:Landroidx/slice/widget/TemplateView;

    invoke-virtual {v0, p2}, Landroidx/slice/widget/TemplateView;->onForegroundActivated(Landroid/view/MotionEvent;)V

    .line 415
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
