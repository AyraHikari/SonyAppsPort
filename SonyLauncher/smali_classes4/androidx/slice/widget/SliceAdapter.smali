.class public Landroidx/slice/widget/SliceAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SliceAdapter.java"

# interfaces
.implements Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/widget/SliceAdapter$IdGenerator;,
        Landroidx/slice/widget/SliceAdapter$SliceViewHolder;,
        Landroidx/slice/widget/SliceAdapter$SliceWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/slice/widget/SliceAdapter$SliceViewHolder;",
        ">;",
        "Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;"
    }
.end annotation


# static fields
.field static final HEADER_INDEX:I = 0x0

.field static final TYPE_DEFAULT:I = 0x1

.field static final TYPE_GRID:I = 0x3

.field static final TYPE_HEADER:I = 0x2

.field static final TYPE_MESSAGE:I = 0x4

.field static final TYPE_MESSAGE_LOCAL:I = 0x5


# instance fields
.field mAllowTwoLines:Z

.field final mContext:Landroid/content/Context;

.field private final mIdGen:Landroidx/slice/widget/SliceAdapter$IdGenerator;

.field mInsetBottom:I

.field mInsetEnd:I

.field mInsetStart:I

.field mInsetTop:I

.field mLastUpdated:J

.field mLoadingActions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation
.end field

.field mParent:Landroidx/slice/widget/SliceView;

.field mPolicy:Landroidx/slice/widget/SliceViewPolicy;

.field mShowLastUpdated:Z

.field mSliceActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;"
        }
    .end annotation
.end field

.field mSliceObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

.field mSliceStyle:Landroidx/slice/widget/SliceStyle;

.field private mSlices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/slice/widget/SliceAdapter$SliceWrapper;",
            ">;"
        }
    .end annotation
.end field

.field mTemplateView:Landroidx/slice/widget/TemplateView;

.field mTintColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 98
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 63
    new-instance v0, Landroidx/slice/widget/SliceAdapter$IdGenerator;

    invoke-direct {v0}, Landroidx/slice/widget/SliceAdapter$IdGenerator;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/SliceAdapter;->mIdGen:Landroidx/slice/widget/SliceAdapter$IdGenerator;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/SliceAdapter;->mSlices:Ljava/util/List;

    .line 91
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/SliceAdapter;->mLoadingActions:Ljava/util/Set;

    .line 99
    iput-object p1, p0, Landroidx/slice/widget/SliceAdapter;->mContext:Landroid/content/Context;

    .line 100
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/slice/widget/SliceAdapter;->setHasStableIds(Z)V

    .line 101
    return-void
.end method

.method private inflateForType(I)Landroid/view/View;
    .locals 3
    .param p1, "viewType"    # I

    .line 289
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 298
    invoke-virtual {p0}, Landroidx/slice/widget/SliceAdapter;->getRowView()Landroidx/slice/widget/RowView;

    move-result-object v0

    return-object v0

    .line 295
    :pswitch_0
    iget-object v1, p0, Landroidx/slice/widget/SliceAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Landroidx/slice/view/R$layout;->abc_slice_message_local:I

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 293
    :pswitch_1
    iget-object v1, p0, Landroidx/slice/widget/SliceAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Landroidx/slice/view/R$layout;->abc_slice_message:I

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 291
    :pswitch_2
    invoke-virtual {p0}, Landroidx/slice/widget/SliceAdapter;->getGridRowView()Landroidx/slice/widget/GridRowView;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getGridRowView()Landroidx/slice/widget/GridRowView;
    .locals 4

    .line 307
    iget-object v0, p0, Landroidx/slice/widget/SliceAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroidx/slice/view/R$layout;->abc_slice_grid:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 308
    .local v0, "view":Landroid/view/View;
    instance-of v1, v0, Landroidx/slice/widget/GridRowView;

    if-eqz v1, :cond_0

    .line 309
    move-object v1, v0

    check-cast v1, Landroidx/slice/widget/GridRowView;

    return-object v1

    .line 311
    :cond_0
    new-instance v1, Landroidx/slice/widget/GridRowView;

    iget-object v3, p0, Landroidx/slice/widget/SliceAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, v2}, Landroidx/slice/widget/GridRowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v1
.end method

.method public getItemCount()I
    .locals 1

    .line 276
    iget-object v0, p0, Landroidx/slice/widget/SliceAdapter;->mSlices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 271
    iget-object v0, p0, Landroidx/slice/widget/SliceAdapter;->mSlices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/slice/widget/SliceAdapter$SliceWrapper;

    iget-wide v0, v0, Landroidx/slice/widget/SliceAdapter$SliceWrapper;->mId:J

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .line 266
    iget-object v0, p0, Landroidx/slice/widget/SliceAdapter;->mSlices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/slice/widget/SliceAdapter$SliceWrapper;

    iget v0, v0, Landroidx/slice/widget/SliceAdapter$SliceWrapper;->mType:I

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

    .line 218
    iget-object v0, p0, Landroidx/slice/widget/SliceAdapter;->mLoadingActions:Ljava/util/Set;

    return-object v0
.end method

.method public getRowView()Landroidx/slice/widget/RowView;
    .locals 2

    .line 319
    new-instance v0, Landroidx/slice/widget/RowView;

    iget-object v1, p0, Landroidx/slice/widget/SliceAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/slice/widget/RowView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public notifyHeaderChanged()V
    .locals 1

    .line 248
    invoke-virtual {p0}, Landroidx/slice/widget/SliceAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 249
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/slice/widget/SliceAdapter;->notifyItemChanged(I)V

    .line 251
    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 50
    check-cast p1, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;

    invoke-virtual {p0, p1, p2}, Landroidx/slice/widget/SliceAdapter;->onBindViewHolder(Landroidx/slice/widget/SliceAdapter$SliceViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/slice/widget/SliceAdapter$SliceViewHolder;I)V
    .locals 2
    .param p1, "holder"    # Landroidx/slice/widget/SliceAdapter$SliceViewHolder;
    .param p2, "position"    # I

    .line 284
    iget-object v0, p0, Landroidx/slice/widget/SliceAdapter;->mSlices:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/slice/widget/SliceAdapter$SliceWrapper;

    .line 285
    .local v0, "slice":Landroidx/slice/widget/SliceAdapter$SliceWrapper;
    iget-object v1, v0, Landroidx/slice/widget/SliceAdapter$SliceWrapper;->mItem:Landroidx/slice/widget/SliceContent;

    invoke-virtual {p1, v1, p2}, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->bind(Landroidx/slice/widget/SliceContent;I)V

    .line 286
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 50
    invoke-virtual {p0, p1, p2}, Landroidx/slice/widget/SliceAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/slice/widget/SliceAdapter$SliceViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/slice/widget/SliceAdapter$SliceViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 259
    invoke-direct {p0, p2}, Landroidx/slice/widget/SliceAdapter;->inflateForType(I)Landroid/view/View;

    move-result-object v0

    .line 260
    .local v0, "v":Landroid/view/View;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    new-instance v1, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;

    invoke-direct {v1, p0, v0}, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;-><init>(Landroidx/slice/widget/SliceAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public onSliceActionLoading(Landroidx/slice/SliceItem;I)V
    .locals 1
    .param p1, "actionItem"    # Landroidx/slice/SliceItem;
    .param p2, "position"    # I

    .line 226
    iget-object v0, p0, Landroidx/slice/widget/SliceAdapter;->mLoadingActions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 227
    invoke-virtual {p0}, Landroidx/slice/widget/SliceAdapter;->getItemCount()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 228
    invoke-virtual {p0, p2}, Landroidx/slice/widget/SliceAdapter;->notifyItemChanged(I)V

    goto :goto_0

    .line 230
    :cond_0
    invoke-virtual {p0}, Landroidx/slice/widget/SliceAdapter;->notifyDataSetChanged()V

    .line 232
    :goto_0
    return-void
.end method

.method public setAllowTwoLines(Z)V
    .locals 0
    .param p1, "allowTwoLines"    # Z

    .line 239
    iput-boolean p1, p0, Landroidx/slice/widget/SliceAdapter;->mAllowTwoLines:Z

    .line 240
    invoke-virtual {p0}, Landroidx/slice/widget/SliceAdapter;->notifyHeaderChanged()V

    .line 241
    return-void
.end method

.method public setInsets(IIII)V
    .locals 0
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .line 119
    iput p1, p0, Landroidx/slice/widget/SliceAdapter;->mInsetStart:I

    .line 120
    iput p2, p0, Landroidx/slice/widget/SliceAdapter;->mInsetTop:I

    .line 121
    iput p3, p0, Landroidx/slice/widget/SliceAdapter;->mInsetEnd:I

    .line 122
    iput p4, p0, Landroidx/slice/widget/SliceAdapter;->mInsetBottom:I

    .line 123
    return-void
.end method

.method public setLastUpdated(J)V
    .locals 2
    .param p1, "lastUpdated"    # J

    .line 194
    iget-wide v0, p0, Landroidx/slice/widget/SliceAdapter;->mLastUpdated:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 195
    iput-wide p1, p0, Landroidx/slice/widget/SliceAdapter;->mLastUpdated:J

    .line 196
    invoke-virtual {p0}, Landroidx/slice/widget/SliceAdapter;->notifyHeaderChanged()V

    .line 198
    :cond_0
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

    .line 205
    .local p1, "actions":Ljava/util/Set;, "Ljava/util/Set<Landroidx/slice/SliceItem;>;"
    if-nez p1, :cond_0

    .line 206
    iget-object v0, p0, Landroidx/slice/widget/SliceAdapter;->mLoadingActions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    goto :goto_0

    .line 208
    :cond_0
    iput-object p1, p0, Landroidx/slice/widget/SliceAdapter;->mLoadingActions:Ljava/util/Set;

    .line 210
    :goto_0
    invoke-virtual {p0}, Landroidx/slice/widget/SliceAdapter;->notifyDataSetChanged()V

    .line 211
    return-void
.end method

.method public setParents(Landroidx/slice/widget/SliceView;Landroidx/slice/widget/TemplateView;)V
    .locals 0
    .param p1, "parent"    # Landroidx/slice/widget/SliceView;
    .param p2, "templateView"    # Landroidx/slice/widget/TemplateView;

    .line 108
    iput-object p1, p0, Landroidx/slice/widget/SliceAdapter;->mParent:Landroidx/slice/widget/SliceView;

    .line 109
    iput-object p2, p0, Landroidx/slice/widget/SliceAdapter;->mTemplateView:Landroidx/slice/widget/TemplateView;

    .line 110
    return-void
.end method

.method public setPolicy(Landroidx/slice/widget/SliceViewPolicy;)V
    .locals 0
    .param p1, "p"    # Landroidx/slice/widget/SliceViewPolicy;

    .line 175
    iput-object p1, p0, Landroidx/slice/widget/SliceAdapter;->mPolicy:Landroidx/slice/widget/SliceViewPolicy;

    .line 176
    return-void
.end method

.method public setShowLastUpdated(Z)V
    .locals 1
    .param p1, "showLastUpdated"    # Z

    .line 183
    iget-boolean v0, p0, Landroidx/slice/widget/SliceAdapter;->mShowLastUpdated:Z

    if-eq v0, p1, :cond_0

    .line 184
    iput-boolean p1, p0, Landroidx/slice/widget/SliceAdapter;->mShowLastUpdated:Z

    .line 185
    invoke-virtual {p0}, Landroidx/slice/widget/SliceAdapter;->notifyHeaderChanged()V

    .line 187
    :cond_0
    return-void
.end method

.method public setSliceActions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;)V"
        }
    .end annotation

    .line 138
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/core/SliceAction;>;"
    iput-object p1, p0, Landroidx/slice/widget/SliceAdapter;->mSliceActions:Ljava/util/List;

    .line 139
    invoke-virtual {p0}, Landroidx/slice/widget/SliceAdapter;->notifyHeaderChanged()V

    .line 140
    return-void
.end method

.method public setSliceItems(Ljava/util/List;II)V
    .locals 5
    .param p2, "color"    # I
    .param p3, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/slice/widget/SliceContent;",
            ">;II)V"
        }
    .end annotation

    .line 147
    .local p1, "slices":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/widget/SliceContent;>;"
    if-nez p1, :cond_0

    .line 148
    iget-object v0, p0, Landroidx/slice/widget/SliceAdapter;->mLoadingActions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 149
    iget-object v0, p0, Landroidx/slice/widget/SliceAdapter;->mSlices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 151
    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/SliceAdapter;->mIdGen:Landroidx/slice/widget/SliceAdapter$IdGenerator;

    invoke-virtual {v0}, Landroidx/slice/widget/SliceAdapter$IdGenerator;->resetUsage()V

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/slice/widget/SliceAdapter;->mSlices:Ljava/util/List;

    .line 153
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/slice/widget/SliceContent;

    .line 154
    .local v1, "s":Landroidx/slice/widget/SliceContent;
    iget-object v2, p0, Landroidx/slice/widget/SliceAdapter;->mSlices:Ljava/util/List;

    new-instance v3, Landroidx/slice/widget/SliceAdapter$SliceWrapper;

    iget-object v4, p0, Landroidx/slice/widget/SliceAdapter;->mIdGen:Landroidx/slice/widget/SliceAdapter$IdGenerator;

    invoke-direct {v3, v1, v4, p3}, Landroidx/slice/widget/SliceAdapter$SliceWrapper;-><init>(Landroidx/slice/widget/SliceContent;Landroidx/slice/widget/SliceAdapter$IdGenerator;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    .end local v1    # "s":Landroidx/slice/widget/SliceContent;
    goto :goto_0

    .line 157
    :cond_1
    :goto_1
    iput p2, p0, Landroidx/slice/widget/SliceAdapter;->mTintColor:I

    .line 158
    invoke-virtual {p0}, Landroidx/slice/widget/SliceAdapter;->notifyDataSetChanged()V

    .line 159
    return-void
.end method

.method public setSliceObserver(Landroidx/slice/widget/SliceView$OnSliceActionListener;)V
    .locals 0
    .param p1, "observer"    # Landroidx/slice/widget/SliceView$OnSliceActionListener;

    .line 130
    iput-object p1, p0, Landroidx/slice/widget/SliceAdapter;->mSliceObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    .line 131
    return-void
.end method

.method public setStyle(Landroidx/slice/widget/SliceStyle;)V
    .locals 0
    .param p1, "style"    # Landroidx/slice/widget/SliceStyle;

    .line 166
    iput-object p1, p0, Landroidx/slice/widget/SliceAdapter;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    .line 167
    invoke-virtual {p0}, Landroidx/slice/widget/SliceAdapter;->notifyDataSetChanged()V

    .line 168
    return-void
.end method
