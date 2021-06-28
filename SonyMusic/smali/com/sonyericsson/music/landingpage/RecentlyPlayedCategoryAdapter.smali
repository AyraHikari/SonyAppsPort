.class Lcom/sonyericsson/music/landingpage/RecentlyPlayedCategoryAdapter;
.super Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;
.source "RecentlyPlayedCategoryAdapter.java"


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

    .line 28
    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;-><init>(Landroid/content/Context;Lcom/sonyericsson/music/artdecoder/ArtDecoder;Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryClickListener;ILcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;I)V

    return-void
.end method

.method private getRecentlyPlayedType(Landroid/database/Cursor;)I
    .locals 2

    const-string v0, "type"

    .line 33
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 35
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method getArtData(Landroid/database/Cursor;)Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;
    .locals 13

    .line 113
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/landingpage/RecentlyPlayedCategoryAdapter;->getRecentlyPlayedType(Landroid/database/Cursor;)I

    move-result v0

    const-string v1, "container_id"

    .line 114
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    const/4 v3, -0x1

    if-eq v1, v3, :cond_4

    const/4 v4, 0x0

    .line 121
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 194
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, v8, v9}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$GenreArtUri;->getUriWithId(Landroid/content/Context;J)Landroid/net/Uri;

    move-result-object v0

    .line 195
    new-instance v1, Lcom/sonyericsson/music/landingpage/PlaylistUriProcessor;

    invoke-direct {v1, v0}, Lcom/sonyericsson/music/landingpage/PlaylistUriProcessor;-><init>(Landroid/net/Uri;)V

    .line 196
    sget-object v0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->GENRE:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->getDefaultResource(Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;)I

    move-result v4

    .line 197
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/landingpage/RecentlyPlayedCategoryAdapter;->getItemTitle(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    move-object v7, v1

    move-object v6, v2

    move v12, v4

    goto/16 :goto_4

    .line 187
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->mContext:Landroid/content/Context;

    long-to-int v1, v8

    invoke-static {v0, v1}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$FolderArtUri;->getUriWithId(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 188
    new-instance v1, Lcom/sonyericsson/music/landingpage/PlaylistUriProcessor;

    invoke-direct {v1, v0}, Lcom/sonyericsson/music/landingpage/PlaylistUriProcessor;-><init>(Landroid/net/Uri;)V

    .line 189
    sget-object v0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->FOLDER:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->getDefaultResource(Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;)I

    move-result v4

    .line 190
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/landingpage/RecentlyPlayedCategoryAdapter;->getItemTitle(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    move-object v7, v1

    move-object v6, v2

    move v12, v4

    goto/16 :goto_4

    :pswitch_2
    const-string v0, "container_title"

    .line 133
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-static {v0}, Lcom/sonyericsson/music/common/ArtistImageUtils;->getArtistArtUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 135
    sget-object v1, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->ARTIST:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->getDefaultResource(Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;)I

    move-result v4

    .line 136
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/landingpage/RecentlyPlayedCategoryAdapter;->getItemTitle(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    move-object v6, v0

    move-object v11, v1

    move-object v7, v2

    move v12, v4

    goto/16 :goto_4

    :pswitch_3
    const-string v0, "container_title"

    .line 124
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sub_title"

    .line 125
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-static {v1, v0}, Lcom/sonyericsson/music/common/AlbumArtUtils;->getAlbumArtUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 128
    sget-object v1, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->ALBUM:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->getDefaultResource(Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;)I

    move-result v4

    .line 129
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/landingpage/RecentlyPlayedCategoryAdapter;->getItemTitle(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    move-object v6, v0

    move-object v11, v1

    move-object v7, v2

    move v12, v4

    goto/16 :goto_4

    :pswitch_4
    const-string v0, "container_uri"

    .line 140
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_1

    .line 143
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_3

    .line 148
    invoke-static {v0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getSmartPlaylistType(Landroid/net/Uri;)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 151
    sget-object v1, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->NONE:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    .line 152
    sget-object v3, Lcom/sonyericsson/music/landingpage/RecentlyPlayedCategoryAdapter$1;->$SwitchMap$com$sonyericsson$music$common$SmartPlaylistUtils$SmartPlaylistType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_1

    move-object v0, v2

    goto :goto_1

    .line 169
    :pswitch_5
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->mContext:Landroid/content/Context;

    .line 170
    invoke-static {v0}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$SmartPlaylistArtUri;->getFavouritesUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    .line 171
    sget-object v1, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->SMART_PLAYLIST_FAVORITES:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    goto :goto_1

    .line 164
    :pswitch_6
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->mContext:Landroid/content/Context;

    .line 165
    invoke-static {v0}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$SmartPlaylistArtUri;->getMostPlayedUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    .line 166
    sget-object v1, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->SMART_PLAYLIST_MOST_PLAYED:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    goto :goto_1

    .line 159
    :pswitch_7
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->mContext:Landroid/content/Context;

    .line 160
    invoke-static {v0}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$SmartPlaylistArtUri;->getNewlyAddedUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    .line 161
    sget-object v1, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->SMART_PLAYLIST_NEWLY_ADDED:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    goto :goto_1

    .line 154
    :pswitch_8
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->mContext:Landroid/content/Context;

    .line 155
    invoke-static {v0}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$SmartPlaylistArtUri;->getRecentlyPlayedUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    .line 156
    sget-object v1, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->SMART_PLAYLIST_RECENTLY_PLAYED:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    .line 174
    :goto_1
    new-instance v3, Lcom/sonyericsson/music/landingpage/PlaylistUriProcessor;

    invoke-direct {v3, v0}, Lcom/sonyericsson/music/landingpage/PlaylistUriProcessor;-><init>(Landroid/net/Uri;)V

    .line 175
    invoke-virtual {p0, v1}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->getDefaultResource(Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;)I

    move-result v0

    move v4, v0

    move-object v1, v3

    move-object v3, v2

    goto :goto_2

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->mContext:Landroid/content/Context;

    long-to-int v1, v8

    .line 178
    invoke-static {v0, v1}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$LocalPlaylistArtUri;->getUriWithId(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 179
    new-instance v1, Lcom/sonyericsson/music/landingpage/PlaylistUriProcessor;

    invoke-direct {v1, v0}, Lcom/sonyericsson/music/landingpage/PlaylistUriProcessor;-><init>(Landroid/net/Uri;)V

    .line 180
    sget-object v0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->PLAYLIST:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->getDefaultResource(Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;)I

    move-result v0

    .line 181
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/landingpage/RecentlyPlayedCategoryAdapter;->getItemTitle(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    move v4, v0

    :goto_2
    move-object v7, v1

    move-object v6, v2

    move-object v11, v3

    move v12, v4

    goto :goto_4

    :cond_3
    :goto_3
    move-object v6, v2

    move-object v7, v6

    move-object v11, v7

    const/4 v12, 0x0

    .line 202
    :goto_4
    new-instance v0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/landingpage/RecentlyPlayedCategoryAdapter;->getItemTitle(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v10

    move-object v5, v0

    invoke-direct/range {v5 .. v12}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;-><init>(Landroid/net/Uri;Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$AsyncUriProcessor;JLjava/lang/String;Ljava/lang/String;I)V

    goto :goto_5

    :cond_4
    move-object v0, v2

    :goto_5
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method getCategoryItemType(Landroid/database/Cursor;)Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;
    .locals 1

    .line 228
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/landingpage/RecentlyPlayedCategoryAdapter;->getRecentlyPlayedType(Landroid/database/Cursor;)I

    move-result p1

    .line 229
    sget-object v0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->NONE:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    if-eqz p1, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 246
    :pswitch_0
    sget-object v0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->GENRE:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    goto :goto_0

    .line 243
    :pswitch_1
    sget-object v0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->FOLDER:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    goto :goto_0

    .line 237
    :pswitch_2
    sget-object v0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->ARTIST:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    goto :goto_0

    .line 234
    :pswitch_3
    sget-object v0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->ALBUM:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    goto :goto_0

    .line 240
    :pswitch_4
    sget-object v0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->PLAYLIST:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    :cond_0
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getContainerData(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2

    const-string v0, "data"

    .line 297
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 299
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method getContainerId(Landroid/database/Cursor;)J
    .locals 2

    const-string v0, "container_id"

    .line 283
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 285
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method getContainerSubId(Landroid/database/Cursor;)J
    .locals 2

    const-string v0, "sub_id"

    .line 290
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 292
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method getContainerSubTitle(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2

    const-string v0, "sub_title"

    .line 276
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 278
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method getContainerTitle(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2

    const-string v0, "container_title"

    .line 269
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 271
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method getContainerUri(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 3

    const-string v0, "container_uri"

    .line 259
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 261
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 264
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method getItemTitle(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2

    const-string v0, "container_title"

    .line 43
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 46
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/landingpage/RecentlyPlayedCategoryAdapter;->getRecentlyPlayedType(Landroid/database/Cursor;)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 53
    :pswitch_0
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/sonyericsson/music/common/StringUtils;->replaceUnknownArtistWithLocalizedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 50
    :pswitch_1
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/sonyericsson/music/common/StringUtils;->replaceUnknownAlbumWithLocalizedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getSubString(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 4

    .line 70
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/landingpage/RecentlyPlayedCategoryAdapter;->getRecentlyPlayedType(Landroid/database/Cursor;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 72
    sget-object v2, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->NONE:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 94
    :pswitch_0
    sget-object v2, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->GENRE:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    goto :goto_0

    .line 91
    :pswitch_1
    sget-object v2, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->FOLDER:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    goto :goto_0

    .line 85
    :pswitch_2
    sget-object v2, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->ARTIST:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    goto :goto_0

    .line 77
    :pswitch_3
    sget-object v2, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->ALBUM:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    const-string v0, "sub_title"

    .line 78
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 80
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 81
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sonyericsson/music/common/StringUtils;->replaceUnknownArtistWithLocalizedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 88
    :pswitch_4
    sget-object v2, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->PLAYLIST:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    .line 97
    :cond_0
    :goto_0
    invoke-virtual {p0, v2, v1}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->createItemSubString(Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method isNowPlayingItem(Landroid/database/Cursor;Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;
    .locals 2

    const-string v0, "container_uri"

    .line 212
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-eqz p2, :cond_0

    .line 214
    invoke-virtual {p2}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->getSourceUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 216
    invoke-virtual {p2}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->getSourceUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 217
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 218
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 219
    invoke-virtual {p2}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->getState()Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method showHDAudioIndicator(Landroid/database/Cursor;)Z
    .locals 3

    const-string v0, "high_res_container"

    .line 105
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    .line 106
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
