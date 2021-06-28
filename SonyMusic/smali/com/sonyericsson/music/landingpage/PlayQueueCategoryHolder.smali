.class Lcom/sonyericsson/music/landingpage/PlayQueueCategoryHolder;
.super Lcom/sonyericsson/music/landingpage/CategoryWithTitleViewHolder;
.source "PlayQueueCategoryHolder.java"


# instance fields
.field private final mPlayQueueItems:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/landingpage/CategoryWithTitleViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f09018e

    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/PlayQueueCategoryHolder;->mPlayQueueItems:Landroidx/recyclerview/widget/RecyclerView;

    .line 27
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/PlayQueueCategoryHolder;->mPlayQueueItems:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 28
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/PlayQueueCategoryHolder;->mPlayQueueItems:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    return-void
.end method


# virtual methods
.method public getPlayQueueItemsView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/PlayQueueCategoryHolder;->mPlayQueueItems:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method
