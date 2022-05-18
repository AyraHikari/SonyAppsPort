.class public Lcom/sonyericsson/music/playlist/provider/PlaylistArtProvider;
.super Landroid/content/ContentProvider;
.source "PlaylistArtProvider.java"


# static fields
.field private static final ART_TYPE_FOLDER:I = 0x2

.field private static final ART_TYPE_GENRE:I = 0x3

.field private static final ART_TYPE_LOCAL_PLAYLIST:I = 0x1

.field private static final ART_TYPE_SMART_PLAYLIST:I = 0x0

.field static final BUFFER_SIZE:I = 0x2000

.field private static final FAVOURITES_PLAYLIST_MATCH:I = 0x8

.field private static final FOLDER_MATCH:I = 0x6

.field private static final FOLDER_MATCH_ID:I = 0x7

.field private static final GENRE_MATCH:I = 0x9

.field private static final GENRE_MATCH_ID:I = 0xa

.field private static final LOCAL_PLAYLIST_MATCH:I = 0x4

.field private static final LOCAL_PLAYLIST_MATCH_ID:I = 0x5

.field private static final MOST_PLAYED_PLAYLIST_MATCH:I = 0x3

.field private static final NEWLY_ADDED_PLAYLIST_MATCH:I = 0x2

.field public static final NUMBER_OF_ALBUMS_IMAGES:I = 0x4

.field private static final RECENTLY_PLAYED_PLAYLIST_MATCH:I = 0x1

.field private static final SMART_PLAYLIST_MATCH:I = 0x0

.field private static final TYPE_ID_SELECTION:Ljava/lang/String; = "playlist_type=? AND playlist_id=?"

.field private static sPipeDataWriter:Landroid/content/ContentProvider$PipeDataWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/ContentProvider$PipeDataWriter<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDatabaseHelper:Lcom/sonyericsson/music/playlist/provider/PlaylistDatabaseHelper;

.field private mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 576
    new-instance v0, Lcom/sonyericsson/music/playlist/provider/PlaylistArtProvider$1;

    invoke-direct {v0}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtProvider$1;-><init>()V

    sput-object v0, Lcom/sonyericsson/music/playlist/provider/PlaylistArtProvider;->sPipeDataWriter:Landroid/content/ContentProvider$PipeDataWriter;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 91
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/music/playlist/provider/PlaylistArtProvider;->mUriMatcher:Landroid/content/UriMatcher;

    return-void
.end method

.method public static getPipeDataWriter()Landroid/content/ContentProvider$PipeDataWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/ContentProvider$PipeDataWriter<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 573
    sget-object v0, Lcom/sonyericsson/music/playlist/provider/PlaylistArtProvider;->sPipeDataWriter:Landroid/content/ContentProvider$PipeDataWriter;

    return-object v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5

    .line 353
    iget-object v0, p0, Lcom/sonyericsson/music/playlist/provider/PlaylistArtProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 419
    :pswitch_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string p3, "playlist_type=? AND playlist_id=?"

    .line 421
    new-array v2, v2, [Ljava/lang/String;

    .line 422
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v3

    move-object p2, p3

    move-object p3, v2

    goto/16 :goto_0

    :pswitch_1
    const-string p2, "playlist_type=?"

    .line 427
    new-array p3, v3, [Ljava/lang/String;

    .line 428
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v4

    goto/16 :goto_0

    :pswitch_2
    const-string p2, "playlist_type=? AND playlist_id=?"

    .line 381
    new-array p3, v2, [Ljava/lang/String;

    .line 382
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p3, v4

    .line 383
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v3

    goto/16 :goto_0

    :pswitch_3
    const-string p2, "playlist_type=? AND playlist_id=?"

    .line 413
    new-array p3, v2, [Ljava/lang/String;

    .line 414
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v4

    .line 415
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, p3, v3

    goto/16 :goto_0

    :pswitch_4
    const-string p2, "playlist_type=?"

    .line 407
    new-array p3, v3, [Ljava/lang/String;

    .line 408
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v4

    goto :goto_0

    .line 387
    :pswitch_5
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string p3, "playlist_type=? AND playlist_id=?"

    .line 389
    new-array v1, v2, [Ljava/lang/String;

    .line 390
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v3

    move-object p2, p3

    move-object p3, v1

    goto :goto_0

    :pswitch_6
    const-string p2, "playlist_type=?"

    .line 401
    new-array p3, v3, [Ljava/lang/String;

    .line 402
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v4

    goto :goto_0

    :pswitch_7
    const-string p2, "playlist_type=? AND playlist_id=?"

    .line 374
    new-array p3, v2, [Ljava/lang/String;

    .line 375
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v4

    .line 376
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v3

    goto :goto_0

    :pswitch_8
    const-string p2, "playlist_type=? AND playlist_id=?"

    .line 367
    new-array p3, v2, [Ljava/lang/String;

    .line 368
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v4

    .line 369
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v3

    goto :goto_0

    :pswitch_9
    const-string p2, "playlist_type=? AND playlist_id=?"

    .line 360
    new-array p3, v2, [Ljava/lang/String;

    .line 361
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v4

    .line 362
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v3

    goto :goto_0

    :pswitch_a
    const-string p2, "playlist_type=?"

    .line 395
    new-array p3, v3, [Ljava/lang/String;

    .line 396
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v4

    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 434
    iget-object v0, p0, Lcom/sonyericsson/music/playlist/provider/PlaylistArtProvider;->mDatabaseHelper:Lcom/sonyericsson/music/playlist/provider/PlaylistDatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "playlist_art"

    .line 435
    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 439
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_0
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 129
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 9

    .line 240
    iget-object v0, p0, Lcom/sonyericsson/music/playlist/provider/PlaylistArtProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string v3, "playlist_type"

    .line 287
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "playlist_id"

    .line 288
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "playlist_id"

    .line 289
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_0
    const/4 p1, -0x1

    goto/16 :goto_0

    :pswitch_1
    const-string v5, "playlist_type"

    .line 261
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "playlist_id"

    .line 262
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    :pswitch_2
    const-string v3, "playlist_type"

    .line 280
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "playlist_id"

    .line 281
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "playlist_id"

    .line 282
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_1
    const/4 p1, -0x1

    goto/16 :goto_0

    :pswitch_3
    const/4 p1, -0x1

    goto/16 :goto_0

    :pswitch_4
    const-string v3, "playlist_type"

    .line 266
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "playlist_id"

    .line 267
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "playlist_id"

    .line 268
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    const/4 p1, -0x1

    goto :goto_0

    :pswitch_5
    const-string v5, "playlist_type"

    .line 256
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "playlist_id"

    .line 258
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 257
    invoke-virtual {p2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :pswitch_6
    const-string v5, "playlist_type"

    .line 251
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "playlist_id"

    .line 253
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 252
    invoke-virtual {p2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :pswitch_7
    const-string v5, "playlist_type"

    .line 246
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "playlist_id"

    .line 248
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 247
    invoke-virtual {p2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :pswitch_8
    const-string v5, "playlist_type"

    .line 273
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "playlist_id"

    .line 274
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "playlist_id"

    .line 275
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    const/4 p1, -0x1

    :cond_4
    :goto_0
    const/4 v3, 0x0

    if-eq p1, v4, :cond_11

    const-string v4, "playlist_art_uri"

    .line 303
    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    const-string v4, "playlist_art_uri"

    .line 304
    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_11

    .line 305
    iget-object v4, p0, Lcom/sonyericsson/music/playlist/provider/PlaylistArtProvider;->mDatabaseHelper:Lcom/sonyericsson/music/playlist/provider/PlaylistDatabaseHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "playlist_art"

    .line 306
    invoke-virtual {v4, v5, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_11

    .line 308
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    if-ne p1, v2, :cond_5

    .line 312
    invoke-static {v4}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$SmartPlaylistArtUri;->getRecentlyPlayedUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p1

    goto/16 :goto_1

    :cond_5
    if-ne p1, v1, :cond_6

    .line 314
    invoke-static {v4}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$SmartPlaylistArtUri;->getNewlyAddedUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p1

    goto/16 :goto_1

    :cond_6
    if-ne p1, v0, :cond_7

    .line 316
    invoke-static {v4}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$SmartPlaylistArtUri;->getMostPlayedUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p1

    goto/16 :goto_1

    :cond_7
    const/16 v5, 0x8

    if-ne p1, v5, :cond_8

    .line 318
    invoke-static {v4}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$SmartPlaylistArtUri;->getFavouritesUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p1

    goto/16 :goto_1

    :cond_8
    const/4 v5, 0x4

    if-ne p1, v5, :cond_9

    const-string p1, "playlist_id"

    .line 320
    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 321
    invoke-static {v4, p1}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$LocalPlaylistArtUri;->getUriWithId(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p1

    goto :goto_1

    :cond_9
    if-nez p1, :cond_e

    const-string p1, "playlist_id"

    .line 324
    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_a

    .line 327
    invoke-static {v4}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$SmartPlaylistArtUri;->getRecentlyPlayedUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_1

    :cond_a
    if-ne p1, v2, :cond_b

    .line 329
    invoke-static {v4}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$SmartPlaylistArtUri;->getNewlyAddedUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_1

    :cond_b
    if-ne p1, v1, :cond_c

    .line 331
    invoke-static {v4}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$SmartPlaylistArtUri;->getMostPlayedUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_1

    :cond_c
    if-ne p1, v0, :cond_d

    .line 333
    invoke-static {v4}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$SmartPlaylistArtUri;->getFavouritesUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_1

    :cond_d
    move-object p1, v3

    goto :goto_1

    :cond_e
    const/4 v0, 0x6

    if-ne p1, v0, :cond_f

    const-string p1, "playlist_id"

    .line 336
    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 337
    invoke-static {v4, p1}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$FolderArtUri;->getUriWithId(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p1

    goto :goto_1

    :cond_f
    const/16 v0, 0x9

    if-ne p1, v0, :cond_10

    const-string p1, "playlist_id"

    .line 339
    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 340
    invoke-static {v4, p1, p2}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$GenreArtUri;->getUriWithId(Landroid/content/Context;J)Landroid/net/Uri;

    move-result-object p1

    goto :goto_1

    :cond_10
    move-object p1, v3

    .line 342
    :goto_1
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_2

    :cond_11
    move-object p1, v3

    :goto_2
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 5

    .line 97
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10025d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/sonyericsson/music/playlist/provider/PlaylistArtProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "smart_playlist"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 100
    iget-object v1, p0, Lcom/sonyericsson/music/playlist/provider/PlaylistArtProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "smart_playlist/recently_played"

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 102
    iget-object v1, p0, Lcom/sonyericsson/music/playlist/provider/PlaylistArtProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "smart_playlist/newly_added"

    const/4 v4, 0x2

    invoke-virtual {v1, v0, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 104
    iget-object v1, p0, Lcom/sonyericsson/music/playlist/provider/PlaylistArtProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "smart_playlist/most_played"

    const/4 v4, 0x3

    invoke-virtual {v1, v0, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 106
    iget-object v1, p0, Lcom/sonyericsson/music/playlist/provider/PlaylistArtProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "smart_playlist/favourites"

    const/16 v4, 0x8

    invoke-virtual {v1, v0, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 108
    iget-object v1, p0, Lcom/sonyericsson/music/playlist/provider/PlaylistArtProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "local"

    const/4 v4, 0x4

    invoke-virtual {v1, v0, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 110
    iget-object v1, p0, Lcom/sonyericsson/music/playlist/provider/PlaylistArtProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "local/*"

    const/4 v4, 0x5

    invoke-virtual {v1, v0, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 112
    iget-object v1, p0, Lcom/sonyericsson/music/playlist/provider/PlaylistArtProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "folder"

    const/4 v4, 0x6

    invoke-virtual {v1, v0, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 113
    iget-object v1, p0, Lcom/sonyericsson/music/playlist/provider/PlaylistArtProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "folder/*"

    const/4 v4, 0x7

    invoke-virtual {v1, v0, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 114
    iget-object v1, p0, Lcom/sonyericsson/music/playlist/provider/PlaylistArtProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "genre"

    const/16 v4, 0x9

    invoke-virtual {v1, v0, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 115
    iget-object v1, p0, Lcom/sonyericsson/music/playlist/provider/PlaylistArtProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "genre/*"

    const/16 v4, 0xa

    invoke-virtual {v1, v0, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 117
    new-instance v0, Lcom/sonyericsson/music/playlist/provider/PlaylistDatabaseHelper;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/music/playlist/provider/PlaylistDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/music/playlist/provider/PlaylistArtProvider;->mDatabaseHelper:Lcom/sonyericsson/music/playlist/provider/PlaylistDatabaseHelper;

    return v3
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 536
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    .line 537
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "playlist_art"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 538
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 542
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 544
    rem-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_1

    .line 546
    div-int/lit8 v2, v2, 0x2

    const/4 v3, 0x4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 548
    new-array v3, v2, [Landroid/net/Uri;

    :goto_0
    if-ge v0, v2, :cond_0

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v5, v4, 0x1

    .line 553
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    add-int/lit8 v4, v4, 0x2

    .line 554
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 555
    invoke-static {v5, v4}, Lcom/sonyericsson/music/common/AlbumArtUtils;->getAlbumArtUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 562
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0700c3

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    .line 561
    invoke-static {v1, v3, p2}, Lcom/sonyericsson/music/common/AlbumArtUtils;->createPlaylistBitmap(Landroid/content/Context;[Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v8

    if-eqz v8, :cond_1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 565
    invoke-static {}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtProvider;->getPipeDataWriter()Landroid/content/ContentProvider$PipeDataWriter;

    move-result-object v9

    move-object v4, p0

    move-object v5, p1

    .line 564
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentProvider;->openPipeHelper(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/ContentProvider$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    .line 144
    iget-object v2, v0, Lcom/sonyericsson/music/playlist/provider/PlaylistArtProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v2, :pswitch_data_0

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    goto/16 :goto_0

    .line 208
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "playlist_type=? AND playlist_id=?"

    .line 210
    new-array v4, v4, [Ljava/lang/String;

    .line 211
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v5

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v6

    move-object v11, v4

    move-object v10, v8

    goto/16 :goto_0

    :pswitch_1
    const-string v4, "playlist_type=?"

    .line 216
    new-array v6, v6, [Ljava/lang/String;

    .line 217
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v5

    move-object v10, v4

    move-object v11, v6

    goto/16 :goto_0

    :pswitch_2
    const-string v7, "playlist_type=? AND playlist_id=?"

    .line 202
    new-array v4, v4, [Ljava/lang/String;

    .line 203
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    .line 204
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v6

    move-object v11, v4

    move-object v10, v7

    goto/16 :goto_0

    :pswitch_3
    const-string v3, "playlist_type=? AND playlist_id=?"

    .line 195
    new-array v7, v4, [Ljava/lang/String;

    .line 196
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v5

    .line 197
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v6

    move-object v10, v3

    move-object v11, v7

    goto/16 :goto_0

    :pswitch_4
    const-string v3, "playlist_type=?"

    .line 189
    new-array v6, v6, [Ljava/lang/String;

    .line 190
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v5

    move-object v10, v3

    move-object v11, v6

    goto/16 :goto_0

    .line 175
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v7, "playlist_type=? AND playlist_id=?"

    .line 177
    new-array v4, v4, [Ljava/lang/String;

    .line 178
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v6

    move-object v11, v4

    move-object v10, v7

    goto :goto_0

    :pswitch_6
    const-string v3, "playlist_type=?"

    .line 183
    new-array v4, v6, [Ljava/lang/String;

    .line 184
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v10, v3

    move-object v11, v4

    goto :goto_0

    :pswitch_7
    const-string v3, "playlist_type=? AND playlist_id=?"

    .line 169
    new-array v7, v4, [Ljava/lang/String;

    .line 170
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    .line 171
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v6

    move-object v10, v3

    move-object v11, v7

    goto :goto_0

    :pswitch_8
    const-string v3, "playlist_type=? AND playlist_id=?"

    .line 162
    new-array v4, v4, [Ljava/lang/String;

    .line 163
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    .line 164
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    move-object v10, v3

    move-object v11, v4

    goto :goto_0

    :pswitch_9
    const-string v3, "playlist_type=? AND playlist_id=?"

    .line 155
    new-array v4, v4, [Ljava/lang/String;

    .line 156
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    .line 157
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    move-object v10, v3

    move-object v11, v4

    goto :goto_0

    :pswitch_a
    const-string v3, "playlist_type=?"

    .line 149
    new-array v4, v6, [Ljava/lang/String;

    .line 150
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v10, v3

    move-object v11, v4

    :goto_0
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 223
    iget-object v2, v0, Lcom/sonyericsson/music/playlist/provider/PlaylistArtProvider;->mDatabaseHelper:Lcom/sonyericsson/music/playlist/provider/PlaylistDatabaseHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    const-string v8, "playlist_art"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v9, p2

    .line 224
    invoke-virtual/range {v7 .. v14}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_1

    .line 231
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_1
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public shutdown()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/sonyericsson/music/playlist/provider/PlaylistArtProvider;->mDatabaseHelper:Lcom/sonyericsson/music/playlist/provider/PlaylistDatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 124
    invoke-super {p0}, Landroid/content/ContentProvider;->shutdown()V

    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6

    .line 450
    iget-object p3, p0, Lcom/sonyericsson/music/playlist/provider/PlaylistArtProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p3

    const/4 p4, 0x3

    const/4 v0, 0x2

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_0

    .line 486
    :pswitch_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "playlist_type"

    .line 487
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, v4, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p4, "playlist_id"

    .line 488
    invoke-virtual {p2, p4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    const-string v0, "playlist_type"

    .line 471
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "playlist_id"

    .line 473
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .line 472
    invoke-virtual {p2, v0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 481
    :pswitch_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    const-string v4, "playlist_type"

    .line 482
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "playlist_id"

    .line 483
    invoke-virtual {p2, v0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 476
    :pswitch_3
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    const-string v0, "playlist_type"

    .line 477
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "playlist_id"

    .line 478
    invoke-virtual {p2, v0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string p4, "playlist_type"

    .line 466
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, p4, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p4, "playlist_id"

    .line 468
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 467
    invoke-virtual {p2, p4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :pswitch_5
    const-string p4, "playlist_type"

    .line 461
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, p4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p4, "playlist_id"

    .line 463
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 462
    invoke-virtual {p2, p4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :pswitch_6
    const-string p4, "playlist_type"

    .line 456
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, p4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p4, "playlist_id"

    .line 458
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 457
    invoke-virtual {p2, p4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :pswitch_7
    const/4 p3, -0x1

    :goto_0
    if-eq p3, v1, :cond_0

    const-string p3, "playlist_art_uri"

    .line 504
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p3, "playlist_art_uri"

    .line 505
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    .line 506
    iget-object p3, p0, Lcom/sonyericsson/music/playlist/provider/PlaylistArtProvider;->mDatabaseHelper:Lcom/sonyericsson/music/playlist/provider/PlaylistDatabaseHelper;

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    const-string p4, "playlist_art"

    const/4 v0, 0x0

    .line 508
    invoke-virtual {p3, p4, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p2

    const-wide/16 v4, -0x1

    cmp-long p4, p2, v4

    if-eqz p4, :cond_0

    .line 511
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_7
        :pswitch_0
    .end packed-switch
.end method
