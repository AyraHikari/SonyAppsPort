.class public Lcom/sonyericsson/music/library/SmartPlaylistFragment;
.super Lcom/sonyericsson/music/library/PlaylistBaseFragment;
.source "SmartPlaylistFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/library/SmartPlaylistFragment$SmartPlaylistTracksLoader;,
        Lcom/sonyericsson/music/library/SmartPlaylistFragment$SmartPlaylistAdapter;
    }
.end annotation


# static fields
.field private static final KEY_PLAYLIST_ID:Ljava/lang/String; = "playlist-id"

.field private static final KEY_PLAYLIST_TYPE:Ljava/lang/String; = "playlist-type"

.field public static final TAG:Ljava/lang/String; = "SmartPlaylist"


# instance fields
.field private mAggregator:Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

.field private mPlaylistData:Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;

.field private mTracksUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/sonyericsson/music/library/PlaylistBaseFragment;-><init>()V

    return-void
.end method

.method private getPlaylistType()Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;
    .locals 2

    .line 147
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "playlist-type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    return-object v0
.end method

.method public static newInstance(Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;Landroid/net/Uri;Ljava/lang/String;)Lcom/sonyericsson/music/library/SmartPlaylistFragment;
    .locals 3

    .line 78
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    new-instance v0, Lcom/sonyericsson/music/library/SmartPlaylistFragment;

    invoke-direct {v0}, Lcom/sonyericsson/music/library/SmartPlaylistFragment;-><init>()V

    .line 82
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "playlist-type"

    .line 83
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 84
    invoke-virtual {p0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;->add(Ljava/lang/String;)Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    const-string p0, "aggregator"

    .line 85
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "playlist-id"

    .line 86
    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    .line 88
    invoke-static {p2, p0}, Lcom/sonyericsson/music/common/PaletteUtils;->getColorPick(Landroid/net/Uri;I)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "key_cached_background_color"

    .line 90
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 93
    :cond_0
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0

    .line 79
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Playlist id can\'t be null or empty."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private validatePlaybackRights(ILcom/sonyericsson/music/MusicActivity;)Z
    .locals 3

    .line 347
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 348
    invoke-virtual {v0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/database/Cursor;

    if-eqz p1, :cond_0

    .line 351
    invoke-direct {p0}, Lcom/sonyericsson/music/library/SmartPlaylistFragment;->getPlaylistType()Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils;->getTrackIdColumn(Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Ljava/lang/String;

    move-result-object v0

    .line 353
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 354
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 356
    invoke-static {p1, p2}, Lcom/sonyericsson/music/common/MusicUtils;->validatePlaybackRights(Landroid/net/Uri;Lcom/sonyericsson/music/MusicActivity;)Z

    move-result p1

    return p1

    :cond_0
    return v1

    :cond_1
    return v1
.end method


# virtual methods
.method protected getAdapter()Landroid/widget/CursorAdapter;
    .locals 4

    .line 152
    new-instance v0, Lcom/sonyericsson/music/library/SmartPlaylistFragment$SmartPlaylistAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    invoke-direct {p0}, Lcom/sonyericsson/music/library/SmartPlaylistFragment;->getPlaylistType()Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/music/library/SmartPlaylistFragment$SmartPlaylistAdapter;-><init>(Landroid/content/Context;Lcom/sonyericsson/music/artdecoder/ArtDecoder;Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)V

    return-object v0
.end method

.method protected bridge synthetic getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/SmartPlaylistFragment;->getAdapter()Landroid/widget/CursorAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected getAggregator()Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/sonyericsson/music/library/SmartPlaylistFragment;->mAggregator:Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    return-object v0
.end method

.method protected getEditMusicInfoReloadFragment()Lcom/sonyericsson/music/library/PlaylistBaseFragment;
    .locals 4

    .line 367
    invoke-direct {p0}, Lcom/sonyericsson/music/library/SmartPlaylistFragment;->getPlaylistType()Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/music/library/SmartPlaylistFragment;->getAggregator()Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/music/library/SmartPlaylistFragment;->mPlaylistData:Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;

    .line 368
    invoke-virtual {v2}, Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 367
    invoke-static {v0, v1, v3, v2}, Lcom/sonyericsson/music/library/SmartPlaylistFragment;->newInstance(Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;Landroid/net/Uri;Ljava/lang/String;)Lcom/sonyericsson/music/library/SmartPlaylistFragment;

    move-result-object v0

    return-object v0
.end method

.method protected getFragmentTag()Ljava/lang/String;
    .locals 1

    const-string v0, "SmartPlaylist"

    return-object v0
.end method

.method protected getMatcherUris()[Lcom/sonyericsson/music/library/BaseFragment$MatcherData;
    .locals 5

    .line 378
    invoke-direct {p0}, Lcom/sonyericsson/music/library/SmartPlaylistFragment;->getPlaylistType()Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    move-result-object v0

    const/4 v1, 0x1

    .line 380
    new-array v2, v1, [Lcom/sonyericsson/music/library/BaseFragment$MatcherData;

    new-instance v3, Lcom/sonyericsson/music/library/BaseFragment$MatcherData;

    .line 381
    invoke-virtual {v0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v4, "com.sonymobile.music.smartplaylist"

    invoke-direct {v3, v1, v0, v4}, Lcom/sonyericsson/music/library/BaseFragment$MatcherData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    aput-object v3, v2, v0

    return-object v2
.end method

.method protected getNoContentText()Ljava/lang/String;
    .locals 2

    .line 133
    invoke-direct {p0}, Lcom/sonyericsson/music/library/SmartPlaylistFragment;->getPlaylistType()Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    move-result-object v0

    .line 134
    sget-object v1, Lcom/sonyericsson/music/library/SmartPlaylistFragment$1;->$SwitchMap$com$sonyericsson$music$common$SmartPlaylistUtils$SmartPlaylistType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 142
    invoke-super {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->getNoContentText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const v0, 0x7f1001ce

    .line 140
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    const v0, 0x7f1001cf

    .line 138
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 18

    move-object/from16 v0, p0

    .line 273
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 274
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->getContextMenuData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/music/library/PlaylistBaseFragment$ContextMenuData;

    if-eqz v1, :cond_1

    .line 276
    iget-object v1, v0, Lcom/sonyericsson/music/library/SmartPlaylistFragment;->mTracksUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 280
    :cond_0
    invoke-virtual {v2}, Lcom/sonyericsson/music/library/PlaylistBaseFragment$ContextMenuData;->getContentValues()Landroid/content/ContentValues;

    move-result-object v1

    .line 281
    invoke-virtual {v2}, Lcom/sonyericsson/music/library/PlaylistBaseFragment$ContextMenuData;->getSelectedItemPosition()I

    move-result v2

    .line 283
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/music/library/SmartPlaylistFragment;->getPlaylistType()Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/music/common/SmartPlaylistUtils;->getTitleColumn(Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Ljava/lang/String;

    move-result-object v3

    .line 284
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/music/library/SmartPlaylistFragment;->getPlaylistType()Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/music/common/SmartPlaylistUtils;->getTrackIdColumn(Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Ljava/lang/String;

    move-result-object v4

    .line 285
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/music/library/SmartPlaylistFragment;->getPlaylistType()Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    move-result-object v5

    invoke-static {v5}, Lcom/sonyericsson/music/common/SmartPlaylistUtils;->getAlbumColumn(Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Ljava/lang/String;

    move-result-object v5

    .line 286
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/music/library/SmartPlaylistFragment;->getPlaylistType()Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    move-result-object v6

    invoke-static {v6}, Lcom/sonyericsson/music/common/SmartPlaylistUtils;->getAlbumIdColumn(Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Ljava/lang/String;

    move-result-object v6

    .line 287
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/music/library/SmartPlaylistFragment;->getPlaylistType()Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    move-result-object v7

    invoke-static {v7}, Lcom/sonyericsson/music/common/SmartPlaylistUtils;->getArtistColumn(Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Ljava/lang/String;

    move-result-object v7

    .line 288
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/music/library/SmartPlaylistFragment;->getPlaylistType()Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    move-result-object v8

    invoke-static {v8}, Lcom/sonyericsson/music/common/SmartPlaylistUtils;->getArtistIdColumn(Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Ljava/lang/String;

    move-result-object v8

    .line 290
    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 291
    sget-object v3, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 292
    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v9, v4

    .line 291
    invoke-static {v3, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    .line 293
    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 295
    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 296
    invoke-static {v15, v3}, Lcom/sonyericsson/music/common/AlbumArtUtils;->getAlbumArtUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 297
    sget-object v4, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 298
    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 297
    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 300
    sget-object v4, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 301
    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 300
    invoke-static {v4, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 304
    new-instance v1, Lcom/sonyericsson/music/common/MenuUtils$TrackData;

    const/16 v17, 0x1

    move-object v9, v1

    move-object/from16 v16, v3

    invoke-direct/range {v9 .. v17}, Lcom/sonyericsson/music/common/MenuUtils$TrackData;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v3, 0x0

    .line 308
    sget-object v4, Lcom/sonyericsson/music/library/SmartPlaylistFragment$1;->$SwitchMap$com$sonyericsson$music$common$SmartPlaylistUtils$SmartPlaylistType:[I

    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/music/library/SmartPlaylistFragment;->getPlaylistType()Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    move-object v4, v3

    move-object/from16 v3, p1

    goto :goto_0

    .line 310
    :pswitch_0
    sget-object v3, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->FAVOURITES:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-virtual {v3}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getContainerUri()Landroid/net/Uri;

    move-result-object v3

    move-object v4, v3

    move-object/from16 v3, p1

    goto :goto_0

    .line 319
    :pswitch_1
    sget-object v3, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->NEWLY_ADDED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-virtual {v3}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getContainerUri()Landroid/net/Uri;

    move-result-object v3

    move-object v4, v3

    move-object/from16 v3, p1

    goto :goto_0

    .line 316
    :pswitch_2
    sget-object v3, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->MOST_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-virtual {v3}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getContainerUri()Landroid/net/Uri;

    move-result-object v3

    move-object v4, v3

    move-object/from16 v3, p1

    goto :goto_0

    .line 313
    :pswitch_3
    sget-object v3, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->RECENTLY_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-virtual {v3}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getContainerUri()Landroid/net/Uri;

    move-result-object v3

    move-object v4, v3

    move-object/from16 v3, p1

    .line 322
    :goto_0
    invoke-virtual {v0, v3, v2, v1, v4}, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->onLocalContextItemSelected(Landroid/view/MenuItem;ILcom/sonyericsson/music/common/MenuUtils$TrackData;Landroid/net/Uri;)Z

    move-result v1

    return v1

    :cond_1
    :goto_1
    const/4 v1, 0x0

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 100
    invoke-super {p0, p1}, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 102
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "aggregator"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    iput-object p1, p0, Lcom/sonyericsson/music/library/SmartPlaylistFragment;->mAggregator:Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    .line 103
    new-instance p1, Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;

    invoke-direct {p0}, Lcom/sonyericsson/music/library/SmartPlaylistFragment;->getPlaylistType()Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    move-result-object v1

    .line 104
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "playlist-id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v8, -0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;-><init>(Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;I)V

    iput-object p1, p0, Lcom/sonyericsson/music/library/SmartPlaylistFragment;->mPlaylistData:Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 1
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

    .line 157
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 158
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    new-instance p2, Lcom/sonyericsson/music/library/SmartPlaylistFragment$SmartPlaylistTracksLoader;

    invoke-direct {p0}, Lcom/sonyericsson/music/library/SmartPlaylistFragment;->getPlaylistType()Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/sonyericsson/music/library/SmartPlaylistFragment$SmartPlaylistTracksLoader;-><init>(Landroid/content/Context;Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)V

    return-object p2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/sonyericsson/music/library/SmartPlaylistFragment;->mPlaylistData:Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;

    if-eqz v0, :cond_0

    const v0, 0x7f0d000b

    .line 389
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 391
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/music/library/LibraryBaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 114
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p2

    .line 116
    invoke-direct {p0}, Lcom/sonyericsson/music/library/SmartPlaylistFragment;->getPlaylistType()Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    move-result-object p3

    const v0, 0x7f0c003e

    const/4 v1, 0x0

    .line 118
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/ui/LibraryImageHeaderLayout;

    iput-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mTitleHeaderView:Lcom/sonyericsson/music/ui/LibraryImageHeaderLayout;

    .line 120
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mTitleHeaderView:Lcom/sonyericsson/music/ui/LibraryImageHeaderLayout;

    const v0, 0x7f0900db

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->mPlaylistArtImage:Landroid/widget/ImageView;

    .line 121
    iget-object p1, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->mPlaylistArtImage:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 122
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mTitleHeaderView:Lcom/sonyericsson/music/ui/LibraryImageHeaderLayout;

    const v0, 0x7f09008a

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->mPlaylistArtDefaultImage:Landroid/widget/ImageView;

    .line 125
    invoke-virtual {p3}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getNameResourceId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 126
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/library/LibraryListFragment;->setHeaderViewWithTitle(Ljava/lang/String;)V

    return-object p2
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

    if-eqz p2, :cond_0

    .line 239
    move-object v0, p1

    check-cast v0, Lcom/sonyericsson/music/library/SmartPlaylistFragment$SmartPlaylistTracksLoader;

    invoke-virtual {v0}, Landroidx/loader/content/CursorLoader;->getUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/library/SmartPlaylistFragment;->mTracksUri:Landroid/net/Uri;

    .line 242
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->onLoadFinishedTracks(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 62
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/music/library/SmartPlaylistFragment;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 397
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_0

    const/4 v0, -0x1

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x15

    goto :goto_0

    :pswitch_1
    const/16 v0, 0xc

    :goto_0
    if-le v0, v1, :cond_0

    .line 405
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/music/library/SmartPlaylistFragment;->mPlaylistData:Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;

    iget-object v3, p0, Lcom/sonyericsson/music/library/SmartPlaylistFragment;->mAggregator:Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    invoke-static {v1, v0, v2, v3}, Lcom/sonyericsson/music/common/MenuUtils;->onPlaylistContextItemSelected(Lcom/sonyericsson/music/MusicActivity;ILcom/sonyericsson/music/common/MenuUtils$PlaylistData;Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 409
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x7f09010e
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPopulateContextMenu(Lcom/sonyericsson/music/common/ContextMenuBuilder;Landroid/content/ContentValues;)V
    .locals 5

    .line 261
    invoke-direct {p0}, Lcom/sonyericsson/music/library/SmartPlaylistFragment;->getPlaylistType()Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils;->getTitleColumn(Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Ljava/lang/String;

    move-result-object v0

    .line 262
    invoke-direct {p0}, Lcom/sonyericsson/music/library/SmartPlaylistFragment;->getPlaylistType()Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils;->getTrackIdColumn(Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Ljava/lang/String;

    move-result-object v1

    .line 264
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 265
    sget-object v2, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 266
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long v3, p2

    .line 265
    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p2

    .line 268
    invoke-virtual {p0, p1, p2, v0}, Lcom/sonyericsson/music/library/SmartPlaylistFragment;->onPopulateLocalContextMenu(Lcom/sonyericsson/music/common/ContextMenuBuilder;Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method protected onPopulateLocalContextMenu(Lcom/sonyericsson/music/common/ContextMenuBuilder;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1

    .line 247
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->onPopulateLocalContextMenu(Lcom/sonyericsson/music/common/ContextMenuBuilder;Landroid/net/Uri;Ljava/lang/String;)V

    .line 249
    invoke-direct {p0}, Lcom/sonyericsson/music/library/SmartPlaylistFragment;->getPlaylistType()Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    move-result-object p2

    sget-object p3, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->FAVOURITES:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    const/4 v0, 0x0

    if-ne p2, p3, :cond_0

    const/4 p2, 0x1

    .line 250
    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setDeleteFromStorage(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    .line 251
    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setRemoveFromFavorites(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    .line 252
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setAddToFavorites(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    goto :goto_0

    .line 254
    :cond_0
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setRemoveFromPlaylist(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    .line 255
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setDeleteFromStorage(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    :goto_0
    return-void
.end method

.method protected playLocalPlaylist(Landroid/net/Uri;IZ)V
    .locals 1

    .line 327
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/MusicActivity;

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_1

    .line 333
    invoke-direct {p0, p2, p1}, Lcom/sonyericsson/music/library/SmartPlaylistFragment;->validatePlaybackRights(ILcom/sonyericsson/music/MusicActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 337
    :cond_1
    new-instance v0, Lcom/sonyericsson/music/common/OpenAndPlayConditions;

    invoke-direct {v0}, Lcom/sonyericsson/music/common/OpenAndPlayConditions;-><init>()V

    .line 338
    invoke-virtual {v0, p2}, Lcom/sonyericsson/music/common/OpenAndPlayConditions;->setTracksPosition(I)Lcom/sonyericsson/music/common/OpenAndPlayConditions;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/sonyericsson/music/common/OpenAndPlayConditions;->setShuffle(Z)Lcom/sonyericsson/music/common/OpenAndPlayConditions;

    move-result-object p2

    .line 341
    invoke-direct {p0}, Lcom/sonyericsson/music/library/SmartPlaylistFragment;->getPlaylistType()Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    move-result-object p3

    .line 342
    invoke-virtual {p3}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getMediaPlaybackConstant()I

    move-result p3

    .line 343
    invoke-virtual {p1, p3, p2}, Lcom/sonyericsson/music/MusicActivity;->openAndPlaySmartPlaylist(ILcom/sonyericsson/music/common/OpenAndPlayConditions;)V

    return-void
.end method

.method protected setPlaylistArt(Landroid/database/Cursor;)V
    .locals 11

    .line 173
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 174
    invoke-direct {p0}, Lcom/sonyericsson/music/library/SmartPlaylistFragment;->getPlaylistType()Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    move-result-object v0

    const v1, 0x7f0801b1

    const v3, 0x7f0801b0

    const v4, 0x7f0801af

    const v5, 0x7f0801b2

    if-eqz p1, :cond_0

    .line 176
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_0

    const/4 v6, 0x0

    .line 179
    sget-object v7, Lcom/sonyericsson/music/library/SmartPlaylistFragment$1;->$SwitchMap$com$sonyericsson$music$common$SmartPlaylistUtils$SmartPlaylistType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const/4 v9, -0x1

    packed-switch v7, :pswitch_data_0

    move-object v7, v6

    const/4 v10, -0x1

    goto :goto_0

    .line 196
    :pswitch_0
    invoke-static {v2}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$SmartPlaylistArtUri;->getFavouritesUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v3

    move-object v7, v3

    const v10, 0x7f0801b1

    goto :goto_0

    .line 186
    :pswitch_1
    invoke-static {v2}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$SmartPlaylistArtUri;->getNewlyAddedUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    move-object v7, v1

    const v10, 0x7f0801b0

    goto :goto_0

    .line 191
    :pswitch_2
    invoke-static {v2}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$SmartPlaylistArtUri;->getMostPlayedUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    move-object v7, v1

    const v10, 0x7f0801af

    goto :goto_0

    .line 181
    :pswitch_3
    invoke-static {v2}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$SmartPlaylistArtUri;->getRecentlyPlayedUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    move-object v7, v1

    const v10, 0x7f0801b2

    .line 202
    :goto_0
    invoke-static {v0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils;->getArtistColumn(Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Ljava/lang/String;

    move-result-object v4

    .line 203
    invoke-static {v0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils;->getAlbumColumn(Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Ljava/lang/String;

    move-result-object v5

    .line 204
    invoke-static {v0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils;->getAlbumIdColumn(Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v3, p1

    move v8, v10

    .line 201
    invoke-virtual/range {v1 .. v8}, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->loadImageFromProvider(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;I)Z

    move-result p1

    if-nez p1, :cond_1

    if-eq v10, v9, :cond_1

    .line 206
    iget-object p1, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->mPlaylistArtImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 209
    :cond_0
    sget-object p1, Lcom/sonyericsson/music/library/SmartPlaylistFragment$1;->$SwitchMap$com$sonyericsson$music$common$SmartPlaylistUtils$SmartPlaylistType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    packed-switch p1, :pswitch_data_1

    goto :goto_1

    .line 228
    :pswitch_4
    iget-object p1, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->mPlaylistArtImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 230
    invoke-static {v2}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$SmartPlaylistArtUri;->getFavouritesUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p1

    .line 229
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->removeImageFromProvider(Landroid/net/Uri;)V

    goto :goto_1

    .line 218
    :pswitch_5
    iget-object p1, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->mPlaylistArtImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 219
    invoke-static {v2}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$SmartPlaylistArtUri;->getNewlyAddedUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->removeImageFromProvider(Landroid/net/Uri;)V

    goto :goto_1

    .line 223
    :pswitch_6
    iget-object p1, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->mPlaylistArtImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 224
    invoke-static {v2}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$SmartPlaylistArtUri;->getMostPlayedUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->removeImageFromProvider(Landroid/net/Uri;)V

    goto :goto_1

    .line 211
    :pswitch_7
    iget-object p1, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->mPlaylistArtImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 214
    invoke-static {v2}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$SmartPlaylistArtUri;->getRecentlyPlayedUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p1

    .line 213
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->removeImageFromProvider(Landroid/net/Uri;)V

    :cond_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method protected updateHeaderInfo(Landroid/database/Cursor;)V
    .locals 1

    .line 167
    invoke-super {p0, p1}, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->updateHeaderInfo(Landroid/database/Cursor;)V

    .line 168
    invoke-direct {p0}, Lcom/sonyericsson/music/library/SmartPlaylistFragment;->getPlaylistType()Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils;->getDurationColumn(Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->updateTotalDuration(Landroid/database/Cursor;Ljava/lang/String;)V

    return-void
.end method
