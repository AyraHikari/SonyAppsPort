.class Lcom/sonyericsson/music/landingpage/LandingPagePlayQueueCategory;
.super Lcom/sonyericsson/music/landingpage/LandingPageCategory;
.source "LandingPagePlayQueueCategory.java"

# interfaces
.implements Lcom/sonyericsson/music/MusicActivity$ArtResetListener;


# static fields
.field private static final PLAYQUEUE_CATEGORY_RETAIN_LAYOUT_MANAGER_STATE:Ljava/lang/String; = "playqueue_category_retain_layout_manager_state"

.field public static final PLAYQUEUE_CATEGORY_RETAIN_POSITION:Ljava/lang/String; = "playqueue_category_retain_position"


# instance fields
.field private mAllowScrolling:Z

.field private mItemDecoration:Lcom/sonyericsson/music/ui/GridItemSpacingDecoration;

.field private mLayoutManager:Lcom/sonyericsson/music/landingpage/PlayqueueLinearLayoutManager;

.field private mLayoutManagerStateRetained:Z

.field private mNowPlayingInfo:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;

.field private final mOrientationchange:Z

.field private mPQItems:Landroidx/recyclerview/widget/RecyclerView;

.field private mTrackStartedFromPlayqueueUI:Z


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/artdecoder/ArtDecoder;Landroid/database/Cursor;Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;Z)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p3}, Lcom/sonyericsson/music/landingpage/LandingPageCategory;-><init>(Lcom/sonyericsson/music/MusicActivity;Landroid/database/Cursor;)V

    .line 64
    iput-object p4, p0, Lcom/sonyericsson/music/landingpage/LandingPagePlayQueueCategory;->mNowPlayingInfo:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;

    .line 66
    new-instance p3, Lcom/sonyericsson/music/landingpage/PlayqueueCategoryAdapter;

    invoke-direct {p3, p1, p2, p0, p4}, Lcom/sonyericsson/music/landingpage/PlayqueueCategoryAdapter;-><init>(Landroid/content/Context;Lcom/sonyericsson/music/artdecoder/ArtDecoder;Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryClickListener;Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)V

    iput-object p3, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->mAdapter:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;

    .line 68
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {p1, p0}, Lcom/sonyericsson/music/MusicActivity;->addOnArtResetListener(Lcom/sonyericsson/music/MusicActivity$ArtResetListener;)Z

    .line 70
    iput-boolean p5, p0, Lcom/sonyericsson/music/landingpage/LandingPagePlayQueueCategory;->mOrientationchange:Z

    .line 72
    iget-boolean p1, p0, Lcom/sonyericsson/music/landingpage/LandingPagePlayQueueCategory;->mOrientationchange:Z

    if-nez p1, :cond_0

    .line 74
    invoke-static {}, Lcom/sonyericsson/music/RetainManager;->getInstance()Lcom/sonyericsson/music/RetainManager;

    move-result-object p1

    const-string p2, "playqueue_category_retain_layout_manager_state"

    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/RetainManager;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method deinit()V
    .locals 3

    .line 188
    invoke-super {p0}, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->deinit()V

    const/4 v0, 0x0

    .line 190
    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->swapCursor(Landroid/database/Cursor;)V

    .line 192
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPagePlayQueueCategory;->mPQItems:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    .line 193
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 195
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPagePlayQueueCategory;->mPQItems:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 197
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPagePlayQueueCategory;->mPQItems:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    .line 199
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPagePlayQueueCategory;->mPQItems:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/sonyericsson/music/landingpage/LandingPagePlayQueueCategory;->mItemDecoration:Lcom/sonyericsson/music/ui/GridItemSpacingDecoration;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 201
    iput-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPagePlayQueueCategory;->mPQItems:Landroidx/recyclerview/widget/RecyclerView;

    :cond_0
    return-void
.end method

.method destroy()V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/music/MusicActivity;->removeOnArtResetListener(Lcom/sonyericsson/music/MusicActivity$ArtResetListener;)V

    return-void
.end method

.method init(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;I)V
    .locals 0

    .line 125
    invoke-virtual {p0, p3}, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->provideAdapterWithPreLayoutValues(I)V

    .line 127
    instance-of p3, p1, Lcom/sonyericsson/music/landingpage/PlayQueueCategoryHolder;

    if-nez p3, :cond_0

    return-void

    .line 131
    :cond_0
    check-cast p1, Lcom/sonyericsson/music/landingpage/PlayQueueCategoryHolder;

    .line 133
    invoke-virtual {p1}, Lcom/sonyericsson/music/landingpage/PlayQueueCategoryHolder;->getPlayQueueItemsView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPagePlayQueueCategory;->mPQItems:Landroidx/recyclerview/widget/RecyclerView;

    .line 135
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPagePlayQueueCategory;->mPQItems:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    .line 137
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPagePlayQueueCategory;->mPQItems:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->mAdapter:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 139
    new-instance p1, Lcom/sonyericsson/music/ui/GridItemSpacingDecoration;

    invoke-virtual {p0}, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->getGridSpacing()I

    move-result p2

    iget-object p3, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    .line 140
    invoke-static {p3}, Lcom/sonyericsson/music/common/UIUtils;->isRTL(Landroid/content/Context;)Z

    move-result p3

    invoke-direct {p1, p2, p3}, Lcom/sonyericsson/music/ui/GridItemSpacingDecoration;-><init>(IZ)V

    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPagePlayQueueCategory;->mItemDecoration:Lcom/sonyericsson/music/ui/GridItemSpacingDecoration;

    .line 141
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPagePlayQueueCategory;->mPQItems:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/sonyericsson/music/landingpage/LandingPagePlayQueueCategory;->mItemDecoration:Lcom/sonyericsson/music/ui/GridItemSpacingDecoration;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 143
    new-instance p1, Lcom/sonyericsson/music/landingpage/PlayqueueLinearLayoutManager;

    iget-object p2, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3, p3}, Lcom/sonyericsson/music/landingpage/PlayqueueLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPagePlayQueueCategory;->mLayoutManager:Lcom/sonyericsson/music/landingpage/PlayqueueLinearLayoutManager;

    .line 147
    invoke-static {}, Lcom/sonyericsson/music/RetainManager;->getInstance()Lcom/sonyericsson/music/RetainManager;

    move-result-object p1

    const-string p2, "playqueue_category_retain_layout_manager_state"

    .line 148
    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/RetainManager;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;

    if-eqz p1, :cond_1

    .line 150
    iget-object p2, p0, Lcom/sonyericsson/music/landingpage/LandingPagePlayQueueCategory;->mLayoutManager:Lcom/sonyericsson/music/landingpage/PlayqueueLinearLayoutManager;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const/4 p1, 0x1

    .line 151
    iput-boolean p1, p0, Lcom/sonyericsson/music/landingpage/LandingPagePlayQueueCategory;->mLayoutManagerStateRetained:Z

    goto :goto_0

    .line 153
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPagePlayQueueCategory;->mNowPlayingInfo:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;

    if-eqz p1, :cond_2

    .line 154
    iget-object p2, p0, Lcom/sonyericsson/music/landingpage/LandingPagePlayQueueCategory;->mLayoutManager:Lcom/sonyericsson/music/landingpage/PlayqueueLinearLayoutManager;

    invoke-virtual {p1}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->getPlayQueuePosition()I

    move-result p1

    invoke-virtual {p2, p1, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_0

    .line 156
    :cond_2
    invoke-static {}, Lcom/sonyericsson/music/RetainManager;->getInstance()Lcom/sonyericsson/music/RetainManager;

    move-result-object p1

    const-string p2, "playqueue_category_retain_position"

    .line 157
    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/RetainManager;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_3

    .line 159
    iget-object p2, p0, Lcom/sonyericsson/music/landingpage/LandingPagePlayQueueCategory;->mLayoutManager:Lcom/sonyericsson/music/landingpage/PlayqueueLinearLayoutManager;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2, p1, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 164
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPagePlayQueueCategory;->mPQItems:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/sonyericsson/music/landingpage/LandingPagePlayQueueCategory;->mLayoutManager:Lcom/sonyericsson/music/landingpage/PlayqueueLinearLayoutManager;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 166
    invoke-virtual {p0}, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->swapInitialCursor()V

    return-void
.end method

.method public notifyParentFragmentLifecycleChange(Lcom/sonyericsson/music/landingpage/LandingPageFragmentLifecycleStateChange$LifecycleState;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3

    .line 81
    sget-object v0, Lcom/sonyericsson/music/landingpage/LandingPagePlayQueueCategory$2;->$SwitchMap$com$sonyericsson$music$landingpage$LandingPageFragmentLifecycleStateChange$LifecycleState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 90
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPagePlayQueueCategory;->mLayoutManager:Lcom/sonyericsson/music/landingpage/PlayqueueLinearLayoutManager;

    if-eqz v0, :cond_0

    .line 91
    invoke-static {}, Lcom/sonyericsson/music/RetainManager;->getInstance()Lcom/sonyericsson/music/RetainManager;

    move-result-object v0

    const-string v1, "playqueue_category_retain_layout_manager_state"

    iget-object v2, p0, Lcom/sonyericsson/music/landingpage/LandingPagePlayQueueCategory;->mLayoutManager:Lcom/sonyericsson/music/landingpage/PlayqueueLinearLayoutManager;

    .line 93
    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 92
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/music/RetainManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPagePlayQueueCategory;->mNowPlayingInfo:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;

    if-eqz v0, :cond_1

    .line 96
    invoke-static {}, Lcom/sonyericsson/music/RetainManager;->getInstance()Lcom/sonyericsson/music/RetainManager;

    move-result-object v0

    const-string v1, "playqueue_category_retain_position"

    iget-object v2, p0, Lcom/sonyericsson/music/landingpage/LandingPagePlayQueueCategory;->mNowPlayingInfo:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;

    .line 98
    invoke-virtual {v2}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->getPlayQueuePosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 97
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/music/RetainManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/music/MusicActivity;->removeOnArtResetListener(Lcom/sonyericsson/music/MusicActivity$ArtResetListener;)V

    goto :goto_0

    .line 83
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPagePlayQueueCategory;->mLayoutManager:Lcom/sonyericsson/music/landingpage/PlayqueueLinearLayoutManager;

    if-eqz v0, :cond_2

    .line 84
    invoke-static {}, Lcom/sonyericsson/music/RetainManager;->getInstance()Lcom/sonyericsson/music/RetainManager;

    move-result-object v0

    const-string v1, "playqueue_category_retain_layout_manager_state"

    iget-object v2, p0, Lcom/sonyericsson/music/landingpage/LandingPagePlayQueueCategory;->mLayoutManager:Lcom/sonyericsson/music/landingpage/PlayqueueLinearLayoutManager;

    .line 86
    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 85
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/music/RetainManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->notifyParentFragmentLifecycleChange(Lcom/sonyericsson/music/landingpage/LandingPageFragmentLifecycleStateChange$LifecycleState;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onArtReset(ZZ)V
    .locals 0

    .line 286
    iget-object p2, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->mAdapter:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 287
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onCategoryButtonClick()V
    .locals 5

    .line 226
    invoke-static {}, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->newInstance()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 227
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/music/MusicActivity;->getMusicFragmentManager()Lcom/sonyericsson/music/MusicFragmentManager;

    move-result-object v1

    const-string v2, "playqueue"

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 228
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/sonyericsson/music/MusicFragmentManager;->openFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public onCategoryItemClick(Lcom/sonyericsson/music/landingpage/LandingPageItemData;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 233
    invoke-virtual {p1}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->getCategoryItemType()Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->TRACK:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    if-ne v0, v1, :cond_0

    .line 235
    new-instance v0, Lcom/sonyericsson/music/common/OpenAndPlayConditions;

    invoke-direct {v0}, Lcom/sonyericsson/music/common/OpenAndPlayConditions;-><init>()V

    const/4 v1, 0x0

    .line 236
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/common/OpenAndPlayConditions;->setShuffle(Z)Lcom/sonyericsson/music/common/OpenAndPlayConditions;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->getItemViewPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/music/common/OpenAndPlayConditions;->setTracksPosition(I)Lcom/sonyericsson/music/common/OpenAndPlayConditions;

    .line 237
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {p1}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->getContainerUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lcom/sonyericsson/music/MusicActivity;->playPQTrack(Landroid/net/Uri;Lcom/sonyericsson/music/common/OpenAndPlayConditions;)V

    const/4 p1, 0x1

    .line 239
    iput-boolean p1, p0, Lcom/sonyericsson/music/landingpage/LandingPagePlayQueueCategory;->mTrackStartedFromPlayqueueUI:Z

    const-string p1, "landingpage/play_queue"

    .line 241
    sget-object v0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->TRACK:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->sendGoogleAnalyticsPlayEvent(Ljava/lang/String;Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;)V

    :cond_0
    return-void
.end method

.method public onCategoryItemLongClick(Landroid/view/View;Lcom/sonyericsson/music/landingpage/LandingPageItemData;)V
    .locals 10

    if-eqz p2, :cond_0

    .line 250
    invoke-virtual {p2}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->getContainerArtUri()Landroid/net/Uri;

    move-result-object v1

    .line 251
    invoke-virtual {p2}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->getContainerUri()Landroid/net/Uri;

    move-result-object v2

    .line 252
    invoke-virtual {p2}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->getArtistUri()Landroid/net/Uri;

    move-result-object v3

    .line 253
    invoke-virtual {p2}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->getAlbumUri()Landroid/net/Uri;

    move-result-object v4

    .line 254
    invoke-virtual {p2}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->getTrackName()Ljava/lang/String;

    move-result-object v5

    .line 255
    invoke-virtual {p2}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->getArtistName()Ljava/lang/String;

    move-result-object v6

    .line 256
    invoke-virtual {p2}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->getAlbumName()Ljava/lang/String;

    move-result-object v7

    .line 257
    invoke-static {v2}, Lcom/sonyericsson/music/common/DBUtils;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v8

    .line 259
    new-instance v9, Lcom/sonyericsson/music/common/MenuUtils$TrackData;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/sonyericsson/music/common/MenuUtils$TrackData;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 262
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    .line 263
    invoke-static {v0, v9}, Lcom/sonyericsson/music/common/MenuUtils;->getLandingpagePlayqueueTrackMenuBuilder(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/common/MenuUtils$TrackData;)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object v0

    .line 265
    new-instance v1, Landroid/widget/PopupMenu;

    iget-object v2, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-direct {v1, v2, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 266
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->build(Landroid/widget/PopupMenu;)V

    .line 267
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    .line 269
    new-instance p1, Lcom/sonyericsson/music/landingpage/LandingPagePlayQueueCategory$1;

    invoke-direct {p1, p0, v9, p2}, Lcom/sonyericsson/music/landingpage/LandingPagePlayQueueCategory$1;-><init>(Lcom/sonyericsson/music/landingpage/LandingPagePlayQueueCategory;Lcom/sonyericsson/music/common/MenuUtils$TrackData;Lcom/sonyericsson/music/landingpage/LandingPageItemData;)V

    invoke-virtual {v1, p1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    :cond_0
    return-void
.end method

.method resetViewHolderData(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 213
    instance-of v0, p1, Lcom/sonyericsson/music/landingpage/PlayQueueCategoryHolder;

    if-eqz v0, :cond_0

    .line 214
    check-cast p1, Lcom/sonyericsson/music/landingpage/PlayQueueCategoryHolder;

    .line 215
    invoke-virtual {p1}, Lcom/sonyericsson/music/landingpage/CategoryWithTitleViewHolder;->resetTitleColorAnimation()V

    .line 216
    invoke-virtual {p1}, Lcom/sonyericsson/music/landingpage/CategoryWithTitleViewHolder;->removeCategoryButtonListener()V

    .line 218
    invoke-virtual {p1}, Lcom/sonyericsson/music/landingpage/PlayQueueCategoryHolder;->getPlayQueueItemsView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/4 v0, 0x0

    .line 219
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_0
    return-void
.end method

.method setNowPlayingInfo(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)V
    .locals 6

    if-eqz p1, :cond_2

    .line 294
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPagePlayQueueCategory;->mNowPlayingInfo:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;

    if-eqz v0, :cond_2

    .line 295
    invoke-virtual {p1}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->getPlayQueuePosition()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPagePlayQueueCategory;->mNowPlayingInfo:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;

    invoke-virtual {v1}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->getPlayQueuePosition()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 296
    invoke-virtual {p1}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->getTrackUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {p1}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->getTrackUri()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPagePlayQueueCategory;->mNowPlayingInfo:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;

    invoke-virtual {v1}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->getTrackUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->getSourceUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 299
    invoke-virtual {p1}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->getSourceUri()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPagePlayQueueCategory;->mNowPlayingInfo:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;

    invoke-virtual {v1}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->getSourceUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 300
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/music/landingpage/LandingPagePlayQueueCategory;->mTrackStartedFromPlayqueueUI:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/music/landingpage/LandingPagePlayQueueCategory;->mAllowScrolling:Z

    .line 305
    :cond_2
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPagePlayQueueCategory;->mNowPlayingInfo:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;

    .line 307
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPagePlayQueueCategory;->mLayoutManager:Lcom/sonyericsson/music/landingpage/PlayqueueLinearLayoutManager;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPagePlayQueueCategory;->mPQItems:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_4

    .line 308
    iget-boolean v1, p0, Lcom/sonyericsson/music/landingpage/LandingPagePlayQueueCategory;->mAllowScrolling:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/sonyericsson/music/landingpage/LandingPagePlayQueueCategory;->mLayoutManagerStateRetained:Z

    if-nez v1, :cond_3

    if-eqz p1, :cond_3

    .line 309
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 310
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPagePlayQueueCategory;->mLayoutManager:Lcom/sonyericsson/music/landingpage/PlayqueueLinearLayoutManager;

    iget-object v3, p0, Lcom/sonyericsson/music/landingpage/LandingPagePlayQueueCategory;->mPQItems:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->getPlayQueuePosition()I

    move-result v4

    .line 311
    invoke-virtual {p0}, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->getColumnCount()I

    move-result v5

    .line 310
    invoke-virtual {v1, v3, v4, v0, v5}, Lcom/sonyericsson/music/landingpage/PlayqueueLinearLayoutManager;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;III)V

    .line 312
    iput-boolean v2, p0, Lcom/sonyericsson/music/landingpage/LandingPagePlayQueueCategory;->mAllowScrolling:Z

    .line 315
    :cond_3
    iput-boolean v2, p0, Lcom/sonyericsson/music/landingpage/LandingPagePlayQueueCategory;->mTrackStartedFromPlayqueueUI:Z

    .line 316
    iput-boolean v2, p0, Lcom/sonyericsson/music/landingpage/LandingPagePlayQueueCategory;->mLayoutManagerStateRetained:Z

    .line 319
    :cond_4
    invoke-super {p0, p1}, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->setNowPlayingInfo(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)V

    return-void
.end method

.method setViewHolderData(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 4

    .line 171
    instance-of v0, p1, Lcom/sonyericsson/music/landingpage/PlayQueueCategoryHolder;

    if-eqz v0, :cond_1

    .line 172
    move-object v0, p1

    check-cast v0, Lcom/sonyericsson/music/landingpage/PlayQueueCategoryHolder;

    .line 174
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 175
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v0, p1, v1, v2, v2}, Lcom/sonyericsson/music/landingpage/CategoryWithTitleViewHolder;->setCategoryTitleColor(Landroid/content/Context;ZZZ)V

    goto :goto_0

    .line 177
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-static {p1}, Lcom/sonyericsson/music/common/UIUtils;->isUseDarkTheme(Landroid/content/Context;)Z

    move-result v3

    xor-int/2addr v2, v3

    invoke-virtual {v0, p1, v2, v1}, Lcom/sonyericsson/music/landingpage/CategoryWithTitleViewHolder;->setCategoryTitleColor(Landroid/content/Context;ZZ)V

    .line 180
    :goto_0
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    const v1, 0x7f10016f

    .line 181
    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 180
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/landingpage/CategoryWithTitleViewHolder;->setCategoryTitle(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v0, p0}, Lcom/sonyericsson/music/landingpage/CategoryWithTitleViewHolder;->enableCategoryButton(Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryClickListener;)V

    :cond_1
    return-void
.end method

.method shouldReinitialize(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 114
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPagePlayQueueCategory;->mPQItems:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_1

    instance-of v1, p1, Lcom/sonyericsson/music/landingpage/PlayQueueCategoryHolder;

    if-eqz v1, :cond_1

    .line 116
    check-cast p1, Lcom/sonyericsson/music/landingpage/PlayQueueCategoryHolder;

    .line 117
    invoke-virtual {p1}, Lcom/sonyericsson/music/landingpage/PlayQueueCategoryHolder;->getPlayQueueItemsView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    .line 118
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPagePlayQueueCategory;->mPQItems:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPagePlayQueueCategory;->mPQItems:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method
