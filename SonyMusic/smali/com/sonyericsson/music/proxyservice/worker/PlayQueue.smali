.class Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;
.super Ljava/lang/Object;
.source "PlayQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/proxyservice/worker/PlayQueue$PlayQueueValues;,
        Lcom/sonyericsson/music/proxyservice/worker/PlayQueue$ContentValuesCreator;
    }
.end annotation


# static fields
.field private static final GENRE_ID_COLUMN:Ljava/lang/String;

.field private static final PLAYLIST_ID_COLUMN:Ljava/lang/String; = "audio_id"

.field private static final TRACK_ID_COLUMN:Ljava/lang/String; = "_id"

.field static final TRACK_POSITION_INVALID:I = -0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private volatile mShuffle:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Genres$Members;->AUDIO_ID:Ljava/lang/String;

    sput-object v0, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->GENRE_ID_COLUMN:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->mContext:Landroid/content/Context;

    return-void
.end method

.method private createContentValues(Landroid/database/Cursor;Ljava/lang/String;)[Landroid/content/ContentValues;
    .locals 1

    const/4 v0, 0x0

    .line 500
    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->createContentValues(Landroid/database/Cursor;Ljava/lang/String;I)[Landroid/content/ContentValues;

    move-result-object p1

    return-object p1
.end method

.method private createContentValues(Landroid/database/Cursor;Ljava/lang/String;I)[Landroid/content/ContentValues;
    .locals 19

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    .line 505
    iget-object v2, v1, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;->MEDIA_STORE:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;

    sget-object v4, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;->TRACK:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;

    invoke-static {v2, v3, v4}, Lcom/sonyericsson/music/common/HDAudioUtils;->getHDContent(Landroid/content/Context;Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;)Ljava/util/HashSet;

    move-result-object v2

    .line 509
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 510
    new-array v4, v3, [Landroid/content/ContentValues;

    .line 511
    invoke-interface/range {p1 .. p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "title"

    .line 520
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "album"

    .line 521
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "artist"

    .line 522
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v9, "_data"

    .line 523
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string v10, "duration"

    .line 524
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v11, "album_id"

    .line 525
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string v12, "artist_id"

    .line 526
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v3, :cond_2

    .line 529
    invoke-interface {v0, v14}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 530
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    aput-object v15, v4, v14

    .line 532
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 533
    invoke-static {v15}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->getTrackUri(I)Ljava/lang/String;

    move-result-object v13

    const/4 v1, -0x1

    if-le v15, v1, :cond_0

    .line 537
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 540
    :goto_1
    aget-object v15, v4, v14

    move-object/from16 v16, v2

    const-string v2, "track_uri"

    invoke-virtual {v15, v2, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    aget-object v2, v4, v14

    const-string v13, "title"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v13, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    aget-object v2, v4, v14

    const-string v13, "album"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v13, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    aget-object v2, v4, v14

    const-string v13, "artist"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v13, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    aget-object v2, v4, v14

    const-string v13, "_data"

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v13, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    aget-object v2, v4, v14

    const-string v13, "duration"

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v2, v13, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 546
    aget-object v2, v4, v14

    const-string v13, "album_id"

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v2, v13, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 547
    aget-object v2, v4, v14

    const-string v13, "artist_id"

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v2, v13, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 548
    aget-object v2, v4, v14

    const-string v13, "source_play_order"

    add-int v15, p3, v14

    .line 549
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 548
    invoke-virtual {v2, v13, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 550
    aget-object v2, v4, v14

    const-string v13, "hd_audio"

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v13, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, v16

    move-object/from16 v1, p0

    goto/16 :goto_0

    :cond_2
    return-object v4
.end method

.method private createContentValuesFromCloud(Ljava/util/List;)[Landroid/content/ContentValues;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;",
            ">;)[",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .line 557
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 559
    new-array v0, v0, [Landroid/content/ContentValues;

    .line 562
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;

    .line 563
    invoke-virtual {v3}, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->getId()I

    move-result v4

    invoke-static {v4}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$CloudFiles;->getContentUri(I)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 564
    invoke-virtual {v3}, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->getTitle()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 565
    :cond_0
    invoke-virtual {v3}, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->getName()Ljava/lang/String;

    move-result-object v5

    .line 567
    :goto_1
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    aput-object v6, v0, v2

    .line 568
    aget-object v6, v0, v2

    const-string v7, "track_uri"

    invoke-virtual {v6, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    aget-object v6, v0, v2

    const-string v7, "title"

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    aget-object v5, v0, v2

    const-string v6, "album"

    invoke-virtual {v3}, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->getAlbum()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    aget-object v5, v0, v2

    const-string v6, "artist"

    invoke-virtual {v3}, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->getArtist()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    aget-object v5, v0, v2

    const-string v6, "_data"

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    aget-object v4, v0, v2

    const-string v5, "duration"

    invoke-virtual {v3}, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->getDuration()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 574
    aget-object v3, v0, v2

    const-string v4, "album_id"

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 575
    aget-object v3, v0, v2

    const-string v4, "artist_id"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 576
    aget-object v3, v0, v2

    const-string v4, "source_play_order"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 577
    aget-object v3, v0, v2

    const-string v4, "hd_audio"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_1
    return-object v0
.end method

.method private createPlayqueueValues(Landroid/net/Uri;Landroid/content/ContentResolver;II)Lcom/sonyericsson/music/proxyservice/worker/PlayQueue$PlayQueueValues;
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/music/common/PermissionUtils;->isReadStoragePermissionGranted(Landroid/content/Context;)Z

    move-result v0

    .line 109
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/sonyericsson/music/common/DBUtils;->isSmartPlaylistContainerUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 110
    new-instance v2, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue$PlayQueueValues;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->createValuesFromSmartPlaylist(Landroid/net/Uri;Landroid/content/ContentResolver;)[Landroid/content/ContentValues;

    move-result-object p1

    invoke-direct {v2, p1, p3}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue$PlayQueueValues;-><init>([Landroid/content/ContentValues;I)V

    goto/16 :goto_0

    .line 111
    :cond_0
    invoke-static {p1}, Lcom/sonyericsson/music/common/DBUtils;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 112
    invoke-static {p1}, Lcom/sonyericsson/music/common/MediaStoreUriMatcher;->getUriType(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 142
    :pswitch_1
    new-instance p4, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue$PlayQueueValues;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->createValuesFromGenre(Landroid/net/Uri;Landroid/content/ContentResolver;)[Landroid/content/ContentValues;

    move-result-object p1

    invoke-direct {p4, p1, p3}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue$PlayQueueValues;-><init>([Landroid/content/ContentValues;I)V

    move-object v2, p4

    goto/16 :goto_0

    .line 147
    :pswitch_2
    new-instance p4, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue$PlayQueueValues;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->createValuesFromFolder(Landroid/net/Uri;Landroid/content/ContentResolver;)[Landroid/content/ContentValues;

    move-result-object p1

    invoke-direct {p4, p1, p3}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue$PlayQueueValues;-><init>([Landroid/content/ContentValues;I)V

    move-object v2, p4

    goto :goto_0

    .line 134
    :pswitch_3
    invoke-static {p2, p1}, Lcom/sonyericsson/music/metadata/provider/MediastorePlaylistUtils;->convertMediaStorePlaylistUriToMusicInfoPlaylistUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 136
    new-instance p4, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue$PlayQueueValues;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->createValuesFromPlaylist(Landroid/net/Uri;Landroid/content/ContentResolver;)[Landroid/content/ContentValues;

    move-result-object p1

    invoke-direct {p4, p1, p3}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue$PlayQueueValues;-><init>([Landroid/content/ContentValues;I)V

    move-object v2, p4

    goto :goto_0

    .line 126
    :pswitch_4
    new-instance v0, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue$PlayQueueValues;

    .line 127
    invoke-direct {p0, p1, p2, p4}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->createValuesFromTrack(Landroid/net/Uri;Landroid/content/ContentResolver;I)[Landroid/content/ContentValues;

    move-result-object p1

    invoke-direct {v0, p1, p3}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue$PlayQueueValues;-><init>([Landroid/content/ContentValues;I)V

    move-object v2, v0

    goto :goto_0

    .line 121
    :pswitch_5
    new-instance p4, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue$PlayQueueValues;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->createValuesFromAlbum(Landroid/net/Uri;Landroid/content/ContentResolver;)[Landroid/content/ContentValues;

    move-result-object p1

    invoke-direct {p4, p1, p3}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue$PlayQueueValues;-><init>([Landroid/content/ContentValues;I)V

    move-object v2, p4

    goto :goto_0

    .line 116
    :pswitch_6
    new-instance p4, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue$PlayQueueValues;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->createValuesFromArtist(Landroid/net/Uri;Landroid/content/ContentResolver;)[Landroid/content/ContentValues;

    move-result-object p1

    invoke-direct {p4, p1, p3}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue$PlayQueueValues;-><init>([Landroid/content/ContentValues;I)V

    move-object v2, p4

    goto :goto_0

    .line 154
    :cond_1
    invoke-static {p1}, Lcom/sonyericsson/music/common/DBUtils;->isMusicInfoStoreUri(Landroid/net/Uri;)Z

    move-result p4

    if-eqz p4, :cond_4

    .line 155
    invoke-static {p1}, Lcom/sonyericsson/music/common/MediaStoreUriMatcher;->getUriType(Landroid/net/Uri;)I

    move-result p4

    const/16 v1, 0xa

    if-eq p4, v1, :cond_3

    const/16 v0, 0xe

    if-eq p4, v0, :cond_2

    goto :goto_0

    .line 166
    :cond_2
    new-instance v2, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue$PlayQueueValues;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->createValuesFromCloudFolder(Landroid/net/Uri;Landroid/content/ContentResolver;)[Landroid/content/ContentValues;

    move-result-object p1

    invoke-direct {v2, p1, p3}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue$PlayQueueValues;-><init>([Landroid/content/ContentValues;I)V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 160
    new-instance v2, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue$PlayQueueValues;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->createValuesFromPlaylist(Landroid/net/Uri;Landroid/content/ContentResolver;)[Landroid/content/ContentValues;

    move-result-object p1

    invoke-direct {v2, p1, p3}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue$PlayQueueValues;-><init>([Landroid/content/ContentValues;I)V

    :cond_4
    :goto_0
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private createValuesFromAlbum(Landroid/net/Uri;Landroid/content/ContentResolver;)[Landroid/content/ContentValues;
    .locals 2

    .line 360
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 361
    invoke-static {p2, v0, v1}, Lcom/sonyericsson/music/common/DBUtils;->getAlbumTracksCursor(Landroid/content/ContentResolver;J)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    const-string p2, "_id"

    .line 365
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->createContentValues(Landroid/database/Cursor;Ljava/lang/String;)[Landroid/content/ContentValues;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 368
    throw p2

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method

.method private createValuesFromArtist(Landroid/net/Uri;Landroid/content/ContentResolver;)[Landroid/content/ContentValues;
    .locals 2

    .line 298
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 299
    invoke-static {p2, v0, v1}, Lcom/sonyericsson/music/common/DBUtils;->getArtistAllTracksCursor(Landroid/content/ContentResolver;J)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    const-string p2, "_id"

    .line 303
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->createContentValues(Landroid/database/Cursor;Ljava/lang/String;)[Landroid/content/ContentValues;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 306
    throw p2

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method

.method private createValuesFromCloudFolder(Landroid/net/Uri;Landroid/content/ContentResolver;)[Landroid/content/ContentValues;
    .locals 4

    .line 460
    invoke-static {p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$CloudFiles;->parseAccountAndParent(Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, "mime_type"

    .line 462
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "parent_none"

    .line 465
    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 466
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "file_name COLLATE NOCASE"

    invoke-static {p2, v0, v1, v2, p1}, Lcom/sonyericsson/music/metadata/cloud/db/FilesTable;->getCloudFiles(Landroid/content/ContentResolver;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 469
    :cond_0
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v3, "file_name COLLATE NOCASE"

    invoke-static {p2, v2, v0, v3, p1}, Lcom/sonyericsson/music/metadata/cloud/db/FilesTable;->getCloudFiles(Landroid/content/ContentResolver;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 472
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_1

    .line 473
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->createContentValuesFromCloud(Ljava/util/List;)[Landroid/content/ContentValues;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method private createValuesFromFolder(Landroid/net/Uri;Landroid/content/ContentResolver;)[Landroid/content/ContentValues;
    .locals 0

    .line 443
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    .line 445
    invoke-static {p2, p1}, Lcom/sonyericsson/music/common/FolderUtils;->getAudioFilesFromFolder(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    const-string p2, "_id"

    .line 448
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->createContentValues(Landroid/database/Cursor;Ljava/lang/String;)[Landroid/content/ContentValues;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 451
    throw p2

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method

.method private createValuesFromGenre(Landroid/net/Uri;Landroid/content/ContentResolver;)[Landroid/content/ContentValues;
    .locals 3

    .line 418
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    .line 420
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    return-object v2

    :cond_0
    sub-int/2addr v0, v1

    .line 424
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-string p1, "external"

    .line 425
    invoke-static {p1, v0, v1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object p1

    const/4 v0, 0x1

    .line 426
    invoke-static {v0}, Lcom/sonyericsson/music/common/DBUtils;->getGenreProjection(Z)[Ljava/lang/String;

    move-result-object v0

    .line 427
    invoke-static {p2, v0, p1}, Lcom/sonyericsson/music/common/DBUtils;->getGenreTracksCursor(Landroid/content/ContentResolver;[Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 431
    :try_start_0
    sget-object p2, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->GENRE_ID_COLUMN:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->createContentValues(Landroid/database/Cursor;Ljava/lang/String;)[Landroid/content/ContentValues;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 434
    throw p2

    :cond_1
    :goto_0
    return-object v2
.end method

.method private createValuesFromPlaylist(Landroid/net/Uri;Landroid/content/ContentResolver;)[Landroid/content/ContentValues;
    .locals 1

    .line 399
    invoke-static {p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getPlaylistIdParam(Landroid/net/Uri;)I

    move-result p1

    .line 400
    invoke-static {p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$Members;->getContentUri(I)Landroid/net/Uri;

    move-result-object p1

    const/4 v0, 0x1

    .line 401
    invoke-static {v0}, Lcom/sonyericsson/music/common/DBUtils;->getMyPlaylistProjection(Z)[Ljava/lang/String;

    move-result-object v0

    .line 402
    invoke-static {p2, v0, p1}, Lcom/sonyericsson/music/common/DBUtils;->getMyPlaylistTracksCursor(Landroid/content/ContentResolver;[Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    const-string p2, "audio_id"

    .line 406
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->createContentValues(Landroid/database/Cursor;Ljava/lang/String;)[Landroid/content/ContentValues;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 409
    throw p2

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method

.method private createValuesFromSmartPlaylist(Landroid/net/Uri;Landroid/content/ContentResolver;)[Landroid/content/ContentValues;
    .locals 4

    .line 315
    invoke-static {p1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getSmartPlaylistType(Landroid/net/Uri;)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 320
    sget-object v3, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue$1;->$SwitchMap$com$sonyericsson$music$common$SmartPlaylistUtils$SmartPlaylistType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v3, p1

    const/4 v3, -0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 336
    :pswitch_0
    invoke-static {p2}, Lcom/sonyericsson/music/common/DBUtils;->getFavouritesProperties(Landroid/content/ContentResolver;)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;

    move-result-object p1

    goto :goto_1

    .line 332
    :pswitch_1
    invoke-static {v2, v3}, Lcom/sonyericsson/music/common/DBUtils;->getNewlyAddedDescProperty([Ljava/lang/String;I)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;

    move-result-object p1

    const/4 v1, 0x0

    goto :goto_1

    .line 327
    :pswitch_2
    sget-object p1, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->RECENTLY_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-static {p2, v2, v3, p1}, Lcom/sonyericsson/music/common/DBUtils;->getPlayedPlaylistDescProperty(Landroid/content/ContentResolver;[Ljava/lang/String;ILcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;

    move-result-object p1

    goto :goto_1

    .line 322
    :pswitch_3
    sget-object p1, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->MOST_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-static {p2, v2, v3, p1}, Lcom/sonyericsson/music/common/DBUtils;->getPlayedPlaylistDescProperty(Landroid/content/ContentResolver;[Ljava/lang/String;ILcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;

    move-result-object p1

    goto :goto_1

    :cond_0
    :goto_0
    move-object p1, v2

    const/4 v1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    .line 342
    invoke-static {p2, p1}, Lcom/sonyericsson/music/common/DBUtils;->getSmartPlaylistTracksCursor(Landroid/content/ContentResolver;Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    if-eqz v1, :cond_1

    :try_start_0
    const-string p2, "audio_id"

    goto :goto_2

    :cond_1
    const-string p2, "_id"

    .line 347
    :goto_2
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->createContentValues(Landroid/database/Cursor;Ljava/lang/String;)[Landroid/content/ContentValues;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 350
    throw p2

    :cond_2
    :goto_3
    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private createValuesFromTrack(Landroid/net/Uri;Landroid/content/ContentResolver;I)[Landroid/content/ContentValues;
    .locals 3

    .line 378
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 379
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 380
    sget-object v0, Lcom/sonyericsson/music/common/DBUtils;->ALL_MEDIASTORE_TRACK_COLUMNS:[Ljava/lang/String;

    .line 381
    invoke-static {p2, p1, v0}, Lcom/sonyericsson/music/common/DBUtils;->getTrackInfo(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    const-string p2, "_id"

    .line 385
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->createContentValues(Landroid/database/Cursor;Ljava/lang/String;I)[Landroid/content/ContentValues;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 388
    throw p2

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method

.method private enqueueContentValues(Landroid/content/ContentResolver;[Landroid/content/ContentValues;ILandroid/net/Uri;)I
    .locals 1

    if-eqz p2, :cond_1

    .line 252
    array-length v0, p2

    if-lez v0, :cond_1

    .line 253
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->mContext:Landroid/content/Context;

    .line 254
    invoke-static {v0, p3}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueStoreInternal;->getContentUriWithPositionParameter(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p3

    if-eqz p4, :cond_0

    .line 256
    invoke-virtual {p4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueStoreInternal;->appendInsertInfo(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    .line 259
    :cond_0
    invoke-virtual {p1, p3, p2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static getTrackUri(I)Ljava/lang/String;
    .locals 3

    .line 585
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v1, p0

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    .line 586
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private reshufflePlayqueue()I
    .locals 4

    .line 605
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 606
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueStoreInternal;->getContentUriWithReShuffleParameter(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    .line 607
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private restorePlayqueue()I
    .locals 4

    .line 590
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 591
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueStoreInternal;->getContentUriWithRestoreParameter(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    .line 592
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private savePlayqueue(Landroid/content/ContentResolver;[Landroid/content/ContentValues;ZLandroid/net/Uri;)I
    .locals 2

    .line 482
    iput-boolean p3, p0, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->mShuffle:Z

    .line 483
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->getPlayqueueContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    .line 485
    invoke-virtual {p1, v0, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    if-eqz p3, :cond_0

    .line 489
    iget-object p3, p0, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueStoreInternal;->getContentUriWithShuffleParameter(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    :cond_0
    if-eqz p4, :cond_1

    .line 494
    invoke-virtual {p4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueStoreInternal;->appendInsertInfo(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 496
    :cond_1
    invoke-virtual {p1, v0, p2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result p1

    return p1
.end method

.method private shufflePlayqueue(I)I
    .locals 3

    .line 597
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 598
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->mContext:Landroid/content/Context;

    .line 599
    invoke-static {v1, p1}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueStoreInternal;->getContentUriWithShuffleAndPositionParameter(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p1

    .line 600
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method


# virtual methods
.method createPlayQueue(Landroid/net/Uri;Landroid/content/ContentResolver;IZI)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/content/ContentResolver;",
            "IZI)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 93
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->createPlayqueueValues(Landroid/net/Uri;Landroid/content/ContentResolver;II)Lcom/sonyericsson/music/proxyservice/worker/PlayQueue$PlayQueueValues;

    move-result-object p5

    if-eqz p5, :cond_0

    .line 95
    invoke-virtual {p5}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue$PlayQueueValues;->getValues()[Landroid/content/ContentValues;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p5}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue$PlayQueueValues;->getValues()[Landroid/content/ContentValues;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 96
    invoke-virtual {p5}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue$PlayQueueValues;->getValues()[Landroid/content/ContentValues;

    move-result-object p3

    invoke-direct {p0, p2, p3, p4, p1}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->savePlayqueue(Landroid/content/ContentResolver;[Landroid/content/ContentValues;ZLandroid/net/Uri;)I

    move-result p1

    .line 97
    invoke-virtual {p5}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue$PlayQueueValues;->getIndex()I

    move-result p3

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 100
    :goto_0
    new-instance p2, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method createPlayQueueSmartPlaylist(Landroid/database/Cursor;Landroid/content/ContentResolver;ZZLandroid/net/Uri;)I
    .locals 0

    if-eqz p4, :cond_0

    const-string p4, "audio_id"

    goto :goto_0

    :cond_0
    const-string p4, "_id"

    .line 181
    :goto_0
    invoke-direct {p0, p1, p4}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->createContentValues(Landroid/database/Cursor;Ljava/lang/String;)[Landroid/content/ContentValues;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 183
    invoke-direct {p0, p2, p1, p3, p5}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->savePlayqueue(Landroid/content/ContentResolver;[Landroid/content/ContentValues;ZLandroid/net/Uri;)I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method dequeueTrack(I)I
    .locals 2

    const/4 v0, -0x1

    if-gt p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 274
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueStoreInternal;->getContentUriWithPositionParameter(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p1

    const/4 v1, 0x0

    .line 275
    invoke-virtual {v0, p1, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method enqueueTrack(Landroid/net/Uri;Landroid/net/Uri;II)I
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    .line 243
    invoke-direct {p0, p1, v0, v1, p3}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->createPlayqueueValues(Landroid/net/Uri;Landroid/content/ContentResolver;II)Lcom/sonyericsson/music/proxyservice/worker/PlayQueue$PlayQueueValues;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 244
    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue$PlayQueueValues;->getValues()[Landroid/content/ContentValues;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 246
    :goto_0
    invoke-direct {p0, v0, p1, p4, p2}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->enqueueContentValues(Landroid/content/ContentResolver;[Landroid/content/ContentValues;ILandroid/net/Uri;)I

    move-result p1

    return p1
.end method

.method enqueueTracks(Landroid/net/Uri;I)I
    .locals 3

    .line 229
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 231
    invoke-static {p1}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueStoreInternal;->getPositionParameterFromContentUri(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x0

    .line 232
    invoke-direct {p0, p1, v0, v2, v1}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->createPlayqueueValues(Landroid/net/Uri;Landroid/content/ContentResolver;II)Lcom/sonyericsson/music/proxyservice/worker/PlayQueue$PlayQueueValues;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 233
    invoke-virtual {v1}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue$PlayQueueValues;->getValues()[Landroid/content/ContentValues;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 235
    :goto_0
    invoke-direct {p0, v0, v1, p2, p1}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->enqueueContentValues(Landroid/content/ContentResolver;[Landroid/content/ContentValues;ILandroid/net/Uri;)I

    move-result p1

    return p1
.end method

.method findCurrentTrackPosition(Lcom/sonyericsson/music/common/Track;)I
    .locals 11

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 618
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result v1

    .line 619
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 620
    iget-object v3, p0, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    .line 621
    invoke-static {v4}, Lcom/sonyericsson/music/common/DBUtils;->getPlayQueueProjection(Z)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v2, v5}, Lcom/sonyericsson/music/common/DBUtils;->getPlayqueueCursor(Landroid/content/Context;Landroid/content/ContentResolver;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 623
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_6

    const-string v3, "track_uri"

    .line 624
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 625
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 627
    :try_start_0
    invoke-interface {v2, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 628
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 629
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result p1

    move v4, p1

    goto :goto_2

    .line 637
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result p1

    const/4 v6, 0x1

    const/4 v0, 0x1

    const/4 v7, -0x1

    :goto_0
    if-nez v4, :cond_5

    sub-int v8, v1, v0

    if-gez v8, :cond_2

    add-int v9, v1, v0

    if-ge v9, p1, :cond_5

    :cond_2
    add-int v9, v1, v0

    .line 639
    invoke-interface {v2, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 640
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    move v7, v9

    const/4 v4, 0x1

    goto :goto_1

    .line 648
    :cond_3
    invoke-interface {v2, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 649
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v9, :cond_4

    move v7, v8

    const/4 v4, 0x1

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    move v4, v7

    .line 662
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception p1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 663
    throw p1

    :cond_6
    if-eqz v2, :cond_7

    .line 667
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_7
    :goto_3
    return v4
.end method

.method public getCurrentPlayingContainerUri(I)Ljava/lang/String;
    .locals 8

    .line 697
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v0, 0x1

    const/4 v7, 0x0

    .line 702
    :try_start_0
    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "uri"

    aput-object v2, v3, v0

    .line 703
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->mContext:Landroid/content/Context;

    .line 704
    invoke-static {v0, p1}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueStoreInternal$PlayqueueEntrySource;->getContentUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 703
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_0

    .line 706
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "uri"

    .line 708
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 709
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v7, p1

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 713
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v7

    :catchall_1
    move-exception v0

    :goto_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 715
    :cond_2
    throw v0
.end method

.method public getTrackCountInPlayqueue()I
    .locals 8

    const/4 v0, 0x1

    .line 685
    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "_id"

    const/4 v7, 0x0

    aput-object v0, v3, v7

    .line 686
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 687
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->mContext:Landroid/content/Context;

    .line 688
    invoke-static {v0}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->getPlayqueueContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 690
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 691
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return v7
.end method

.method getTrackInQueue(I)Lcom/sonyericsson/music/common/Track;
    .locals 1

    .line 680
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sonyericsson/music/common/TrackFactory;->createTrackFromPlayqueue(Landroid/content/Context;I)Lcom/sonyericsson/music/common/Track;

    move-result-object p1

    return-object p1
.end method

.method isEmpty()Z
    .locals 4

    .line 72
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    .line 73
    invoke-static {v2}, Lcom/sonyericsson/music/common/DBUtils;->getPlayQueueProjection(Z)[Ljava/lang/String;

    move-result-object v3

    .line 72
    invoke-static {v0, v1, v3}, Lcom/sonyericsson/music/common/DBUtils;->getPlayqueueCursor(Landroid/content/Context;Landroid/content/ContentResolver;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 76
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_0

    .line 79
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 81
    :cond_0
    throw v1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :cond_2
    if-eqz v0, :cond_3

    .line 79
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return v2
.end method

.method isShuffled()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->mShuffle:Z

    return v0
.end method

.method moveTrack(II)I
    .locals 3

    .line 285
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 287
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueStoreInternal;->getContentUriWithMoveParameter(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p1

    .line 288
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "play_order"

    .line 289
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p2, 0x0

    .line 290
    invoke-virtual {v0, p1, v1, p2, p2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method reshuffle(I)I
    .locals 1

    .line 211
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->mShuffle:Z

    if-eqz v0, :cond_0

    .line 213
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->reshufflePlayqueue()I

    move-result p1

    goto :goto_0

    .line 216
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->shufflePlayqueue(I)I

    move-result p1

    :goto_0
    const/4 v0, 0x1

    .line 219
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->mShuffle:Z

    return p1
.end method

.method setShuffle(Z)V
    .locals 0

    .line 676
    iput-boolean p1, p0, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->mShuffle:Z

    return-void
.end method

.method shuffle(ZI)I
    .locals 0

    if-eqz p1, :cond_0

    .line 196
    invoke-direct {p0, p2}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->shufflePlayqueue(I)I

    move-result p2

    goto :goto_0

    .line 198
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->restorePlayqueue()I

    move-result p2

    .line 200
    :goto_0
    iput-boolean p1, p0, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->mShuffle:Z

    return p2
.end method
