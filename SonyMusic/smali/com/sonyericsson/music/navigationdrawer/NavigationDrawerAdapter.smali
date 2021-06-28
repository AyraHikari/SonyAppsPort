.class public Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "NavigationDrawerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter$NavigationMenuItemListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field static final NO_POSITION:I = -0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mHighlightPosition:I

.field private mListener:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter$NavigationMenuItemListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;->mData:Ljava/util/List;

    const/4 v0, -0x1

    .line 34
    iput v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;->mHighlightPosition:I

    .line 41
    iput-object p1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private inflate(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 2

    .line 67
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private isValid(I)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private updateListItemAtPosition(I)V
    .locals 1

    .line 149
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;->getItem(I)Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0}, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;->getType()I

    move-result v0

    if-nez v0, :cond_0

    .line 151
    sget-object v0, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$MenuListItemVH$MenuListItemVHPayloads;->SET_HIGHLIGHT:Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$MenuListItemVH$MenuListItemVHPayloads;

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method getItem(I)Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;
    .locals 1

    .line 156
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;->isValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 117
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;->getItem(I)Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {p1}, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;->getStableId()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 109
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;->isValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;

    invoke-virtual {p1}, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;->getType()I

    move-result p1

    return p1

    .line 112
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method getPositionOfFragment(Ljava/lang/String;)I
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;

    .line 165
    invoke-virtual {v2}, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;->getMenuItemTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p0, p1, p2, v0}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 77
    invoke-virtual {p0, p2}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;->getItem(I)Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 79
    invoke-virtual {v0}, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;->getType()I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 81
    :cond_0
    move-object v2, p1

    check-cast v2, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$MenuListItemVH;

    iget-object v3, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;->mContext:Landroid/content/Context;

    move-object v4, v0

    check-cast v4, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem;

    iget-object v5, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;->mListener:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter$NavigationMenuItemListener;

    iget p1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;->mHighlightPosition:I

    if-ne p2, p1, :cond_1

    const/4 p1, 0x1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    const/4 v7, 0x0

    :goto_0
    move-object v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$MenuListItemVH;->bindView(Landroid/content/Context;Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem;Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter$NavigationMenuItemListener;Ljava/util/List;Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    packed-switch p2, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 59
    :pswitch_0
    new-instance p2, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuTopItem$MenuTopItemVH;

    const v0, 0x7f0c0082

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;->inflate(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuTopItem$MenuTopItemVH;-><init>(Landroid/view/View;)V

    return-object p2

    .line 56
    :pswitch_1
    new-instance p2, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuDividerItem$MenuDividerItemVH;

    const v0, 0x7f0c0080

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;->inflate(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuDividerItem$MenuDividerItemVH;-><init>(Landroid/view/View;)V

    return-object p2

    .line 53
    :pswitch_2
    new-instance p2, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$MenuListItemVH;

    const v0, 0x7f0c0081

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;->inflate(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$MenuListItemVH;-><init>(Landroid/view/View;)V

    return-object p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 96
    instance-of v0, p1, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem$MenuItemVH;

    if-eqz v0, :cond_0

    .line 97
    check-cast p1, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem$MenuItemVH;

    .line 98
    iget-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem$MenuItemVH;->recycleView(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method setListener(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter$NavigationMenuItemListener;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;->mListener:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter$NavigationMenuItemListener;

    return-void
.end method

.method swapData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 132
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;->swapData(Ljava/util/List;Z)V

    return-void
.end method

.method swapData(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 125
    iget p2, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;->mHighlightPosition:I

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    :goto_0
    iput p2, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;->mHighlightPosition:I

    .line 126
    iget-object p2, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;->mData:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 127
    iget-object p2, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;->mData:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 128
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method updateListItemHighlight(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 138
    iput v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;->mHighlightPosition:I

    .line 139
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 141
    :cond_0
    iget v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;->mHighlightPosition:I

    .line 142
    iput p1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;->mHighlightPosition:I

    .line 143
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;->updateListItemAtPosition(I)V

    .line 144
    iget p1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;->mHighlightPosition:I

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;->updateListItemAtPosition(I)V

    :goto_0
    return-void
.end method
