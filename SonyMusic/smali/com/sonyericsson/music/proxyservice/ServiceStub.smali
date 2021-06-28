.class Lcom/sonyericsson/music/proxyservice/ServiceStub;
.super Ljava/lang/Object;
.source "ServiceStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/proxyservice/ServiceStub$ArtDecoderLister;
    }
.end annotation


# static fields
.field private static final DEFAULT_STRING:Ljava/lang/String; = ""

.field private static final IMAGE_DECODE_TIME_OUT:I = 0x1388

.field static IMAGE_SMALL:I = 0x0

.field private static final SIZE:I = 0x5

.field private static final TIME_OUT:I = 0xc8


# instance fields
.field private mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

.field private mContext:Landroid/content/Context;

.field final mIdentifiers:[J

.field private final mServiceStubHandler:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;)V
    .locals 3

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 55
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub;->mIdentifiers:[J

    .line 66
    iput-object p2, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub;->mServiceStubHandler:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;

    .line 67
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_0

    .line 70
    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub;->mIdentifiers:[J

    const-wide/16 v1, -0x1

    aput-wide v1, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private generateIdentifier(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)J
    .locals 2

    if-eqz p1, :cond_0

    const/16 v0, 0x20f

    .line 463
    invoke-virtual {p1}, Landroid/net/Uri;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    goto :goto_0

    :cond_0
    const/16 v0, 0x11

    .line 465
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    mul-int/lit8 v0, v0, 0x1f

    .line 466
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    .line 468
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    mul-int/lit8 v0, v0, 0x1f

    .line 469
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_2
    int-to-long p1, v0

    const-wide/32 v0, 0x7fffffff

    add-long/2addr p1, v0

    const-wide/16 v0, 0x2

    add-long/2addr p1, v0

    return-wide p1
.end method

.method private getAlbumArt(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/graphics/Bitmap;
    .locals 20

    move-object/from16 v8, p0

    .line 429
    monitor-enter p0

    .line 430
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/music/proxyservice/ServiceStub;->getAvailablePosition()I

    move-result v0

    const/4 v1, -0x1

    const-wide/16 v9, -0x1

    if-le v0, v1, :cond_0

    .line 432
    invoke-direct/range {p0 .. p3}, Lcom/sonyericsson/music/proxyservice/ServiceStub;->generateIdentifier(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    .line 433
    iget-object v4, v8, Lcom/sonyericsson/music/proxyservice/ServiceStub;->mIdentifiers:[J

    aput-wide v2, v4, v0

    move-wide v3, v2

    goto :goto_0

    :cond_0
    move-wide v3, v9

    .line 435
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-le v0, v1, :cond_2

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    .line 438
    new-array v11, v1, [Landroid/graphics/Bitmap;

    .line 439
    new-instance v12, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v12, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    const/4 v13, 0x0

    if-eqz p5, :cond_1

    .line 441
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 442
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    move/from16 v16, v1

    goto :goto_1

    :cond_1
    const/16 v16, 0x0

    .line 444
    :goto_1
    iget-object v14, v8, Lcom/sonyericsson/music/proxyservice/ServiceStub;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v19, Lcom/sonyericsson/music/proxyservice/ServiceStub$ArtDecoderLister;

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    move v5, v0

    move-object v6, v12

    move-object v7, v11

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/music/proxyservice/ServiceStub$ArtDecoderLister;-><init>(Lcom/sonyericsson/music/proxyservice/ServiceStub;JILjava/util/concurrent/CountDownLatch;[Landroid/graphics/Bitmap;)V

    move/from16 v17, p4

    move/from16 v18, p4

    invoke-virtual/range {v14 .. v19}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->load(Ljava/lang/String;IIILcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;)Z

    const-wide/16 v1, 0x1388

    .line 447
    :try_start_1
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v12, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 452
    :catch_0
    aget-object v1, v11, v13

    .line 453
    monitor-enter p0

    .line 454
    :try_start_2
    iget-object v2, v8, Lcom/sonyericsson/music/proxyservice/ServiceStub;->mIdentifiers:[J

    aput-wide v9, v2, v0

    .line 455
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    const/4 v1, 0x0

    :goto_2
    return-object v1

    :catchall_1
    move-exception v0

    .line 435
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private getAlbumName(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "album"

    .line 480
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 481
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private getArtistName(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "artist"

    .line 489
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 490
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private getAvailablePosition()I
    .locals 6

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 83
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub;->mIdentifiers:[J

    aget-wide v2, v1, v0

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private getTrackInfoCursorForPosition(I)Landroid/database/Cursor;
    .locals 4

    .line 413
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x4

    .line 414
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "artist"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "album_id"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "album"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "track_uri"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 417
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/sonyericsson/music/common/DBUtils;->getPlayqueueCursor(Landroid/content/Context;Landroid/content/ContentResolver;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-ltz p1, :cond_0

    if-eqz v0, :cond_0

    .line 418
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 419
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_0
    return-object v0
.end method

.method private getTrackUriInQueue(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "track_uri"

    .line 498
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 499
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 500
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private waitForLock(I)V
    .locals 3

    .line 528
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub;->mServiceStubHandler:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->isLocked(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub;->mServiceStubHandler:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;

    iget-object v0, v0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mLock:Ljava/lang/Object;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public destroyArtDecoder()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->destroy()V

    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    :cond_0
    return-void
.end method

.method public getAlbumArtForPosition(II)Landroid/graphics/Bitmap;
    .locals 7

    .line 377
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    if-nez v0, :cond_0

    .line 378
    new-instance v0, Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    .line 381
    :cond_0
    sget v0, Lcom/sonyericsson/music/proxyservice/ServiceStub;->IMAGE_SMALL:I

    if-ne p2, v0, :cond_1

    .line 382
    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0700e6

    .line 383
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    move v4, p2

    goto :goto_0

    .line 385
    :cond_1
    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07005c

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    move v4, p2

    :goto_0
    const/4 p2, 0x0

    .line 391
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/ServiceStub;->getTrackInfoCursorForPosition(I)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 392
    :try_start_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/ServiceStub;->getTrackUriInQueue(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v0

    .line 393
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/ServiceStub;->getArtistName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    .line 394
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/ServiceStub;->getAlbumName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    .line 396
    invoke-static {v0}, Lcom/sonyericsson/music/common/DBUtils;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 398
    invoke-static {v2, v3}, Lcom/sonyericsson/music/common/AlbumArtUtils;->getAlbumArtUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_2
    move-object v1, p2

    :goto_1
    if-eqz v1, :cond_3

    move-object v0, p0

    .line 402
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/music/proxyservice/ServiceStub;->getAlbumArt(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/graphics/Bitmap;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    if-eqz p1, :cond_4

    .line 406
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v6, p2

    move-object p2, p1

    move-object p1, v6

    :goto_2
    if-eqz p1, :cond_5

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 408
    :cond_5
    throw p2
.end method

.method public getAlbumId()J
    .locals 4

    .line 244
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub;->mServiceStubHandler:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, v0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 246
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub;->mServiceStubHandler:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;

    const/16 v2, 0x46

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->sendMessageAndLock(II)V

    .line 248
    invoke-direct {p0, v3}, Lcom/sonyericsson/music/proxyservice/ServiceStub;->waitForLock(I)V

    .line 249
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub;->mServiceStubHandler:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->getAlbumId()J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 250
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 4

    .line 262
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub;->mServiceStubHandler:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, v0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 264
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub;->mServiceStubHandler:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;

    const/16 v2, 0x5a

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->sendMessageAndLock(II)V

    .line 266
    invoke-direct {p0, v3}, Lcom/sonyericsson/music/proxyservice/ServiceStub;->waitForLock(I)V

    .line 267
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub;->mServiceStubHandler:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 268
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getArtistId()J
    .locals 4

    .line 279
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub;->mServiceStubHandler:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, v0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 281
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub;->mServiceStubHandler:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;

    const/16 v2, 0x46

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->sendMessageAndLock(II)V

    .line 283
    invoke-direct {p0, v3}, Lcom/sonyericsson/music/proxyservice/ServiceStub;->waitForLock(I)V

    .line 284
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub;->mServiceStubHandler:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->getArtistId()J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 285
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 4

    .line 296
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub;->mServiceStubHandler:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, v0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 298
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub;->mServiceStubHandler:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;

    const/16 v2, 0x50

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->sendMessageAndLock(II)V

    .line 300
    invoke-direct {p0, v3}, Lcom/sonyericsson/music/proxyservice/ServiceStub;->waitForLock(I)V

    .line 301
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub;->mServiceStubHandler:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->getArtistName()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 302
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getDuration()J
    .locals 4

    .line 175
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub;->mServiceStubHandler:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, v0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 177
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub;->mServiceStubHandler:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;

    const/16 v2, 0x6e

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->sendMessageAndLock(II)V

    .line 179
    invoke-direct {p0, v3}, Lcom/sonyericsson/music/proxyservice/ServiceStub;->waitForLock(I)V

    .line 180
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub;->mServiceStubHandler:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->getDuration()J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 181
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 4

    .line 314
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub;->mServiceStubHandler:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, v0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 316
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub;->mServiceStubHandler:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;

    const/16 v2, 0x46

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->sendMessageAndLock(II)V

    .line 318
    invoke-direct {p0, v3}, Lcom/sonyericsson/music/proxyservice/ServiceStub;->waitForLock(I)V

    .line 319
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub;->mServiceStubHandler:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->getPath()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 320
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getPosition()J
    .locals 4

    .line 193
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub;->mServiceStubHandler:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, v0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 195
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub;->mServiceStubHandler:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;

    const/16 v2, 0x3c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->sendMessageAndLock(II)V

    .line 197
    invoke-direct {p0, v3}, Lcom/sonyericsson/music/proxyservice/ServiceStub;->waitForLock(I)V

    .line 198
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub;->mServiceStubHandler:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->getPosition()J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 199
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getQueuePosition()I
    .locals 4

    .line 332
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub;->mServiceStubHandler:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, v0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 334
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub;->mServiceStubHandler:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;

    const/16 v2, 0x78

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->sendMessageAndLock(II)V

    .line 336
    invoke-direct {p0, v3}, Lcom/sonyericsson/music/proxyservice/ServiceStub;->waitForLock(I)V

    .line 337
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub;->mServiceStubHandler:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->getQueuePosition()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 338
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getTrackId()J
    .locals 4

    .line 210
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub;->mServiceStubHandler:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, v0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 212
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub;->mServiceStubHandler:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;

    const/16 v2, 0x46

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->sendMessageAndLock(II)V

    .line 214
    invoke-direct {p0, v3}, Lcom/sonyericsson/music/proxyservice/ServiceStub;->waitForLock(I)V

    .line 215
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub;->mServiceStubHandler:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->getTrackId()J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 216
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 4

    .line 227
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub;->mServiceStubHandler:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, v0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 229
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub;->mServiceStubHandler:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;

    const/16 v2, 0x64

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->sendMessageAndLock(II)V

    .line 231
    invoke-direct {p0, v3}, Lcom/sonyericsson/music/proxyservice/ServiceStub;->waitForLock(I)V

    .line 232
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub;->mServiceStubHandler:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->getTrackName()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 233
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public isInPlayqueueMode()Z
    .locals 4

    .line 511
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub;->mServiceStubHandler:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, v0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 513
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub;->mServiceStubHandler:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;

    const/16 v2, 0x8c

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->sendMessageAndLock(II)V

    .line 515
    invoke-direct {p0, v3}, Lcom/sonyericsson/music/proxyservice/ServiceStub;->waitForLock(I)V

    .line 516
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub;->mServiceStubHandler:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->isInPlayqueueMode()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 517
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPlaying()Z
    .locals 4

    .line 105
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub;->mServiceStubHandler:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, v0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 107
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub;->mServiceStubHandler:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;

    const/16 v2, 0xa

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->sendMessageAndLock(II)V

    .line 109
    invoke-direct {p0, v3}, Lcom/sonyericsson/music/proxyservice/ServiceStub;->waitForLock(I)V

    .line 110
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub;->mServiceStubHandler:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->isPlaying()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 111
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public next()V
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub;->mServiceStubHandler:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, v0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 140
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub;->mServiceStubHandler:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 141
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public pause()V
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub;->mServiceStubHandler:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, v0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub;->mServiceStubHandler:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 130
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public play()V
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub;->mServiceStubHandler:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, v0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 120
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub;->mServiceStubHandler:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 121
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public prev()V
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub;->mServiceStubHandler:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, v0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 163
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub;->mServiceStubHandler:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;

    const/16 v2, 0x32

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 164
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public setQueuePosition(IZ)V
    .locals 4

    .line 351
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub;->mServiceStubHandler:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, v0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 353
    :try_start_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0x82

    .line 354
    iput v2, v1, Landroid/os/Message;->what:I

    .line 355
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "queue_position"

    .line 356
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "start_playing"

    .line 357
    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 358
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 359
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub;->mServiceStubHandler:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 360
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public shuffleNext()V
    .locals 3

    .line 149
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub;->mServiceStubHandler:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, v0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 151
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub;->mServiceStubHandler:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;

    const/16 v2, 0x96

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 152
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method
