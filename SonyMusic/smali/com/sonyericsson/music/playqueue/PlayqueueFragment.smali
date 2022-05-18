.class public Lcom/sonyericsson/music/playqueue/PlayqueueFragment;
.super Lcom/sonyericsson/music/library/LibraryBaseFragment;
.source "PlayqueueFragment.java"

# interfaces
.implements Lcom/sonyericsson/music/ui/RearrangeableListView$OnItemMovedListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/sonyericsson/music/library/PaddedHeaderListScroller$PaddedHeaderListScrollerListener;
.implements Landroid/widget/AbsListView$OnScrollListener;


# static fields
.field private static final KEY_LIST_STATE:Ljava/lang/String; = "key_list_state"

.field public static final TAG:Ljava/lang/String; = "playqueue"


# instance fields
.field private mActivity:Lcom/sonyericsson/music/MusicActivity;

.field mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

.field private mListView:Landroid/widget/ListView;

.field protected mListViewState:Landroid/os/Parcelable;

.field private mPaddedListScroller:Lcom/sonyericsson/music/library/PaddedHeaderListScroller;

.field private final mPlayerStateListener:Lcom/sonyericsson/music/player/PlayerStateListener;

.field private mTopPaddingView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 119
    invoke-direct {p0}, Lcom/sonyericsson/music/library/LibraryBaseFragment;-><init>()V

    .line 86
    new-instance v0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/playqueue/PlayqueueFragment$1;-><init>(Lcom/sonyericsson/music/playqueue/PlayqueueFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->mPlayerStateListener:Lcom/sonyericsson/music/player/PlayerStateListener;

    .line 120
    new-instance v0, Lcom/sonyericsson/music/library/PaddedHeaderListScroller;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/library/PaddedHeaderListScroller;-><init>(Lcom/sonyericsson/music/library/PaddedHeaderListScroller$PaddedHeaderListScrollerListener;)V

    iput-object v0, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->mPaddedListScroller:Lcom/sonyericsson/music/library/PaddedHeaderListScroller;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/music/playqueue/PlayqueueFragment;)Landroid/widget/ListView;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->mListView:Landroid/widget/ListView;

    return-object p0
.end method

.method private addHeader(Landroid/view/View;ZI)Z
    .locals 2

    .line 597
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    new-instance v1, Lcom/sonyericsson/music/library/LibraryListAdapter$Header;

    invoke-direct {v1, p1, p2, p3}, Lcom/sonyericsson/music/library/LibraryListAdapter$Header;-><init>(Landroid/view/View;ZI)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/library/LibraryListAdapter;->addHeader(Lcom/sonyericsson/music/library/LibraryListAdapter$Header;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 599
    iget-object p2, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {p2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return p1
.end method

.method public static newInstance()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 116
    new-instance v0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;

    invoke-direct {v0}, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;-><init>()V

    return-object v0
.end method

.method private restoreListState()V
    .locals 2

    .line 574
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->mListViewState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 576
    new-instance v1, Lcom/sonyericsson/music/playqueue/PlayqueueFragment$3;

    invoke-direct {v1, p0}, Lcom/sonyericsson/music/playqueue/PlayqueueFragment$3;-><init>(Lcom/sonyericsson/music/playqueue/PlayqueueFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private savePlaylist()V
    .locals 4

    .line 427
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/MusicActivity;

    if-eqz v0, :cond_1

    .line 430
    invoke-static {v0}, Lcom/sonyericsson/music/common/PermissionUtils;->isReadStoragePermissionGranted(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 434
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 436
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 437
    new-instance v3, Lcom/sonyericsson/music/playqueue/PlayqueueFragment$2;

    invoke-direct {v3, p0, v2, v1}, Lcom/sonyericsson/music/playqueue/PlayqueueFragment$2;-><init>(Lcom/sonyericsson/music/playqueue/PlayqueueFragment;Landroid/content/ContentResolver;Landroidx/fragment/app/FragmentManager;)V

    .line 497
    invoke-virtual {v0, v3}, Lcom/sonyericsson/music/MusicActivity;->doAsync(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected getHeaderView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getRootLayoutResource()I
    .locals 1

    const v0, 0x7f0c0040

    return v0
.end method

.method public getScrollAllowed(Z)Z
    .locals 2

    .line 547
    iget-object p1, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->mListView:Landroid/widget/ListView;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 548
    check-cast p1, Lcom/sonyericsson/music/ui/RearrangeableListView;

    invoke-virtual {p1}, Lcom/sonyericsson/music/ui/RearrangeableListView;->isRearranging()Z

    move-result p1

    xor-int/2addr v0, p1

    if-nez v0, :cond_0

    .line 550
    iget-object p1, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->mPaddedListScroller:Lcom/sonyericsson/music/library/PaddedHeaderListScroller;

    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getToolbarControl()Lcom/sonyericsson/music/ToolbarControl;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sonyericsson/music/library/PaddedHeaderListScroller;->runToolbarAnimation(Lcom/sonyericsson/music/ToolbarControl;)V

    :cond_0
    return v0
.end method

.method public getSubTag()Ljava/lang/String;
    .locals 1

    const-string v0, "playqueue"

    return-object v0
.end method

.method public isAtBottomOfList()Z
    .locals 1

    .line 536
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->mListView:Landroid/widget/ListView;

    invoke-static {v0}, Lcom/sonyericsson/music/library/PaddedHeaderListScroller;->isAtBottomOfList(Landroid/widget/AbsListView;)Z

    move-result v0

    return v0
.end method

.method public isMovableView(I)Z
    .locals 1

    .line 526
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getHeaderCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected onApplyTopPadding(II)I
    .locals 1

    .line 569
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->mTopPaddingView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setMinimumHeight(I)V

    return p1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 206
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 208
    check-cast p1, Lcom/sonyericsson/music/MusicActivity;

    iput-object p1, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 12

    .line 300
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    .line 302
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget-object v1, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v1}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getHeaderCount()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    .line 307
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v2}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    const-string v3, "track_uri"

    .line 309
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 308
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 310
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v3

    const-wide/16 v4, -0x1

    .line 313
    invoke-static {v8}, Lcom/sonyericsson/music/common/DBUtils;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 316
    invoke-virtual {v8}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 319
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v7, 0x7

    const/4 v9, 0x0

    const/4 v11, 0x1

    if-eq p1, v7, :cond_5

    const/16 v6, 0xa

    if-eq p1, v6, :cond_4

    const/16 v6, 0x14

    if-eq p1, v6, :cond_3

    packed-switch p1, :pswitch_data_0

    return v1

    :pswitch_0
    const-string p1, "album"

    .line 345
    invoke-interface {v2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 346
    invoke-interface {v2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 348
    new-instance v10, Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    const-string p1, "playqueue"

    invoke-direct {v10, p1}, Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;-><init>(Ljava/lang/String;)V

    invoke-static/range {v4 .. v10}, Lcom/sonyericsson/music/library/AlbumFragment;->newInstance(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;)Lcom/sonyericsson/music/library/AlbumFragment;

    move-result-object p1

    .line 351
    invoke-virtual {v3}, Lcom/sonyericsson/music/MusicActivity;->getMusicFragmentManager()Lcom/sonyericsson/music/MusicFragmentManager;

    move-result-object v0

    const-string v2, "album"

    invoke-virtual {v0, p1, v2, v1, v11}, Lcom/sonyericsson/music/MusicFragmentManager;->openFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZZ)V

    return v11

    :pswitch_1
    const-string p1, "artist"

    .line 336
    invoke-interface {v2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 337
    invoke-interface {v2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 338
    sget-object v0, Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;->TRACK_ID:Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;

    new-instance v2, Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    const-string v4, "playqueue"

    invoke-direct {v2, v4}, Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v8, p1, v9, v2}, Lcom/sonyericsson/music/library/artist/ArtistFragment;->newInstance(Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;)Lcom/sonyericsson/music/library/artist/ArtistFragment;

    move-result-object p1

    .line 341
    invoke-virtual {v3}, Lcom/sonyericsson/music/MusicActivity;->getMusicFragmentManager()Lcom/sonyericsson/music/MusicFragmentManager;

    move-result-object v0

    const-string v2, "artist"

    invoke-virtual {v0, p1, v2, v1, v11}, Lcom/sonyericsson/music/MusicFragmentManager;->openFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZZ)V

    return v11

    .line 333
    :pswitch_2
    invoke-static {v3, v4, v5}, Lcom/sonyericsson/music/common/TrackActions;->addToFavourites(Lcom/sonyericsson/music/MusicActivity;J)V

    return v11

    .line 321
    :pswitch_3
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryBaseFragment;->mPlayerController:Lcom/sonyericsson/music/player/PlayerController;

    if-eqz p1, :cond_2

    .line 322
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/player/PlayerController;->removeTrack(I)V

    :cond_2
    return v11

    .line 355
    :cond_3
    iget-object p1, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-static {p1, v4, v5}, Lcom/sonyericsson/music/common/TrackActions;->launchEditMusicInfo(Landroid/app/Activity;J)V

    return v11

    .line 330
    :cond_4
    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v4, v5}, Lcom/sonyericsson/music/common/Sender;->sendSingleFile(Landroid/content/Context;J)V

    return v11

    .line 326
    :cond_5
    invoke-virtual {v8}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    .line 327
    invoke-static {v3, v6, p1, v9}, Lcom/sonyericsson/music/common/TrackActions;->addToDialog(Lcom/sonyericsson/music/MusicActivity;ZLjava/lang/String;Ljava/lang/String;)V

    return v11

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 125
    invoke-super {p0, p1}, Lcom/sonyericsson/music/library/LibraryBaseFragment;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 129
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "key_list_state"

    .line 132
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->mListViewState:Landroid/os/Parcelable;

    :cond_1
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4

    .line 257
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 259
    iget-object p2, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {p2}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object p2

    .line 260
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget p3, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 261
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getHeaderCount()I

    move-result v0

    if-lt p3, v0, :cond_5

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    const-string p3, "title"

    .line 266
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "track_uri"

    .line 268
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 267
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 269
    invoke-static {p2}, Lcom/sonyericsson/music/common/DBUtils;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v0

    .line 270
    new-instance v1, Lcom/sonyericsson/music/common/ContextMenuBuilder;

    invoke-direct {v1}, Lcom/sonyericsson/music/common/ContextMenuBuilder;-><init>()V

    .line 272
    iget-object v2, p0, Lcom/sonyericsson/music/library/LibraryBaseFragment;->mPlayerController:Lcom/sonyericsson/music/player/PlayerController;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/sonyericsson/music/player/PlayerController;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object v2

    .line 273
    invoke-virtual {v2}, Lcom/sonyericsson/music/player/PlayerState;->getCurrentTrack()Lcom/sonyericsson/music/common/Track;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_2

    .line 274
    invoke-virtual {v2}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v3

    :cond_2
    const/4 v2, 0x1

    if-eqz v3, :cond_3

    .line 277
    invoke-virtual {p2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 278
    invoke-virtual {v1, v2}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setDequeue(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    :cond_3
    if-eqz v0, :cond_4

    .line 282
    invoke-virtual {v1, v2}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setSend(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    .line 283
    invoke-virtual {v1, v2}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setAddTo(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    .line 284
    invoke-virtual {v1, v2}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setGoToArtist(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    .line 285
    invoke-virtual {v1, v2}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setGoToAlbum(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    .line 286
    invoke-virtual {v1, v2}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setEditMusicInfo(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    .line 287
    invoke-virtual {v1, v2}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setAddToFavorites(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    goto :goto_1

    .line 289
    :cond_4
    invoke-static {p2}, Lcom/sonyericsson/music/common/DBUtils;->isUriCloudFileType(Landroid/net/Uri;)Z

    move-result p2

    xor-int/lit8 v0, p2, 0x1

    .line 290
    invoke-virtual {v1, v0}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setAddTo(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    xor-int/lit8 v0, p2, 0x1

    .line 291
    invoke-virtual {v1, v0}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setGoToArtist(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    xor-int/2addr p2, v2

    .line 292
    invoke-virtual {v1, p2}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setGoToAlbum(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    .line 295
    :goto_1
    invoke-virtual {v1, p3}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setTitle(Ljava/lang/String;)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->build(Landroid/view/ContextMenu;)V

    return-void

    :cond_5
    :goto_2
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 213
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/music/library/LibraryBaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f0d000c

    .line 214
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 138
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/music/library/LibraryBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 140
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/music/MusicActivity;

    iput-object p2, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    const p2, 0x7f0900f8

    .line 142
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->mListView:Landroid/widget/ListView;

    .line 143
    new-instance p2, Landroid/view/View;

    iget-object p3, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p3}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->mTopPaddingView:Landroid/view/View;

    .line 144
    new-instance p2, Lcom/sonyericsson/music/library/LibraryListAdapter;

    new-instance p3, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter;

    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-direct {p3, v0}, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter;-><init>(Landroid/content/Context;)V

    invoke-direct {p2, p3}, Lcom/sonyericsson/music/library/LibraryListAdapter;-><init>(Landroid/widget/ListAdapter;)V

    iput-object p2, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    .line 145
    iget-object p2, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->mTopPaddingView:Landroid/view/View;

    const/4 p3, 0x0

    const/4 v0, -0x3

    invoke-direct {p0, p2, p3, v0}, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->addHeader(Landroid/view/View;ZI)Z

    .line 146
    iget-object p2, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->mListView:Landroid/widget/ListView;

    check-cast p2, Lcom/sonyericsson/music/ui/RearrangeableListView;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/sonyericsson/music/ui/RearrangeableListView;->setMovingItemEnabled(Z)V

    .line 147
    iget-object p2, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->mListView:Landroid/widget/ListView;

    check-cast p2, Lcom/sonyericsson/music/ui/RearrangeableListView;

    const v0, 0x7f090099

    invoke-virtual {p2, v0}, Lcom/sonyericsson/music/ui/RearrangeableListView;->setMovingHandleViewId(I)V

    .line 148
    iget-object p2, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->mListView:Landroid/widget/ListView;

    check-cast p2, Lcom/sonyericsson/music/ui/RearrangeableListView;

    invoke-virtual {p2, p0}, Lcom/sonyericsson/music/ui/RearrangeableListView;->setItemMovedListener(Lcom/sonyericsson/music/ui/RearrangeableListView$OnItemMovedListener;)V

    .line 149
    iget-object p2, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 150
    iget-object p2, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 151
    iget-object p2, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->mListView:Landroid/widget/ListView;

    iget-object p3, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 152
    iget-object p2, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->registerForContextMenu(Landroid/view/View;)V

    const p2, 0x7f100260

    .line 154
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 155
    invoke-virtual {p0, p2}, Lcom/sonyericsson/music/library/BaseFragment;->setTitle(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 3

    .line 230
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/sonyericsson/music/ui/RearrangeableListView;

    if-eqz v2, :cond_0

    .line 231
    check-cast v0, Lcom/sonyericsson/music/ui/RearrangeableListView;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/ui/RearrangeableListView;->setItemMovedListener(Lcom/sonyericsson/music/ui/RearrangeableListView$OnItemMovedListener;)V

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 235
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 236
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 238
    :cond_1
    iput-object v1, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->mListView:Landroid/widget/ListView;

    .line 240
    invoke-super {p0}, Lcom/sonyericsson/music/library/LibraryBaseFragment;->onDestroyView()V

    return-void
.end method

.method protected onGetToolbarScroller(Lcom/sonyericsson/music/ToolbarControl;)Lcom/sonyericsson/music/ToolbarControl$ToolbarScroller;
    .locals 1

    .line 531
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->mPaddedListScroller:Lcom/sonyericsson/music/library/PaddedHeaderListScroller;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/library/PaddedHeaderListScroller;->getPaddingScroller(Lcom/sonyericsson/music/ToolbarControl;)Lcom/sonyericsson/music/library/PaddedHeaderListScroller$HidePaddingScroller;

    move-result-object p1

    return-object p1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 366
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryBaseFragment;->mPlayerController:Lcom/sonyericsson/music/player/PlayerController;

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 370
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getHeaderCount()I

    move-result p1

    if-ge p3, p1, :cond_1

    return-void

    .line 374
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {p1, p3}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/database/Cursor;

    if-nez p1, :cond_2

    return-void

    .line 378
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result p3

    const/4 p4, 0x0

    if-eqz p2, :cond_3

    .line 380
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result p2

    if-nez p2, :cond_3

    .line 381
    iget-object p1, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    const p2, 0x7f1001bb

    invoke-static {p1, p2, p4}, Lcom/sonyericsson/music/common/MusicToast;->show(Landroid/content/Context;II)V

    return-void

    .line 386
    :cond_3
    iget-object p2, p0, Lcom/sonyericsson/music/library/LibraryBaseFragment;->mPlayerController:Lcom/sonyericsson/music/player/PlayerController;

    invoke-virtual {p2}, Lcom/sonyericsson/music/player/PlayerController;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object p2

    .line 387
    invoke-virtual {p2}, Lcom/sonyericsson/music/player/PlayerState;->isInPlayQueueMode()Z

    move-result p5

    if-nez p5, :cond_4

    const-string p2, "track_uri"

    .line 389
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    .line 388
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 390
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 392
    iget-object p2, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-static {p1, p2}, Lcom/sonyericsson/music/common/MusicUtils;->validatePlaybackRights(Landroid/net/Uri;Lcom/sonyericsson/music/MusicActivity;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 393
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryBaseFragment;->mPlayerController:Lcom/sonyericsson/music/player/PlayerController;

    const/16 p2, 0x8

    invoke-virtual {p1, p2, p3, p4}, Lcom/sonyericsson/music/player/PlayerController;->openSmartPlaylist(IIZ)V

    goto :goto_1

    .line 398
    :cond_4
    iget-object p5, p0, Lcom/sonyericsson/music/library/LibraryBaseFragment;->mPlayerController:Lcom/sonyericsson/music/player/PlayerController;

    invoke-virtual {p5}, Lcom/sonyericsson/music/player/PlayerController;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object p5

    invoke-virtual {p5}, Lcom/sonyericsson/music/player/PlayerState;->getCurrentTrack()Lcom/sonyericsson/music/common/Track;

    move-result-object p5

    if-eqz p5, :cond_5

    .line 399
    invoke-virtual {p5}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result p4

    :cond_5
    if-eq p3, p4, :cond_6

    const-string p2, "track_uri"

    .line 403
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    .line 402
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 404
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 406
    iget-object p2, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-static {p1, p2}, Lcom/sonyericsson/music/common/MusicUtils;->validatePlaybackRights(Landroid/net/Uri;Lcom/sonyericsson/music/MusicActivity;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 407
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryBaseFragment;->mPlayerController:Lcom/sonyericsson/music/player/PlayerController;

    const/4 p2, 0x1

    invoke-virtual {p1, p3, p2}, Lcom/sonyericsson/music/player/PlayerController;->setPlayQueuePosition(IZ)V

    goto :goto_1

    .line 409
    :cond_6
    invoke-virtual {p2}, Lcom/sonyericsson/music/player/PlayerState;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 410
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryBaseFragment;->mPlayerController:Lcom/sonyericsson/music/player/PlayerController;

    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerController;->pause()V

    goto :goto_1

    :cond_7
    if-eqz p5, :cond_8

    .line 412
    invoke-virtual {p5}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_8
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_9

    .line 414
    iget-object p2, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-static {p1, p2}, Lcom/sonyericsson/music/common/MusicUtils;->validatePlaybackRights(Landroid/net/Uri;Lcom/sonyericsson/music/MusicActivity;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 415
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryBaseFragment;->mPlayerController:Lcom/sonyericsson/music/player/PlayerController;

    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerController;->play()V

    :cond_9
    :goto_1
    return-void

    :cond_a
    :goto_2
    return-void
.end method

.method public onItemCollapsed(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f090097

    .line 521
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onItemExpanded(Landroid/view/View;Z)V
    .locals 0

    const p2, 0x7f090097

    .line 516
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onItemMoved(II)V
    .locals 2

    .line 503
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getHeaderCount()I

    move-result v0

    sub-int/2addr p1, v0

    sub-int/2addr p2, v0

    .line 506
    iget-object v1, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v1}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getCount()I

    move-result v1

    sub-int/2addr v1, v0

    if-ge p2, v1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryBaseFragment;->mPlayerController:Lcom/sonyericsson/music/player/PlayerController;

    if-eqz v0, :cond_0

    .line 507
    invoke-virtual {v0}, Lcom/sonyericsson/music/player/PlayerController;->isServiceSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryBaseFragment;->mPlayerController:Lcom/sonyericsson/music/player/PlayerController;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/music/player/PlayerController;->moveTrack(II)V

    .line 509
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/music/library/RearrangeAdapter;->switchItems(II)V

    .line 510
    iget-object p1, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 219
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f09011c

    if-eq v0, v1, :cond_0

    .line 225
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 221
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->savePlaylist()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onPlayerControllerConnected()V
    .locals 2

    .line 181
    invoke-super {p0}, Lcom/sonyericsson/music/library/LibraryBaseFragment;->onPlayerControllerConnected()V

    .line 183
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryBaseFragment;->mPlayerController:Lcom/sonyericsson/music/player/PlayerController;

    iget-object v1, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->mPlayerStateListener:Lcom/sonyericsson/music/player/PlayerStateListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/player/PlayerController;->registerPlayerStateListener(Lcom/sonyericsson/music/player/PlayerStateListener;)V

    .line 184
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter;

    iget-object v1, p0, Lcom/sonyericsson/music/library/LibraryBaseFragment;->mPlayerController:Lcom/sonyericsson/music/player/PlayerController;

    .line 185
    invoke-virtual {v1}, Lcom/sonyericsson/music/player/PlayerController;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object v1

    .line 184
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter;->onPlayQueueChanged(Lcom/sonyericsson/music/player/PlayerState;)V

    .line 187
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 188
    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 191
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryBaseFragment;->mPlayerController:Lcom/sonyericsson/music/player/PlayerController;

    invoke-virtual {v0}, Lcom/sonyericsson/music/player/PlayerController;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/player/PlayerState;->getCurrentTrack()Lcom/sonyericsson/music/common/Track;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    if-eq v0, v1, :cond_1

    .line 195
    iget-object v1, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->mListViewState:Landroid/os/Parcelable;

    if-eqz v0, :cond_2

    .line 199
    invoke-direct {p0}, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->restoreListState()V

    :cond_2
    return-void
.end method

.method protected onPlayerControllerDisconnected()V
    .locals 2

    .line 172
    invoke-super {p0}, Lcom/sonyericsson/music/library/LibraryBaseFragment;->onPlayerControllerDisconnected()V

    .line 173
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryBaseFragment;->mPlayerController:Lcom/sonyericsson/music/player/PlayerController;

    if-eqz v0, :cond_0

    .line 174
    iget-object v1, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->mPlayerStateListener:Lcom/sonyericsson/music/player/PlayerStateListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/player/PlayerController;->unregisterPlayerStateListener(Lcom/sonyericsson/music/player/PlayerStateListener;)V

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter;

    sget-object v1, Lcom/sonyericsson/music/player/PlayerState;->EMPTY:Lcom/sonyericsson/music/player/PlayerState;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter;->onPlayQueueChanged(Lcom/sonyericsson/music/player/PlayerState;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 245
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 247
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    const-string v1, "key_list_state"

    .line 248
    invoke-virtual {v0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->mListViewState:Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    const-string v1, "key_list_state"

    .line 251
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 564
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getToolbarControl()Lcom/sonyericsson/music/ToolbarControl;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/ToolbarControl;->allowScrollOfToolbar(Z)V

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .line 558
    iget-object p1, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->mPaddedListScroller:Lcom/sonyericsson/music/library/PaddedHeaderListScroller;

    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getToolbarControl()Lcom/sonyericsson/music/ToolbarControl;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/sonyericsson/music/library/PaddedHeaderListScroller;->onPaddedHeaderListScrollStateChanged(Lcom/sonyericsson/music/ToolbarControl;I)V

    return-void
.end method

.method public paddingHeightVisible()I
    .locals 1

    .line 541
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->mTopPaddingView:Landroid/view/View;

    invoke-static {v0}, Lcom/sonyericsson/music/library/PaddedHeaderListScroller;->paddingHeightVisible(Landroid/view/View;)I

    move-result v0

    return v0
.end method
