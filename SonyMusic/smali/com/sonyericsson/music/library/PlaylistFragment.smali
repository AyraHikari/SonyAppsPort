.class public Lcom/sonyericsson/music/library/PlaylistFragment;
.super Lcom/sonyericsson/music/library/PlaylistBaseFragment;
.source "PlaylistFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/library/PlaylistFragment$ConcretePlaylistAdapter;
    }
.end annotation


# static fields
.field protected static final KEY_MEDIASTORE_PLAYLIST_ID:Ljava/lang/String; = "mediastore_playlist_id"

.field protected static final KEY_PLAYLIST_URI:Ljava/lang/String; = "playlist_uri"

.field private static final LOADER_ID_PLAYLIST:I = 0x1

.field private static final LOADER_ID_TRACKS:I = 0x0

.field public static final TAG:Ljava/lang/String; = "playlist"


# instance fields
.field private mAggregator:Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

.field protected mMediaStorePlaylistId:I

.field private mNotFirstLoad:Z

.field private mPlaylistData:Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;

.field protected mPlaylistUri:Landroid/net/Uri;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/sonyericsson/music/library/PlaylistBaseFragment;-><init>()V

    const/4 v0, -0x1

    .line 67
    iput v0, p0, Lcom/sonyericsson/music/library/PlaylistFragment;->mMediaStorePlaylistId:I

    return-void
.end method

.method private createPlaylistLoader()Landroidx/loader/content/Loader;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistFragment;->mPlaylistUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getPlaylistIdParam(Landroid/net/Uri;)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 222
    new-instance v0, Lcom/sonyericsson/music/common/PermissionCursorLoader;

    iget-object v6, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    iget-object v7, p0, Lcom/sonyericsson/music/library/PlaylistFragment;->mPlaylistUri:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "android.permission.READ_EXTERNAL_STORAGE"

    move-object v5, v0

    invoke-direct/range {v5 .. v12}, Lcom/sonyericsson/music/common/PermissionCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private createTracksLoader()Landroidx/loader/content/Loader;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistFragment;->mPlaylistUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getPlaylistIdParam(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 198
    invoke-static {v0}, Lcom/sonyericsson/music/common/LibraryPlaylistTracksQueryParams;->getUri(I)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->mTracksUri:Landroid/net/Uri;

    .line 200
    invoke-static {v0}, Lcom/sonyericsson/music/common/LibraryPlaylistTracksQueryParams;->getUri(I)Landroid/net/Uri;

    move-result-object v4

    .line 201
    invoke-static {}, Lcom/sonyericsson/music/common/LibraryPlaylistTracksQueryParams;->getColumns()[Ljava/lang/String;

    move-result-object v5

    .line 202
    invoke-static {}, Lcom/sonyericsson/music/common/LibraryPlaylistTracksQueryParams;->getSelection()Ljava/lang/String;

    move-result-object v6

    .line 203
    invoke-static {}, Lcom/sonyericsson/music/common/LibraryPlaylistTracksQueryParams;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v7

    .line 204
    invoke-static {}, Lcom/sonyericsson/music/common/LibraryPlaylistTracksQueryParams;->getSortOrder()Ljava/lang/String;

    move-result-object v8

    .line 206
    new-instance v0, Lcom/sonyericsson/music/common/HighResAwarePermissionCursorLoader;

    iget-object v3, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    const-string v9, "android.permission.READ_EXTERNAL_STORAGE"

    sget-object v10, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;->TRACK:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/sonyericsson/music/common/HighResAwarePermissionCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;)V

    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 210
    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->showHeaderInfo(Z)V

    const/4 v0, 0x0

    .line 211
    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->setHeaderInfoNbrOfTracks(Landroid/database/Cursor;)V

    .line 212
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->showNoContentHeaderView()V

    return-object v0
.end method

.method private hasPlaylistDataChanged(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;I)Z
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistFragment;->mPlaylistData:Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;->getPlaylistPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sonyericsson/music/library/PlaylistFragment;->mPlaylistData:Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;

    .line 443
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;->getTracksUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sonyericsson/music/library/PlaylistFragment;->mPlaylistData:Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;

    .line 444
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sonyericsson/music/library/PlaylistFragment;->mPlaylistData:Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;

    .line 445
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;->getModifiedDate()J

    move-result-wide p1

    cmp-long p3, p1, p4

    if-nez p3, :cond_0

    iget-object p1, p0, Lcom/sonyericsson/music/library/PlaylistFragment;->mPlaylistData:Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;

    .line 446
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sonyericsson/music/library/PlaylistFragment;->mPlaylistData:Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;

    .line 447
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;->getMediaStorePlaylistId()I

    move-result p1

    if-eq p1, p7, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private isNewPlaylistData(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;I)Z
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistFragment;->mPlaylistData:Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 433
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-wide/16 p1, -0x1

    cmp-long p3, p4, p1

    if-lez p3, :cond_0

    .line 434
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    if-le p7, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static newInstance(Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;ZLcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;)Lcom/sonyericsson/music/library/PlaylistFragment;
    .locals 3

    .line 81
    new-instance v0, Lcom/sonyericsson/music/library/PlaylistFragment;

    invoke-direct {v0}, Lcom/sonyericsson/music/library/PlaylistFragment;-><init>()V

    .line 82
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-nez p0, :cond_0

    const/4 p0, -0x1

    .line 85
    invoke-static {p0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri(I)Landroid/net/Uri;

    move-result-object p0

    :cond_0
    const-string v2, "playlist_uri"

    .line 87
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "mediastore_playlist_id"

    .line 88
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "title"

    .line 89
    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "user_created"

    .line 90
    invoke-virtual {v1, p0, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "playlist"

    .line 91
    invoke-virtual {p5, p0}, Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;->add(Ljava/lang/String;)Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    const-string p0, "aggregator"

    .line 92
    invoke-virtual {v1, p0, p5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz p1, :cond_2

    .line 94
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p3, :cond_1

    .line 95
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 94
    :goto_0
    invoke-static {p0, p1}, Lcom/sonyericsson/music/common/PaletteUtils;->getColorPick(Landroid/net/Uri;I)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string p1, "key_cached_background_color"

    .line 97
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 100
    :cond_2
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method protected static parseMediaStorePlaylistId(Landroid/net/Uri;)J
    .locals 2

    .line 157
    invoke-static {p0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method private setPlaylistData(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;I)Z
    .locals 10

    .line 421
    invoke-direct/range {p0 .. p7}, Lcom/sonyericsson/music/library/PlaylistFragment;->isNewPlaylistData(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 422
    invoke-direct/range {p0 .. p7}, Lcom/sonyericsson/music/library/PlaylistFragment;->hasPlaylistDataChanged(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 423
    :cond_1
    :goto_0
    new-instance v0, Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;

    const/4 v2, 0x0

    move-object v1, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;-><init>(Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;I)V

    move-object v1, p0

    iput-object v0, v1, Lcom/sonyericsson/music/library/PlaylistFragment;->mPlaylistData:Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected getAdapter()Landroid/widget/CursorAdapter;
    .locals 2

    .line 303
    new-instance v0, Lcom/sonyericsson/music/library/PlaylistFragment$ConcretePlaylistAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/music/library/PlaylistFragment$ConcretePlaylistAdapter;-><init>(Lcom/sonyericsson/music/library/PlaylistFragment;Landroid/content/Context;)V

    return-object v0
.end method

.method protected bridge synthetic getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/PlaylistFragment;->getAdapter()Landroid/widget/CursorAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected getAggregator()Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistFragment;->mAggregator:Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    return-object v0
.end method

.method protected getEditMusicInfoReloadFragment()Lcom/sonyericsson/music/library/PlaylistBaseFragment;
    .locals 6

    .line 292
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistFragment;->mPlaylistUri:Landroid/net/Uri;

    iget v2, p0, Lcom/sonyericsson/music/library/PlaylistFragment;->mMediaStorePlaylistId:I

    iget-object v3, p0, Lcom/sonyericsson/music/library/PlaylistFragment;->mTitle:Ljava/lang/String;

    .line 293
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "user_created"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iget-object v5, p0, Lcom/sonyericsson/music/library/PlaylistFragment;->mAggregator:Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    const/4 v1, 0x0

    .line 292
    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/music/library/PlaylistFragment;->newInstance(Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;ZLcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;)Lcom/sonyericsson/music/library/PlaylistFragment;

    move-result-object v0

    return-object v0
.end method

.method protected getFragmentTag()Ljava/lang/String;
    .locals 1

    const-string v0, "playlist"

    return-object v0
.end method

.method protected getLoaderIds()[I
    .locals 1

    const/4 v0, 0x2

    .line 171
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method protected getLocalPlaylistId()J
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistFragment;->mPlaylistUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getPlaylistIdParam(Landroid/net/Uri;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method protected getMatcherUris()[Lcom/sonyericsson/music/library/BaseFragment$MatcherData;
    .locals 5

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/#/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "members"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 311
    new-array v2, v1, [Lcom/sonyericsson/music/library/BaseFragment$MatcherData;

    new-instance v3, Lcom/sonyericsson/music/library/BaseFragment$MatcherData;

    const-string v4, "com.sonyericsson.music.musicinfo"

    invoke-direct {v3, v1, v0, v4}, Lcom/sonyericsson/music/library/BaseFragment$MatcherData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    aput-object v3, v2, v0

    return-object v2
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/16 v0, 0x14d

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 408
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/sonyericsson/music/library/PlaylistFragment;->mPlaylistData:Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;

    iget-object v3, p0, Lcom/sonyericsson/music/library/PlaylistFragment;->mAggregator:Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    invoke-static {v0, v1, v2, v3}, Lcom/sonyericsson/music/common/MenuUtils;->onPlaylistContextItemSelected(Lcom/sonyericsson/music/MusicActivity;ILcom/sonyericsson/music/common/MenuUtils$PlaylistData;Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;)Z

    const/4 v0, 0x1

    .line 411
    iput-boolean v0, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->mIsWriteGranted:Z

    .line 414
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 107
    invoke-super {p0, p1}, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 109
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "aggregator"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    iput-object p1, p0, Lcom/sonyericsson/music/library/PlaylistFragment;->mAggregator:Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 0
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

    packed-switch p1, :pswitch_data_0

    .line 184
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 182
    :pswitch_0
    invoke-direct {p0}, Lcom/sonyericsson/music/library/PlaylistFragment;->createPlaylistLoader()Landroidx/loader/content/Loader;

    move-result-object p1

    return-object p1

    .line 180
    :pswitch_1
    invoke-direct {p0}, Lcom/sonyericsson/music/library/PlaylistFragment;->createTracksLoader()Landroidx/loader/content/Loader;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const v0, 0x7f0d000a

    .line 360
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 361
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/music/library/LibraryBaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 114
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0c003e

    const/4 v0, 0x0

    .line 116
    invoke-virtual {p1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/ui/LibraryImageHeaderLayout;

    iput-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mTitleHeaderView:Lcom/sonyericsson/music/ui/LibraryImageHeaderLayout;

    .line 118
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mTitleHeaderView:Lcom/sonyericsson/music/ui/LibraryImageHeaderLayout;

    const p3, 0x7f0900db

    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->mPlaylistArtImage:Landroid/widget/ImageView;

    .line 119
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mTitleHeaderView:Lcom/sonyericsson/music/ui/LibraryImageHeaderLayout;

    const p3, 0x7f09008a

    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->mPlaylistArtDefaultImage:Landroid/widget/ImageView;

    const/4 p1, -0x1

    .line 121
    iput p1, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->mNbrOfTracks:I

    .line 123
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    const-string v0, "title"

    .line 125
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/library/PlaylistFragment;->mTitle:Ljava/lang/String;

    const-string v0, "title_resource_id"

    .line 126
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "playlist_uri"

    .line 127
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/sonyericsson/music/library/PlaylistFragment;->mPlaylistUri:Landroid/net/Uri;

    const-string v1, "mediastore_playlist_id"

    .line 129
    invoke-virtual {p3, v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/music/library/PlaylistFragment;->mMediaStorePlaylistId:I

    .line 134
    iget-object p1, p0, Lcom/sonyericsson/music/library/PlaylistFragment;->mTitle:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 136
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/library/PlaylistFragment;->mTitle:Ljava/lang/String;

    .line 140
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/library/PlaylistFragment;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/library/LibraryListFragment;->setHeaderViewWithTitle(Ljava/lang/String;)V

    return-object p2
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V
    .locals 10
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

    .line 230
    invoke-virtual {p1}, Landroidx/loader/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 255
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_0
    if-eqz p2, :cond_1

    .line 235
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 236
    iput-boolean p1, p0, Lcom/sonyericsson/music/library/PlaylistFragment;->mNotFirstLoad:Z

    const-string p1, "name"

    .line 237
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/library/PlaylistFragment;->mTitle:Ljava/lang/String;

    .line 238
    iget-object p1, p0, Lcom/sonyericsson/music/library/PlaylistFragment;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/library/LibraryListFragment;->setHeaderViewWithTitle(Ljava/lang/String;)V

    const-string p1, "_id"

    .line 239
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    long-to-int p1, v0

    .line 240
    invoke-static {p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$Members;->getContentUri(I)Landroid/net/Uri;

    move-result-object v4

    .line 241
    iget p1, p0, Lcom/sonyericsson/music/library/PlaylistFragment;->mMediaStorePlaylistId:I

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "mediastore_id"

    .line 242
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    :goto_0
    move v9, p1

    const-string p1, "path"

    .line 243
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string p1, "date_updated"

    .line 245
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 246
    iget-object v5, p0, Lcom/sonyericsson/music/library/PlaylistFragment;->mTitle:Ljava/lang/String;

    .line 247
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    move-object v2, p0

    .line 246
    invoke-direct/range {v2 .. v9}, Lcom/sonyericsson/music/library/PlaylistFragment;->setPlaylistData(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 248
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_1

    .line 250
    :cond_1
    iget-boolean p1, p0, Lcom/sonyericsson/music/library/PlaylistFragment;->mNotFirstLoad:Z

    if-eqz p1, :cond_2

    .line 251
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->popBackStack()V

    goto :goto_1

    .line 232
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->onLoadFinishedTracks(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V

    :cond_2
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 55
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/music/library/PlaylistFragment;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onNowPlayingInfoChanged(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)V
    .locals 10

    .line 318
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/library/PlaylistAdapter;

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 321
    invoke-virtual {p1}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->getSourceUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sonyericsson/music/library/BaseFragment;->matchUri(Landroid/net/Uri;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 324
    invoke-virtual {p1}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->getSourceUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 325
    iget-object v4, p0, Lcom/sonyericsson/music/library/PlaylistFragment;->mPlaylistUri:Landroid/net/Uri;

    if-eqz v4, :cond_0

    .line 326
    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/music/library/PlaylistFragment;->mPlaylistUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 327
    invoke-static {v2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getPlaylistIdParam(Landroid/net/Uri;)I

    move-result v2

    int-to-long v4, v2

    .line 328
    iget-object v2, p0, Lcom/sonyericsson/music/library/PlaylistFragment;->mPlaylistUri:Landroid/net/Uri;

    invoke-static {v2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getPlaylistIdParam(Landroid/net/Uri;)I

    move-result v2

    int-to-long v6, v2

    const-wide/16 v8, -0x1

    cmp-long v2, v4, v8

    if-eqz v2, :cond_0

    cmp-long v2, v6, v8

    if-eqz v2, :cond_0

    cmp-long v2, v4, v6

    if-nez v2, :cond_0

    const/4 v2, 0x1

    const/4 v3, 0x1

    :cond_0
    if-eqz v3, :cond_1

    .line 336
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/library/PlaylistAdapter;->setNowPlayingInfo(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)V

    goto :goto_0

    .line 338
    :cond_1
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/library/PlaylistAdapter;->setNowPlayingInfo(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)V

    goto :goto_0

    .line 341
    :cond_2
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/library/PlaylistAdapter;->setNowPlayingInfo(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)V

    .line 343
    :goto_0
    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .line 367
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0xd

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    const/4 v0, -0x1

    goto :goto_0

    :sswitch_0
    const/16 v0, 0xa

    goto :goto_0

    :sswitch_1
    const/16 v0, 0xd

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x15

    goto :goto_0

    :sswitch_3
    const/16 v0, 0xc

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x9

    goto :goto_0

    :sswitch_5
    const/16 v0, 0x16

    .line 387
    :goto_0
    sget-boolean v3, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->mIsWriteGranted:Z

    if-nez v3, :cond_1

    if-ne v0, v1, :cond_1

    const/16 p1, 0x14d

    .line 390
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/PlaylistFragment;->getLocalPlaylistId()J

    move-result-wide v0

    .line 389
    invoke-static {p0, p1, v0, v1}, Lcom/sonyericsson/music/common/PlaylistActions;->requestWritePermission(Landroidx/fragment/app/Fragment;IJ)Z

    move-result p1

    if-nez p1, :cond_0

    .line 391
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1000e9

    invoke-static {p1, v0, v4}, Lcom/sonyericsson/music/common/MusicToast;->show(Landroid/content/Context;II)V

    :cond_0
    return v4

    :cond_1
    if-le v0, v2, :cond_2

    .line 397
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/music/library/PlaylistFragment;->mPlaylistData:Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;

    iget-object v3, p0, Lcom/sonyericsson/music/library/PlaylistFragment;->mAggregator:Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    invoke-static {v1, v0, v2, v3}, Lcom/sonyericsson/music/common/MenuUtils;->onPlaylistContextItemSelected(Lcom/sonyericsson/music/MusicActivity;ILcom/sonyericsson/music/common/MenuUtils$PlaylistData;Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v4

    .line 401
    :cond_2
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090109 -> :sswitch_5
        0x7f09010c -> :sswitch_4
        0x7f09010e -> :sswitch_3
        0x7f09010f -> :sswitch_2
        0x7f090115 -> :sswitch_1
        0x7f090119 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    .line 348
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistFragment;->mPlaylistData:Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;

    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {v0}, Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;->getPlaylistPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/music/common/DBUtils;->isPlaylistUserCreated(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f09010c

    .line 350
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f090115

    .line 351
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f090109

    .line 352
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 355
    :cond_0
    invoke-super {p0, p1}, Lcom/sonyericsson/music/library/BaseFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method protected setPlaylistArt(Landroid/database/Cursor;)V
    .locals 12

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 261
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 270
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/music/library/PlaylistFragment;->mPlaylistUri:Landroid/net/Uri;

    invoke-static {v2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getPlaylistIdParam(Landroid/net/Uri;)I

    move-result v2

    .line 271
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    .line 272
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v5, "title"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-lez v1, :cond_1

    .line 273
    iget v3, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->mNbrOfTracks:I

    if-eq v3, v1, :cond_1

    const-string v6, "artist"

    const-string v7, "album"

    const-string v8, "album_id"

    .line 277
    invoke-static {v4, v2}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$LocalPlaylistArtUri;->getUriWithId(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v9

    const v11, 0x7f0801ea

    move-object v3, p0

    move-object v5, p1

    .line 274
    invoke-virtual/range {v3 .. v11}, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->loadImageFromProvider(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    .line 280
    iget-object p1, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->mPlaylistArtDefaultImage:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0801ea

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 282
    iget-object p1, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->mPlaylistArtDefaultImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 283
    iget-object p1, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->mPlaylistArtImage:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 285
    invoke-static {v4, v2}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$LocalPlaylistArtUri;->getUriWithId(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->removeImageFromProvider(Landroid/net/Uri;)V

    :cond_2
    :goto_1
    return-void
.end method

.method protected updateHeaderInfo(Landroid/database/Cursor;)V
    .locals 1

    .line 190
    invoke-super {p0, p1}, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->updateHeaderInfo(Landroid/database/Cursor;)V

    const-string v0, "duration"

    .line 191
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->updateTotalDuration(Landroid/database/Cursor;Ljava/lang/String;)V

    return-void
.end method
