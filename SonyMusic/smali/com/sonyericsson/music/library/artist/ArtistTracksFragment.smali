.class public Lcom/sonyericsson/music/library/artist/ArtistTracksFragment;
.super Lcom/sonyericsson/music/library/LibraryListFragment;
.source "ArtistTracksFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/library/artist/ArtistTracksFragment$ContextMenuData;
    }
.end annotation


# static fields
.field private static final KEY_AGGREGATOR:Ljava/lang/String; = "aggregator"

.field private static final KEY_ARTIST_ART_URI:Ljava/lang/String; = "artist-art-uri"

.field private static final KEY_ARTIST_NAME:Ljava/lang/String; = "artist-name"

.field private static final KEY_ARTIST_URI:Ljava/lang/String; = "artist-uri"

.field public static final TAG:Ljava/lang/String; = "artist_tracks"


# instance fields
.field private mAggregator:Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

.field private mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

.field private mArtistUri:Landroid/net/Uri;

.field private mShuffleView:Landroid/view/View;

.field private mTracksUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;-><init>()V

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/sonyericsson/music/library/artist/ArtistTracksFragment;->mAggregator:Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    return-void
.end method

.method private getArtistId()J
    .locals 2

    .line 356
    iget-object v0, p0, Lcom/sonyericsson/music/library/artist/ArtistTracksFragment;->mArtistUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 359
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 361
    :catch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Artist id not correct format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Artist id not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getShuffleView()Landroid/view/View;
    .locals 3

    .line 197
    iget-object v0, p0, Lcom/sonyericsson/music/library/artist/ArtistTracksFragment;->mShuffleView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 198
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c0063

    const/4 v2, 0x0

    .line 199
    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/library/artist/ArtistTracksFragment;->mShuffleView:Landroid/view/View;

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/library/artist/ArtistTracksFragment;->mShuffleView:Landroid/view/View;

    return-object v0
.end method

.method public static newInstance(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;)Lcom/sonyericsson/music/library/artist/ArtistTracksFragment;
    .locals 3

    .line 78
    new-instance v0, Lcom/sonyericsson/music/library/artist/ArtistTracksFragment;

    invoke-direct {v0}, Lcom/sonyericsson/music/library/artist/ArtistTracksFragment;-><init>()V

    .line 80
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "artist-uri"

    .line 82
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "artist-art-uri"

    .line 83
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "artist-name"

    .line 84
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "artist_tracks"

    .line 85
    invoke-virtual {p3, p0}, Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;->add(Ljava/lang/String;)Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    const-string p0, "aggregator"

    .line 86
    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 89
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 88
    :goto_0
    invoke-static {p1, p0}, Lcom/sonyericsson/music/common/PaletteUtils;->getColorPick(Landroid/net/Uri;I)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string p1, "key_cached_background_color"

    .line 91
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 94
    :cond_1
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private setShuffleEnabled(Z)V
    .locals 2

    .line 205
    invoke-direct {p0}, Lcom/sonyericsson/music/library/artist/ArtistTracksFragment;->getShuffleView()Landroid/view/View;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    .line 206
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    const v1, 0x7f0901fc

    .line 207
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private validatePlaybackRights(JLcom/sonyericsson/music/MusicActivity;)Z
    .locals 1

    .line 370
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 371
    invoke-static {p1, p3}, Lcom/sonyericsson/music/common/MusicUtils;->validatePlaybackRights(Landroid/net/Uri;Lcom/sonyericsson/music/MusicActivity;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method protected getAdapter()Landroid/widget/CursorAdapter;
    .locals 4

    .line 148
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "artist-name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/sonyericsson/music/library/artist/ArtistTracksFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    if-nez v1, :cond_0

    .line 151
    new-instance v1, Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonyericsson/music/library/artist/ArtistTracksFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    .line 154
    :cond_0
    new-instance v1, Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/music/library/artist/ArtistTracksFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    invoke-direct {v1, v2, v3, v0}, Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter;-><init>(Landroid/content/Context;Lcom/sonyericsson/music/artdecoder/ArtDecoder;Ljava/lang/String;)V

    return-object v1
.end method

.method protected bridge synthetic getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/artist/ArtistTracksFragment;->getAdapter()Landroid/widget/CursorAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected getMatcherUris()[Lcom/sonyericsson/music/library/BaseFragment$MatcherData;
    .locals 5

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 378
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 379
    new-array v1, v2, [Lcom/sonyericsson/music/library/BaseFragment$MatcherData;

    new-instance v3, Lcom/sonyericsson/music/library/BaseFragment$MatcherData;

    .line 381
    sget-boolean v4, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz v4, :cond_0

    const-string v4, "com.sonyericsson.music.musicinfo"

    goto :goto_0

    :cond_0
    const-string v4, "media"

    :goto_0
    invoke-direct {v3, v2, v0, v4}, Lcom/sonyericsson/music/library/BaseFragment$MatcherData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    aput-object v3, v1, v0

    return-object v1
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 19

    move-object/from16 v1, p0

    .line 249
    invoke-super/range {p0 .. p1}, Landroidx/fragment/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    .line 251
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->getContextMenuData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/library/artist/ArtistTracksFragment$ContextMenuData;

    if-eqz v0, :cond_5

    .line 252
    iget-object v3, v0, Lcom/sonyericsson/music/library/artist/ArtistTracksFragment$ContextMenuData;->mCursor:Landroid/database/Cursor;

    if-nez v3, :cond_0

    goto/16 :goto_3

    .line 256
    :cond_0
    iget-object v3, v1, Lcom/sonyericsson/music/library/LibraryBaseFragment;->mPlayerController:Lcom/sonyericsson/music/player/PlayerController;

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/sonyericsson/music/player/PlayerController;->isServiceSet()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 258
    :goto_0
    iget-object v5, v0, Lcom/sonyericsson/music/library/artist/ArtistTracksFragment$ContextMenuData;->mCursor:Landroid/database/Cursor;

    .line 259
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/music/MusicActivity;

    :try_start_0
    const-string v7, "_id"

    .line 261
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 263
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    const-string v8, "title"

    .line 264
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 265
    sget-object v11, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v11, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    const-string v12, "album_id"

    .line 267
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v5, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 268
    sget-object v14, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 269
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    .line 268
    invoke-static {v14, v12}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    const-string v13, "album"

    .line 270
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "artist"

    .line 271
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 272
    invoke-static {v14, v13}, Lcom/sonyericsson/music/common/AlbumArtUtils;->getAlbumArtUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 274
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    packed-switch v16, :pswitch_data_0

    .line 323
    :pswitch_0
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    goto/16 :goto_2

    .line 317
    :pswitch_1
    :try_start_1
    invoke-static {v6, v9, v10}, Lcom/sonyericsson/music/common/TrackActions;->launchEditMusicInfo(Landroid/app/Activity;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 323
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    return v4

    :pswitch_2
    if-eqz v12, :cond_2

    .line 310
    :try_start_2
    iget-object v0, v1, Lcom/sonyericsson/music/library/artist/ArtistTracksFragment;->mArtistUri:Landroid/net/Uri;

    iget-object v2, v1, Lcom/sonyericsson/music/library/artist/ArtistTracksFragment;->mAggregator:Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    move-object/from16 v16, v11

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    invoke-static/range {v12 .. v18}, Lcom/sonyericsson/music/library/AlbumFragment;->newInstance(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;)Lcom/sonyericsson/music/library/AlbumFragment;

    move-result-object v0

    .line 312
    invoke-virtual {v6}, Lcom/sonyericsson/music/MusicActivity;->getMusicFragmentManager()Lcom/sonyericsson/music/MusicFragmentManager;

    move-result-object v2

    const-string v3, "album"

    const/4 v6, 0x0

    invoke-virtual {v2, v0, v3, v6, v4}, Lcom/sonyericsson/music/MusicFragmentManager;->openFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 323
    :cond_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    return v4

    .line 302
    :pswitch_3
    :try_start_3
    sget-object v0, Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;->ARTIST_ID:Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;

    iget-object v3, v1, Lcom/sonyericsson/music/library/artist/ArtistTracksFragment;->mArtistUri:Landroid/net/Uri;

    iget-object v7, v1, Lcom/sonyericsson/music/library/artist/ArtistTracksFragment;->mAggregator:Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    invoke-static {v0, v3, v14, v2, v7}, Lcom/sonyericsson/music/library/artist/ArtistFragment;->newInstance(Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;)Lcom/sonyericsson/music/library/artist/ArtistFragment;

    move-result-object v0

    .line 305
    invoke-virtual {v6}, Lcom/sonyericsson/music/MusicActivity;->getMusicFragmentManager()Lcom/sonyericsson/music/MusicFragmentManager;

    move-result-object v2

    const-string v3, "artist"

    const/4 v6, 0x0

    invoke-virtual {v2, v0, v3, v6, v4}, Lcom/sonyericsson/music/MusicFragmentManager;->openFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 323
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    return v4

    .line 299
    :pswitch_4
    :try_start_4
    invoke-static {v6, v9, v10}, Lcom/sonyericsson/music/common/TrackActions;->addToFavourites(Lcom/sonyericsson/music/MusicActivity;J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 323
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    return v4

    .line 279
    :pswitch_5
    :try_start_5
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const/16 v6, 0x15

    if-ne v2, v6, :cond_3

    const/4 v13, 0x1

    goto :goto_1

    :cond_3
    const/4 v13, 0x0

    :goto_1
    if-eqz v3, :cond_4

    .line 281
    iget v12, v0, Lcom/sonyericsson/music/library/artist/ArtistTracksFragment$ContextMenuData;->mSelectedPosition:I

    .line 282
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/music/library/artist/ArtistTracksFragment;->getArtistId()J

    move-result-wide v2

    .line 283
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    .line 285
    iget-object v8, v1, Lcom/sonyericsson/music/library/LibraryBaseFragment;->mPlayerController:Lcom/sonyericsson/music/player/PlayerController;

    invoke-static/range {v8 .. v13}, Lcom/sonyericsson/music/common/TrackActions;->enqueueTrack(Lcom/sonyericsson/music/player/PlayerController;JLandroid/net/Uri;IZ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 323
    :cond_4
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    return v4

    .line 293
    :pswitch_6
    :try_start_6
    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    long-to-int v2, v9

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/sonyericsson/music/common/Sender;->sendSingleFile(Landroid/content/Context;J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 323
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    return v4

    .line 296
    :pswitch_7
    :try_start_7
    invoke-static {v6, v11, v8}, Lcom/sonyericsson/music/common/TrackActions;->deleteTrack(Lcom/sonyericsson/music/MusicActivity;Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 323
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    return v4

    .line 290
    :pswitch_8
    :try_start_8
    invoke-static {v6, v4, v7, v2}, Lcom/sonyericsson/music/common/TrackActions;->addToDialog(Lcom/sonyericsson/music/MusicActivity;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 323
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    return v4

    :goto_2
    return v0

    :catchall_0
    move-exception v0

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 324
    throw v0

    :cond_5
    :goto_3
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 101
    invoke-super {p0, p1}, Lcom/sonyericsson/music/library/LibraryListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "aggregator"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    iput-object p1, p0, Lcom/sonyericsson/music/library/artist/ArtistTracksFragment;->mAggregator:Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6

    .line 212
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 214
    iget-object p2, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {p2}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getHeaderCount()I

    move-result p2

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    .line 215
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    if-ne v1, p2, :cond_0

    return-void

    .line 221
    :cond_0
    iget-object p2, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {p2}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object p2

    .line 222
    iget-object v2, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v2}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getHeaderCount()I

    move-result v2

    sub-int/2addr v1, v2

    .line 223
    new-instance v2, Lcom/sonyericsson/music/library/artist/ArtistTracksFragment$ContextMenuData;

    invoke-static {p2}, Lcom/sonyericsson/music/common/DBUtils;->copySingleRow(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/sonyericsson/music/library/artist/ArtistTracksFragment$ContextMenuData;-><init>(Landroid/database/Cursor;I)V

    .line 224
    invoke-virtual {p0, v2}, Lcom/sonyericsson/music/library/LibraryListFragment;->setContextMenuData(Ljava/lang/Object;)V

    const-string v1, "title"

    .line 225
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 227
    new-instance v1, Lcom/sonyericsson/music/common/ContextMenuBuilder;

    invoke-direct {v1}, Lcom/sonyericsson/music/common/ContextMenuBuilder;-><init>()V

    .line 230
    iget-object v2, p0, Lcom/sonyericsson/music/library/LibraryBaseFragment;->mPlayerController:Lcom/sonyericsson/music/player/PlayerController;

    if-eqz v2, :cond_2

    .line 231
    invoke-virtual {v2}, Lcom/sonyericsson/music/player/PlayerController;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/music/player/PlayerState;->getCurrentTrack()Lcom/sonyericsson/music/common/Track;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 232
    invoke-virtual {v2}, Lcom/sonyericsson/music/common/Track;->getId()J

    move-result-wide v2

    goto :goto_0

    :cond_1
    const-wide/16 v2, -0x1

    .line 234
    :goto_0
    iget-wide v4, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    cmp-long p3, v4, v2

    if-eqz p3, :cond_2

    .line 235
    invoke-virtual {v1, v0}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setDeleteFromStorage(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    .line 239
    :cond_2
    invoke-virtual {v1, v0}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setSend(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    .line 241
    iget-object p3, p0, Lcom/sonyericsson/music/library/LibraryBaseFragment;->mPlayerController:Lcom/sonyericsson/music/player/PlayerController;

    if-eqz p3, :cond_3

    .line 242
    invoke-virtual {p3}, Lcom/sonyericsson/music/player/PlayerController;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sonyericsson/music/player/PlayerState;->isInPlayQueueMode()Z

    move-result p3

    goto :goto_1

    :cond_3
    const/4 p3, 0x0

    .line 243
    :goto_1
    invoke-virtual {v1, p2}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setTitle(Ljava/lang/String;)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setEnqueue(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setAddTo(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setGoToAlbum(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object p2

    .line 244
    invoke-virtual {p2, v0}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setGoToArtist(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setEditMusicInfo(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setAddToFavorites(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->build(Landroid/view/ContextMenu;)V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .line 159
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/sonyericsson/music/MusicActivity;

    if-eqz v1, :cond_0

    .line 161
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 162
    invoke-direct {p0}, Lcom/sonyericsson/music/library/artist/ArtistTracksFragment;->getArtistId()J

    move-result-wide p1

    .line 164
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/library/artist/ArtistTracksFragment;->mTracksUri:Landroid/net/Uri;

    .line 167
    invoke-static {}, Lcom/sonyericsson/music/common/LibraryArtistTracksQueryParams;->getUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v0, 0x1

    .line 168
    invoke-static {v0}, Lcom/sonyericsson/music/common/LibraryArtistTracksQueryParams;->getColumns(Z)[Ljava/lang/String;

    move-result-object v3

    .line 169
    invoke-static {p1, p2}, Lcom/sonyericsson/music/common/LibraryArtistTracksQueryParams;->getSelection(J)Ljava/lang/String;

    move-result-object v4

    .line 170
    invoke-static {}, Lcom/sonyericsson/music/common/LibraryArtistTracksQueryParams;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v5

    .line 171
    invoke-static {}, Lcom/sonyericsson/music/common/LibraryArtistTracksQueryParams;->getSortOrder()Ljava/lang/String;

    move-result-object v6

    .line 173
    new-instance p1, Lcom/sonyericsson/music/common/HighResAwarePermissionCursorLoader;

    const-string v7, "android.permission.READ_EXTERNAL_STORAGE"

    sget-object v8, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;->TRACK:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lcom/sonyericsson/music/common/HighResAwarePermissionCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 119
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/music/library/LibraryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 121
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "artist-uri"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/net/Uri;

    iput-object p2, p0, Lcom/sonyericsson/music/library/artist/ArtistTracksFragment;->mArtistUri:Landroid/net/Uri;

    const p2, 0x7f10002d

    .line 123
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sonyericsson/music/library/BaseFragment;->setTitle(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/sonyericsson/music/library/artist/ArtistTracksFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->destroy()V

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lcom/sonyericsson/music/library/artist/ArtistTracksFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    .line 113
    :cond_0
    invoke-super {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Lcom/sonyericsson/music/library/artist/ArtistTracksFragment;->mShuffleView:Landroid/view/View;

    .line 131
    invoke-super {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->onDestroyView()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 330
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {p1, p3}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getItemViewType(I)I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/4 v1, -0x2

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 331
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/music/library/artist/ArtistTracksFragment;->mTracksUri:Landroid/net/Uri;

    if-nez v1, :cond_1

    return-void

    .line 334
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/MusicActivity;

    .line 336
    iget-object v2, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v2}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getHeaderCount()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    if-ne p3, v3, :cond_2

    const/4 p2, 0x1

    :cond_2
    if-nez p2, :cond_3

    .line 340
    invoke-direct {p0, p4, p5, v1}, Lcom/sonyericsson/music/library/artist/ArtistTracksFragment;->validatePlaybackRights(JLcom/sonyericsson/music/MusicActivity;)Z

    move-result p4

    if-eqz p4, :cond_4

    :cond_3
    if-eqz p1, :cond_5

    if-nez p2, :cond_5

    :cond_4
    return-void

    :cond_5
    sub-int/2addr p3, v2

    .line 345
    new-instance p1, Lcom/sonyericsson/music/common/OpenAndPlayConditions;

    invoke-direct {p1}, Lcom/sonyericsson/music/common/OpenAndPlayConditions;-><init>()V

    .line 346
    invoke-virtual {p1, p3}, Lcom/sonyericsson/music/common/OpenAndPlayConditions;->setTracksPosition(I)Lcom/sonyericsson/music/common/OpenAndPlayConditions;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/common/OpenAndPlayConditions;->setShuffle(Z)Lcom/sonyericsson/music/common/OpenAndPlayConditions;

    move-result-object p1

    .line 348
    iget-object p2, p0, Lcom/sonyericsson/music/library/artist/ArtistTracksFragment;->mTracksUri:Landroid/net/Uri;

    invoke-virtual {v1, p2, p1}, Lcom/sonyericsson/music/MusicActivity;->openAndPlayContent(Landroid/net/Uri;Lcom/sonyericsson/music/common/OpenAndPlayConditions;)Z

    .line 349
    iget-object p1, p0, Lcom/sonyericsson/music/library/artist/ArtistTracksFragment;->mAggregator:Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    if-eqz p1, :cond_6

    .line 350
    invoke-virtual {p1, v1}, Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;->sendPlay(Landroid/content/Context;)V

    :cond_6
    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V
    .locals 1
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

    .line 183
    iget-boolean v0, p0, Lcom/sonyericsson/music/library/LibraryBaseFragment;->mViewDestroyed:Z

    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    .line 184
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->removeNoContentHeaderView()V

    .line 190
    invoke-direct {p0}, Lcom/sonyericsson/music/library/artist/ArtistTracksFragment;->getShuffleView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/library/LibraryListFragment;->addHeader(Landroid/view/View;)Z

    .line 191
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/music/library/LibraryListFragment;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V

    goto :goto_1

    .line 185
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/music/library/artist/ArtistTracksFragment;->getShuffleView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/library/LibraryListFragment;->removeHeader(Landroid/view/View;)V

    .line 186
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->showNoContentHeaderView()V

    .line 187
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/music/library/LibraryListFragment;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 55
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/music/library/artist/ArtistTracksFragment;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onNowPlayingInfoChanged(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)V
    .locals 3

    .line 387
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter;

    if-eqz p1, :cond_0

    .line 389
    invoke-virtual {p1}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->getSourceUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/music/library/BaseFragment;->matchUri(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 390
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter;->setNowPlayingInfo(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 392
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter;->setNowPlayingInfo(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)V

    .line 394
    :goto_0
    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 142
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 143
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->getNowPlayingUpdater()Lcom/sonyericsson/music/NowPlayingUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/music/NowPlayingUpdater;->removeListener(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfoListener;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 136
    invoke-super {p0}, Lcom/sonyericsson/music/library/BaseFragment;->onResume()V

    .line 137
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->getNowPlayingUpdater()Lcom/sonyericsson/music/NowPlayingUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/music/NowPlayingUpdater;->addListener(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfoListener;)V

    return-void
.end method
