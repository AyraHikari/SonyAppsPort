.class public Lcom/sonyericsson/music/metadata/provider/MediastorePlaylistUtils;
.super Ljava/lang/Object;
.source "MediastorePlaylistUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/metadata/provider/MediastorePlaylistUtils$MediaStorePlaylistCreatedData;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertMediaStorePlaylistUriToMusicInfoPlaylistUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 11

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    .line 212
    invoke-static {p1}, Lcom/sonyericsson/music/common/DBUtils;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 214
    invoke-static {p1}, Lcom/sonyericsson/music/common/MediaStoreUriMatcher;->getUriType(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-ne v1, v2, :cond_0

    .line 218
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 220
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/music/common/DBUtils;->parseMembersContainerId(Ljava/lang/String;)J

    move-result-wide v1

    long-to-int p1, v1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    const/4 v1, 0x0

    :goto_0
    if-eq p1, v5, :cond_5

    .line 225
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    sget-object v5, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_MEDIASTORE_IDS:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 226
    invoke-virtual {v5}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getParameter()Ljava/lang/String;

    move-result-object v5

    .line 227
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 226
    invoke-virtual {v2, v5, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 227
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    .line 230
    :try_start_0
    new-array v7, v3, [Ljava/lang/String;

    const-string p1, "_id"

    aput-object p1, v7, v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_3

    .line 232
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "_id"

    .line 233
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    if-eqz v1, :cond_2

    .line 235
    invoke-static {p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$Members;->getContentUri(I)Landroid/net/Uri;

    move-result-object p1

    move-object v0, p1

    goto :goto_1

    .line 237
    :cond_2
    invoke-static {p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri(I)Landroid/net/Uri;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, p1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    :goto_1
    if-eqz p0, :cond_5

    .line 242
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object p0, v0

    :goto_2
    if-eqz p0, :cond_4

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 244
    :cond_4
    throw p1

    :cond_5
    :goto_3
    return-object v0
.end method

.method public static convertMusicInfoPlaylistUriToMediaStorePlaylistUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 11

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    .line 262
    invoke-static {p1}, Lcom/sonyericsson/music/common/DBUtils;->isMusicInfoStoreUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 264
    invoke-static {p1}, Lcom/sonyericsson/music/common/MediaStoreUriMatcher;->getUriType(Landroid/net/Uri;)I

    move-result v1

    const/16 v2, 0x9

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-ne v1, v2, :cond_0

    .line 268
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 270
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/music/common/DBUtils;->parseMembersContainerId(Ljava/lang/String;)J

    move-result-wide v1

    long-to-int p1, v1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    const/4 v1, 0x0

    :goto_0
    if-eq p1, v5, :cond_5

    .line 275
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    sget-object v5, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PLAYLIST_IDS:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 276
    invoke-virtual {v5}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getParameter()Ljava/lang/String;

    move-result-object v5

    .line 277
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 276
    invoke-virtual {v2, v5, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 277
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    .line 280
    :try_start_0
    new-array v7, v3, [Ljava/lang/String;

    const-string p1, "mediastore_id"

    aput-object p1, v7, v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_3

    .line 282
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "mediastore_id"

    .line 283
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    if-eqz v1, :cond_2

    const-string v0, "external"

    int-to-long v1, p1

    .line 285
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object p1

    move-object v0, p1

    goto :goto_1

    .line 288
    :cond_2
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 289
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 288
    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, p1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    :goto_1
    if-eqz p0, :cond_5

    .line 294
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object p0, v0

    :goto_2
    if-eqz p0, :cond_4

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 296
    :cond_4
    throw p1

    :cond_5
    :goto_3
    return-object v0
.end method

.method static createOrGetPlaylistData(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/sonyericsson/music/metadata/provider/MediastorePlaylistUtils$MediaStorePlaylistCreatedData;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 78
    :cond_0
    sget-boolean v1, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz v1, :cond_5

    const/4 v1, -0x1

    .line 79
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x4c4ae7e9

    if-eq v2, v3, :cond_3

    const v3, -0x48c9c3ce

    if-eq v2, v3, :cond_2

    const v3, 0x5f5e609d

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "Music_favorites"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const-string v2, "Music_most_played_tracks"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const-string v2, "Music_recently_played_tracks"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v1, 0x2

    :cond_4
    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object v0

    .line 86
    :cond_5
    :goto_1
    invoke-static {p0, p1}, Lcom/sonyericsson/music/metadata/provider/MediastorePlaylistUtils;->getPlaylistData(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/sonyericsson/music/metadata/provider/MediastorePlaylistUtils$MediaStorePlaylistCreatedData;

    move-result-object v1

    if-nez v1, :cond_6

    .line 88
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "name"

    .line 89
    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :try_start_0
    sget-object v3, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    const-string v3, "SemcMusicPlayer"

    .line 105
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error inserting playlist into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_1
    move-exception v2

    const-string v3, "SemcMusicPlayer"

    .line 99
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error inserting playlist into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_2
    move-exception v2

    const-string v3, "SemcMusicPlayer"

    .line 94
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error inserting playlist into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    if-eqz v0, :cond_6

    .line 109
    invoke-static {p0, p1}, Lcom/sonyericsson/music/metadata/provider/MediastorePlaylistUtils;->getPlaylistData(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/sonyericsson/music/metadata/provider/MediastorePlaylistUtils$MediaStorePlaylistCreatedData;

    move-result-object v1

    :cond_6
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static createSmartPlaylist(Landroid/content/ContentResolver;Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)I
    .locals 2

    .line 128
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MediastorePlaylistUtils$1;->$SwitchMap$com$sonyericsson$music$common$SmartPlaylistUtils$SmartPlaylistType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    move-object p1, v1

    goto :goto_0

    :pswitch_0
    const-string v1, "WALKMAN favorites"

    .line 143
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getMediaProviderName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_1
    const-string v1, "WALKMAN recently played tracks"

    .line 137
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getMediaProviderName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_2
    const-string v1, "WALKMAN most played tracks"

    .line 131
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getMediaProviderName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 v0, -0x1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 149
    invoke-static {p0, v1, p1}, Lcom/sonyericsson/music/metadata/provider/MediastorePlaylistUtils;->renameSmartPlaylist(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_0
    const/4 v1, -0x1

    :goto_1
    if-ne v1, v0, :cond_2

    .line 153
    invoke-static {p0, p1}, Lcom/sonyericsson/music/metadata/provider/MediastorePlaylistUtils;->createOrGetPlaylistData(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/sonyericsson/music/metadata/provider/MediastorePlaylistUtils$MediaStorePlaylistCreatedData;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 154
    iget v0, p0, Lcom/sonyericsson/music/metadata/provider/MediastorePlaylistUtils$MediaStorePlaylistCreatedData;->mId:I

    move v1, v0

    goto :goto_2

    :cond_1
    const/4 v1, -0x1

    :cond_2
    :goto_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getPlaylistData(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/sonyericsson/music/metadata/provider/MediastorePlaylistUtils$MediaStorePlaylistCreatedData;
    .locals 6

    if-eqz p1, :cond_1

    const-string v3, "name = ?"

    const/4 v0, 0x1

    .line 172
    new-array v4, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v4, v1

    .line 176
    sget-object p1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v2, v1

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "date_added"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "date_modified"

    aput-object v1, v2, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 182
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "_id"

    .line 183
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    const-string v0, "_data"

    .line 184
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v1, "date_added"

    .line 185
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "date_modified"

    .line 187
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 189
    new-instance v3, Lcom/sonyericsson/music/metadata/provider/MediastorePlaylistUtils$MediaStorePlaylistCreatedData;

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 190
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 191
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-direct {v3, p1, v0, v1, v2}, Lcom/sonyericsson/music/metadata/provider/MediastorePlaylistUtils$MediaStorePlaylistCreatedData;-><init>(ILjava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v3

    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 195
    throw p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static getPlaylistName(Landroid/content/ContentResolver;I)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-le p1, v1, :cond_1

    const-string v5, "_id = ?"

    const/4 v1, 0x1

    .line 47
    new-array v6, v1, [Ljava/lang/String;

    .line 48
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v6, v2

    .line 51
    sget-object v3, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v4, v1, [Ljava/lang/String;

    const-string p1, "name"

    aput-object p1, v4, v2

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 57
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "name"

    .line 58
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 59
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p1

    .line 62
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 63
    throw p1

    :cond_1
    :goto_0
    return-object v0
.end method

.method static renameSmartPlaylist(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 307
    invoke-static {p0, p2}, Lcom/sonyericsson/music/metadata/provider/MediastorePlaylistUtils;->getPlaylistData(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/sonyericsson/music/metadata/provider/MediastorePlaylistUtils$MediaStorePlaylistCreatedData;

    move-result-object v0

    .line 308
    invoke-static {p0, p1}, Lcom/sonyericsson/music/metadata/provider/MediastorePlaylistUtils;->getPlaylistData(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/sonyericsson/music/metadata/provider/MediastorePlaylistUtils$MediaStorePlaylistCreatedData;

    move-result-object v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    return v2

    :cond_0
    if-eqz v0, :cond_1

    const-string p1, "_id = ?"

    const/4 p2, 0x1

    .line 317
    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    iget v1, v1, Lcom/sonyericsson/music/metadata/provider/MediastorePlaylistUtils$MediaStorePlaylistCreatedData;->mId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    .line 318
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return v2

    .line 322
    :cond_1
    iget v0, v1, Lcom/sonyericsson/music/metadata/provider/MediastorePlaylistUtils$MediaStorePlaylistCreatedData;->mId:I

    if-le v0, v2, :cond_2

    .line 325
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "name"

    .line 326
    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    sget-object p2, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 329
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 328
    invoke-static {p2, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const/4 v2, 0x0

    .line 332
    :try_start_0
    invoke-virtual {p0, p2, v1, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p2, "SemcMusicPlayer"

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error inserting playlist ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p0

    const-string p2, "SemcMusicPlayer"

    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error renaming playlist ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception p0

    const-string p2, "SemcMusicPlayer"

    .line 334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error renaming playlist ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return v0
.end method
