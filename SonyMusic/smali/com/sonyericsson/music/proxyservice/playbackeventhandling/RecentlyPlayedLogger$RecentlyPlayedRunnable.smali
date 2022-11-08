.class Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$RecentlyPlayedRunnable;
.super Ljava/lang/Object;
.source "RecentlyPlayedLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecentlyPlayedRunnable"
.end annotation


# static fields
.field private static final PLAYLIST_LIMIT:I = 0x3c

.field private static sPlaylistLimit:I = 0x3c

.field private static sPurged:Z


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private volatile mIsReported:Z

.field private final mTrack:Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$CurrentTrack;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$CurrentTrack;)V
    .locals 0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$RecentlyPlayedRunnable;->mAppContext:Landroid/content/Context;

    .line 153
    iput-object p2, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$RecentlyPlayedRunnable;->mTrack:Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$CurrentTrack;

    const/4 p1, 0x0

    .line 154
    iput-boolean p1, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$RecentlyPlayedRunnable;->mIsReported:Z

    return-void
.end method

.method private addOrUpdateTrack(Landroid/content/Context;JJLcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)V
    .locals 9

    .line 274
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 275
    invoke-static {p1, p6}, Lcom/sonyericsson/music/common/DBUtils;->getSmartPlaylistId(Landroid/content/ContentResolver;Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)I

    move-result v6

    const/4 v0, -0x1

    if-le v6, v0, :cond_8

    const-wide/16 v0, -0x1

    cmp-long v2, p2, v0

    if-lez v2, :cond_8

    .line 278
    invoke-static {v6}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$Members;->getContentUri(I)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_AUDIO_IDS:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 279
    invoke-virtual {v1}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getParameter()Ljava/lang/String;

    move-result-object v1

    .line 280
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 279
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 280
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    const/4 v0, 0x3

    .line 282
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const-string v0, "audio_id"

    const/4 v8, 0x1

    aput-object v0, v2, v8

    const/4 v0, 0x2

    const-string v1, "play_order"

    aput-object v1, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, v7

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 289
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 291
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    .line 297
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 299
    sget-object p3, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$1;->$SwitchMap$com$sonyericsson$music$common$SmartPlaylistUtils$SmartPlaylistType:[I

    invoke-virtual {p6}, Ljava/lang/Enum;->ordinal()I

    move-result p6

    aget p3, p3, p6
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch p3, :pswitch_data_0

    if-eqz v0, :cond_2

    .line 365
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :pswitch_0
    :try_start_1
    const-string p3, "play_order"

    .line 312
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 301
    :pswitch_1
    sget-boolean p3, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p3, :cond_1

    if-eqz v0, :cond_0

    .line 365
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void

    :cond_1
    :try_start_2
    const-string p3, "play_order"

    .line 304
    invoke-interface {v0, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    .line 303
    invoke-interface {v0, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p3

    const-string p4, "play_order"

    add-int/2addr p3, v8

    .line 306
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 305
    invoke-virtual {p2, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    const/4 p3, 0x0

    .line 321
    :try_start_3
    invoke-virtual {p1, v7, p2, p3, p3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3

    :catch_0
    move-exception p1

    .line 331
    :try_start_4
    sget-object p2, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Caught SQLiteDiskIOException when trying to update the played play list "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDiskIOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 331
    invoke-virtual {p2, p3, p1}, Lcom/sonymobile/music/debug/DebugBase;->logE(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_3

    :catch_1
    move-exception p1

    .line 323
    sget-object p2, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Caught IllegalArgumentException when trying to update the played play list "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 323
    invoke-virtual {p2, p3, p1}, Lcom/sonymobile/music/debug/DebugBase;->logE(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    :goto_1
    return-void

    .line 336
    :cond_3
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "audio_id"

    .line 337
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p2, "playlist_id"

    .line 338
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 340
    sget-object p2, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$1;->$SwitchMap$com$sonyericsson$music$common$SmartPlaylistUtils$SmartPlaylistType:[I

    invoke-virtual {p6}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p2, p2, p3
    :try_end_4
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    packed-switch p2, :pswitch_data_1

    if-eqz v0, :cond_6

    .line 365
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :pswitch_2
    :try_start_5
    const-string p2, "play_order"

    .line 347
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_2

    .line 342
    :pswitch_3
    sget-boolean p2, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z
    :try_end_5
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz p2, :cond_5

    if-eqz v0, :cond_4

    .line 365
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    return-void

    :cond_5
    :try_start_6
    const-string p2, "play_order"

    .line 343
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 359
    :goto_2
    invoke-virtual {p1, v7, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_6
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_3
    if-eqz v0, :cond_8

    goto :goto_5

    :cond_6
    :goto_4
    return-void

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_7

    .line 365
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 367
    :cond_7
    throw p1

    :catch_2
    nop

    if-eqz v0, :cond_8

    .line 365
    :goto_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_8
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private addToRecentlyPlayedProvider(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    if-eqz p2, :cond_0

    .line 187
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 189
    invoke-static {v0}, Lcom/sonyericsson/music/common/MediaStoreUriMatcher;->getUriType(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v1, :sswitch_data_0

    .line 214
    invoke-static {v0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getSmartPlaylistType(Landroid/net/Uri;)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 202
    :sswitch_0
    invoke-static {v0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getPlaylistIdParam(Landroid/net/Uri;)I

    move-result v0

    if-eq v0, v3, :cond_1

    goto :goto_1

    .line 208
    :sswitch_1
    invoke-static {p2}, Lcom/sonyericsson/music/common/DBUtils;->parseMembersContainerId(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v4, -0x1

    cmp-long v2, v0, v4

    if-eqz v2, :cond_1

    const/4 v2, 0x5

    goto :goto_1

    :cond_1
    const/4 v2, -0x1

    goto :goto_1

    :sswitch_2
    const/4 v2, 0x4

    goto :goto_1

    :sswitch_3
    const/4 v2, 0x2

    goto :goto_1

    :sswitch_4
    const/4 v2, 0x3

    goto :goto_1

    :cond_2
    const/4 v2, -0x1

    :goto_1
    if-eq v2, v3, :cond_3

    .line 223
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "type"

    .line 224
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "container_uri"

    .line 225
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 227
    invoke-static {p1}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedStore;->getRecentlyPlayedContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p1

    .line 226
    invoke-virtual {p2, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_3
        0x6 -> :sswitch_2
        0x7 -> :sswitch_1
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method private purgePlaylist(Landroid/content/Context;Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)V
    .locals 13

    .line 379
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    .line 381
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "_id"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2, v4, p2}, Lcom/sonyericsson/music/common/DBUtils;->getPlayedPlaylistDescProperty(Landroid/content/ContentResolver;[Ljava/lang/String;ILcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;

    move-result-object v2

    .line 385
    invoke-static {v0, v2}, Lcom/sonyericsson/music/common/DBUtils;->getSmartPlaylistTracksCursor(Landroid/content/ContentResolver;Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 392
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 394
    sget v3, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$RecentlyPlayedRunnable;->sPlaylistLimit:I

    if-le v2, v3, :cond_d

    .line 401
    sget-object v3, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->RECENTLY_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p2, v3, :cond_1

    .line 465
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void

    .line 405
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/sonyericsson/music/common/DBUtils;->getSmartPlaylistId(Landroid/content/ContentResolver;Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)I

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v5, p2

    const-wide/16 v7, -0x1

    cmp-long p2, v5, v7

    if-nez p2, :cond_2

    .line 465
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void

    .line 413
    :cond_2
    :try_start_2
    sget p2, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$RecentlyPlayedRunnable;->sPlaylistLimit:I

    mul-int/lit8 p2, p2, 0x2

    const/4 v3, 0x0

    if-le v2, p2, :cond_5

    .line 418
    sget p2, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$RecentlyPlayedRunnable;->sPlaylistLimit:I

    .line 419
    new-array v1, p2, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 421
    :cond_3
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_4

    if-ge v2, p2, :cond_4

    const-string v9, "_id"

    .line 423
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    cmp-long v11, v9, v7

    if-lez v11, :cond_3

    add-int/lit8 v11, v2, 0x1

    .line 426
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v2

    move v2, v11

    goto :goto_0

    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    .line 433
    :cond_5
    sget p2, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$RecentlyPlayedRunnable;->sPlaylistLimit:I

    sub-int p2, v2, p2

    if-lez p2, :cond_a

    .line 436
    new-array v2, p2, [Ljava/lang/String;

    .line 438
    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v9, 0x0

    :cond_6
    const-string v10, "_id"

    .line 441
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 440
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    cmp-long v12, v10, v7

    if-lez v12, :cond_7

    add-int/lit8 v12, v9, 0x1

    .line 443
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v9

    move v9, v12

    .line 445
    :cond_7
    invoke-interface {v0}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v10

    if-eqz v10, :cond_8

    if-lt v9, p2, :cond_6

    :cond_8
    move-object v1, v2

    move v2, v9

    const/4 v7, 0x1

    goto :goto_1

    :cond_9
    move-object v1, v2

    const/4 v2, 0x0

    const/4 v7, 0x1

    goto :goto_1

    :cond_a
    move-object v1, v3

    const/4 v2, 0x0

    const/4 v7, 0x1

    :goto_1
    if-lez v2, :cond_d

    if-ge v2, p2, :cond_b

    .line 453
    new-array p2, v2, [Ljava/lang/String;

    .line 454
    invoke-static {v1, v4, p2, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_b
    move-object p2, v1

    :goto_2
    long-to-int v1, v5

    .line 458
    invoke-static {v1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$Members;->getContentUri(I)Landroid/net/Uri;

    move-result-object v1

    if-eqz v7, :cond_c

    .line 459
    sget-object v2, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_MEMBER_IDS:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    goto :goto_3

    .line 460
    :cond_c
    sget-object v2, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_MEMBER_EXCLUDE_IDS:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 457
    :goto_3
    invoke-static {v1, v2, p2}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->appendParams(Landroid/net/Uri;Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 461
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 465
    :cond_d
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 466
    throw p1

    return-void
.end method

.method private purgePlaylists(Landroid/content/Context;)V
    .locals 1

    .line 372
    sget-boolean v0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$RecentlyPlayedRunnable;->sPurged:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 373
    sput-boolean v0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$RecentlyPlayedRunnable;->sPurged:Z

    .line 374
    sget-object v0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->RECENTLY_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$RecentlyPlayedRunnable;->purgePlaylist(Landroid/content/Context;Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)V

    :cond_0
    return-void
.end method

.method private purgeRecentlyPlayed(Landroid/content/Context;)V
    .locals 7

    const-string v5, "timestamp DESC"

    const/4 v6, 0x0

    .line 236
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 237
    invoke-static {p1}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedStore;->getRecentlyPlayedContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 236
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 239
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    const/16 v0, 0x1d

    .line 241
    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "timestamp"

    .line 243
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 245
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-string v1, "timestamp<?"

    const/4 v2, 0x1

    .line 247
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    .line 249
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 250
    invoke-static {p1}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedStore;->getRecentlyPlayedContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p1

    .line 249
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v6, :cond_1

    .line 256
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 258
    :cond_2
    throw p1
.end method

.method private static updateDatePlayedPlaylist(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 6

    .line 474
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/music/common/MediaStoreUriMatcher;->getUriType(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_0

    .line 477
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getPlaylistIdParam(Landroid/net/Uri;)I

    move-result p1

    .line 476
    invoke-static {p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri(I)Landroid/net/Uri;

    move-result-object p1

    goto :goto_1

    .line 479
    :cond_0
    invoke-static {}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->values()[Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 480
    invoke-virtual {v4}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getContainerUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 481
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PLAYLIST_TYPE:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 482
    invoke-virtual {v0}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getParameter()Ljava/lang/String;

    move-result-object v0

    .line 483
    invoke-virtual {v4}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getProviderTypeId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 482
    invoke-virtual {p1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 484
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_3

    .line 491
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "date_played"

    const-wide/16 v3, 0x3e8

    .line 492
    div-long/2addr p2, v3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 493
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_3
    return-void
.end method


# virtual methods
.method isReported()Z
    .locals 1

    .line 158
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$RecentlyPlayedRunnable;->mIsReported:Z

    return v0
.end method

.method isSameTrack(Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$CurrentTrack;)Z
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$RecentlyPlayedRunnable;->mTrack:Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$CurrentTrack;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$CurrentTrack;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public run()V
    .locals 15

    .line 167
    invoke-static {}, Lcom/sonymobile/music/common/ThreadingUtils;->throwIfMainDebug()V

    .line 174
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$RecentlyPlayedRunnable;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$RecentlyPlayedRunnable;->mTrack:Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$CurrentTrack;

    iget-object v1, v1, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$CurrentTrack;->mContainerUri:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$RecentlyPlayedRunnable;->addToRecentlyPlayedProvider(Landroid/content/Context;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$RecentlyPlayedRunnable;->mAppContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$RecentlyPlayedRunnable;->purgeRecentlyPlayed(Landroid/content/Context;)V

    .line 177
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$RecentlyPlayedRunnable;->mAppContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$RecentlyPlayedRunnable;->mTrack:Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$CurrentTrack;

    iget-wide v3, v0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$CurrentTrack;->mTrackId:J

    iget-wide v5, v0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$CurrentTrack;->mTimeStampMs:J

    sget-object v7, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->MOST_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$RecentlyPlayedRunnable;->addOrUpdateTrack(Landroid/content/Context;JJLcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)V

    .line 178
    iget-object v9, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$RecentlyPlayedRunnable;->mAppContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$RecentlyPlayedRunnable;->mTrack:Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$CurrentTrack;

    iget-wide v10, v0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$CurrentTrack;->mTrackId:J

    iget-wide v12, v0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$CurrentTrack;->mTimeStampMs:J

    sget-object v14, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->RECENTLY_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    move-object v8, p0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$RecentlyPlayedRunnable;->addOrUpdateTrack(Landroid/content/Context;JJLcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)V

    .line 179
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$RecentlyPlayedRunnable;->mAppContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$RecentlyPlayedRunnable;->purgePlaylists(Landroid/content/Context;)V

    .line 181
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$RecentlyPlayedRunnable;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$RecentlyPlayedRunnable;->mTrack:Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$CurrentTrack;

    iget-object v2, v1, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$CurrentTrack;->mContainerUri:Ljava/lang/String;

    iget-wide v3, v1, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$CurrentTrack;->mTimeStampMs:J

    invoke-static {v0, v2, v3, v4}, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$RecentlyPlayedRunnable;->updateDatePlayedPlaylist(Landroid/content/Context;Ljava/lang/String;J)V

    const/4 v0, 0x1

    .line 183
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$RecentlyPlayedRunnable;->mIsReported:Z

    return-void
.end method
