.class public Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CustomizeMyLibraryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$ItemHolder;,
        Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$CustomizeMyLibraryListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDragHandle:Landroid/graphics/drawable/Drawable;

.field final mListener:Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$CustomizeMyLibraryListener;

.field private mPageContainers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/library/Page$PageContainer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$CustomizeMyLibraryListener;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter;->mListener:Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$CustomizeMyLibraryListener;

    const p2, 0x7f080082

    .line 52
    invoke-static {p1, p2}, Lcom/sonyericsson/music/common/UIUtils;->getTintedDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter;->mDragHandle:Landroid/graphics/drawable/Drawable;

    .line 53
    invoke-static {p1}, Lcom/sonyericsson/music/library/Page;->getPageContainers(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter;->mPageContainers:Ljava/util/List;

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter;)I
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter;->getNbrOfSelectedPageContainers()I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter;)Landroid/content/Context;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter;)Ljava/util/List;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter;->mPageContainers:Ljava/util/List;

    return-object p0
.end method

.method private getNbrOfSelectedPageContainers()I
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter;->mPageContainers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/music/library/Page$PageContainer;

    .line 115
    iget-boolean v2, v2, Lcom/sonyericsson/music/library/Page$PageContainer;->mIsEnabled:Z

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter;->mPageContainers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 94
    check-cast p1, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$ItemHolder;

    .line 95
    iget-object v0, p0, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter;->mPageContainers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/music/library/Page$PageContainer;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$ItemHolder;->bindViewHolder(Lcom/sonyericsson/music/library/Page$PageContainer;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 63
    new-instance p2, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$ItemHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c005f

    const/4 v2, 0x0

    .line 64
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter;->mDragHandle:Landroid/graphics/drawable/Drawable;

    invoke-direct {p2, p1, v0}, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$ItemHolder;-><init>(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 66
    invoke-static {p2}, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$ItemHolder;->access$000(Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$ItemHolder;)Landroid/widget/ImageView;

    move-result-object p1

    new-instance v0, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$1;-><init>(Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter;Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$ItemHolder;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 75
    invoke-static {p2}, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$ItemHolder;->access$100(Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$ItemHolder;)Landroid/widget/CheckedTextView;

    move-result-object p1

    new-instance v0, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$2;

    invoke-direct {v0, p0, p2}, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$2;-><init>(Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter;Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$ItemHolder;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method resetToDefault()V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/music/library/Page;->clearCustomizedMyLibraryPages(Landroid/content/Context;)V

    .line 107
    invoke-static {}, Lcom/sonyericsson/music/library/Page;->getDefaultPageContainers()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter;->mPageContainers:Ljava/util/List;

    .line 108
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 109
    iget-object v0, p0, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter;->mListener:Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$CustomizeMyLibraryListener;

    invoke-interface {v0}, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$CustomizeMyLibraryListener;->onChanged()V

    return-void
.end method

.method swapPosition(II)V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter;->mPageContainers:Ljava/util/List;

    invoke-static {v0, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 100
    iget-object v0, p0, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter;->mPageContainers:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/sonyericsson/music/library/Page;->customizePagesOrder(Landroid/content/Context;Ljava/util/List;)V

    .line 101
    iget-object v0, p0, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter;->mListener:Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$CustomizeMyLibraryListener;

    invoke-interface {v0}, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$CustomizeMyLibraryListener;->onChanged()V

    .line 102
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    return-void
.end method
