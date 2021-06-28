.class Lcom/sonyericsson/music/landingpage/PlayqueueCategoryAdapter;
.super Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;
.source "PlayqueueCategoryAdapter.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/sonyericsson/music/artdecoder/ArtDecoder;Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryClickListener;Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)V
    .locals 7

    const/4 v4, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 27
    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;-><init>(Landroid/content/Context;Lcom/sonyericsson/music/artdecoder/ArtDecoder;Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryClickListener;ILcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;I)V

    return-void
.end method


# virtual methods
.method createItemData(Landroid/database/Cursor;ILcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;)Lcom/sonyericsson/music/landingpage/LandingPageItemData;
    .locals 2

    .line 33
    new-instance v0, Lcom/sonyericsson/music/landingpage/LandingPageItemData;

    invoke-direct {v0}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;-><init>()V

    .line 35
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/landingpage/PlayqueueCategoryAdapter;->getAlbumName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->setAlbumName(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/landingpage/PlayqueueCategoryAdapter;->getAlbumUri(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->setAlbumUri(Landroid/net/Uri;)V

    .line 37
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/landingpage/PlayqueueCategoryAdapter;->getArtistName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->setArtistName(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/landingpage/PlayqueueCategoryAdapter;->getArtistUri(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->setArtistUri(Landroid/net/Uri;)V

    .line 39
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/landingpage/PlayqueueCategoryAdapter;->getCategoryItemType(Landroid/database/Cursor;)Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->setCategoryItemType(Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;)V

    .line 40
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/landingpage/PlayqueueCategoryAdapter;->getContainerUri(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->setContainerUri(Landroid/net/Uri;)V

    if-eqz p3, :cond_0

    .line 41
    invoke-virtual {p3}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;->getArtUri()Landroid/net/Uri;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {v0, p3}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->setContainerArtUri(Landroid/net/Uri;)V

    .line 42
    invoke-virtual {v0, p2}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->setItemViewPosition(I)V

    .line 43
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/landingpage/PlayqueueCategoryAdapter;->getTrackName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->setTrackName(Ljava/lang/String;)V

    return-object v0
.end method

.method getAlbumName(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2

    const-string v0, "album"

    .line 196
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 198
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method getAlbumUri(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 2

    const-string v0, "album_id"

    .line 185
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 187
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 188
    sget-object p1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 189
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method getArtData(Landroid/database/Cursor;)Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "track_uri"

    .line 84
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_7

    .line 86
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 89
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 92
    invoke-static {v2}, Lcom/sonyericsson/music/common/DBUtils;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v5

    const-wide/16 v6, -0x1

    if-eqz v5, :cond_3

    const-string v5, "album_id"

    .line 93
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v3, :cond_0

    .line 95
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    goto :goto_0

    :cond_0
    move-wide v8, v6

    :goto_0
    const-string v5, "album"

    .line 97
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v10, "artist"

    .line 98
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    if-le v5, v3, :cond_1

    .line 99
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v4

    :goto_1
    if-le v10, v3, :cond_2

    .line 100
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    :cond_2
    move-object v10, v4

    .line 101
    :goto_2
    invoke-static {v10, v5}, Lcom/sonyericsson/music/common/AlbumArtUtils;->getAlbumArtUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object v11, v5

    move-wide v13, v8

    goto :goto_3

    .line 103
    :cond_3
    invoke-static {v2}, Lcom/sonyericsson/music/common/DBUtils;->isUriCloudFileType(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 104
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 105
    invoke-static {v2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$CloudFiles;->getAlbumArtUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    move-object v11, v5

    move-wide v13, v8

    goto :goto_3

    :cond_4
    move-object v11, v4

    move-wide v13, v6

    :goto_3
    const-string v5, "album"

    .line 108
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v3, :cond_6

    .line 110
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 112
    invoke-static {v2}, Lcom/sonyericsson/music/common/DBUtils;->isUriCloudFileType(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "title"

    .line 113
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v16, v2

    goto :goto_4

    .line 115
    :cond_5
    iget-object v2, v0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/sonyericsson/music/common/StringUtils;->replaceUnknownAlbumWithLocalizedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v16, v2

    goto :goto_4

    :cond_6
    move-object/from16 v16, v4

    :goto_4
    cmp-long v2, v13, v6

    if-eqz v2, :cond_7

    .line 121
    new-instance v2, Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;

    const/4 v12, 0x0

    .line 122
    invoke-virtual/range {p0 .. p1}, Lcom/sonyericsson/music/landingpage/PlayqueueCategoryAdapter;->getItemTitle(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v15

    sget-object v1, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->NONE:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->getDefaultResource(Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;)I

    move-result v17

    move-object v10, v2

    invoke-direct/range {v10 .. v17}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;-><init>(Landroid/net/Uri;Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$AsyncUriProcessor;JLjava/lang/String;Ljava/lang/String;I)V

    goto :goto_5

    :cond_7
    move-object v2, v4

    :goto_5
    return-object v2
.end method

.method getArtistName(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2

    const-string v0, "artist"

    .line 178
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 180
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method getArtistUri(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 2

    const-string v0, "artist_id"

    .line 167
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 169
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 170
    sget-object p1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 171
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method getCategoryItemType(Landroid/database/Cursor;)Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;
    .locals 0

    .line 151
    sget-object p1, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->TRACK:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    return-object p1
.end method

.method getContainerData(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method getContainerId(Landroid/database/Cursor;)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method getContainerSubId(Landroid/database/Cursor;)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method getContainerSubTitle(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method getContainerTitle(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method getContainerUri(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 3

    const-string v0, "track_uri"

    .line 157
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 159
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 162
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method getItemTitle(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2

    const-string v0, "title"

    .line 51
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 54
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 55
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sonyericsson/music/common/StringUtils;->replaceUnknownAlbumWithLocalizedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method getSubString(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2

    const-string v0, "artist"

    .line 64
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 66
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 67
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sonyericsson/music/common/StringUtils;->replaceUnknownArtistWithLocalizedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 70
    :goto_0
    sget-object v0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->TRACK:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->createItemSubString(Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getTrackName(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2

    const-string v0, "title"

    .line 202
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 204
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method isNowPlayingItem(Landroid/database/Cursor;Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;
    .locals 3

    if-eqz p2, :cond_1

    .line 132
    invoke-virtual {p2}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->getTrackUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {p2}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->getTrackUri()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "track_uri"

    .line 134
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 136
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 138
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 139
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result p1

    invoke-virtual {p2}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->getPlayQueuePosition()I

    move-result v1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    and-int/2addr p1, v0

    if-eqz p1, :cond_1

    .line 141
    invoke-virtual {p2}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->getState()Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method showHDAudioIndicator(Landroid/database/Cursor;)Z
    .locals 3

    const-string v0, "hd_audio"

    .line 75
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    .line 76
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
