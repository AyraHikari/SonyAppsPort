.class public abstract Landroidx/recyclerview/widget/RecyclerView$Adapter;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mHasStableIds:Z

.field private final mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

.field private mStateRestorationPolicy:Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7314
    .local p0, "this":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7315
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    .line 7316
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mHasStableIds:Z

    .line 7317
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->ALLOW:Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mStateRestorationPolicy:Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    return-void
.end method


# virtual methods
.method public final bindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .line 7466
    .local p0, "this":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;, "TVH;"
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mBindingAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7467
    .local v0, "rootBind":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 7468
    iput p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 7469
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7470
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemId:J

    .line 7472
    :cond_1
    const/16 v2, 0x207

    invoke-virtual {p1, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setFlags(II)V

    .line 7475
    const-string v2, "RV OnBindView"

    invoke-static {v2}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 7477
    :cond_2
    iput-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mBindingAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 7478
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, p1, p2, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    .line 7479
    if-eqz v0, :cond_4

    .line 7480
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->clearPayload()V

    .line 7481
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 7482
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    instance-of v3, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    if-eqz v3, :cond_3

    .line 7483
    move-object v3, v2

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iput-boolean v1, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 7485
    :cond_3
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 7487
    .end local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    return-void
.end method

.method canRestoreState()Z
    .locals 3

    .line 7954
    .local p0, "this":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView$7;->$SwitchMap$androidx$recyclerview$widget$RecyclerView$Adapter$StateRestorationPolicy:[I

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mStateRestorationPolicy:Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 7960
    return v1

    .line 7958
    :pswitch_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 7956
    :pswitch_1
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final createViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    .line 7435
    .local p0, "this":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    :try_start_0
    const-string v0, "RV CreateView"

    invoke-static {v0}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 7436
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 7437
    .local v0, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;, "TVH;"
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 7442
    iput p2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemViewType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7443
    nop

    .line 7445
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 7443
    return-object v0

    .line 7438
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ViewHolder views must not be attached when created. Ensure that you are not passing \'true\' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    .end local p1    # "parent":Landroid/view/ViewGroup;
    .end local p2    # "viewType":I
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7445
    .end local v0    # "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;, "TVH;"
    .restart local p0    # "this":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    .restart local p1    # "parent":Landroid/view/ViewGroup;
    .restart local p2    # "viewType":I
    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 7446
    throw v0
.end method

.method public findRelativeAdapterPositionIn(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)I
    .locals 1
    .param p2, "viewHolder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p3, "localPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "I)I"
        }
    .end annotation

    .line 7420
    .local p0, "this":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    .local p1, "adapter":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<+Landroidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    if-ne p1, p0, :cond_0

    .line 7421
    return p3

    .line 7423
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public abstract getItemCount()I
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 7530
    .local p0, "this":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .line 7502
    .local p0, "this":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public final getStateRestorationPolicy()Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;
    .locals 1

    .line 7943
    .local p0, "this":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mStateRestorationPolicy:Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    return-object v0
.end method

.method public final hasObservers()Z
    .locals 1

    .line 7640
    .local p0, "this":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->hasObservers()Z

    move-result v0

    return v0
.end method

.method public final hasStableIds()Z
    .locals 1

    .line 7548
    .local p0, "this":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mHasStableIds:Z

    return v0
.end method

.method public final notifyDataSetChanged()V
    .locals 1

    .line 7725
    .local p0, "this":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyChanged()V

    .line 7726
    return-void
.end method

.method public final notifyItemChanged(I)V
    .locals 2
    .param p1, "position"    # I

    .line 7740
    .local p0, "this":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(II)V

    .line 7741
    return-void
.end method

.method public final notifyItemChanged(ILjava/lang/Object;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "payload"    # Ljava/lang/Object;

    .line 7767
    .local p0, "this":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 7768
    return-void
.end method

.method public final notifyItemInserted(I)V
    .locals 2
    .param p1, "position"    # I

    .line 7830
    .local p0, "this":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeInserted(II)V

    .line 7831
    return-void
.end method

.method public final notifyItemMoved(II)V
    .locals 1
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I

    .line 7845
    .local p0, "this":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemMoved(II)V

    .line 7846
    return-void
.end method

.method public final notifyItemRangeChanged(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 7784
    .local p0, "this":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(II)V

    .line 7785
    return-void
.end method

.method public final notifyItemRangeChanged(IILjava/lang/Object;)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .line 7814
    .local p0, "this":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 7815
    return-void
.end method

.method public final notifyItemRangeInserted(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 7863
    .local p0, "this":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeInserted(II)V

    .line 7864
    return-void
.end method

.method public final notifyItemRangeRemoved(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 7896
    .local p0, "this":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeRemoved(II)V

    .line 7897
    return-void
.end method

.method public final notifyItemRemoved(I)V
    .locals 2
    .param p1, "position"    # I

    .line 7879
    .local p0, "this":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeRemoved(II)V

    .line 7880
    return-void
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;

    .line 7684
    .local p0, "this":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    return-void
.end method

.method public abstract onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 7395
    .local p0, "this":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;, "TVH;"
    .local p3, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 7396
    return-void
.end method

.method public abstract onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;

    .line 7693
    .local p0, "this":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    return-void
.end method

.method public onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)Z"
        }
    .end annotation

    .line 7606
    .local p0, "this":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;, "TVH;"
    const/4 v0, 0x0

    return v0
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .line 7620
    .local p0, "this":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;, "TVH;"
    return-void
.end method

.method public onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .line 7632
    .local p0, "this":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;, "TVH;"
    return-void
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .line 7569
    .local p0, "this":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;, "TVH;"
    return-void
.end method

.method public registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V
    .locals 1
    .param p1, "observer"    # Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 7659
    .local p0, "this":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->registerObserver(Ljava/lang/Object;)V

    .line 7660
    return-void
.end method

.method public setHasStableIds(Z)V
    .locals 2
    .param p1, "hasStableIds"    # Z

    .line 7514
    .local p0, "this":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasObservers()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7518
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mHasStableIds:Z

    .line 7519
    return-void

    .line 7515
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot change whether this adapter has stable IDs while the adapter has registered observers."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setStateRestorationPolicy(Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;)V
    .locals 1
    .param p1, "strategy"    # Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    .line 7930
    .local p0, "this":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mStateRestorationPolicy:Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    .line 7931
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyStateRestorationPolicyChanged()V

    .line 7932
    return-void
.end method

.method public unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V
    .locals 1
    .param p1, "observer"    # Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 7672
    .local p0, "this":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 7673
    return-void
.end method
