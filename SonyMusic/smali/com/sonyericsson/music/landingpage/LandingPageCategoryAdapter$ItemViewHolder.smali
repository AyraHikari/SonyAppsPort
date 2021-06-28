.class Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "LandingPageCategoryAdapter.java"

# interfaces
.implements Lcom/sonyericsson/music/ui/LandingPageItemView$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ItemViewHolder"
.end annotation


# instance fields
.field private mClickListenerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mItem:Lcom/sonyericsson/music/ui/LandingPageItemView;

.field private mItemData:Lcom/sonyericsson/music/landingpage/LandingPageItemData;


# direct methods
.method constructor <init>(Landroid/view/View;I)V
    .locals 2

    .line 526
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    const v0, 0x7f0900ed

    .line 529
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 530
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 531
    iput p2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 532
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 535
    :cond_0
    check-cast p1, Lcom/sonyericsson/music/ui/LandingPageItemView;

    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;->mItem:Lcom/sonyericsson/music/ui/LandingPageItemView;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;)Lcom/sonyericsson/music/ui/LandingPageItemView;
    .locals 0

    .line 518
    iget-object p0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;->mItem:Lcom/sonyericsson/music/ui/LandingPageItemView;

    return-object p0
.end method


# virtual methods
.method public onContextMenuClicked(Landroid/view/View;)V
    .locals 0

    .line 606
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;->onItemLongPressed(Landroid/view/View;)V

    return-void
.end method

.method public onItemClicked(Landroid/view/View;)V
    .locals 1

    .line 596
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;->mClickListenerRef:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    .line 597
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryClickListener;

    if-eqz p1, :cond_0

    .line 598
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;->mItemData:Lcom/sonyericsson/music/landingpage/LandingPageItemData;

    invoke-virtual {v0}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->getContainerUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;->mItemData:Lcom/sonyericsson/music/landingpage/LandingPageItemData;

    invoke-interface {p1, v0}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryClickListener;->onCategoryItemClick(Lcom/sonyericsson/music/landingpage/LandingPageItemData;)V

    :cond_0
    return-void
.end method

.method public onItemLongPressed(Landroid/view/View;)V
    .locals 2

    .line 611
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;->mClickListenerRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 612
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryClickListener;

    if-eqz v0, :cond_0

    .line 613
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;->mItemData:Lcom/sonyericsson/music/landingpage/LandingPageItemData;

    invoke-virtual {v1}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->getContainerUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 614
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;->mItemData:Lcom/sonyericsson/music/landingpage/LandingPageItemData;

    invoke-interface {v0, p1, v1}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryClickListener;->onCategoryItemLongClick(Landroid/view/View;Lcom/sonyericsson/music/landingpage/LandingPageItemData;)V

    :cond_0
    return-void
.end method

.method resetItemViewHolder()V
    .locals 3

    .line 547
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;->mItem:Lcom/sonyericsson/music/ui/LandingPageItemView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/ui/LandingPageItemView;->setClickListener(Lcom/sonyericsson/music/ui/LandingPageItemView$OnClickListener;)V

    .line 548
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;->mClickListenerRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 549
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 551
    :cond_0
    iput-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;->mClickListenerRef:Ljava/lang/ref/WeakReference;

    .line 553
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;->mItem:Lcom/sonyericsson/music/ui/LandingPageItemView;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/ui/LandingPageItemView;->setAlbumArt(Landroid/graphics/Bitmap;)V

    .line 554
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;->mItem:Lcom/sonyericsson/music/ui/LandingPageItemView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 555
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;->mItem:Lcom/sonyericsson/music/ui/LandingPageItemView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/sonyericsson/music/ui/LandingPageItemView;->setTitle(Ljava/lang/String;)V

    .line 556
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;->mItem:Lcom/sonyericsson/music/ui/LandingPageItemView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/sonyericsson/music/ui/LandingPageItemView;->setSubtitle(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 558
    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;->setHDAudioVisibility(Z)V

    .line 559
    invoke-virtual {p0, v1}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;->setNowPlaying(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;)V

    return-void
.end method

.method setHDAudioVisibility(Z)V
    .locals 1

    .line 571
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;->mItem:Lcom/sonyericsson/music/ui/LandingPageItemView;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/ui/LandingPageItemView;->setShowHiResBadge(Z)V

    return-void
.end method

.method setItemData(Lcom/sonyericsson/music/landingpage/LandingPageItemData;)V
    .locals 0

    .line 591
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;->mItemData:Lcom/sonyericsson/music/landingpage/LandingPageItemData;

    return-void
.end method

.method setItemViewClickListener(Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryClickListener;)V
    .locals 1

    .line 539
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;->mItem:Lcom/sonyericsson/music/ui/LandingPageItemView;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/music/ui/LandingPageItemView;->setClickListener(Lcom/sonyericsson/music/ui/LandingPageItemView$OnClickListener;)V

    .line 540
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;->mClickListenerRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 541
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 543
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;->mClickListenerRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method setNowPlaying(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;)V
    .locals 1

    if-eqz p1, :cond_3

    .line 576
    invoke-virtual {p1}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;->isInLoadingState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;->mItem:Lcom/sonyericsson/music/ui/LandingPageItemView;

    sget-object v0, Lcom/sonyericsson/music/ui/LandingPageItemView$State;->LOADING:Lcom/sonyericsson/music/ui/LandingPageItemView$State;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/ui/LandingPageItemView;->setPlayingState(Lcom/sonyericsson/music/ui/LandingPageItemView$State;)V

    goto :goto_0

    .line 578
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;->isInPlayingState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 579
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;->mItem:Lcom/sonyericsson/music/ui/LandingPageItemView;

    sget-object v0, Lcom/sonyericsson/music/ui/LandingPageItemView$State;->PLAYING:Lcom/sonyericsson/music/ui/LandingPageItemView$State;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/ui/LandingPageItemView;->setPlayingState(Lcom/sonyericsson/music/ui/LandingPageItemView$State;)V

    goto :goto_0

    .line 580
    :cond_1
    invoke-virtual {p1}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;->isInPausedState()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 581
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;->mItem:Lcom/sonyericsson/music/ui/LandingPageItemView;

    sget-object v0, Lcom/sonyericsson/music/ui/LandingPageItemView$State;->PAUSED:Lcom/sonyericsson/music/ui/LandingPageItemView$State;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/ui/LandingPageItemView;->setPlayingState(Lcom/sonyericsson/music/ui/LandingPageItemView$State;)V

    goto :goto_0

    .line 583
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;->mItem:Lcom/sonyericsson/music/ui/LandingPageItemView;

    sget-object v0, Lcom/sonyericsson/music/ui/LandingPageItemView$State;->IDLE:Lcom/sonyericsson/music/ui/LandingPageItemView$State;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/ui/LandingPageItemView;->setPlayingState(Lcom/sonyericsson/music/ui/LandingPageItemView$State;)V

    goto :goto_0

    .line 586
    :cond_3
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;->mItem:Lcom/sonyericsson/music/ui/LandingPageItemView;

    sget-object v0, Lcom/sonyericsson/music/ui/LandingPageItemView$State;->IDLE:Lcom/sonyericsson/music/ui/LandingPageItemView$State;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/ui/LandingPageItemView;->setPlayingState(Lcom/sonyericsson/music/ui/LandingPageItemView$State;)V

    :goto_0
    return-void
.end method

.method setSubTitle(Ljava/lang/String;)V
    .locals 1

    .line 567
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;->mItem:Lcom/sonyericsson/music/ui/LandingPageItemView;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/ui/LandingPageItemView;->setSubtitle(Ljava/lang/String;)V

    return-void
.end method

.method setTitle(Ljava/lang/String;)V
    .locals 1

    .line 563
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;->mItem:Lcom/sonyericsson/music/ui/LandingPageItemView;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/ui/LandingPageItemView;->setTitle(Ljava/lang/String;)V

    return-void
.end method
