.class public Lcom/sonyericsson/music/common/TrackFactory;
.super Ljava/lang/Object;
.source "TrackFactory.java"


# static fields
.field private static final PLAYQUEUE_COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x7

    .line 25
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "title"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "artist"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "artist_id"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "album"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "album_id"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "duration"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "track_uri"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/music/common/TrackFactory;->PLAYQUEUE_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createNonPlayqueueTrack(Landroid/content/Context;Landroid/net/Uri;)Lcom/sonyericsson/music/common/Track;
    .locals 1

    .line 113
    invoke-static {p1}, Lcom/sonyericsson/music/common/TrackFactory;->isContentUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-static {p0, p1}, Lcom/sonyericsson/music/common/TrackFactory;->getTitleFromContentProvider(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 118
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-static {p0, v0}, Lcom/sonyericsson/music/common/StringUtils;->urlToFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    :cond_1
    new-instance p0, Lcom/sonyericsson/music/common/Track$TrackBuilder;

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/common/Track$TrackBuilder;-><init>(Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->title(Ljava/lang/String;)Lcom/sonyericsson/music/common/Track$TrackBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->dataUri(Landroid/net/Uri;)Lcom/sonyericsson/music/common/Track$TrackBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->build()Lcom/sonyericsson/music/common/Track;

    move-result-object p0

    return-object p0
.end method

.method public static createNonPlayqueueTrackWithMetadata(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/music/common/Track;
    .locals 0

    if-nez p2, :cond_0

    .line 135
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    .line 136
    invoke-static {p0, p2}, Lcom/sonyericsson/music/common/StringUtils;->urlToFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 138
    :cond_0
    new-instance p0, Lcom/sonyericsson/music/common/Track$TrackBuilder;

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/common/Track$TrackBuilder;-><init>(Landroid/net/Uri;)V

    invoke-virtual {p0, p2}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->title(Ljava/lang/String;)Lcom/sonyericsson/music/common/Track$TrackBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->album(Ljava/lang/String;)Lcom/sonyericsson/music/common/Track$TrackBuilder;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->artist(Ljava/lang/String;)Lcom/sonyericsson/music/common/Track$TrackBuilder;

    move-result-object p0

    .line 139
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->dataUri(Landroid/net/Uri;)Lcom/sonyericsson/music/common/Track$TrackBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->build()Lcom/sonyericsson/music/common/Track;

    move-result-object p0

    return-object p0
.end method

.method public static createTrackFromPlayqueue(Landroid/content/Context;I)Lcom/sonyericsson/music/common/Track;
    .locals 6

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 46
    invoke-static {p0}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->getPlayqueueContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/music/common/TrackFactory;->PLAYQUEUE_COLUMNS:[Ljava/lang/String;

    const-string v5, "play_order"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 51
    :try_start_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 52
    invoke-static {p0}, Lcom/sonyericsson/music/common/TrackFactory;->createTrackFromPlayqueueCursor(Landroid/database/Cursor;)Lcom/sonyericsson/music/common/Track;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 56
    throw p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static createTrackFromPlayqueueCursor(Landroid/database/Cursor;)Lcom/sonyericsson/music/common/Track;
    .locals 15

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    .line 71
    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    const-string v2, "title"

    .line 73
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "artist"

    .line 74
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "album"

    .line 75
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "duration"

    .line 76
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "album_id"

    .line 77
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "artist_id"

    .line 78
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "track_uri"

    .line 79
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v9, "_data"

    .line 80
    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 82
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 83
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 84
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 85
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-wide/16 v10, -0x1

    const/4 v12, -0x1

    if-le v6, v12, :cond_0

    .line 86
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    goto :goto_0

    :cond_0
    move-wide v13, v10

    :goto_0
    if-le v7, v12, :cond_1

    .line 87
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 88
    :cond_1
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    if-le v9, v12, :cond_2

    .line 89
    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    move-object p0, v0

    :goto_1
    if-eqz p0, :cond_3

    .line 90
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 93
    :cond_3
    invoke-static {v6}, Lcom/sonyericsson/music/common/DBUtils;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 94
    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 97
    :cond_4
    new-instance p0, Lcom/sonyericsson/music/common/Track$TrackBuilder;

    invoke-direct {p0, v6}, Lcom/sonyericsson/music/common/Track$TrackBuilder;-><init>(Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->dataUri(Landroid/net/Uri;)Lcom/sonyericsson/music/common/Track$TrackBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->title(Ljava/lang/String;)Lcom/sonyericsson/music/common/Track$TrackBuilder;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->album(Ljava/lang/String;)Lcom/sonyericsson/music/common/Track$TrackBuilder;

    move-result-object p0

    .line 98
    invoke-virtual {p0, v3}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->artist(Ljava/lang/String;)Lcom/sonyericsson/music/common/Track$TrackBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->duration(I)Lcom/sonyericsson/music/common/Track$TrackBuilder;

    move-result-object p0

    int-to-long v2, v12

    invoke-virtual {p0, v2, v3}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->trackId(J)Lcom/sonyericsson/music/common/Track$TrackBuilder;

    move-result-object p0

    invoke-virtual {p0, v13, v14}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->albumId(J)Lcom/sonyericsson/music/common/Track$TrackBuilder;

    move-result-object p0

    .line 99
    invoke-virtual {p0, v10, v11}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->artistId(J)Lcom/sonyericsson/music/common/Track$TrackBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->playqueuePosition(I)Lcom/sonyericsson/music/common/Track$TrackBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->build()Lcom/sonyericsson/music/common/Track;

    move-result-object v0

    :cond_5
    return-object v0
.end method

.method public static createTrackFromUri(Landroid/net/Uri;Landroid/net/Uri;II)Lcom/sonyericsson/music/common/Track;
    .locals 1

    .line 150
    new-instance v0, Lcom/sonyericsson/music/common/Track$TrackBuilder;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/common/Track$TrackBuilder;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->dataUri(Landroid/net/Uri;)Lcom/sonyericsson/music/common/Track$TrackBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->duration(I)Lcom/sonyericsson/music/common/Track$TrackBuilder;

    move-result-object p0

    .line 151
    invoke-virtual {p0, p3}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->playqueuePosition(I)Lcom/sonyericsson/music/common/Track$TrackBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->build()Lcom/sonyericsson/music/common/Track;

    move-result-object p0

    return-object p0
.end method

.method private static getTitleFromContentProvider(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    .line 158
    :try_start_0
    invoke-static {p1}, Lcom/sonyericsson/music/common/DBUtils;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v1, :cond_0

    .line 161
    invoke-static {p0}, Lcom/sonyericsson/music/common/PermissionUtils;->isReadStoragePermissionGranted(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v0

    goto :goto_1

    .line 162
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_1
    if-eqz p0, :cond_3

    .line 167
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "_display_name"

    .line 168
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    .line 170
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_2

    .line 184
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object p1

    :catchall_0
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    goto :goto_2

    :catch_0
    nop

    goto :goto_3

    :catch_1
    nop

    goto :goto_4

    :cond_3
    if-eqz p0, :cond_5

    goto :goto_5

    :catchall_1
    move-exception p0

    :goto_2
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 186
    :cond_4
    throw p0

    :catch_2
    move-object p0, v0

    :goto_3
    if-eqz p0, :cond_5

    goto :goto_5

    :catch_3
    move-object p0, v0

    :goto_4
    if-eqz p0, :cond_5

    .line 184
    :goto_5
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object v0
.end method

.method private static isContentUri(Landroid/net/Uri;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "content"

    .line 192
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
