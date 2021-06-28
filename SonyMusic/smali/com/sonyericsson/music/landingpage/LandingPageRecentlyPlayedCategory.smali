.class Lcom/sonyericsson/music/landingpage/LandingPageRecentlyPlayedCategory;
.super Lcom/sonyericsson/music/landingpage/LandingPageCategory;
.source "LandingPageRecentlyPlayedCategory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/landingpage/LandingPageRecentlyPlayedCategory$PopupMenuClickListener;
    }
.end annotation


# instance fields
.field private mGridView:Landroidx/recyclerview/widget/RecyclerView;

.field private mItemDecoration:Lcom/sonyericsson/music/ui/GridItemSpacingDecoration;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/artdecoder/ArtDecoder;Landroid/database/Cursor;ZLcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)V
    .locals 6

    .line 50
    invoke-direct {p0, p1, p3}, Lcom/sonyericsson/music/landingpage/LandingPageCategory;-><init>(Lcom/sonyericsson/music/MusicActivity;Landroid/database/Cursor;)V

    .line 52
    new-instance p3, Lcom/sonyericsson/music/landingpage/RecentlyPlayedCategoryAdapter;

    .line 53
    invoke-virtual {p0, p4}, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->getItemLimit(Z)I

    move-result v4

    move-object v0, p3

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/music/landingpage/RecentlyPlayedCategoryAdapter;-><init>(Landroid/content/Context;Lcom/sonyericsson/music/artdecoder/ArtDecoder;Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryClickListener;ILcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)V

    iput-object p3, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->mAdapter:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;

    return-void
.end method

.method private getSmartPlaylistData(Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;
    .locals 2

    .line 295
    sget-object v0, Lcom/sonyericsson/music/landingpage/LandingPageRecentlyPlayedCategory$1;->$SwitchMap$com$sonyericsson$music$common$SmartPlaylistUtils$SmartPlaylistType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 303
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-static {v0, p1, v1}, Lcom/sonyericsson/music/common/MenuUtils;->getPlaylistData(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;Landroid/database/Cursor;)Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;

    move-result-object v1

    :goto_0
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method deinit()V
    .locals 3

    .line 100
    invoke-super {p0}, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->deinit()V

    const/4 v0, 0x0

    .line 102
    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->swapCursor(Landroid/database/Cursor;)V

    .line 104
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageRecentlyPlayedCategory;->mGridView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    .line 105
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 107
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageRecentlyPlayedCategory;->mGridView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 109
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageRecentlyPlayedCategory;->mGridView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    .line 111
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageRecentlyPlayedCategory;->mGridView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/sonyericsson/music/landingpage/LandingPageRecentlyPlayedCategory;->mItemDecoration:Lcom/sonyericsson/music/ui/GridItemSpacingDecoration;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 113
    iput-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageRecentlyPlayedCategory;->mGridView:Landroidx/recyclerview/widget/RecyclerView;

    :cond_0
    return-void
.end method

.method destroy()V
    .locals 0

    return-void
.end method

.method init(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;I)V
    .locals 2

    .line 79
    invoke-virtual {p0, p3}, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->provideAdapterWithPreLayoutValues(I)V

    .line 81
    check-cast p1, Lcom/sonyericsson/music/landingpage/GridCategoryHolder;

    .line 82
    invoke-virtual {p1}, Lcom/sonyericsson/music/landingpage/GridCategoryHolder;->getGridItemsView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageRecentlyPlayedCategory;->mGridView:Landroidx/recyclerview/widget/RecyclerView;

    .line 84
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageRecentlyPlayedCategory;->mGridView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    .line 86
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageRecentlyPlayedCategory;->mGridView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->mAdapter:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 88
    invoke-virtual {p0}, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->getColumnCount()I

    move-result p1

    .line 89
    iget-object p2, p0, Lcom/sonyericsson/music/landingpage/LandingPageRecentlyPlayedCategory;->mGridView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-direct {p3, v0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 91
    new-instance p2, Lcom/sonyericsson/music/ui/GridItemSpacingDecoration;

    invoke-virtual {p0}, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->getGridSpacing()I

    move-result p3

    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    .line 92
    invoke-static {v0}, Lcom/sonyericsson/music/common/UIUtils;->isRTL(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p2, v1, p1, p3, v0}, Lcom/sonyericsson/music/ui/GridItemSpacingDecoration;-><init>(IIIZ)V

    iput-object p2, p0, Lcom/sonyericsson/music/landingpage/LandingPageRecentlyPlayedCategory;->mItemDecoration:Lcom/sonyericsson/music/ui/GridItemSpacingDecoration;

    .line 93
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageRecentlyPlayedCategory;->mGridView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/sonyericsson/music/landingpage/LandingPageRecentlyPlayedCategory;->mItemDecoration:Lcom/sonyericsson/music/ui/GridItemSpacingDecoration;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 95
    invoke-virtual {p0}, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->swapInitialCursor()V

    return-void
.end method

.method public onCategoryButtonClick()V
    .locals 0

    return-void
.end method

.method public onCategoryItemClick(Lcom/sonyericsson/music/landingpage/LandingPageItemData;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 139
    new-instance v0, Lcom/sonyericsson/music/common/OpenAndPlayConditions;

    invoke-direct {v0}, Lcom/sonyericsson/music/common/OpenAndPlayConditions;-><init>()V

    .line 140
    invoke-virtual {p1}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->getContainerUri()Landroid/net/Uri;

    move-result-object v1

    .line 142
    sget-object v2, Lcom/sonyericsson/music/landingpage/LandingPageRecentlyPlayedCategory$1;->$SwitchMap$com$sonyericsson$music$landingpage$LandingPageCategoryAdapter$CategoryItemType:[I

    invoke-virtual {p1}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->getCategoryItemType()Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 157
    :pswitch_0
    new-instance p1, Lcom/sonyericsson/music/landingpage/LandingPageCategory$HandlePlaylistPlaybackAsyncTask;

    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-direct {p1, v0, v1}, Lcom/sonyericsson/music/landingpage/LandingPageCategory$HandlePlaylistPlaybackAsyncTask;-><init>(Lcom/sonyericsson/music/MusicActivity;Landroid/net/Uri;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Void;

    .line 158
    invoke-virtual {p1, v0, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 159
    sget-object p1, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->PLAYLIST:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    .line 161
    invoke-static {v1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getSmartPlaylistType(Landroid/net/Uri;)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    sget-object v1, Lcom/sonyericsson/music/landingpage/LandingPageRecentlyPlayedCategory$1;->$SwitchMap$com$sonyericsson$music$common$SmartPlaylistUtils$SmartPlaylistType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 174
    :pswitch_1
    sget-object p1, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->SMART_PLAYLIST_FAVORITES:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    goto :goto_0

    .line 171
    :pswitch_2
    sget-object p1, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->SMART_PLAYLIST_MOST_PLAYED:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    goto :goto_0

    .line 168
    :pswitch_3
    sget-object p1, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->SMART_PLAYLIST_NEWLY_ADDED:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    goto :goto_0

    .line 165
    :pswitch_4
    sget-object p1, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->SMART_PLAYLIST_RECENTLY_PLAYED:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    :cond_0
    :goto_0
    const-string v0, "landingpage/recently_played"

    .line 178
    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->sendGoogleAnalyticsPlayEvent(Ljava/lang/String;Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;)V

    goto :goto_1

    .line 150
    :pswitch_5
    invoke-virtual {v0, v3}, Lcom/sonyericsson/music/common/OpenAndPlayConditions;->setShuffle(Z)Lcom/sonyericsson/music/common/OpenAndPlayConditions;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sonyericsson/music/common/OpenAndPlayConditions;->setTracksPosition(I)Lcom/sonyericsson/music/common/OpenAndPlayConditions;

    .line 151
    iget-object v2, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v2, v1, v0}, Lcom/sonyericsson/music/MusicActivity;->openAndPlayContent(Landroid/net/Uri;Lcom/sonyericsson/music/common/OpenAndPlayConditions;)Z

    const-string v0, "landingpage/recently_played"

    .line 154
    invoke-virtual {p1}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->getCategoryItemType()Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    move-result-object p1

    .line 152
    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->sendGoogleAnalyticsPlayEvent(Ljava/lang/String;Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;)V

    :cond_1
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onCategoryItemLongClick(Landroid/view/View;Lcom/sonyericsson/music/landingpage/LandingPageItemData;)V
    .locals 19

    move-object/from16 v0, p0

    if-eqz p2, :cond_2

    .line 193
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->getCategoryItemType()Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    move-result-object v3

    .line 195
    new-instance v9, Landroid/widget/PopupMenu;

    iget-object v1, v0, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    move-object/from16 v2, p1

    invoke-direct {v9, v1, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 204
    sget-object v1, Lcom/sonyericsson/music/landingpage/LandingPageRecentlyPlayedCategory$1;->$SwitchMap$com$sonyericsson$music$landingpage$LandingPageCategoryAdapter$CategoryItemType:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v1, :pswitch_data_0

    move-object v2, v5

    move-object v4, v2

    move-object v6, v4

    move-object v7, v6

    move-object v8, v7

    goto/16 :goto_2

    .line 242
    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->getContainerUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getSmartPlaylistType(Landroid/net/Uri;)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 246
    invoke-direct {v0, v1}, Lcom/sonyericsson/music/landingpage/LandingPageRecentlyPlayedCategory;->getSmartPlaylistData(Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;

    move-result-object v1

    goto :goto_0

    .line 250
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->getContainerData()Ljava/lang/String;

    move-result-object v12

    .line 251
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->getContainerTitle()Ljava/lang/String;

    move-result-object v14

    .line 252
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->getContainerId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    .line 253
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->getContainerSubId()J

    move-result-wide v6

    .line 255
    new-instance v1, Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;

    const/4 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v15, -0x1

    long-to-int v6, v6

    move-object v10, v1

    move/from16 v18, v6

    invoke-direct/range {v10 .. v18}, Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;-><init>(Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;I)V

    .line 259
    :goto_0
    iget-object v6, v0, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    .line 260
    invoke-static {v6, v1, v2}, Lcom/sonyericsson/music/common/MenuUtils;->getPlaylistMenuBuilder(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object v2

    .line 261
    invoke-virtual {v2, v4}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setOpenOption(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object v2

    move-object v7, v1

    move-object v4, v5

    move-object v6, v4

    move-object v8, v6

    goto/16 :goto_2

    .line 264
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->getContainerId()J

    move-result-wide v11

    .line 265
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->getContainerTitle()Ljava/lang/String;

    move-result-object v13

    .line 266
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->getContainerArtUri()Landroid/net/Uri;

    move-result-object v15

    .line 268
    new-instance v1, Lcom/sonyericsson/music/common/MenuUtils$GenreData;

    const/4 v14, 0x0

    move-object v10, v1

    invoke-direct/range {v10 .. v15}, Lcom/sonyericsson/music/common/MenuUtils$GenreData;-><init>(JLjava/lang/String;ILandroid/net/Uri;)V

    .line 269
    iget-object v2, v0, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    .line 270
    invoke-static {v2, v1}, Lcom/sonyericsson/music/common/MenuUtils;->getGenreMenuBuilder(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/common/MenuUtils$GenreData;)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object v2

    .line 271
    invoke-virtual {v2, v4}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setOpenOption(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object v2

    move-object v8, v1

    move-object v4, v5

    move-object v6, v4

    move-object v7, v6

    goto/16 :goto_2

    .line 227
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->getContainerId()J

    move-result-wide v11

    .line 228
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->getContainerTitle()Ljava/lang/String;

    move-result-object v13

    .line 229
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->getContainerSubTitle()Ljava/lang/String;

    move-result-object v14

    .line 230
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 232
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->getContainerSubId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 231
    invoke-static {v1, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 233
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->getContainerArtUri()Landroid/net/Uri;

    move-result-object v16

    .line 234
    new-instance v1, Lcom/sonyericsson/music/common/MenuUtils$AlbumData;

    move-object v10, v1

    invoke-direct/range {v10 .. v16}, Lcom/sonyericsson/music/common/MenuUtils$AlbumData;-><init>(JLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)V

    .line 236
    iget-object v6, v0, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    .line 237
    invoke-static {v6, v1, v2}, Lcom/sonyericsson/music/common/MenuUtils;->getAlbumContextMenuBuilder(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/common/MenuUtils$AlbumData;Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object v2

    .line 238
    invoke-virtual {v2, v4}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setOpenOption(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object v2

    move-object v6, v1

    move-object v4, v5

    move-object v7, v4

    move-object v8, v7

    goto :goto_2

    .line 217
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->getContainerId()J

    move-result-wide v6

    .line 218
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->getContainerArtUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 219
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, ""

    .line 220
    :goto_1
    new-instance v8, Lcom/sonyericsson/music/common/MenuUtils$ArtistData;

    .line 221
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->getContainerTitle()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v6, v7, v10, v1}, Lcom/sonyericsson/music/common/MenuUtils$ArtistData;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v1, v0, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-static {v1, v8, v2}, Lcom/sonyericsson/music/common/MenuUtils;->getArtistMenuBuilder(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/common/MenuUtils$ArtistData;Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object v1

    .line 224
    invoke-virtual {v1, v4}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setOpenOption(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object v1

    move-object v2, v1

    move-object v4, v5

    move-object v6, v4

    move-object v7, v6

    move-object v5, v8

    move-object v8, v7

    goto :goto_2

    .line 206
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->getContainerId()J

    move-result-wide v1

    .line 207
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->getContainerTitle()Ljava/lang/String;

    move-result-object v6

    .line 208
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->getContainerData()Ljava/lang/String;

    move-result-object v7

    .line 209
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->getContainerArtUri()Landroid/net/Uri;

    move-result-object v8

    .line 210
    new-instance v10, Lcom/sonyericsson/music/common/MenuUtils$FolderData;

    long-to-int v1, v1

    invoke-direct {v10, v1, v6, v7, v8}, Lcom/sonyericsson/music/common/MenuUtils$FolderData;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 213
    iget-object v1, v0, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-static {v1, v10}, Lcom/sonyericsson/music/common/MenuUtils;->getFolderMenuBuilder(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/common/MenuUtils$FolderData;)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object v1

    .line 214
    invoke-virtual {v1, v4}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setOpenOption(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object v1

    move-object v2, v1

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v4, v10

    :goto_2
    if-eqz v2, :cond_2

    .line 280
    invoke-virtual {v2, v9}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->build(Landroid/widget/PopupMenu;)V

    .line 281
    invoke-virtual {v9}, Landroid/widget/PopupMenu;->show()V

    .line 284
    new-instance v10, Lcom/sonyericsson/music/landingpage/LandingPageRecentlyPlayedCategory$PopupMenuClickListener;

    iget-object v2, v0, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    move-object v1, v10

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/music/landingpage/LandingPageRecentlyPlayedCategory$PopupMenuClickListener;-><init>(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;Lcom/sonyericsson/music/common/MenuUtils$FolderData;Lcom/sonyericsson/music/common/MenuUtils$ArtistData;Lcom/sonyericsson/music/common/MenuUtils$AlbumData;Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;Lcom/sonyericsson/music/common/MenuUtils$GenreData;)V

    invoke-virtual {v9, v10}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method resetViewHolderData(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 124
    instance-of v0, p1, Lcom/sonyericsson/music/landingpage/GridCategoryHolder;

    if-eqz v0, :cond_0

    .line 125
    check-cast p1, Lcom/sonyericsson/music/landingpage/GridCategoryHolder;

    .line 126
    invoke-virtual {p1}, Lcom/sonyericsson/music/landingpage/GridCategoryHolder;->getGridItemsView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/4 v0, 0x0

    .line 127
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_0
    return-void
.end method

.method setViewHolderData(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3

    .line 58
    check-cast p1, Lcom/sonyericsson/music/landingpage/GridCategoryHolder;

    .line 60
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-static {v0}, Lcom/sonyericsson/music/common/UIUtils;->isUseDarkTheme(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/sonyericsson/music/landingpage/CategoryWithTitleViewHolder;->setCategoryTitleColor(Landroid/content/Context;ZZ)V

    .line 62
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    const v1, 0x7f10016e

    .line 63
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/landingpage/CategoryWithTitleViewHolder;->setCategoryTitle(Ljava/lang/String;)V

    return-void
.end method

.method shouldReinitialize(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 69
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageRecentlyPlayedCategory;->mGridView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_1

    .line 70
    check-cast p1, Lcom/sonyericsson/music/landingpage/GridCategoryHolder;

    .line 71
    invoke-virtual {p1}, Lcom/sonyericsson/music/landingpage/GridCategoryHolder;->getGridItemsView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    .line 72
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageRecentlyPlayedCategory;->mGridView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageRecentlyPlayedCategory;->mGridView:Landroidx/recyclerview/widget/RecyclerView;

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
