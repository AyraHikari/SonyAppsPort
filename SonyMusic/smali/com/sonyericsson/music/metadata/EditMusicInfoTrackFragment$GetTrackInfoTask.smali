.class Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment$GetTrackInfoTask;
.super Lcom/sonyericsson/music/metadata/FetchInfoTask;
.source "EditMusicInfoTrackFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetTrackInfoTask"
.end annotation


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;J)V
    .locals 0

    .line 411
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/music/metadata/FetchInfoTask;-><init>(Landroid/app/Activity;Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public populateInfo(Landroid/content/Context;J)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Landroid/util/Pair<",
            "Lcom/sonyericsson/music/metadata/EditMusicInfo;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 416
    new-instance v0, Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-direct {v0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;-><init>()V

    .line 419
    invoke-static {p1}, Lcom/sonyericsson/music/common/PermissionUtils;->isReadStoragePermissionGranted(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 420
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 424
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p2, p3}, Lcom/sonyericsson/music/common/DBUtils;->getTrackInfo(Landroid/content/ContentResolver;J)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_9

    .line 426
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v2, "title"

    .line 428
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 427
    invoke-static {v2}, Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->setTitle(Ljava/lang/String;)V

    const-string v2, "artist"

    .line 430
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 431
    invoke-static {p1, v2}, Lcom/sonyericsson/music/common/StringUtils;->isEmptyOrUnknown(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 432
    invoke-virtual {v0, v2}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->setArtist(Ljava/lang/String;)V

    .line 433
    invoke-virtual {v0, v2}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->setOriginalArtist(Ljava/lang/String;)V

    :cond_1
    const-string v5, "artist_id"

    .line 436
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 435
    invoke-virtual {v0, v5, v6}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->setArtistId(J)V

    const-string v5, "album"

    .line 438
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 439
    invoke-static {p1, v5}, Lcom/sonyericsson/music/common/StringUtils;->isEmptyOrUnknown(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 440
    invoke-virtual {v0, v5}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->setAlbum(Ljava/lang/String;)V

    :cond_2
    const-string v5, "year"

    .line 442
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-nez v5, :cond_3

    const-string v5, ""

    goto :goto_0

    .line 443
    :cond_3
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v0, v5}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->setYear(Ljava/lang/String;)V

    const-string v5, "track"

    .line 446
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 448
    invoke-static {v5}, Lcom/sonyericsson/music/common/MusicUtils;->mediaStoreTrackNumberToDiscAndTrackNumber(I)Landroid/util/Pair;

    move-result-object v5

    .line 449
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 450
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v6, :cond_4

    .line 451
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_4
    const-string v6, ""

    :goto_1
    invoke-virtual {v0, v6}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->setDiscNbr(Ljava/lang/String;)V

    if-eqz v5, :cond_5

    .line 452
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_5
    const-string v5, ""

    :goto_2
    invoke-virtual {v0, v5}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->setTrackNbr(Ljava/lang/String;)V

    const-string v5, "album_id"

    .line 455
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 454
    invoke-virtual {v0, v5, v6}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->setAlbumId(J)V

    .line 457
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, p2, p3}, Lcom/sonyericsson/music/common/DBUtils;->getDataPathForTrackId(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v5

    .line 456
    invoke-virtual {v0, v5}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->setFilePath(Ljava/lang/String;)V

    .line 459
    invoke-virtual {v0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getArtist()Ljava/lang/String;

    move-result-object v5

    .line 460
    invoke-virtual {v0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getAlbum()Ljava/lang/String;

    move-result-object v6

    .line 459
    invoke-static {v5, v6}, Lcom/sonyericsson/music/common/AlbumArtUtils;->getAlbumArtUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 462
    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "force"

    const-string v7, "true"

    .line 463
    invoke-virtual {v5, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    .line 464
    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    const-string v6, "art_path"

    .line 462
    invoke-static {p1, v5, v6}, Lcom/sonyericsson/music/common/DBUtils;->getArtDataFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 465
    invoke-virtual {v0, v5}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->setAlbumArt(Ljava/io/File;)V

    .line 467
    :cond_6
    invoke-static {p1, v2}, Lcom/sonyericsson/music/common/StringUtils;->isEmptyOrUnknown(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 469
    invoke-static {v2}, Lcom/sonyericsson/music/common/ArtistImageUtils;->getArtistArtUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v5, "art_path"

    invoke-static {p1, v2, v5}, Lcom/sonyericsson/music/common/DBUtils;->getArtDataFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 471
    invoke-virtual {v0, v2}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->setArtistArt(Ljava/io/File;)V

    .line 476
    :cond_7
    invoke-virtual {v0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/music/metadata/EmbeddedMetaDataUtils;->getEmbeddedAlbumArt(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_8

    const/4 v5, 0x1

    goto :goto_3

    :cond_8
    const/4 v5, 0x0

    .line 477
    :goto_3
    invoke-virtual {v0, v5}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->setHasEmbeddedAlbumArt(Z)V

    :cond_9
    long-to-int p3, p2

    .line 480
    invoke-static {p1, p3}, Lcom/sonyericsson/music/common/DBUtils;->getTrackGenre(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 481
    new-array p2, v4, [Ljava/lang/String;

    if-eqz p1, :cond_a

    goto :goto_4

    :cond_a
    const-string p1, ""

    :goto_4
    aput-object p1, p2, v3

    invoke-virtual {v0, p2}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->setGenres([Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_b

    .line 484
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 487
    :cond_b
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_5

    :catchall_1
    move-exception p1

    move-object v1, v2

    :goto_5
    if-eqz v1, :cond_c

    .line 484
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 486
    :cond_c
    throw p1
.end method
