.class Lcom/sonyericsson/music/landingpage/LandingPageNewlyAddedCategory;
.super Lcom/sonyericsson/music/landingpage/LandingPageCategory;
.source "LandingPageNewlyAddedCategory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/landingpage/LandingPageNewlyAddedCategory$PopupMenuClickListener;
    }
.end annotation


# instance fields
.field private mGridView:Landroidx/recyclerview/widget/RecyclerView;

.field private mItemDecoration:Lcom/sonyericsson/music/ui/GridItemSpacingDecoration;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/artdecoder/ArtDecoder;Landroid/database/Cursor;ZLcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)V
    .locals 6

    .line 42
    invoke-direct {p0, p1, p3}, Lcom/sonyericsson/music/landingpage/LandingPageCategory;-><init>(Lcom/sonyericsson/music/MusicActivity;Landroid/database/Cursor;)V

    .line 44
    new-instance p3, Lcom/sonyericsson/music/landingpage/NewlyAddedCategoryAdapter;

    .line 45
    invoke-virtual {p0, p4}, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->getItemLimit(Z)I

    move-result v4

    move-object v0, p3

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/music/landingpage/NewlyAddedCategoryAdapter;-><init>(Landroid/content/Context;Lcom/sonyericsson/music/artdecoder/ArtDecoder;Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryClickListener;ILcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)V

    iput-object p3, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->mAdapter:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;

    return-void
.end method


# virtual methods
.method deinit()V
    .locals 3

    .line 91
    invoke-super {p0}, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->deinit()V

    const/4 v0, 0x0

    .line 93
    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->swapCursor(Landroid/database/Cursor;)V

    .line 95
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageNewlyAddedCategory;->mGridView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    .line 96
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 98
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageNewlyAddedCategory;->mGridView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 100
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageNewlyAddedCategory;->mGridView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    .line 102
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageNewlyAddedCategory;->mGridView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/sonyericsson/music/landingpage/LandingPageNewlyAddedCategory;->mItemDecoration:Lcom/sonyericsson/music/ui/GridItemSpacingDecoration;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 104
    iput-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageNewlyAddedCategory;->mGridView:Landroidx/recyclerview/widget/RecyclerView;

    :cond_0
    return-void
.end method

.method destroy()V
    .locals 0

    return-void
.end method

.method init(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;I)V
    .locals 2

    .line 70
    invoke-virtual {p0, p3}, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->provideAdapterWithPreLayoutValues(I)V

    .line 72
    check-cast p1, Lcom/sonyericsson/music/landingpage/GridCategoryHolder;

    .line 73
    invoke-virtual {p1}, Lcom/sonyericsson/music/landingpage/GridCategoryHolder;->getGridItemsView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageNewlyAddedCategory;->mGridView:Landroidx/recyclerview/widget/RecyclerView;

    .line 75
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageNewlyAddedCategory;->mGridView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    .line 77
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageNewlyAddedCategory;->mGridView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->mAdapter:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 79
    invoke-virtual {p0}, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->getColumnCount()I

    move-result p1

    .line 80
    iget-object p2, p0, Lcom/sonyericsson/music/landingpage/LandingPageNewlyAddedCategory;->mGridView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-direct {p3, v0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 82
    new-instance p2, Lcom/sonyericsson/music/ui/GridItemSpacingDecoration;

    invoke-virtual {p0}, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->getGridSpacing()I

    move-result p3

    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    .line 83
    invoke-static {v0}, Lcom/sonyericsson/music/common/UIUtils;->isRTL(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p2, v1, p1, p3, v0}, Lcom/sonyericsson/music/ui/GridItemSpacingDecoration;-><init>(IIIZ)V

    iput-object p2, p0, Lcom/sonyericsson/music/landingpage/LandingPageNewlyAddedCategory;->mItemDecoration:Lcom/sonyericsson/music/ui/GridItemSpacingDecoration;

    .line 84
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageNewlyAddedCategory;->mGridView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/sonyericsson/music/landingpage/LandingPageNewlyAddedCategory;->mItemDecoration:Lcom/sonyericsson/music/ui/GridItemSpacingDecoration;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 86
    invoke-virtual {p0}, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->swapInitialCursor()V

    return-void
.end method

.method public onCategoryButtonClick()V
    .locals 0

    return-void
.end method

.method public onCategoryItemClick(Lcom/sonyericsson/music/landingpage/LandingPageItemData;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 130
    new-instance v0, Lcom/sonyericsson/music/common/OpenAndPlayConditions;

    invoke-direct {v0}, Lcom/sonyericsson/music/common/OpenAndPlayConditions;-><init>()V

    .line 132
    sget-object v1, Lcom/sonyericsson/music/landingpage/LandingPageNewlyAddedCategory$1;->$SwitchMap$com$sonyericsson$music$landingpage$LandingPageCategoryAdapter$CategoryItemType:[I

    invoke-virtual {p1}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->getCategoryItemType()Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 142
    :pswitch_0
    new-instance v0, Lcom/sonyericsson/music/landingpage/LandingPageCategory$HandlePlaylistPlaybackAsyncTask;

    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {p1}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->getContainerUri()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/music/landingpage/LandingPageCategory$HandlePlaylistPlaybackAsyncTask;-><init>(Lcom/sonyericsson/music/MusicActivity;Landroid/net/Uri;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Void;

    .line 143
    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    const-string v0, "landingpage/newly_added"

    .line 147
    invoke-virtual {p1}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->getCategoryItemType()Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    move-result-object p1

    .line 145
    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->sendGoogleAnalyticsPlayEvent(Ljava/lang/String;Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;)V

    goto :goto_0

    .line 134
    :pswitch_1
    invoke-virtual {v0, v2}, Lcom/sonyericsson/music/common/OpenAndPlayConditions;->setShuffle(Z)Lcom/sonyericsson/music/common/OpenAndPlayConditions;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sonyericsson/music/common/OpenAndPlayConditions;->setTracksPosition(I)Lcom/sonyericsson/music/common/OpenAndPlayConditions;

    .line 135
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {p1}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->getContainerUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/sonyericsson/music/MusicActivity;->openAndPlayContent(Landroid/net/Uri;Lcom/sonyericsson/music/common/OpenAndPlayConditions;)Z

    const-string v0, "landingpage/newly_added"

    .line 139
    invoke-virtual {p1}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->getCategoryItemType()Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    move-result-object p1

    .line 137
    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->sendGoogleAnalyticsPlayEvent(Ljava/lang/String;Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCategoryItemLongClick(Landroid/view/View;Lcom/sonyericsson/music/landingpage/LandingPageItemData;)V
    .locals 19

    move-object/from16 v0, p0

    if-eqz p2, :cond_0

    .line 160
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->getCategoryItemType()Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    move-result-object v1

    .line 162
    new-instance v2, Landroid/widget/PopupMenu;

    iget-object v3, v0, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    move-object/from16 v4, p1

    invoke-direct {v2, v3, v4}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 168
    sget-object v3, Lcom/sonyericsson/music/landingpage/LandingPageNewlyAddedCategory$1;->$SwitchMap$com$sonyericsson$music$landingpage$LandingPageCategoryAdapter$CategoryItemType:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    packed-switch v3, :pswitch_data_0

    move-object v3, v6

    move-object v4, v3

    goto :goto_0

    .line 185
    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->getContainerData()Ljava/lang/String;

    move-result-object v9

    .line 186
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->getContainerTitle()Ljava/lang/String;

    move-result-object v11

    .line 187
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->getContainerId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    .line 188
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->getContainerSubId()J

    move-result-wide v7

    .line 191
    new-instance v3, Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;

    const/4 v10, 0x0

    const/4 v12, 0x0

    const-wide/16 v15, -0x1

    long-to-int v13, v7

    move-object v7, v3

    move-object v8, v10

    move-object v10, v12

    move/from16 v17, v13

    move-wide v12, v15

    move/from16 v15, v17

    invoke-direct/range {v7 .. v15}, Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;-><init>(Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;I)V

    .line 194
    iget-object v7, v0, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    .line 195
    invoke-static {v7, v3, v5}, Lcom/sonyericsson/music/common/MenuUtils;->getPlaylistMenuBuilder(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object v5

    .line 196
    invoke-virtual {v5, v4}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setOpenOption(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object v4

    goto :goto_0

    .line 170
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->getContainerId()J

    move-result-wide v8

    .line 171
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->getContainerTitle()Ljava/lang/String;

    move-result-object v10

    .line 172
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->getContainerSubTitle()Ljava/lang/String;

    move-result-object v11

    .line 173
    sget-object v3, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 175
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->getContainerSubId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    .line 174
    invoke-static {v3, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 176
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->getContainerArtUri()Landroid/net/Uri;

    move-result-object v13

    .line 177
    new-instance v3, Lcom/sonyericsson/music/common/MenuUtils$AlbumData;

    move-object v7, v3

    invoke-direct/range {v7 .. v13}, Lcom/sonyericsson/music/common/MenuUtils$AlbumData;-><init>(JLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)V

    .line 180
    iget-object v7, v0, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    .line 181
    invoke-static {v7, v3, v5}, Lcom/sonyericsson/music/common/MenuUtils;->getAlbumContextMenuBuilder(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/common/MenuUtils$AlbumData;Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object v5

    .line 182
    invoke-virtual {v5, v4}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setOpenOption(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object v4

    move-object/from16 v18, v6

    move-object v6, v3

    move-object/from16 v3, v18

    :goto_0
    if-eqz v4, :cond_0

    .line 205
    invoke-virtual {v4, v2}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->build(Landroid/widget/PopupMenu;)V

    .line 206
    invoke-virtual {v2}, Landroid/widget/PopupMenu;->show()V

    .line 209
    new-instance v4, Lcom/sonyericsson/music/landingpage/LandingPageNewlyAddedCategory$PopupMenuClickListener;

    iget-object v5, v0, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-direct {v4, v5, v1, v6, v3}, Lcom/sonyericsson/music/landingpage/LandingPageNewlyAddedCategory$PopupMenuClickListener;-><init>(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;Lcom/sonyericsson/music/common/MenuUtils$AlbumData;Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;)V

    invoke-virtual {v2, v4}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method resetViewHolderData(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 115
    instance-of v0, p1, Lcom/sonyericsson/music/landingpage/GridCategoryHolder;

    if-eqz v0, :cond_0

    .line 116
    check-cast p1, Lcom/sonyericsson/music/landingpage/GridCategoryHolder;

    .line 117
    invoke-virtual {p1}, Lcom/sonyericsson/music/landingpage/GridCategoryHolder;->getGridItemsView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/4 v0, 0x0

    .line 118
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_0
    return-void
.end method

.method setViewHolderData(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3

    .line 50
    check-cast p1, Lcom/sonyericsson/music/landingpage/GridCategoryHolder;

    .line 52
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-static {v0}, Lcom/sonyericsson/music/common/UIUtils;->isUseDarkTheme(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/sonyericsson/music/landingpage/CategoryWithTitleViewHolder;->setCategoryTitleColor(Landroid/content/Context;ZZ)V

    .line 53
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    const v1, 0x7f10016e

    .line 54
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/landingpage/CategoryWithTitleViewHolder;->setCategoryTitle(Ljava/lang/String;)V

    return-void
.end method

.method shouldReinitialize(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 60
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageNewlyAddedCategory;->mGridView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_1

    .line 61
    check-cast p1, Lcom/sonyericsson/music/landingpage/GridCategoryHolder;

    .line 62
    invoke-virtual {p1}, Lcom/sonyericsson/music/landingpage/GridCategoryHolder;->getGridItemsView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    .line 63
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageNewlyAddedCategory;->mGridView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageNewlyAddedCategory;->mGridView:Landroidx/recyclerview/widget/RecyclerView;

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
