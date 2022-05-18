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

    .line 48
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

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p0, :cond_1

    .line 105
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 108
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " AND "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 106
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

    .line 117
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    if-eqz p0, :cond_0

    .line 119
    array-length p1, p0

    if-lez p1, :cond_0

    .line 120
    array-length p1, p0

    add-int/2addr p1, v0

    new-array p1, p1, [Ljava/lang/String;

    .line 121
    array-length v0, p0

    invoke-static {p0, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
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

    .line 558
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "_id"

    .line 560
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "title"

    .line 561
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "album_id"

    .line 562
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "mime_type"

    .line 563
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "_data"

    .line 564
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "date_added"

    .line 565
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 567
    :goto_0
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 568
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 569
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 570
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    .line 571
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 572
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 573
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 575
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

    .line 421
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "source"

    .line 422
    invoke-virtual {p0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p0, "type"

    .line 423
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;->ALBUM:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;

    .line 424
    invoke-virtual {v1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 423
    invoke-virtual {v0, p0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p0, "source_id"

    .line 425
    invoke-virtual {v0, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "path"

    const-string p1, ""

    .line 426
    invoke-virtual {v0, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "date_added"

    const/4 p1, 0x0

    .line 427
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p0, "is_high_res"

    const/4 p1, 0x1

    .line 428
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method private static createTrackContentValues(Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia$TrackInfo;Z)Landroid/content/ContentValues;
    .locals 2

    .line 436
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "source"

    .line 437
    invoke-virtual {p0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p0, "type"

    .line 438
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;->TRACK:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;

    .line 439
    invoke-virtual {v1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 438
    invoke-virtual {v0, p0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p0, "source_id"

    .line 440
    iget-object v1, p1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia$TrackInfo;->id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "path"

    .line 441
    iget-object v1, p1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia$TrackInfo;->dataPath:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "date_added"

    .line 442
    iget p1, p1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia$TrackInfo;->dateAdded:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p0, "is_high_res"

    .line 443
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

    .line 360
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 362
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;->MEDIA_STORE:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;

    invoke-virtual {v1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 363
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;->TRACK:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {p0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v0, 0x2

    .line 366
    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    .line 368
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "source = ? AND type = ? AND "

    .line 369
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "source_id IN ("

    .line 371
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    add-int/lit8 v4, v0, -0x1

    if-ge v2, v4, :cond_0

    const-string v4, "?,"

    .line 373
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "?)"

    .line 375
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
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

    .line 141
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v0, "high_res_media"

    .line 142
    invoke-virtual {p1, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    .line 145
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

    .line 136
    invoke-virtual {p0, v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0
.end method

.method private static isHighResMimeType(Ljava/lang/String;)Z
    .locals 5

    .line 449
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 450
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 452
    sget-object v0, Lcom/sonyericsson/music/common/AudioMimeTypes;->NON_HIGH_RES_MIME_TYPES:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 453
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

    .line 551
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

    .line 60
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string v1, "high_res_media"

    .line 61
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 65
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

    .line 73
    invoke-static {p4, v1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia;->addSelection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "1"

    move-object v4, p5

    .line 74
    invoke-static {p5, v3}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia;->addSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 76
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

    .line 83
    invoke-static {v1, v4}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia;->addSelection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "1"

    .line 84
    invoke-static {v3, v1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia;->addSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 91
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

    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v2, p2

    invoke-interface {v0, v1, p2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_2
    return-object v0

    .line 86
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

    .line 336
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    .line 338
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    add-int v3, v2, p1

    .line 341
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

    .line 157
    invoke-static/range {p0 .. p0}, Lcom/sonyericsson/music/common/PermissionUtils;->isReadStoragePermissionGranted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget v0, Lcom/sonyericsson/music/metadata/HighResMetadataKeys;->METADATA_SAMPLE_RATE_KEY:I

    const/4 v3, -0x1

    if-le v0, v3, :cond_10

    sget v0, Lcom/sonyericsson/music/metadata/HighResMetadataKeys;->METADATA_BITS_PER_SAMPLE_KEY:I

    if-le v0, v3, :cond_10

    .line 160
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

    .line 173
    new-instance v5, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v5}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 176
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 177
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v8, p1

    .line 178
    invoke-static {v1, v8, v4}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia;->verifyDatabaseAgainstMediaStore(Landroid/content/Context;Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;Landroid/database/Cursor;)Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia$VerifiedMedia;

    move-result-object v0

    .line 181
    iget-object v9, v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia$VerifiedMedia;->tracksToBeParsed:Ljava/util/Map;

    .line 182
    iget-object v12, v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia$VerifiedMedia;->tracksToBeRemovedFromMusicInfo:Ljava/util/List;

    .line 183
    iget-object v13, v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia$VerifiedMedia;->hiResAlbums:Ljava/util/List;

    .line 184
    iget-object v14, v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia$VerifiedMedia;->tracksUnavailableInMediaStore:Ljava/util/List;

    .line 187
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 188
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

    .line 189
    invoke-interface {v15, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_0

    .line 190
    sget-object v2, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;->MEDIA_STORE:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;

    invoke-static {v2, v13}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia;->createAlbumContentValues(Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    .line 192
    invoke-interface {v15, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 197
    :cond_1
    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 198
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

    .line 199
    iget-object v0, v9, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia$TrackInfo;->mimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia;->isHighResMimeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 200
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v13, v9, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia$TrackInfo;->id:Ljava/lang/String;

    .line 201
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 200
    invoke-static {v0, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 205
    :try_start_1
    sget-boolean v10, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz v10, :cond_2

    .line 206
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "com.sonyericsson.music.musicinfo"

    const-string v11, "media"

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 208
    :cond_2
    invoke-virtual {v5, v1, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 212
    sget v0, Lcom/sonyericsson/music/metadata/HighResMetadataKeys;->METADATA_SAMPLE_RATE_KEY:I

    invoke-virtual {v5, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-static {v0, v3}, Lcom/sonyericsson/music/common/StringUtils;->convertToInt(Ljava/lang/String;I)I

    move-result v0

    .line 215
    sget v10, Lcom/sonyericsson/music/metadata/HighResMetadataKeys;->METADATA_BITS_PER_SAMPLE_KEY:I

    invoke-virtual {v5, v10}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v10

    .line 216
    invoke-static {v10, v3}, Lcom/sonyericsson/music/common/StringUtils;->convertToInt(Ljava/lang/String;I)I

    move-result v10

    const-string v11, "audio/dsd"

    .line 218
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

    .line 221
    :try_start_2
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 222
    new-instance v10, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v10}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 223
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v5, v10

    const/4 v0, 0x0

    .line 226
    :goto_3
    :try_start_4
    sget-object v10, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;->MEDIA_STORE:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;

    invoke-static {v10, v9, v0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia;->createTrackContentValues(Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia$TrackInfo;Z)Landroid/content/ContentValues;

    move-result-object v10

    .line 228
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_5

    .line 231
    iget-object v0, v9, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia$TrackInfo;->albumId:Ljava/lang/String;

    invoke-interface {v15, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 232
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;->MEDIA_STORE:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;

    iget-object v10, v9, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia$TrackInfo;->albumId:Ljava/lang/String;

    invoke-static {v0, v10}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia;->createAlbumContentValues(Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 236
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

    .line 242
    :cond_6
    invoke-interface {v15}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 243
    invoke-interface {v15}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 246
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 248
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 252
    :try_start_5
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_8

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_8

    .line 253
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_f

    :cond_8
    const-string v0, "high_res_media"

    const-string v8, "source = ? AND type = ?"

    const/4 v9, 0x2

    .line 255
    new-array v9, v9, [Ljava/lang/String;

    sget-object v10, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;->MEDIA_STORE:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;

    .line 258
    invoke-virtual {v10}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v3

    sget-object v10, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;->ALBUM:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;

    .line 259
    invoke-virtual {v10}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    .line 255
    invoke-virtual {v2, v0, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 263
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_a

    const/16 v8, 0x32

    .line 269
    invoke-static {v12, v8}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia;->splitListIntoSublists(Ljava/util/List;I)Ljava/util/List;

    move-result-object v8

    .line 272
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    :goto_5
    if-ge v3, v9, :cond_a

    .line 274
    new-instance v10, Ljava/util/ArrayList;

    .line 275
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Collection;

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 277
    invoke-static {v10}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia;->createWhereAndWhereArgs(Ljava/util/List;)Landroidx/core/util/Pair;

    move-result-object v10

    if-eqz v10, :cond_9

    const-string v11, "high_res_media"

    .line 279
    iget-object v12, v10, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    iget-object v10, v10, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, [Ljava/lang/String;

    .line 280
    invoke-virtual {v2, v11, v12, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    add-int/2addr v0, v10

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_a
    int-to-long v8, v0

    .line 289
    invoke-static {v2, v14}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia;->updateTracksAvailability(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)J

    move-result-wide v10

    add-long/2addr v8, v10

    long-to-int v0, v8

    .line 292
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

    .line 293
    invoke-static {v2, v6}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia;->insert(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide v10

    cmp-long v6, v10, v8

    if-lez v6, :cond_b

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 300
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

    .line 301
    invoke-static {v2, v6}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia;->insert(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide v6

    cmp-long v10, v6, v8

    if-lez v10, :cond_d

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_e
    if-lez v0, :cond_f

    .line 308
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 309
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v6, 0x0

    .line 308
    invoke-virtual {v0, v3, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 312
    :cond_f
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 314
    :try_start_6
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 317
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 318
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_9

    :catchall_1
    move-exception v0

    .line 314
    :try_start_7
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 315
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    .line 317
    :goto_8
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 318
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 319
    throw v0

    .line 324
    :cond_10
    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 325
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia;->getContentSyncCompletedUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    .line 324
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method static update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J
    .locals 1

    const-string v0, "high_res_media"

    .line 132
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

    .line 384
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "is_available"

    const/4 v2, 0x1

    .line 388
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "source = ? AND type = ?"

    const/4 v3, 0x2

    .line 390
    new-array v3, v3, [Ljava/lang/String;

    sget-object v4, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;->MEDIA_STORE:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;

    .line 391
    invoke-virtual {v4}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;->TRACK:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;

    .line 392
    invoke-virtual {v4}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 394
    invoke-static {p0, v0, v1, v3}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v1

    if-eqz p1, :cond_1

    .line 397
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "is_available"

    .line 398
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v3, 0x32

    .line 402
    invoke-static {p1, v3}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia;->splitListIntoSublists(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    .line 405
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    if-ge v5, v3, :cond_1

    .line 407
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 408
    invoke-static {v4}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia;->createWhereAndWhereArgs(Ljava/util/List;)Landroidx/core/util/Pair;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 411
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

    .line 473
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x1e

    if-ne v0, v2, :cond_0

    .line 474
    invoke-static {p0}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;->isClearHighResMediaTable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 476
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "high_res_media"

    const/4 v3, 0x0

    .line 477
    invoke-virtual {v0, v2, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 479
    invoke-static {p0, v1}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;->setClearHighResMediaTable(Landroid/content/Context;Z)V

    .line 482
    :cond_0
    invoke-static {p2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia;->convertTracksCursorToMap(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object p2

    const/4 v4, 0x0

    const/4 v0, 0x4

    .line 484
    new-array v5, v0, [Ljava/lang/String;

    const-string v0, "source_id"

    const/4 v11, 0x0

    aput-object v0, v5, v11

    const-string v0, "path"

    aput-object v0, v5, v1

    const-string v0, "date_added"

    const/4 v2, 0x2

    aput-object v0, v5, v2

    const/4 v0, 0x3

    const-string v3, "is_high_res"

    aput-object v3, v5, v0

    const-string v6, "source = ? AND type = ?"

    new-array v7, v2, [Ljava/lang/String;

    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;->MEDIA_STORE:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;

    .line 494
    invoke-virtual {v0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v11

    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;->TRACK:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;

    .line 495
    invoke-virtual {v0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, p0

    move-object v3, p1

    .line 484
    invoke-static/range {v2 .. v10}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia;->query(Landroid/content/Context;Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZZ)Landroid/database/Cursor;

    move-result-object p0

    .line 499
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 500
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 501
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    if-eqz p0, :cond_6

    :try_start_0
    const-string v3, "source_id"

    .line 505
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "path"

    .line 507
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "date_added"

    .line 509
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "is_high_res"

    .line 511
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 514
    :cond_1
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 515
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 516
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 517
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 518
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-ne v10, v1, :cond_2

    const/4 v10, 0x1

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    .line 520
    :goto_1
    invoke-interface {p2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia$TrackInfo;

    if-nez v12, :cond_3

    .line 524
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 525
    :cond_3
    invoke-static {v12, v7, v8, v9}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia;->isSameTrack(Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia$TrackInfo;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 529
    invoke-interface {p2, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v10, :cond_1

    .line 532
    iget-object v7, v12, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia$TrackInfo;->albumId:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 537
    :cond_4
    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 541
    :cond_5
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 542
    throw p1

    .line 545
    :cond_6
    :goto_2
    new-instance p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia$VerifiedMedia;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p2, p1, v0, v1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia$VerifiedMedia;-><init>(Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object p0
.end method
