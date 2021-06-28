.class Lcom/sonyericsson/music/landingpage/LandingPageFragment$2;
.super Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;
.source "LandingPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/landingpage/LandingPageFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/landingpage/LandingPageFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/landingpage/LandingPageFragment;II)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$2;->this$0:Lcom/sonyericsson/music/landingpage/LandingPageFragment;

    invoke-direct {p0, p2, p3}, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;-><init>(II)V

    return-void
.end method


# virtual methods
.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 3

    .line 271
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$2;->this$0:Lcom/sonyericsson/music/landingpage/LandingPageFragment;

    iget-object v0, v0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mAdapter:Lcom/sonyericsson/music/landingpage/LandingPageAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 272
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->isCardViewType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;->getSwipeDirs(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result p1

    invoke-static {v1, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    return p1

    .line 275
    :cond_0
    invoke-static {v1, v1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    return p1
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 260
    iget-object p2, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$2;->this$0:Lcom/sonyericsson/music/landingpage/LandingPageFragment;

    iget-object p2, p2, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mAdapter:Lcom/sonyericsson/music/landingpage/LandingPageAdapter;

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 261
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->isCardViewType(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 265
    iget-object p2, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$2;->this$0:Lcom/sonyericsson/music/landingpage/LandingPageFragment;

    iget-object p2, p2, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mAdapter:Lcom/sonyericsson/music/landingpage/LandingPageAdapter;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->dismissCard(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method
