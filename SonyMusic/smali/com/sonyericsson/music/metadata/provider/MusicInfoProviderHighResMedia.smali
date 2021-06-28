.class Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia;
.super Ljava/lang/Object;
.source "MusicInfoProviderHighResMedia.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia$HighResMediaInternalColums;,
        Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia$VerifiedMedia;,
        Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia$TrackInfo;
    }
.end annotation


# static fields
.field private static final MAX_NBR_SQL_VARIABLES:I = 0x32

.field static final WHERE_SOURCE_AND_TYPE:Ljava/lang/String; = "source = ? AND type = ?"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addSelection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p0, :cond_1

    .line 104
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 107
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " AND "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 105
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private static addSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    .line 116
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    if-eqz p0, :cond_0

    .line 118
    array-length p1, p0

    if-lez p1, :cond_0

    .line 119
    array-length p1, p0

    add-int/2addr p1, v0

    new-array p1, p1, [Ljava/lang/String;

    .line 120
    array-length v0, p0

    invoke-static {p0, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    array-length p0, p0

    aget-object v0, v1, v2

    aput-object v0, p1, p0

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    return-object p1
.end method

.method private static convertTracksCursorToMap(Landroid/database/Cursor;)Ljava/util/Map;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia$TrackInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 543
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "_id"

    .line 545
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "title"

    .line 546
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "album_id"

    .line 547
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "mime_type"

    .line 548
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "_data"

    .line 549
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "date_added"

    .line 550
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 552
    :goto_0
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 553
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 554
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 555
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    .line 556
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 557
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 558
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 560
    new-instance v14, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia$TrackInfo;

    move-object v9, v14

    move-object v0, v14

    move-object v14, v8

    invoke-direct/range {v9 .. v15}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia$TrackInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static createAlbumContentValues(Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 2

    .line 420
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "source"

    .line 421
    invoke-virtual {p0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p0, "type"

    .line 422
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;->ALBUM:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;

    .line 423
    invoke-virtual {v1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 422
    invoke-virtual {v0, p0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p0, "source_id"

    .line 424
    invoke-virtual {v0, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "path"

    const-string p1, ""

    .line 425
    invoke-virtual {v0, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "date_added"

    const/4 p1, 0x0

    .line 426
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p0, "is_high_res"

    const/4 p1, 0x1

    .line 427
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method private static createTrackContentValues(Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia$TrackInfo;Z)Landroid/content/ContentValues;
    .locals 2

    .line 435
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "source"

    .line 436
    invoke-virtual {p0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p0, "type"

    .line 437
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;->TRACK:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;

    .line 438
    invoke-virtual {v1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 437
    invoke-virtual {v0, p0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p0, "source_id"

    .line 439
    iget-object v1, p1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia$TrackInfo;->id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "path"

    .line 440
    iget-object v1, p1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia$TrackInfo;->dataPath:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "date_added"

    .line 441
    iget p1, p1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia$TrackInfo;->dateAdded:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p0, "is_high_res"

    .line 442
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method static createWhereAndWhereArgs(Ljava/util/List;)Landroidx/core/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 359
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 361
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;->MEDIA_STORE:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;

    invoke-virtual {v1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 362
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;->TRACK:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {p0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v0, 0x2

    .line 365
    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    .line 367
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "source = ? AND type = ? AND "

    .line 368
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "source_id IN ("

    .line 370
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    add-int/lit8 v4, v0, -0x1

    if-ge v2, v4, :cond_0

    const-string v4, "?,"

    .line 372
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "?)"

    .line 374
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    new-instance v0, Landroidx/core/util/Pair;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static delete(Landroid/content/Context;Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .line 140
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v0, "high_res_media"

    .line 141
    invoke-virtual {p1, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    .line 144
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia;->getContentUri()Landroid/net/Uri;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_0
    return p1
.end method

.method static insert(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 2

    const-string v0, "high_res_media"

    const/4 v1, 0x0

    .line 135
    invoke-virtual {p0, v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0
.end method

.method private static isHighResMimeType(Ljava/lang/String;)Z
    .locals 5

    .line 448
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 449
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 451
    sget-object v0, Lcom/sonyericsson/music/common/AudioMimeTypes;->NON_HIGH_RES_MIME_TYPES:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 452
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method private static isSameTrack(Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia$TrackInfo;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 536
    iget-object v1, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia$TrackInfo;->id:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia$TrackInfo;->dataPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia$TrackInfo;->dateAdded:I

    if-ne p0, p3, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    return v0
.end method

.method static query(Landroid/content/Context;Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZZ)Landroid/database/Cursor;
    .locals 8

    .line 59
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string v1, "high_res_media"

    .line 60
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 64
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia;->getAllColumns()[Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto :goto_0

    :cond_0
    move-object v2, p3

    :goto_0
    if-eqz p8, :cond_1

    :try_start_0
    const-string v1, "is_high_res"

    move-object v3, p4

    .line 72
    invoke-static {p4, v1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia;->addSelection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "1"

    move-object v4, p5

    .line 73
    invoke-static {p5, v3}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia;->addSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 75
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Having IS_HIGH_RES column in selection string is not allowed when onlyHighRes param is true"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v3, p4

    move-object v4, p5

    move-object v1, v3

    move-object v3, v4

    :goto_1
    :try_start_1
    const-string v4, "is_available"

    .line 82
    invoke-static {v1, v4}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia;->addSelection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "1"

    .line 83
    invoke-static {v3, v1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia;->addSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 90
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz p7, :cond_2

    if-eqz v0, :cond_2

    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v2, p2

    invoke-interface {v0, v1, p2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_2
    return-object v0

    .line 85
    :catch_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Having IS_AVAILABLE column in selection is not allowed. This is an internal column."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static splitListIntoSublists(Ljava/util/List;I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 335
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    .line 337
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    add-int v3, v2, p1

    .line 340
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-interface {p0, v2, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static sync(Landroid/content/Context;Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;)V
    .locals 17

    move-object/from16 v1, p0

    .line 156
    invoke-static/range {p0 .. p0}, Lcom/sonyericsson/music/common/PermissionUtils;->isReadStoragePermissionGranted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget v0, Lcom/sonyericsson/music/metadata/HighResMetadataKeys;->METADATA_SAMPLE_RATE_KEY:I

    const/4 v3, -0x1

    if-le v0, v3, :cond_10

    sget v0, Lcom/sonyericsson/music/metadata/HighResMetadataKeys;->METADATA_BITS_PER_SAMPLE_KEY:I

    if-le v0, v3, :cond_10

    .line 159
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x7

    new-array v6, v0, [Ljava/lang/String;

    const-string v0, "_id"

    const/4 v3, 0x0

    aput-object v0, v6, v3

    const-string v0, "title"

    const/4 v10, 0x1

    aput-object v0, v6, v10

    const-string v0, "album_id"

    const/4 v11, 0x2

    aput-object v0, v6, v11

    const/4 v0, 0x3

    const-string v7, "album"

    aput-object v7, v6, v0

    const/4 v0, 0x4

    const-string v7, "mime_type"

    aput-object v7, v6, v0

    const/4 v0, 0x5

    const-string v7, "_data"

    aput-object v7, v6, v0

    const/4 v0, 0x6

    const-string v7, "date_added"

    aput-object v7, v6, v0

    const-string v7, "is_music <> 0"

    const/4 v8, 0x0

    const-string v9, "title COLLATE NOCASE"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_10

    .line 172
    new-instance v5, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v5}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 175
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 176
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v8, p1

    .line 177
    invoke-static {v1, v8, v4}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia;->verifyDatabaseAgainstMediaStore(Landroid/content/Context;Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;Landroid/database/Cursor;)Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia$VerifiedMedia;

    move-result-object v0

    .line 180
    iget-object v9, v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia$VerifiedMedia;->tracksToBeParsed:Ljava/util/Map;

    .line 181
    iget-object v12, v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia$VerifiedMedia;->tracksToBeRemovedFromMusicInfo:Ljava/util/List;

    .line 182
    iget-object v13, v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia$VerifiedMedia;->hiResAlbums:Ljava/util/List;

    .line 183
    iget-object v14, v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia$VerifiedMedia;->tracksUnavailableInMediaStore:Ljava/util/List;

    .line 186
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 187
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 188
    invoke-interface {v15, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_0

    .line 189
    sget-object v2, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;->MEDIA_STORE:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;

    invoke-static {v2, v13}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia;->createAlbumContentValues(Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    .line 191
    invoke-interface {v15, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 196
    :cond_1
    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 197
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia$TrackInfo;

    .line 198
    iget-object v0, v9, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia$TrackInfo;->mimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia;->isHighResMimeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 199
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v13, v9, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia$TrackInfo;->id:Ljava/lang/String;

    .line 200
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 199
    invoke-static {v0, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 204
    :try_start_1
    sget-boolean v10, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz v10, :cond_2

    .line 205
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "com.sonyericsson.music.musicinfo"

    const-string v11, "media"

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 207
    :cond_2
    invoke-virtual {v5, v1, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 211
    sget v0, Lcom/sonyericsson/music/metadata/HighResMetadataKeys;->METADATA_SAMPLE_RATE_KEY:I

    invoke-virtual {v5, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-static {v0, v3}, Lcom/sonyericsson/music/common/StringUtils;->convertToInt(Ljava/lang/String;I)I

    move-result v0

    .line 214
    sget v10, Lcom/sonyericsson/music/metadata/HighResMetadataKeys;->METADATA_BITS_PER_SAMPLE_KEY:I

    invoke-virtual {v5, v10}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v10

    .line 215
    invoke-static {v10, v3}, Lcom/sonyericsson/music/common/StringUtils;->convertToInt(Ljava/lang/String;I)I

    move-result v10

    const-string v11, "audio/dsd"

    .line 217
    iget-object v13, v9, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia$TrackInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v11, :cond_4

    const/16 v11, 0x10

    if-le v10, v11, :cond_3

    const v10, 0xac44

    if-lt v0, v10, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v0, 0x1

    goto :goto_3

    :catch_0
    move-exception v0

    .line 220
    :try_start_2
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 221
    new-instance v10, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v10}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 222
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v5, v10

    const/4 v0, 0x0

    .line 225
    :goto_3
    :try_start_4
    sget-object v10, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;->MEDIA_STORE:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;

    invoke-static {v10, v9, v0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia;->createTrackContentValues(Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia$TrackInfo;Z)Landroid/content/ContentValues;

    move-result-object v10

    .line 227
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_5

    .line 230
    iget-object v0, v9, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia$TrackInfo;->albumId:Ljava/lang/String;

    invoke-interface {v15, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 231
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;->MEDIA_STORE:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;

    iget-object v10, v9, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia$TrackInfo;->albumId:Ljava/lang/String;

    invoke-static {v0, v10}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia;->createAlbumContentValues(Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 235
    iget-object v9, v9, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia$TrackInfo;->albumId:Ljava/lang/String;

    invoke-interface {v15, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v5, v10

    goto/16 :goto_8

    :cond_5
    :goto_4
    const/4 v10, 0x1

    const/4 v11, 0x2

    goto/16 :goto_1

    .line 241
    :cond_6
    invoke-interface {v15}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 242
    invoke-interface {v15}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 245
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 247
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 251
    :try_start_5
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_8

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_8

    .line 252
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_f

    :cond_8
    const-string v0, "high_res_media"

    const-string v8, "source = ? AND type = ?"

    const/4 v9, 0x2

    .line 254
    new-array v9, v9, [Ljava/lang/String;

    sget-object v10, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;->MEDIA_STORE:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;

    .line 257
    invoke-virtual {v10}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v3

    sget-object v10, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;->ALBUM:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;

    .line 258
    invoke-virtual {v10}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    .line 254
    invoke-virtual {v2, v0, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 262
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_a

    const/16 v8, 0x32

    .line 268
    invoke-static {v12, v8}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia;->splitListIntoSublists(Ljava/util/List;I)Ljava/util/List;

    move-result-object v8

    .line 271
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    :goto_5
    if-ge v3, v9, :cond_a

    .line 273
    new-instance v10, Ljava/util/ArrayList;

    .line 274
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Collection;

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 276
    invoke-static {v10}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia;->createWhereAndWhereArgs(Ljava/util/List;)Landroidx/core/util/Pair;

    move-result-object v10

    if-eqz v10, :cond_9

    const-string v11, "high_res_media"

    .line 278
    iget-object v12, v10, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    iget-object v10, v10, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, [Ljava/lang/String;

    .line 279
    invoke-virtual {v2, v11, v12, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    add-int/2addr v0, v10

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_a
    int-to-long v8, v0

    .line 288
    invoke-static {v2, v14}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia;->updateTracksAvailability(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)J

    move-result-wide v10

    add-long/2addr v8, v10

    long-to-int v0, v8

    .line 291
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-wide/16 v8, -0x1

    if-eqz v6, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    .line 292
    invoke-static {v2, v6}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia;->insert(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide v10

    cmp-long v6, v10, v8

    if-lez v6, :cond_b

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 299
    :cond_c
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    .line 300
    invoke-static {v2, v6}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia;->insert(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide v6

    cmp-long v10, v6, v8

    if-lez v10, :cond_d

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_e
    if-lez v0, :cond_f

    .line 307
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 308
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v6, 0x0

    .line 307
    invoke-virtual {v0, v3, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 311
    :cond_f
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 313
    :try_start_6
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 316
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 317
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_9

    :catchall_1
    move-exception v0

    .line 313
    :try_start_7
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 314
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    .line 316
    :goto_8
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 317
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 318
    throw v0

    .line 323
    :cond_10
    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 324
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia;->getContentSyncCompletedUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    .line 323
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method static update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J
    .locals 1

    const-string v0, "high_res_media"

    .line 131
    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method private static updateTracksAvailability(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .line 383
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "is_available"

    const/4 v2, 0x1

    .line 387
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "source = ? AND type = ?"

    const/4 v3, 0x2

    .line 389
    new-array v3, v3, [Ljava/lang/String;

    sget-object v4, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;->MEDIA_STORE:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;

    .line 390
    invoke-virtual {v4}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;->TRACK:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;

    .line 391
    invoke-virtual {v4}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 393
    invoke-static {p0, v0, v1, v3}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v1

    if-eqz p1, :cond_1

    .line 396
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "is_available"

    .line 397
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v3, 0x32

    .line 401
    invoke-static {p1, v3}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia;->splitListIntoSublists(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    .line 404
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    if-ge v5, v3, :cond_1

    .line 406
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 407
    invoke-static {v4}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia;->createWhereAndWhereArgs(Ljava/util/List;)Landroidx/core/util/Pair;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 410
    iget-object v6, v4, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v4, v4, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    invoke-static {p0, v0, v6, v4}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v1, v6

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-wide v1
.end method

.method private static verifyDatabaseAgainstMediaStore(Landroid/content/Context;Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;Landroid/database/Cursor;)Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia$VerifiedMedia;
    .locals 13

    .line 467
    invoke-static {p2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia;->convertTracksCursorToMap(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object p2

    const/4 v0, 0x4

    .line 469
    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "source_id"

    const/4 v10, 0x0

    aput-object v0, v4, v10

    const-string v0, "path"

    const/4 v11, 0x1

    aput-object v0, v4, v11

    const-string v0, "date_added"

    const/4 v1, 0x2

    aput-object v0, v4, v1

    const-string v0, "is_high_res"

    const/4 v2, 0x3

    aput-object v0, v4, v2

    const-string v5, "source = ? AND type = ?"

    new-array v6, v1, [Ljava/lang/String;

    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;->MEDIA_STORE:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;

    .line 479
    invoke-virtual {v0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v10

    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;->TRACK:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;

    .line 480
    invoke-virtual {v0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v11

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 469
    invoke-static/range {v1 .. v9}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia;->query(Landroid/content/Context;Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZZ)Landroid/database/Cursor;

    move-result-object p0

    .line 484
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 485
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 486
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    if-eqz p0, :cond_5

    :try_start_0
    const-string v2, "source_id"

    .line 490
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "path"

    .line 492
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "date_added"

    .line 494
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "is_high_res"

    .line 496
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 499
    :cond_0
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 500
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 501
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 502
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 503
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-ne v9, v11, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    .line 505
    :goto_1
    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia$TrackInfo;

    if-nez v12, :cond_2

    .line 509
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 510
    :cond_2
    invoke-static {v12, v6, v7, v8}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia;->isSameTrack(Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia$TrackInfo;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 514
    invoke-interface {p2, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v9, :cond_0

    .line 517
    iget-object v6, v12, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia$TrackInfo;->albumId:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 522
    :cond_3
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 526
    :cond_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 527
    throw p1

    .line 530
    :cond_5
    :goto_2
    new-instance p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia$VerifiedMedia;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p2, p1, v0, v2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia$VerifiedMedia;-><init>(Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object p0
.end method
