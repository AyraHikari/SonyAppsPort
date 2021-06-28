.class Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItemCategory;
.super Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItem;
.source "LandingPageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/landingpage/LandingPageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LandingPageAdapterItemCategory"
.end annotation


# instance fields
.field private mCategory:Lcom/sonyericsson/music/landingpage/LandingPageCategory;

.field final synthetic this$0:Lcom/sonyericsson/music/landingpage/LandingPageAdapter;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/landingpage/LandingPageAdapter;ILcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/artdecoder/ArtDecoder;Landroid/database/Cursor;Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;Z)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    .line 693
    iput-object v1, v0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItemCategory;->this$0:Lcom/sonyericsson/music/landingpage/LandingPageAdapter;

    move-object/from16 v3, p6

    .line 694
    invoke-direct {p0, p1, v2, v3}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItem;-><init>(Lcom/sonyericsson/music/landingpage/LandingPageAdapter;ILandroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 706
    :pswitch_0
    new-instance v7, Lcom/sonyericsson/music/landingpage/LandingPageNewlyAddedCategory;

    const/4 v5, 0x1

    move-object v1, v7

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/music/landingpage/LandingPageNewlyAddedCategory;-><init>(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/artdecoder/ArtDecoder;Landroid/database/Cursor;ZLcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)V

    iput-object v7, v0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItemCategory;->mCategory:Lcom/sonyericsson/music/landingpage/LandingPageCategory;

    goto :goto_0

    .line 702
    :pswitch_1
    new-instance v1, Lcom/sonyericsson/music/landingpage/LandingPageRecentlyPlayedCategory;

    const/4 v12, 0x0

    move-object v8, v1

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v13, p7

    invoke-direct/range {v8 .. v13}, Lcom/sonyericsson/music/landingpage/LandingPageRecentlyPlayedCategory;-><init>(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/artdecoder/ArtDecoder;Landroid/database/Cursor;ZLcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)V

    iput-object v1, v0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItemCategory;->mCategory:Lcom/sonyericsson/music/landingpage/LandingPageCategory;

    goto :goto_0

    .line 698
    :pswitch_2
    new-instance v1, Lcom/sonyericsson/music/landingpage/LandingPagePlayQueueCategory;

    move-object v2, v1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/music/landingpage/LandingPagePlayQueueCategory;-><init>(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/artdecoder/ArtDecoder;Landroid/database/Cursor;Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;Z)V

    iput-object v1, v0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItemCategory;->mCategory:Lcom/sonyericsson/music/landingpage/LandingPageCategory;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public deinit()V
    .locals 1

    .line 734
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItemCategory;->mCategory:Lcom/sonyericsson/music/landingpage/LandingPageCategory;

    if-eqz v0, :cond_0

    .line 735
    invoke-virtual {v0}, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->deinit()V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    .line 741
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItemCategory;->mCategory:Lcom/sonyericsson/music/landingpage/LandingPageCategory;

    if-eqz v0, :cond_0

    .line 742
    invoke-virtual {v0}, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->destroy()V

    :cond_0
    return-void
.end method

.method public getCurrentData()Landroid/database/Cursor;
    .locals 1

    .line 781
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItemCategory;->mCategory:Lcom/sonyericsson/music/landingpage/LandingPageCategory;

    if-eqz v0, :cond_0

    .line 782
    invoke-virtual {v0}, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->getCurrentData()Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public init(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3

    .line 727
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItemCategory;->mCategory:Lcom/sonyericsson/music/landingpage/LandingPageCategory;

    if-eqz v0, :cond_0

    .line 728
    invoke-virtual {p0}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItem;->getRecyclerViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItem;->getTotalAvailableWidth()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->init(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;I)V

    :cond_0
    return-void
.end method

.method public notifyParentFragmentLifecycleChange(Lcom/sonyericsson/music/landingpage/LandingPageFragmentLifecycleStateChange$LifecycleState;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 774
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItemCategory;->mCategory:Lcom/sonyericsson/music/landingpage/LandingPageCategory;

    if-eqz v0, :cond_0

    .line 775
    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->notifyParentFragmentLifecycleChange(Lcom/sonyericsson/music/landingpage/LandingPageFragmentLifecycleStateChange$LifecycleState;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method

.method resetViewHolderData(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 748
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItemCategory;->mCategory:Lcom/sonyericsson/music/landingpage/LandingPageCategory;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 749
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->resetViewHolderData(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method

.method setNowPlayingInfo(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)V
    .locals 1

    .line 755
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItemCategory;->mCategory:Lcom/sonyericsson/music/landingpage/LandingPageCategory;

    if-eqz v0, :cond_0

    .line 756
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->setNowPlayingInfo(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)V

    :cond_0
    return-void
.end method

.method setViewHolderData(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 714
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItemCategory;->mCategory:Lcom/sonyericsson/music/landingpage/LandingPageCategory;

    if-eqz v0, :cond_0

    .line 715
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->setViewHolderData(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 719
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItemCategory;->mCategory:Lcom/sonyericsson/music/landingpage/LandingPageCategory;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->shouldReinitialize(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItemCategory;->this$0:Lcom/sonyericsson/music/landingpage/LandingPageAdapter;

    invoke-static {v0, p0, p1}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->access$200(Lcom/sonyericsson/music/landingpage/LandingPageAdapter;Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItemCategory;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method

.method swapData(Ljava/lang/Object;)V
    .locals 2

    .line 762
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItemCategory;->mCategory:Lcom/sonyericsson/music/landingpage/LandingPageCategory;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 763
    instance-of v1, p1, Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 764
    check-cast p1, Landroid/database/Cursor;

    .line 765
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->swapCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 767
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItemCategory;->mCategory:Lcom/sonyericsson/music/landingpage/LandingPageCategory;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->swapCursor(Landroid/database/Cursor;)V

    :cond_1
    :goto_0
    return-void
.end method
