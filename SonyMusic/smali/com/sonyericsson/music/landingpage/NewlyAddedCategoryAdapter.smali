.class Lcom/sonyericsson/music/landingpage/NewlyAddedCategoryAdapter;
.super Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;
.source "NewlyAddedCategoryAdapter.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/sonyericsson/music/artdecoder/ArtDecoder;Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryClickListener;ILcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)V
    .locals 7

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 32
    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;-><init>(Landroid/content/Context;Lcom/sonyericsson/music/artdecoder/ArtDecoder;Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryClickListener;ILcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;I)V

    return-void
.end method


# virtual methods
.method getArtData(Landroid/database/Cursor;)Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;
    .locals 12

    .line 93
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/landingpage/NewlyAddedCategoryAdapter;->getCategoryItemType(Landroid/database/Cursor;)Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    move-result-object v0

    .line 98
    sget-object v1, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->ALBUM:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const-string v1, "album_id"

    .line 99
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 101
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 102
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/landingpage/NewlyAddedCategoryAdapter;->getItemTitle(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/landingpage/NewlyAddedCategoryAdapter;->getSubString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p1

    .line 104
    invoke-static {p1, v1}, Lcom/sonyericsson/music/common/AlbumArtUtils;->getAlbumArtUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 105
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/sonyericsson/music/common/StringUtils;->replaceUnknownAlbumWithLocalizedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 107
    new-instance p1, Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;

    const/4 v6, 0x0

    .line 108
    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->getDefaultResource(Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;)I

    move-result v11

    move-object v4, p1

    move-object v9, v10

    invoke-direct/range {v4 .. v11}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;-><init>(Landroid/net/Uri;Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$AsyncUriProcessor;JLjava/lang/String;Ljava/lang/String;I)V

    move-object v3, p1

    goto :goto_0

    .line 110
    :cond_0
    sget-object v1, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->PLAYLIST:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "_id"

    .line 111
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 113
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 114
    iget-object v2, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$LocalPlaylistArtUri;->getUriWithId(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 116
    new-instance v5, Lcom/sonyericsson/music/landingpage/PlaylistUriProcessor;

    invoke-direct {v5, v2}, Lcom/sonyericsson/music/landingpage/PlaylistUriProcessor;-><init>(Landroid/net/Uri;)V

    .line 117
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/landingpage/NewlyAddedCategoryAdapter;->getItemTitle(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v9

    .line 118
    new-instance p1, Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;

    const/4 v4, 0x0

    int-to-long v6, v1

    .line 119
    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->getDefaultResource(Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;)I

    move-result v10

    move-object v3, p1

    move-object v8, v9

    invoke-direct/range {v3 .. v10}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;-><init>(Landroid/net/Uri;Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$AsyncUriProcessor;JLjava/lang/String;Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-object v3
.end method

.method getCategoryItemType(Landroid/database/Cursor;)Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;
    .locals 2

    .line 167
    check-cast p1, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;

    invoke-virtual {p1}, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->getItemContentType()Lcom/sonyericsson/music/common/MixedContentCursor$ContentType;

    move-result-object p1

    .line 168
    sget-object v0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->NONE:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    .line 169
    sget-object v1, Lcom/sonyericsson/music/landingpage/NewlyAddedLoader;->MERGED_CURSOR_TYPE_ALBUM:Lcom/sonyericsson/music/common/MixedContentCursor$ContentType;

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    sget-object v0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->ALBUM:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    goto :goto_0

    .line 171
    :cond_0
    sget-object v1, Lcom/sonyericsson/music/landingpage/NewlyAddedLoader;->MERGED_CURSOR_TYPE_PLAYLIST:Lcom/sonyericsson/music/common/MixedContentCursor$ContentType;

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 172
    sget-object v0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->PLAYLIST:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    :cond_1
    :goto_0
    return-object v0
.end method

.method getContainerData(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2

    .line 259
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/landingpage/NewlyAddedCategoryAdapter;->getCategoryItemType(Landroid/database/Cursor;)Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    move-result-object v0

    .line 260
    sget-object v1, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->PLAYLIST:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    const-string v0, "_data"

    .line 263
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    if-eq v0, v1, :cond_1

    .line 266
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method getContainerId(Landroid/database/Cursor;)J
    .locals 3

    .line 202
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/landingpage/NewlyAddedCategoryAdapter;->getCategoryItemType(Landroid/database/Cursor;)Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    move-result-object v0

    .line 203
    sget-object v1, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->ALBUM:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    const-string v0, "album_id"

    .line 204
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 205
    :cond_0
    sget-object v1, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->PLAYLIST:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "_id"

    .line 206
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    if-eq v0, v2, :cond_2

    .line 209
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_1

    :cond_2
    const-wide/16 v0, -0x1

    :goto_1
    return-wide v0
.end method

.method getContainerSubId(Landroid/database/Cursor;)J
    .locals 3

    .line 216
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/landingpage/NewlyAddedCategoryAdapter;->getCategoryItemType(Landroid/database/Cursor;)Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    move-result-object v0

    .line 218
    sget-object v1, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->ALBUM:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    const-string v0, "artist_id"

    .line 219
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 220
    :cond_0
    sget-object v1, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->PLAYLIST:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "mediastore_id"

    .line 221
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    if-eq v0, v2, :cond_2

    .line 224
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_1

    :cond_2
    const-wide/16 v0, -0x1

    :goto_1
    return-wide v0
.end method

.method getContainerSubTitle(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2

    .line 245
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/landingpage/NewlyAddedCategoryAdapter;->getCategoryItemType(Landroid/database/Cursor;)Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    move-result-object v0

    .line 246
    sget-object v1, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->ALBUM:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    const-string v0, "artist"

    .line 249
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    if-eq v0, v1, :cond_1

    .line 252
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method getContainerTitle(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 3

    .line 231
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/landingpage/NewlyAddedCategoryAdapter;->getCategoryItemType(Landroid/database/Cursor;)Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    move-result-object v0

    .line 232
    sget-object v1, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->ALBUM:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    const-string v0, "album"

    .line 233
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 234
    :cond_0
    sget-object v1, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->PLAYLIST:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "name"

    .line 235
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    if-eq v0, v2, :cond_2

    .line 238
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method getContainerUri(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 5

    .line 181
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/landingpage/NewlyAddedCategoryAdapter;->getCategoryItemType(Landroid/database/Cursor;)Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    move-result-object v0

    .line 182
    sget-object v1, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->ALBUM:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v0, "album_id"

    .line 183
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v3, -0x1

    cmp-long p1, v0, v3

    if-eqz p1, :cond_1

    .line 185
    sget-object p1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 186
    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    .line 188
    :cond_0
    sget-object v1, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->PLAYLIST:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "_id"

    .line 189
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 191
    invoke-static {p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$Members;->getContentUri(I)Landroid/net/Uri;

    move-result-object v2

    :cond_1
    :goto_0
    return-object v2
.end method

.method getItemTitle(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 3

    .line 38
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/landingpage/NewlyAddedCategoryAdapter;->getCategoryItemType(Landroid/database/Cursor;)Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    move-result-object v0

    .line 42
    sget-object v1, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->ALBUM:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    const-string v0, "album"

    .line 43
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 45
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 46
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sonyericsson/music/common/StringUtils;->replaceUnknownAlbumWithLocalizedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 48
    :cond_0
    sget-object v1, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->PLAYLIST:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "name"

    .line 49
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 51
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method getSubString(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 4

    .line 59
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/landingpage/NewlyAddedCategoryAdapter;->getCategoryItemType(Landroid/database/Cursor;)Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    move-result-object v0

    .line 62
    sget-object v1, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->ALBUM:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v1, "artist"

    .line 64
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 67
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 68
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/sonyericsson/music/common/StringUtils;->replaceUnknownArtistWithLocalizedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 70
    :cond_0
    invoke-virtual {p0, v0, v2}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->createItemSubString(Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 71
    :cond_1
    sget-object p1, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->PLAYLIST:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 72
    invoke-virtual {p0, v0, v2}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->createItemSubString(Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    :goto_0
    return-object v2
.end method

.method isNowPlayingItem(Landroid/database/Cursor;Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;
    .locals 6

    .line 128
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/landingpage/NewlyAddedCategoryAdapter;->getCategoryItemType(Landroid/database/Cursor;)Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 131
    invoke-virtual {p2}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->getSourceUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 132
    invoke-virtual {p2}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->getSourceUri()Landroid/net/Uri;

    move-result-object v2

    .line 134
    sget-object v3, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->ALBUM:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    invoke-virtual {v3, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_0

    .line 135
    invoke-static {v2}, Lcom/sonyericsson/music/common/MediaStoreUriMatcher;->getUriType(Landroid/net/Uri;)I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    .line 137
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v0, "album_id"

    .line 139
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_1

    .line 141
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    .line 143
    invoke-virtual {p2}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->getState()Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;

    move-result-object v1

    goto :goto_0

    .line 146
    :cond_0
    sget-object v3, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->PLAYLIST:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    invoke-virtual {v3, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    invoke-static {v2}, Lcom/sonyericsson/music/common/MediaStoreUriMatcher;->getUriType(Landroid/net/Uri;)I

    move-result v0

    const/16 v3, 0xa

    if-ne v0, v3, :cond_1

    .line 150
    invoke-static {v2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getPlaylistIdParam(Landroid/net/Uri;)I

    move-result v0

    const-string v2, "_id"

    .line 152
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_1

    .line 154
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    if-ne v0, p1, :cond_1

    .line 156
    invoke-virtual {p2}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->getState()Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;

    move-result-object v1

    :cond_1
    :goto_0
    return-object v1
.end method

.method showHDAudioIndicator(Landroid/database/Cursor;)Z
    .locals 4

    .line 81
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/landingpage/NewlyAddedCategoryAdapter;->getCategoryItemType(Landroid/database/Cursor;)Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    move-result-object v0

    .line 83
    sget-object v1, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->ALBUM:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "is_high_res"

    .line 84
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-le v0, v2, :cond_0

    .line 85
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    if-ne p1, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
