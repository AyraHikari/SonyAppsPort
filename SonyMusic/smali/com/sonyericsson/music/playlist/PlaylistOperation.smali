.class public Lcom/sonyericsson/music/playlist/PlaylistOperation;
.super Ljava/lang/Object;
.source "PlaylistOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/playlist/PlaylistOperation$ObjectType;
    }
.end annotation


# static fields
.field private static final PLAYLIST_NAME_MAX_LENGTH:I = 0x46


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private final mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/playlist/PlaylistOperation;->mAppContext:Landroid/content/Context;

    .line 61
    iget-object p1, p0, Lcom/sonyericsson/music/playlist/PlaylistOperation;->mAppContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/playlist/PlaylistOperation;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method private addPlaylistToProvider(Ljava/lang/String;)I
    .locals 6

    .line 360
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, -0x1

    if-eqz p1, :cond_1

    const-string v2, "name"

    .line 363
    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-string p1, "date_created"

    .line 367
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, p1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "date_updated"

    .line 368
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 373
    iget-object p1, p0, Lcom/sonyericsson/music/playlist/PlaylistOperation;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 375
    :cond_0
    invoke-static {p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getPlaylistIdParam(Landroid/net/Uri;)I

    move-result v1

    :goto_0
    return v1

    :cond_1
    return v1
.end method

.method private addTracksToPlaylist(IILandroid/database/Cursor;Ljava/lang/String;)Z
    .locals 7

    .line 531
    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 534
    invoke-static {p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$Members;->getContentUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 537
    new-array v0, v0, [Landroid/content/ContentValues;

    const/4 v3, 0x0

    .line 540
    :goto_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 541
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "audio_id"

    .line 543
    invoke-interface {p3, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 542
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "playlist_id"

    .line 544
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "play_order"

    add-int/lit8 v6, p2, 0x1

    .line 545
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v4, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    add-int/lit8 p2, v3, 0x1

    .line 547
    aput-object v4, v0, v3

    move v3, p2

    move p2, v6

    goto :goto_0

    .line 550
    :cond_0
    iget-object p2, p0, Lcom/sonyericsson/music/playlist/PlaylistOperation;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p2, v2, v0}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result p2

    if-lez p2, :cond_1

    int-to-long p1, p1

    .line 552
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/playlist/PlaylistOperation;->updatePlaylistModifiedDate(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    .line 557
    :cond_1
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    return v1

    :catchall_0
    move-exception p1

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 558
    throw p1

    return-void
.end method

.method public static convertMediastoreUriId(Landroid/content/ContentResolver;Landroid/net/Uri;)I
    .locals 7

    .line 654
    invoke-static {}, Lcom/sonymobile/music/common/ThreadingUtils;->throwIfMainDebug()V

    .line 655
    invoke-static {p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 660
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_MEDIASTORE_IDS:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 662
    invoke-virtual {v2}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getParameter()Ljava/lang/String;

    move-result-object v2

    .line 663
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    .line 661
    invoke-virtual {v1, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 663
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/4 p1, 0x1

    new-array v3, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    const-string v1, "_id"

    aput-object v1, v3, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    .line 660
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 665
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "_id"

    .line 666
    invoke-interface {v0, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v0, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 670
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return p0

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    const/4 p0, -0x1

    return p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 672
    :cond_3
    throw p0

    .line 656
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Uri is not a Mediastore id"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private deletePlaylistArt(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, -0x1

    if-le p2, v0, :cond_0

    .line 238
    invoke-static {p1, p2}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$LocalPlaylistArtUri;->getUriWithId(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p1

    .line 239
    iget-object p2, p0, Lcom/sonyericsson/music/playlist/PlaylistOperation;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private getAppendPlayOrder(I)I
    .locals 8

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-le p1, v1, :cond_1

    .line 574
    new-array v4, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "play_order"

    aput-object v2, v4, v1

    .line 575
    iget-object v2, p0, Lcom/sonyericsson/music/playlist/PlaylistOperation;->mContentResolver:Landroid/content/ContentResolver;

    .line 576
    invoke-static {p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$Members;->getContentUri(I)Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "play_order DESC"

    .line 575
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 580
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "play_order"

    .line 581
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v1, v0

    move v0, v1

    .line 585
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 586
    throw v0

    :cond_1
    :goto_0
    return v0
.end method

.method private getPlaylistName(Ljava/lang/String;)Ljava/lang/String;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 311
    invoke-static {}, Lcom/sonymobile/music/common/ThreadingUtils;->throwIfMainDebug()V

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    .line 316
    :cond_0
    iget-object v3, v1, Lcom/sonyericsson/music/playlist/PlaylistOperation;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v9, 0x1

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "name"

    const/4 v10, 0x0

    aput-object v6, v5, v10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 319
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    .line 324
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    const/4 v3, 0x0

    :cond_3
    if-eqz v2, :cond_4

    .line 335
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 337
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v3, v9

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 338
    iget-object v11, v1, Lcom/sonyericsson/music/playlist/PlaylistOperation;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v4}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    new-array v13, v9, [Ljava/lang/String;

    const-string v5, "name"

    aput-object v5, v13, v10

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 341
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gtz v5, :cond_3

    :cond_5
    if-eqz v2, :cond_6

    .line 344
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_6
    return-object v4

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_7

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 346
    :cond_7
    throw v0

    :catchall_1
    move-exception v0

    move-object v2, v0

    if-eqz v3, :cond_8

    .line 324
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 326
    :cond_8
    throw v2

    :cond_9
    :goto_0
    if-eqz v3, :cond_a

    .line 324
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_a
    return-object v0
.end method

.method private removeFromPlaylist(ILjava/util/Collection;Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;",
            ")I"
        }
    .end annotation

    int-to-long v0, p1

    .line 196
    iget-object v2, p0, Lcom/sonyericsson/music/playlist/PlaylistOperation;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/music/common/DBUtils;->isPlaylistUserCreated(JLandroid/content/ContentResolver;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    if-eqz p2, :cond_2

    .line 201
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, -0x1

    if-le p1, v2, :cond_2

    .line 203
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 205
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    add-int/lit8 v5, v3, 0x1

    .line 206
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    move v3, v5

    goto :goto_0

    .line 209
    :cond_1
    invoke-static {p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$Members;->getContentUri(I)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1, p3, v2}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->appendParams(Landroid/net/Uri;Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 212
    iget-object p2, p0, Lcom/sonyericsson/music/playlist/PlaylistOperation;->mContentResolver:Landroid/content/ContentResolver;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3, p3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_2

    .line 214
    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/music/playlist/PlaylistOperation;->updatePlaylistModifiedDate(J)Z

    :cond_2
    return v3
.end method

.method static showAddedToast(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/music/playlist/PlaylistOperation$ObjectType;)V
    .locals 2

    .line 596
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const v1, 0x7f100121

    if-nez v0, :cond_0

    .line 597
    sget-object v0, Lcom/sonyericsson/music/playlist/PlaylistOperation$1;->$SwitchMap$com$sonyericsson$music$playlist$PlaylistOperation$ObjectType:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const p2, 0x7f1001c3

    goto :goto_1

    :pswitch_1
    const p2, 0x7f100152

    goto :goto_1

    :pswitch_2
    const p2, 0x7f10014e

    goto :goto_1

    :pswitch_3
    const p2, 0x7f1001be

    goto :goto_1

    :pswitch_4
    const p2, 0x7f10012a

    goto :goto_1

    :pswitch_5
    const p2, 0x7f100122

    goto :goto_1

    :pswitch_6
    const p2, 0x7f100211

    goto :goto_1

    :cond_0
    :goto_0
    const p2, 0x7f100121

    :goto_1
    const/4 v0, 0x0

    if-eq p2, v1, :cond_1

    const/4 v1, 0x1

    .line 624
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-virtual {p0, p2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lcom/sonyericsson/music/common/MusicToast;->create(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    goto :goto_2

    .line 627
    :cond_1
    invoke-static {p0, p2, v0}, Lcom/sonyericsson/music/common/MusicToast;->create(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 629
    :goto_2
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updatePlaylistModifiedDate(J)Z
    .locals 5

    long-to-int p1, p1

    .line 685
    invoke-static {p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri(I)Landroid/net/Uri;

    move-result-object p1

    .line 686
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "date_updated"

    .line 689
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 690
    iget-object v0, p0, Lcom/sonyericsson/music/playlist/PlaylistOperation;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public addAlbumToPlaylist(IJ)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-le p1, v1, :cond_1

    const-wide/16 v1, -0x1

    cmp-long v3, p2, v1

    if-lez v3, :cond_1

    int-to-long v1, p1

    .line 444
    iget-object v3, p0, Lcom/sonyericsson/music/playlist/PlaylistOperation;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/music/common/DBUtils;->isPlaylistUserCreated(JLandroid/content/ContentResolver;)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 448
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/playlist/PlaylistOperation;->getAppendPlayOrder(I)I

    move-result v1

    .line 450
    iget-object v2, p0, Lcom/sonyericsson/music/playlist/PlaylistOperation;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v2, p2, p3}, Lcom/sonyericsson/music/common/DBUtils;->getAlbumTracksCursor(Landroid/content/ContentResolver;J)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string p3, "_id"

    .line 453
    invoke-direct {p0, p1, v1, p2, p3}, Lcom/sonyericsson/music/playlist/PlaylistOperation;->addTracksToPlaylist(IILandroid/database/Cursor;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method public addArtistToPlaylist(ILjava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-le p1, v1, :cond_1

    if-eqz p2, :cond_1

    int-to-long v1, p1

    .line 419
    iget-object v3, p0, Lcom/sonyericsson/music/playlist/PlaylistOperation;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/music/common/DBUtils;->isPlaylistUserCreated(JLandroid/content/ContentResolver;)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 423
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/playlist/PlaylistOperation;->getAppendPlayOrder(I)I

    move-result v1

    .line 425
    iget-object v2, p0, Lcom/sonyericsson/music/playlist/PlaylistOperation;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v2, p2}, Lcom/sonyericsson/music/common/DBUtils;->getArtistAllTracksCursor(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string v0, "_id"

    .line 428
    invoke-direct {p0, p1, v1, p2, v0}, Lcom/sonyericsson/music/playlist/PlaylistOperation;->addTracksToPlaylist(IILandroid/database/Cursor;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method addFolderToPlaylist(II)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-le p1, v1, :cond_1

    if-le p2, v1, :cond_1

    int-to-long v1, p1

    .line 469
    iget-object v3, p0, Lcom/sonyericsson/music/playlist/PlaylistOperation;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/music/common/DBUtils;->isPlaylistUserCreated(JLandroid/content/ContentResolver;)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 473
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/playlist/PlaylistOperation;->getAppendPlayOrder(I)I

    move-result v1

    .line 475
    iget-object v2, p0, Lcom/sonyericsson/music/playlist/PlaylistOperation;->mContentResolver:Landroid/content/ContentResolver;

    .line 476
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 475
    invoke-static {v2, p2}, Lcom/sonyericsson/music/common/FolderUtils;->getMusicFilesFromFolder(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string v0, "_id"

    .line 479
    invoke-direct {p0, p1, v1, p2, v0}, Lcom/sonyericsson/music/playlist/PlaylistOperation;->addTracksToPlaylist(IILandroid/database/Cursor;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method addGenreToPlaylist(IJ)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-le p1, v1, :cond_1

    const-wide/16 v1, -0x1

    cmp-long v3, p2, v1

    if-lez v3, :cond_1

    int-to-long v1, p1

    .line 495
    iget-object v3, p0, Lcom/sonyericsson/music/playlist/PlaylistOperation;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/music/common/DBUtils;->isPlaylistUserCreated(JLandroid/content/ContentResolver;)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 499
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/playlist/PlaylistOperation;->getAppendPlayOrder(I)I

    move-result v1

    const-string v2, "external"

    .line 500
    invoke-static {v2, p2, p3}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object p2

    const/4 p3, 0x1

    .line 501
    invoke-static {p3}, Lcom/sonyericsson/music/common/DBUtils;->getGenreProjection(Z)[Ljava/lang/String;

    move-result-object p3

    .line 502
    iget-object v2, p0, Lcom/sonyericsson/music/playlist/PlaylistOperation;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v2, p3, p2}, Lcom/sonyericsson/music/common/DBUtils;->getGenreTracksCursor(Landroid/content/ContentResolver;[Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string p3, "_id"

    .line 506
    invoke-direct {p0, p1, v1, p2, p3}, Lcom/sonyericsson/music/playlist/PlaylistOperation;->addTracksToPlaylist(IILandroid/database/Cursor;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method public addTrackToPlaylist(II)Z
    .locals 6

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    if-le p2, v0, :cond_0

    int-to-long v0, p1

    .line 390
    iget-object v2, p0, Lcom/sonyericsson/music/playlist/PlaylistOperation;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/music/common/DBUtils;->isPlaylistUserCreated(JLandroid/content/ContentResolver;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 391
    invoke-static {p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$Members;->getContentUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 393
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/playlist/PlaylistOperation;->getAppendPlayOrder(I)I

    move-result v3

    .line 395
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "audio_id"

    .line 396
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v4, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "playlist_id"

    .line 397
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v4, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "play_order"

    .line 398
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v4, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 400
    iget-object p1, p0, Lcom/sonyericsson/music/playlist/PlaylistOperation;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1, v2, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 401
    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/music/playlist/PlaylistOperation;->updatePlaylistModifiedDate(J)Z

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method addTracksToPlaylist(ILjava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .line 136
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/playlist/PlaylistOperation;->getAppendPlayOrder(I)I

    move-result v0

    .line 137
    invoke-virtual {p0, p1, p2, v0}, Lcom/sonyericsson/music/playlist/PlaylistOperation;->addTracksToPlaylist(ILjava/util/List;I)Z

    move-result p1

    return p1
.end method

.method public addTracksToPlaylist(ILjava/util/List;I)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;I)Z"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-le p1, v0, :cond_1

    if-eqz p2, :cond_1

    .line 150
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    if-le p3, v0, :cond_1

    int-to-long v2, p1

    .line 151
    iget-object v0, p0, Lcom/sonyericsson/music/playlist/PlaylistOperation;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v3, v0}, Lcom/sonyericsson/music/common/DBUtils;->isPlaylistUserCreated(JLandroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    invoke-static {p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$Members;->getContentUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 154
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    .line 156
    new-array v5, v4, [Landroid/content/ContentValues;

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_0

    .line 158
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "audio_id"

    .line 159
    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v8, "playlist_id"

    .line 160
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "play_order"

    add-int v9, v6, p3

    .line 161
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 162
    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 164
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/playlist/PlaylistOperation;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1, v0, v5}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result p1

    if-lez p1, :cond_1

    .line 165
    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/music/playlist/PlaylistOperation;->updatePlaylistModifiedDate(J)Z

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public createPlaylist(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 78
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/playlist/PlaylistOperation;->getUniquePlaylistName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 79
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/music/playlist/PlaylistOperation;->createPlaylistWithUniqueName(Ljava/lang/String;Ljava/util/List;)J

    return-object p1
.end method

.method public createPlaylistWithUniqueName(Ljava/lang/String;Ljava/util/List;)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 106
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/music/playlist/PlaylistOperation;->createPlaylistWithUniqueNameWithResult(Ljava/lang/String;Ljava/util/List;)Landroid/util/Pair;

    move-result-object p1

    .line 107
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1
.end method

.method createPlaylistWithUniqueNameWithResult(Ljava/lang/String;Ljava/util/List;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 122
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/playlist/PlaylistOperation;->addPlaylistToProvider(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-le p1, v1, :cond_0

    .line 126
    invoke-virtual {p0, p1, p2, v0}, Lcom/sonyericsson/music/playlist/PlaylistOperation;->addTracksToPlaylist(ILjava/util/List;I)Z

    move-result v0

    .line 129
    :cond_0
    new-instance p2, Landroid/util/Pair;

    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method public deletePlaylist(I)I
    .locals 2

    const/4 v0, -0x1

    if-gt p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/playlist/PlaylistOperation;->mAppContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/music/playlist/PlaylistOperation;->deletePlaylistArt(Landroid/content/Context;I)V

    .line 232
    iget-object v0, p0, Lcom/sonyericsson/music/playlist/PlaylistOperation;->mContentResolver:Landroid/content/ContentResolver;

    .line 233
    invoke-static {p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri(I)Landroid/net/Uri;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getUniquePlaylistName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 89
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x46

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    .line 90
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 93
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/playlist/PlaylistOperation;->getPlaylistName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public moveTrackInPlaylist(JII)Z
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    if-ltz p3, :cond_0

    if-ltz p4, :cond_0

    if-eq p3, p4, :cond_0

    .line 644
    iget-object v0, p0, Lcom/sonyericsson/music/playlist/PlaylistOperation;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p1, p2, p3, p4, v0}, Lcom/sonyericsson/music/common/DBUtils;->moveItem(JIILandroid/content/ContentResolver;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 646
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/playlist/PlaylistOperation;->updatePlaylistModifiedDate(J)Z

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :cond_1
    :goto_0
    return p3
.end method

.method public removeFromPlaylist(ILjava/util/Collection;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .line 181
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_MEMBER_IDS:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/music/playlist/PlaylistOperation;->removeFromPlaylist(ILjava/util/Collection;Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;)I

    move-result p1

    return p1
.end method

.method public removeFromPlaylistWithAudioId(ILjava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .line 176
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_AUDIO_IDS:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/music/playlist/PlaylistOperation;->removeFromPlaylist(ILjava/util/Collection;Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method renameLocalPlaylist(ILjava/lang/String;)V
    .locals 2

    .line 284
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/playlist/PlaylistOperation;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Lcom/sonyericsson/music/common/DBUtils;->getPlaylistName(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 288
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 291
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x46

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    .line 292
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 295
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 296
    invoke-direct {p0, p2}, Lcom/sonyericsson/music/playlist/PlaylistOperation;->getPlaylistName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 297
    iget-object v0, p0, Lcom/sonyericsson/music/playlist/PlaylistOperation;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2}, Lcom/sonyericsson/music/common/DBUtils;->setPlaylistName(Landroid/content/ContentResolver;ILjava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    int-to-long p1, p1

    .line 298
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/playlist/PlaylistOperation;->updatePlaylistModifiedDate(J)Z

    :cond_2
    return-void
.end method

.method translatePlaylistMemberIds(Ljava/util/ArrayList;Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    .line 253
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 257
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 259
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 260
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "_id"

    .line 261
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "audio_id"

    .line 262
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 264
    :cond_1
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 267
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 268
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0

    .line 254
    :cond_3
    :goto_1
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    return-object p1
.end method
