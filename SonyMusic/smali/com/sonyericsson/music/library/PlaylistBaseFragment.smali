.class public abstract Lcom/sonyericsson/music/library/PlaylistBaseFragment;
.super Lcom/sonyericsson/music/library/LibraryListFragment;
.source "PlaylistBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/library/PlaylistBaseFragment$ContextMenuData;,
        Lcom/sonyericsson/music/library/PlaylistBaseFragment$UpdatePlaylistArtTask;,
        Lcom/sonyericsson/music/library/PlaylistBaseFragment$PlaylistArtDecodedListener;
    }
.end annotation


# static fields
.field protected static final FADE_IN_FADE_OUT_DURATION:I = 0xc8

.field private static final FRAGMENT_ALPHA_TRANSITION_MILLIS:J = 0x190L

.field protected static final KEY_AGGREGATOR:Ljava/lang/String; = "aggregator"

.field protected static final KEY_PLAYLIST_USER_CREATED:Ljava/lang/String; = "user_created"

.field protected static final KEY_TITLE_RESOURCE_ID:Ljava/lang/String; = "title_resource_id"

.field protected static final REQUEST_CODE_METADATA:I


# instance fields
.field protected mActivity:Lcom/sonyericsson/music/MusicActivity;

.field protected mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

.field protected mAudioColumnId:Ljava/lang/String;

.field protected mIsWriteGranted:Z

.field protected mNbrOfTracks:I

.field protected mPlaylistArtDefaultImage:Landroid/widget/ImageView;

.field protected mPlaylistArtImage:Landroid/widget/ImageView;

.field protected mPlaylistEmpty:Z

.field private mRemovePlaylistData:Lcom/sonyericsson/music/playlist/PlaylistAsyncDataRemoveFromPlaylist;

.field protected mShuffleView:Landroid/view/View;

.field protected mTracksUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;-><init>()V

    const/4 v0, -0x1

    .line 90
    iput v0, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->mNbrOfTracks:I

    const-string v0, "audio_id"

    .line 106
    iput-object v0, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->mAudioColumnId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->mIsWriteGranted:Z

    return-void
.end method

.method protected static doCrossFade(J)Z
    .locals 3

    .line 305
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    const-wide/16 p0, 0x190

    cmp-long v2, v0, p0

    if-lez v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private validatePlaybackRights(ILcom/sonyericsson/music/MusicActivity;)Z
    .locals 3

    .line 564
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 565
    invoke-virtual {v0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/database/Cursor;

    if-eqz p1, :cond_0

    const-string v0, "audio_id"

    .line 568
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 567
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 569
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 571
    invoke-static {p1, p2}, Lcom/sonyericsson/music/common/MusicUtils;->validatePlaybackRights(Landroid/net/Uri;Lcom/sonyericsson/music/MusicActivity;)Z

    move-result p1

    return p1

    :cond_0
    return v1

    :cond_1
    return v1
.end method


# virtual methods
.method protected abstract getAdapter()Landroid/widget/CursorAdapter;
.end method

.method protected bridge synthetic getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->getAdapter()Landroid/widget/CursorAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getAggregator()Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;
.end method

.method protected abstract getEditMusicInfoReloadFragment()Lcom/sonyericsson/music/library/PlaylistBaseFragment;
.end method

.method protected abstract getFragmentTag()Ljava/lang/String;
.end method

.method protected getLocalPlaylistId()J
    .locals 1

    .line 311
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected getShuffleView()Landroid/view/View;
    .locals 3

    .line 243
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->mShuffleView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 244
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c0063

    const/4 v2, 0x0

    .line 245
    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->mShuffleView:Landroid/view/View;

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->mShuffleView:Landroid/view/View;

    return-object v0
.end method

.method protected loadImageFromProvider(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;I)Z
    .locals 9

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v8, p7

    .line 605
    invoke-virtual/range {v0 .. v8}, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->loadImageFromProvider(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method protected loadImageFromProvider(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;I)Z
    .locals 0

    if-eqz p6, :cond_1

    if-eqz p2, :cond_1

    .line 588
    invoke-static {p2, p3, p4, p5}, Lcom/sonyericsson/music/common/AlbumArtUtils;->getUnique2by2Images(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 590
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-eqz p3, :cond_0

    .line 591
    invoke-static {p1, p2}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$PlaylistArt;->getPlaylistArtUri(Landroid/content/Context;Ljava/util/List;)Landroid/net/Uri;

    move-result-object p1

    .line 592
    invoke-virtual {p0, p6, p1, p7, p8}, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->updateAndLoadImagesFromProvider(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;I)V

    const/4 p1, 0x1

    goto :goto_0

    .line 596
    :cond_0
    invoke-virtual {p0, p6}, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->removeImageFromProvider(Landroid/net/Uri;)V

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-nez p1, :cond_0

    if-ne p2, v1, :cond_0

    const-string v3, "id"

    const-wide/16 v4, -0x1

    .line 648
    invoke-virtual {p3, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v3, v6, v4

    if-eqz v3, :cond_0

    .line 650
    iget-object v3, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-static {v3}, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils;->clearCaches(Landroid/content/Context;)V

    .line 651
    iget-object v3, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v3}, Lcom/sonyericsson/music/MusicActivity;->getMusicFragmentManager()Lcom/sonyericsson/music/MusicFragmentManager;

    move-result-object v3

    .line 654
    iget-object v4, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/music/MusicFragmentManager;->popBackStack(Landroid/app/Activity;)V

    .line 655
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->getEditMusicInfoReloadFragment()Lcom/sonyericsson/music/library/PlaylistBaseFragment;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 657
    invoke-virtual {v4}, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v0, v2}, Lcom/sonyericsson/music/MusicFragmentManager;->openFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZZ)V

    :cond_0
    const/16 v3, 0x141

    if-ne p1, v3, :cond_2

    .line 662
    iget-object v3, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->mRemovePlaylistData:Lcom/sonyericsson/music/playlist/PlaylistAsyncDataRemoveFromPlaylist;

    if-eqz v3, :cond_2

    if-ne p2, v1, :cond_1

    .line 664
    new-instance v1, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;-><init>(Landroid/app/Activity;)V

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->mRemovePlaylistData:Lcom/sonyericsson/music/playlist/PlaylistAsyncDataRemoveFromPlaylist;

    aput-object v4, v3, v0

    invoke-virtual {v1, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 665
    iput-boolean v2, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->mIsWriteGranted:Z

    :cond_1
    const/4 v0, 0x0

    .line 667
    iput-object v0, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->mRemovePlaylistData:Lcom/sonyericsson/music/playlist/PlaylistAsyncDataRemoveFromPlaylist;

    .line 669
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 131
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 133
    check-cast p1, Lcom/sonyericsson/music/MusicActivity;

    iput-object p1, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 16

    move-object/from16 v0, p0

    .line 512
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->getContextMenuData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/library/PlaylistBaseFragment$ContextMenuData;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 515
    invoke-virtual {v1}, Lcom/sonyericsson/music/library/PlaylistBaseFragment$ContextMenuData;->getContentValues()Landroid/content/ContentValues;

    move-result-object v3

    .line 516
    invoke-virtual {v1}, Lcom/sonyericsson/music/library/PlaylistBaseFragment$ContextMenuData;->getSelectedItemPosition()I

    move-result v1

    .line 517
    iget-object v4, v0, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->mAudioColumnId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-string v6, "title"

    .line 518
    invoke-virtual {v3, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v6, "artist_id"

    .line 519
    invoke-virtual {v3, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "album"

    .line 520
    invoke-virtual {v3, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v7, "artist"

    .line 521
    invoke-virtual {v3, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 522
    sget-object v7, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    const-string v4, "album_id"

    .line 523
    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_0

    return v2

    .line 527
    :cond_0
    invoke-static {v13, v14}, Lcom/sonyericsson/music/common/AlbumArtUtils;->getAlbumArtUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 528
    sget-object v2, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 529
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    .line 528
    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 530
    sget-object v2, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 531
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 530
    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 533
    new-instance v2, Lcom/sonyericsson/music/common/MenuUtils$TrackData;

    const/4 v15, 0x1

    move-object v7, v2

    invoke-direct/range {v7 .. v15}, Lcom/sonyericsson/music/common/MenuUtils$TrackData;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 536
    iget-object v3, v0, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->mTracksUri:Landroid/net/Uri;

    move-object/from16 v4, p1

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->onLocalContextItemSelected(Landroid/view/MenuItem;ILcom/sonyericsson/music/common/MenuUtils$TrackData;Landroid/net/Uri;)Z

    move-result v1

    return v1

    :cond_1
    return v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 112
    invoke-super {p0, p1}, Lcom/sonyericsson/music/library/LibraryListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 113
    new-instance p1, Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-direct {p1, v0}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2

    .line 387
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 390
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget p2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getHeaderCount()I

    move-result v0

    if-ge p2, v0, :cond_0

    return-void

    .line 394
    :cond_0
    iget-object p2, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {p2}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object p2

    .line 395
    new-instance v0, Lcom/sonyericsson/music/common/ContextMenuBuilder;

    invoke-direct {v0}, Lcom/sonyericsson/music/common/ContextMenuBuilder;-><init>()V

    .line 396
    invoke-static {p2}, Lcom/sonyericsson/music/common/DBUtils;->copySingleRowValues(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object p2

    .line 397
    iget p3, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget-object v1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    .line 398
    invoke-virtual {v1}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getHeaderCount()I

    move-result v1

    sub-int/2addr p3, v1

    .line 400
    new-instance v1, Lcom/sonyericsson/music/library/PlaylistBaseFragment$ContextMenuData;

    invoke-direct {v1, p2, p3}, Lcom/sonyericsson/music/library/PlaylistBaseFragment$ContextMenuData;-><init>(Landroid/content/ContentValues;I)V

    .line 401
    invoke-virtual {p0, v1}, Lcom/sonyericsson/music/library/LibraryListFragment;->setContextMenuData(Ljava/lang/Object;)V

    .line 403
    invoke-virtual {p0, v0, p2}, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->onPopulateContextMenu(Lcom/sonyericsson/music/common/ContextMenuBuilder;Landroid/content/ContentValues;)V

    .line 405
    iget-object p2, p0, Lcom/sonyericsson/music/library/LibraryBaseFragment;->mPlayerController:Lcom/sonyericsson/music/player/PlayerController;

    if-eqz p2, :cond_1

    .line 406
    invoke-virtual {p2}, Lcom/sonyericsson/music/player/PlayerController;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sonyericsson/music/player/PlayerState;->isInPlayQueueMode()Z

    move-result p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 407
    :goto_0
    invoke-virtual {v0, p2}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setEnqueue(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    .line 408
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->build(Landroid/view/ContextMenu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 118
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/music/library/LibraryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 124
    invoke-virtual {p0, p2}, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->showHeaderInfo(Z)V

    :cond_0
    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {v0}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->destroy()V

    const/4 v0, 0x0

    .line 166
    iput-object v0, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    .line 169
    :cond_0
    invoke-super {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    .line 150
    iput-object v0, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->mShuffleView:Landroid/view/View;

    .line 152
    invoke-super {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->onDestroyView()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 157
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    .line 159
    iput-object v0, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 543
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {p1, p3}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getItemViewType(I)I

    move-result p1

    const/4 p2, 0x1

    const/4 p4, 0x0

    const/4 p5, -0x2

    if-ne p1, p5, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 544
    :goto_0
    iget-boolean p5, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->mPlaylistEmpty:Z

    if-eqz p5, :cond_1

    return-void

    .line 548
    :cond_1
    iget-object p5, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {p5}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getHeaderCount()I

    move-result p5

    add-int/lit8 v0, p5, -0x1

    if-eqz p1, :cond_2

    if-eq p3, v0, :cond_2

    return-void

    :cond_2
    if-ne p3, v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    sub-int p4, p3, p5

    .line 559
    :goto_2
    iget-object p1, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->mTracksUri:Landroid/net/Uri;

    invoke-virtual {p0, p1, p4, p2}, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->playLocalPlaylist(Landroid/net/Uri;IZ)V

    .line 560
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->getAggregator()Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    move-result-object p1

    iget-object p2, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    iget p3, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->mNbrOfTracks:I

    int-to-long p3, p3

    invoke-virtual {p1, p2, p3, p4}, Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;->sendPlay(Landroid/content/Context;J)V

    return-void
.end method

.method protected onLoadFinishedTracks(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .line 211
    iget-boolean v0, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->mPlaylistEmpty:Z

    .line 213
    iget-boolean v1, p0, Lcom/sonyericsson/music/library/LibraryBaseFragment;->mViewDestroyed:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 214
    invoke-virtual {p0, v1}, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->showHeaderInfo(Z)V

    if-eqz p2, :cond_1

    .line 215
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 224
    iput-boolean v1, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->mPlaylistEmpty:Z

    .line 225
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->removeNoContentHeaderView()V

    .line 226
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->getShuffleView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/music/library/LibraryListFragment;->addHeader(Landroid/view/View;)Z

    .line 228
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/music/library/LibraryListFragment;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V

    .line 229
    invoke-virtual {p0, p2}, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->updateHeaderInfo(Landroid/database/Cursor;)V

    goto :goto_1

    .line 217
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->mShuffleView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/sonyericsson/music/library/LibraryListFragment;->removeHeader(Landroid/view/View;)V

    .line 218
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->showNoContentHeaderView()V

    .line 219
    invoke-virtual {p0, p2}, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->updateHeaderInfo(Landroid/database/Cursor;)V

    .line 220
    iput-boolean v1, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->mPlaylistEmpty:Z

    .line 221
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/music/library/LibraryListFragment;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V

    .line 233
    :cond_2
    :goto_1
    iget-boolean p1, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->mPlaylistEmpty:Z

    if-eq v0, p1, :cond_3

    .line 234
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 237
    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_3
    return-void
.end method

.method protected onLocalContextItemSelected(Landroid/view/MenuItem;ILcom/sonyericsson/music/common/MenuUtils$TrackData;Landroid/net/Uri;)Z
    .locals 16

    move-object/from16 v0, p0

    .line 413
    invoke-virtual/range {p3 .. p3}, Lcom/sonyericsson/music/common/MenuUtils$TrackData;->getTrackUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 414
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 415
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/music/MusicActivity;

    .line 416
    iget-object v5, v0, Lcom/sonyericsson/music/library/LibraryBaseFragment;->mPlayerController:Lcom/sonyericsson/music/player/PlayerController;

    const/4 v6, 0x0

    const/4 v8, 0x1

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/sonyericsson/music/player/PlayerController;->isServiceSet()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 417
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    .line 501
    :pswitch_1
    invoke-static {v0, v3, v4, v6}, Lcom/sonyericsson/music/common/TrackActions;->launchEditMusicInfoWithResult(Landroidx/fragment/app/Fragment;JI)V

    return v8

    .line 463
    :pswitch_2
    invoke-static {v2, v3, v4}, Lcom/sonyericsson/music/common/TrackActions;->removeFromFavorites(Lcom/sonyericsson/music/MusicActivity;J)V

    return v8

    .line 493
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->getAggregator()Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    move-result-object v15

    .line 494
    invoke-virtual/range {p3 .. p3}, Lcom/sonyericsson/music/common/MenuUtils$TrackData;->getAlbumUri()Landroid/net/Uri;

    move-result-object v9

    .line 495
    invoke-virtual/range {p3 .. p3}, Lcom/sonyericsson/music/common/MenuUtils$TrackData;->getAlbumName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p3 .. p3}, Lcom/sonyericsson/music/common/MenuUtils$TrackData;->getArtistName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p3 .. p3}, Lcom/sonyericsson/music/common/MenuUtils$TrackData;->getAlbumArtUri()Landroid/net/Uri;

    move-result-object v12

    .line 496
    invoke-virtual/range {p3 .. p3}, Lcom/sonyericsson/music/common/MenuUtils$TrackData;->getTrackUri()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual/range {p3 .. p3}, Lcom/sonyericsson/music/common/MenuUtils$TrackData;->getArtistUri()Landroid/net/Uri;

    move-result-object v14

    .line 494
    invoke-static/range {v9 .. v15}, Lcom/sonyericsson/music/library/AlbumFragment;->newInstance(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;)Lcom/sonyericsson/music/library/AlbumFragment;

    move-result-object v1

    .line 497
    invoke-virtual {v2}, Lcom/sonyericsson/music/MusicActivity;->getMusicFragmentManager()Lcom/sonyericsson/music/MusicFragmentManager;

    move-result-object v2

    const-string v3, "album"

    invoke-virtual {v2, v1, v3, v6, v8}, Lcom/sonyericsson/music/MusicFragmentManager;->openFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZZ)V

    return v8

    .line 469
    :pswitch_4
    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 470
    new-instance v3, Lcom/sonyericsson/music/library/PlaylistBaseFragment$1;

    move-object/from16 v4, p3

    invoke-direct {v3, v0, v4, v1, v2}, Lcom/sonyericsson/music/library/PlaylistBaseFragment$1;-><init>(Lcom/sonyericsson/music/library/PlaylistBaseFragment;Lcom/sonyericsson/music/common/MenuUtils$TrackData;Landroid/content/Context;Lcom/sonyericsson/music/MusicActivity;)V

    new-array v1, v6, [Ljava/lang/Void;

    .line 489
    invoke-virtual {v3, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return v8

    .line 466
    :pswitch_5
    iget-object v1, v0, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-static {v1, v3, v4}, Lcom/sonyericsson/music/common/TrackActions;->addToFavourites(Lcom/sonyericsson/music/MusicActivity;J)V

    return v8

    .line 422
    :pswitch_6
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/16 v2, 0x15

    if-ne v1, v2, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    if-eqz v5, :cond_2

    .line 424
    iget-object v2, v0, Lcom/sonyericsson/music/library/LibraryBaseFragment;->mPlayerController:Lcom/sonyericsson/music/player/PlayerController;

    move-object/from16 v5, p4

    move/from16 v6, p2

    invoke-static/range {v2 .. v7}, Lcom/sonyericsson/music/common/TrackActions;->enqueueTrack(Lcom/sonyericsson/music/player/PlayerController;JLandroid/net/Uri;IZ)V

    :cond_2
    return v8

    :pswitch_7
    if-eqz p4, :cond_5

    .line 439
    invoke-virtual/range {p4 .. p4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sonyericsson.music.musicinfo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 440
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->getLocalPlaylistId()J

    move-result-wide v1

    .line 441
    sget-boolean v3, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz v3, :cond_4

    iget-boolean v3, v0, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->mIsWriteGranted:Z

    if-nez v3, :cond_4

    const/16 v3, 0x141

    .line 442
    invoke-static {v0, v3, v1, v2}, Lcom/sonyericsson/music/common/PlaylistActions;->requestWritePermission(Landroidx/fragment/app/Fragment;IJ)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 444
    new-instance v3, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataRemoveFromPlaylist;

    long-to-int v2, v1

    new-array v1, v8, [Ljava/lang/Long;

    .line 446
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v4

    check-cast v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget-wide v4, v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    .line 445
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v3, v2, v1}, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataRemoveFromPlaylist;-><init>(ILjava/util/Collection;)V

    iput-object v3, v0, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->mRemovePlaylistData:Lcom/sonyericsson/music/playlist/PlaylistAsyncDataRemoveFromPlaylist;

    goto :goto_2

    .line 448
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1000e9

    invoke-static {v1, v2, v8}, Lcom/sonyericsson/music/common/MusicToast;->show(Landroid/content/Context;II)V

    :goto_2
    return v6

    .line 454
    :cond_4
    new-instance v3, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataRemoveFromPlaylist;

    long-to-int v2, v1

    new-array v1, v8, [Ljava/lang/Long;

    .line 456
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v4

    check-cast v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget-wide v4, v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    .line 455
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v3, v2, v1}, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataRemoveFromPlaylist;-><init>(ILjava/util/Collection;)V

    .line 457
    new-instance v1, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;-><init>(Landroid/app/Activity;)V

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return v8

    .line 433
    :pswitch_8
    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    long-to-int v2, v3

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/music/common/Sender;->sendSingleFile(Landroid/content/Context;J)V

    return v8

    :pswitch_9
    move-object/from16 v4, p3

    .line 436
    invoke-virtual/range {p3 .. p3}, Lcom/sonyericsson/music/common/MenuUtils$TrackData;->getTrackUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Lcom/sonyericsson/music/common/MenuUtils$TrackData;->getTrackName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/sonyericsson/music/common/TrackActions;->deleteTrack(Lcom/sonyericsson/music/MusicActivity;Landroid/net/Uri;Ljava/lang/String;)V

    return v8

    :pswitch_a
    const/4 v3, 0x0

    .line 430
    invoke-static {v2, v8, v1, v3}, Lcom/sonyericsson/music/common/TrackActions;->addToDialog(Lcom/sonyericsson/music/MusicActivity;ZLjava/lang/String;Ljava/lang/String;)V

    return v8

    :cond_5
    :goto_3
    return v6

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_6
    .end packed-switch
.end method

.method public onNowPlayingInfoChanged(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)V
    .locals 3

    .line 627
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/library/PlaylistAdapter;

    if-eqz p1, :cond_0

    .line 629
    invoke-virtual {p1}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->getSourceUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/music/library/BaseFragment;->matchUri(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 630
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/library/PlaylistAdapter;->setNowPlayingInfo(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 637
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/library/PlaylistAdapter;->setNowPlayingInfo(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)V

    .line 639
    :goto_0
    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 144
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 145
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->getNowPlayingUpdater()Lcom/sonyericsson/music/NowPlayingUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/music/NowPlayingUpdater;->removeListener(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfoListener;)V

    return-void
.end method

.method protected onPopulateContextMenu(Lcom/sonyericsson/music/common/ContextMenuBuilder;Landroid/content/ContentValues;)V
    .locals 3

    const-string v0, "title"

    .line 363
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 364
    iget-object v1, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->mAudioColumnId:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 365
    sget-object p2, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p2, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p2

    .line 367
    invoke-virtual {p0, p1, p2, v0}, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->onPopulateLocalContextMenu(Lcom/sonyericsson/music/common/ContextMenuBuilder;Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method protected onPopulateLocalContextMenu(Lcom/sonyericsson/music/common/ContextMenuBuilder;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 4

    .line 336
    invoke-virtual {p1, p3}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setTitle(Ljava/lang/String;)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    .line 338
    invoke-static {p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide p2

    .line 340
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryBaseFragment;->mPlayerController:Lcom/sonyericsson/music/player/PlayerController;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 341
    invoke-virtual {v0}, Lcom/sonyericsson/music/player/PlayerController;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/player/PlayerState;->getCurrentTrack()Lcom/sonyericsson/music/common/Track;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getId()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, -0x1

    :goto_0
    cmp-long v0, v2, p2

    if-eqz v0, :cond_1

    .line 345
    invoke-virtual {p1, v1}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setDeleteFromStorage(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    .line 349
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "user_created"

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 351
    invoke-virtual {p1, v1}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setRemoveFromPlaylist(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    .line 354
    :cond_2
    invoke-virtual {p1, v1}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setSend(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    .line 355
    invoke-virtual {p1, v1}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setAddTo(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    .line 356
    invoke-virtual {p1, v1}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setGoToAlbum(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    .line 357
    invoke-virtual {p1, v1}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setGoToArtist(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    .line 358
    invoke-virtual {p1, v1}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setEditMusicInfo(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    .line 359
    invoke-virtual {p1, v1}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setAddToFavorites(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 138
    invoke-super {p0}, Lcom/sonyericsson/music/library/BaseFragment;->onResume()V

    .line 139
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->getNowPlayingUpdater()Lcom/sonyericsson/music/NowPlayingUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/music/NowPlayingUpdater;->addListener(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfoListener;)V

    return-void
.end method

.method protected playLocalPlaylist(Landroid/net/Uri;IZ)V
    .locals 5

    .line 316
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->getLocalPlaylistId()J

    move-result-wide v0

    .line 318
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/MusicActivity;

    if-nez p3, :cond_0

    .line 321
    invoke-direct {p0, p2, p1}, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->validatePlaybackRights(ILcom/sonyericsson/music/MusicActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    long-to-int v1, v0

    .line 327
    invoke-static {v1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$Members;->getContentUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 328
    new-instance v1, Lcom/sonyericsson/music/common/OpenAndPlayConditions;

    invoke-direct {v1}, Lcom/sonyericsson/music/common/OpenAndPlayConditions;-><init>()V

    .line 329
    invoke-virtual {v1, p2}, Lcom/sonyericsson/music/common/OpenAndPlayConditions;->setTracksPosition(I)Lcom/sonyericsson/music/common/OpenAndPlayConditions;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/sonyericsson/music/common/OpenAndPlayConditions;->setShuffle(Z)Lcom/sonyericsson/music/common/OpenAndPlayConditions;

    move-result-object p2

    .line 331
    invoke-virtual {p1, v0, p2}, Lcom/sonyericsson/music/MusicActivity;->openAndPlayContent(Landroid/net/Uri;Lcom/sonyericsson/music/common/OpenAndPlayConditions;)Z

    :cond_1
    return-void
.end method

.method protected removeImageFromProvider(Landroid/net/Uri;)V
    .locals 3

    .line 622
    new-instance v0, Lcom/sonyericsson/music/library/PlaylistBaseFragment$UpdatePlaylistArtTask;

    iget-object v1, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/sonyericsson/music/library/PlaylistBaseFragment$UpdatePlaylistArtTask;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected setHeaderInfoNbrOfTracks(Landroid/database/Cursor;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 190
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 192
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mTitleHeaderView:Lcom/sonyericsson/music/ui/LibraryImageHeaderLayout;

    const v2, 0x7f0901eb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const v3, 0x7f10018d

    .line 194
    new-array v2, v2, [Ljava/lang/Object;

    .line 195
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    .line 194
    invoke-virtual {p0, v3, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const p1, 0x7f10018e

    .line 196
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 197
    :goto_1
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method protected setPlaylistArt(Landroid/database/Cursor;)V
    .locals 0

    return-void
.end method

.method protected showHeaderInfo(Z)V
    .locals 1

    .line 202
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->getHeaderView()Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    if-eqz v0, :cond_1

    .line 206
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method protected updateAndLoadImagesFromProvider(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;I)V
    .locals 9

    .line 611
    new-instance v0, Lcom/sonyericsson/music/library/PlaylistBaseFragment$UpdatePlaylistArtTask;

    iget-object v1, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/sonyericsson/music/library/PlaylistBaseFragment$UpdatePlaylistArtTask;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array v1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 613
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    if-eqz p3, :cond_0

    .line 614
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p1

    move v4, p1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 615
    :goto_0
    new-instance v8, Lcom/sonyericsson/music/library/PlaylistBaseFragment$PlaylistArtDecodedListener;

    iget-object p1, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->mPlaylistArtImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->mPlaylistArtDefaultImage:Landroid/widget/ImageView;

    invoke-direct {v8, p1, v0, v1, p4}, Lcom/sonyericsson/music/library/PlaylistBaseFragment$PlaylistArtDecodedListener;-><init>(Landroid/app/Activity;Landroid/widget/ImageView;Landroid/widget/ImageView;I)V

    .line 617
    iget-object v2, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    move v5, v6

    move-object v7, p3

    invoke-virtual/range {v2 .. v8}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->load(Ljava/lang/String;IIILjava/lang/String;Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;)Z

    return-void
.end method

.method protected updateHeaderInfo(Landroid/database/Cursor;)V
    .locals 0

    .line 178
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->setHeaderInfoNbrOfTracks(Landroid/database/Cursor;)V

    .line 179
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->setPlaylistArt(Landroid/database/Cursor;)V

    if-eqz p1, :cond_0

    .line 180
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->mNbrOfTracks:I

    return-void
.end method

.method protected updateTotalDuration(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 373
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    const/4 v1, -0x1

    .line 374
    invoke-interface {p1, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/4 v1, 0x0

    .line 375
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    int-to-long v1, v1

    .line 376
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    add-long/2addr v1, v3

    long-to-int v1, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 379
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mTitleHeaderView:Lcom/sonyericsson/music/ui/LibraryImageHeaderLayout;

    const p2, 0x7f0901ec

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 380
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 382
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const v0, 0xea60

    div-int/2addr v1, v0

    invoke-static {p2, v1}, Lcom/sonyericsson/music/common/StringUtils;->formatDurationHHMM(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    .line 381
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
