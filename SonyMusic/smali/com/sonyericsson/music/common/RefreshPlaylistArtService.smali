.class public Lcom/sonyericsson/music/common/RefreshPlaylistArtService;
.super Landroidx/core/app/JobIntentService;
.source "RefreshPlaylistArtService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/common/RefreshPlaylistArtService$PlaylistArtUpdateType;
    }
.end annotation


# static fields
.field private static final GENRE_TRACKS_COLUMNS:[Ljava/lang/String;

.field private static final LOCAL_PLAYLISTS_PROJECTION:[Ljava/lang/String;

.field private static final LOCAL_PLAYLIST_TRACKS_COLUMNS:[Ljava/lang/String;

.field private static final PLAYLIST_ART_UPDATE:Ljava/lang/String; = "com.sonyericsson.music.PLAYLIST_ART_UPDATE"

.field public static final PLAYLIST_ART_UPDATED:Ljava/lang/String; = "com.sonyericsson.music.PLAYLIST_ART_UPDATED"

.field public static final PLAYLIST_ART_UPDATED_ALL:Ljava/lang/String; = "com.sonyericsson.music.PLAYLIST_ART_UPDATED_ALL"

.field private static final PLAYLIST_ART_UPDATED_TYPE:Ljava/lang/String; = "com.sonyericsson.music.PLAYLIST_ART_UPDATED_TYPE"

.field private static final PLAYLIST_ART_UPDATE_ALL:Ljava/lang/String; = "com.sonyericsson.music.PLAYLIST_ART_UPDATE_ALL"

.field private static final PLAYLIST_ART_UPDATE_TYPE:Ljava/lang/String; = "com.sonyericsson.music.PLAYLIST_ART_UPDATE_TYPE"

.field private static final PLAYLIST_ART_UPDATE_TYPE_EXTRA:Ljava/lang/String; = "com.sonyericsson.music.PLAYLIST_ART_UPDATE_TYPE_EXTRA"

.field private static final sPlaylistArtUpdateDates:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x4

    .line 80
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "_id"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "date_updated"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "date_created"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "smart_playlist_type"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sput-object v1, Lcom/sonyericsson/music/common/RefreshPlaylistArtService;->LOCAL_PLAYLISTS_PROJECTION:[Ljava/lang/String;

    .line 87
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v3

    const-string v2, "album"

    aput-object v2, v1, v4

    const-string v2, "artist"

    aput-object v2, v1, v5

    const-string v2, "album_id"

    aput-object v2, v1, v6

    sput-object v1, Lcom/sonyericsson/music/common/RefreshPlaylistArtService;->LOCAL_PLAYLIST_TRACKS_COLUMNS:[Ljava/lang/String;

    .line 94
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "album"

    aput-object v1, v0, v4

    const-string v1, "artist"

    aput-object v1, v0, v5

    const-string v1, "album_id"

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonyericsson/music/common/RefreshPlaylistArtService;->GENRE_TRACKS_COLUMNS:[Ljava/lang/String;

    .line 101
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    sput-object v0, Lcom/sonyericsson/music/common/RefreshPlaylistArtService;->sPlaylistArtUpdateDates:Landroidx/collection/SparseArrayCompat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Landroidx/core/app/JobIntentService;-><init>()V

    return-void
.end method

.method private cleanupGenreIds(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 670
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 672
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 673
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 675
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p0, v0, v1}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$GenreArtUri;->getUriWithId(Landroid/content/Context;J)Landroid/net/Uri;

    move-result-object v0

    .line 676
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private cleanupPlaylistIds(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 385
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 387
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 388
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 390
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$LocalPlaylistArtUri;->getUriWithId(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 391
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static enqueueWork(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 127
    const-class v0, Lcom/sonyericsson/music/common/RefreshPlaylistArtService;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p1}, Landroidx/core/app/JobIntentService;->enqueueWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V

    return-void
.end method

.method private getAllArtUris(Landroid/net/Uri;)Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 541
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_3

    .line 542
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "playlist_id"

    .line 543
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v1, "playlist_art_uri"

    .line 544
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 545
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 547
    :cond_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 548
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 549
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_0

    move-object v0, v2

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v7, v0

    move-object v0, p1

    move-object p1, v7

    :goto_0
    if-eqz p1, :cond_1

    .line 555
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 557
    :cond_1
    throw v0

    :cond_2
    move-object p1, v0

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    .line 555
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v0
.end method

.method private getArtUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 7

    const-string v0, ""

    .line 564
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 567
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "playlist_art_uri"

    .line 568
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 569
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 572
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 573
    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private getResponseAction(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_2

    const-string v0, "com.sonyericsson.music.PLAYLIST_ART_UPDATE_ALL"

    .line 226
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "com.sonyericsson.music.PLAYLIST_ART_UPDATED_ALL"

    return-object p1

    :cond_0
    const-string v0, "com.sonyericsson.music.PLAYLIST_ART_UPDATE"

    .line 228
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "com.sonyericsson.music.PLAYLIST_ART_UPDATED"

    return-object p1

    :cond_1
    const-string v0, "com.sonyericsson.music.PLAYLIST_ART_UPDATE_TYPE"

    .line 230
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "com.sonyericsson.music.PLAYLIST_ART_UPDATED_TYPE"

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private refreshFolderArt(Landroid/net/Uri;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 299
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p1, :cond_3

    .line 302
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    .line 306
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 305
    invoke-static {v0, v1}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$FolderArtUri;->getUriWithId(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    if-eqz p4, :cond_0

    .line 309
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p4, ""

    .line 312
    :goto_0
    invoke-static {v0, p2, p3, p1}, Lcom/sonyericsson/music/common/AlbumArtUtils;->createFolderBitmapUri(Landroid/content/Context;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 314
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_1
    move-object p3, p2

    .line 317
    :goto_1
    invoke-static {p4, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 318
    new-instance p3, Landroid/content/ContentValues;

    invoke-direct {p3}, Landroid/content/ContentValues;-><init>()V

    const-string p4, "playlist_art_uri"

    if-eqz p1, :cond_2

    .line 320
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    const-string p1, ""

    .line 319
    :goto_2
    invoke-virtual {p3, p4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, v1, p3, p2, p2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    return p1
.end method

.method private refreshFoldersArt()Z
    .locals 12

    .line 239
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 240
    invoke-static {v0}, Lcom/sonyericsson/music/common/FolderUtils;->getFolderSet(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    .line 242
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 243
    invoke-static {v0}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$FolderArtUri;->getUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    .line 244
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/music/common/Folder;

    .line 245
    invoke-virtual {v5}, Lcom/sonyericsson/music/common/Folder;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v10, 0x1

    .line 247
    new-array v6, v10, [Ljava/lang/String;

    const-string v4, "playlist_id"

    aput-object v4, v6, v2

    const/4 v11, 0x0

    .line 250
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_5

    const/4 v5, 0x0

    .line 254
    :cond_1
    :goto_1
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "playlist_id"

    .line 256
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 255
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 257
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 258
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "playlist_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 259
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, v0, v6, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    or-int/2addr v5, v6

    goto :goto_1

    .line 265
    :cond_3
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v11}, Lcom/sonyericsson/music/common/FolderUtils;->getFolderTracksIds(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 267
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/music/common/FolderUtils;->getAllTracksIds(Landroid/content/ContentResolver;)Ljava/util/HashMap;

    move-result-object v2

    .line 268
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$FolderArtUri;->getUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v3

    .line 269
    invoke-direct {p0, v3}, Lcom/sonyericsson/music/common/RefreshPlaylistArtService;->getAllArtUris(Landroid/net/Uri;)Ljava/util/HashMap;

    move-result-object v3

    .line 271
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/music/common/Folder;

    const-string v7, "external"

    .line 273
    invoke-virtual {v6}, Lcom/sonyericsson/music/common/Folder;->getId()I

    move-result v6

    int-to-long v8, v6

    invoke-static {v7, v8, v9}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Files;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v6

    .line 272
    invoke-direct {p0, v6, v0, v2, v3}, Lcom/sonyericsson/music/common/RefreshPlaylistArtService;->refreshFolderArt(Landroid/net/Uri;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    or-int/2addr v5, v6

    goto :goto_3

    :cond_4
    move v2, v5

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_5
    :goto_4
    if-eqz v4, :cond_7

    .line 279
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v4, v11

    :goto_5
    if-eqz v4, :cond_6

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 281
    :cond_6
    throw v0

    :cond_7
    :goto_6
    return v2
.end method

.method private refreshGenre(Landroid/net/Uri;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x7

    .line 611
    invoke-static {p1}, Lcom/sonyericsson/music/common/MediaStoreUriMatcher;->getUriType(Landroid/net/Uri;)I

    move-result v2

    const-wide/16 v3, -0x1

    if-ne v1, v2, :cond_1

    .line 612
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/music/common/DBUtils;->parseMembersContainerId(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_0

    .line 614
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 617
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_2
    move-wide v1, v3

    :goto_0
    cmp-long p1, v1, v3

    if-eqz p1, :cond_3

    .line 625
    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/music/common/RefreshPlaylistArtService;->refreshGenreArt(J)Z

    move-result v0

    :cond_3
    return v0
.end method

.method private refreshGenreArt(J)Z
    .locals 13

    const-string v0, "external"

    .line 684
    invoke-static {v0, p1, p2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v2

    .line 686
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/sonyericsson/music/common/RefreshPlaylistArtService;->GENRE_TRACKS_COLUMNS:[Ljava/lang/String;

    const-string v6, "title_key"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 691
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 692
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$GenreArtUri;->getUriWithId(Landroid/content/Context;J)Landroid/net/Uri;

    move-result-object v12

    const-string v9, "artist"

    const-string v10, "album"

    const-string v11, "album_id"

    move-object v7, p0

    move-object v8, v0

    .line 693
    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/music/common/RefreshPlaylistArtService;->updateArtUriFromCursor(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, p1

    .line 698
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 699
    throw p1

    :cond_1
    :goto_0
    return v1
.end method

.method private refreshGenres()Z
    .locals 10

    const/4 v0, 0x0

    .line 639
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$GenreArtUri;->getUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    .line 638
    invoke-direct {p0, v1}, Lcom/sonyericsson/music/common/RefreshPlaylistArtService;->getAllArtUris(Landroid/net/Uri;)Ljava/util/HashMap;

    move-result-object v1

    const/4 v2, 0x1

    .line 641
    new-array v5, v2, [Ljava/lang/String;

    const-string v2, "_id"

    const/4 v9, 0x0

    aput-object v2, v5, v9

    .line 642
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Genres;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 645
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "_id"

    .line 646
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 649
    :cond_0
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    if-eqz v1, :cond_1

    .line 651
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    :cond_1
    invoke-direct {p0, v3, v4}, Lcom/sonyericsson/music/common/RefreshPlaylistArtService;->refreshGenreArt(J)Z

    move-result v3

    or-int/2addr v9, v3

    .line 654
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    :cond_2
    if-eqz v0, :cond_3

    .line 659
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 664
    :cond_3
    invoke-direct {p0, v1}, Lcom/sonyericsson/music/common/RefreshPlaylistArtService;->cleanupGenreIds(Ljava/util/HashMap;)V

    return v9

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    .line 659
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 661
    :cond_4
    throw v1

    return-void
.end method

.method private refreshLocalPlaylist(Landroid/net/Uri;)Z
    .locals 6

    .line 333
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/music/common/RefreshPlaylistArtService;->LOCAL_PLAYLISTS_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 335
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 336
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/common/RefreshPlaylistArtService;->refreshPlaylist(Landroid/database/Cursor;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_0

    .line 340
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 342
    :cond_0
    throw v0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 340
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return v0
.end method

.method private refreshLocalPlaylistArt(I)Z
    .locals 12

    .line 505
    invoke-static {p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$Members;->getContentUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 506
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/music/common/RefreshPlaylistArtService;->LOCAL_PLAYLIST_TRACKS_COLUMNS:[Ljava/lang/String;

    const-string v5, "play_order"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 511
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 512
    invoke-static {p0, p1}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$LocalPlaylistArtUri;->getUriWithId(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v11

    const-string v8, "artist"

    const-string v9, "album"

    const-string v10, "album_id"

    move-object v6, p0

    move-object v7, v0

    .line 514
    invoke-direct/range {v6 .. v11}, Lcom/sonyericsson/music/common/RefreshPlaylistArtService;->updateArtUriFromCursor(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, p1

    .line 520
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 521
    throw p1

    :cond_1
    :goto_0
    return v1
.end method

.method private refreshLocalPlaylists()Z
    .locals 9

    const/4 v0, 0x0

    .line 354
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$LocalPlaylistArtUri;->getUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    .line 353
    invoke-direct {p0, v1}, Lcom/sonyericsson/music/common/RefreshPlaylistArtService;->getAllArtUris(Landroid/net/Uri;)Ljava/util/HashMap;

    move-result-object v1

    .line 356
    sget-object v2, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;->PLAYLIST_TYPE_ALL_NOT_SMART:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;

    invoke-static {v2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri(Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;)Landroid/net/Uri;

    move-result-object v4

    .line 358
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/sonyericsson/music/common/RefreshPlaylistArtService;->LOCAL_PLAYLISTS_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "COALESCE (date_updated, date_created, date_played) DESC "

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 360
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "_id"

    .line 361
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    :cond_0
    if-eqz v1, :cond_1

    .line 365
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    :cond_1
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/common/RefreshPlaylistArtService;->refreshPlaylist(Landroid/database/Cursor;)Z

    move-result v4

    or-int/2addr v2, v4

    .line 369
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    :cond_2
    if-eqz v0, :cond_3

    .line 374
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 379
    :cond_3
    invoke-direct {p0, v1}, Lcom/sonyericsson/music/common/RefreshPlaylistArtService;->cleanupPlaylistIds(Ljava/util/HashMap;)V

    return v2

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    .line 374
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 376
    :cond_4
    throw v1

    return-void
.end method

.method private declared-synchronized refreshPlaylist(Landroid/database/Cursor;)Z
    .locals 8

    monitor-enter p0

    :try_start_0
    const-string v0, "smart_playlist_type"

    .line 403
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v1, "date_updated"

    .line 404
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "date_created"

    .line 405
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "_id"

    .line 406
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 407
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sget-object v4, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$PlaylistProviderTypeIndex;->SMART_PLAYLIST_TYPE_NONE:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$PlaylistProviderTypeIndex;

    .line 408
    invoke-virtual {v4}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$PlaylistProviderTypeIndex;->getId()I

    move-result v4

    const/4 v5, 0x0

    if-eq v0, v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 409
    :goto_0
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 410
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 411
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 412
    sget-object p1, Lcom/sonyericsson/music/common/RefreshPlaylistArtService;->sPlaylistArtUpdateDates:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {p1, v3}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    .line 415
    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long p1, v0, v6

    if-lez p1, :cond_2

    .line 416
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    .line 417
    sget-object p1, Lcom/sonyericsson/music/common/RefreshPlaylistArtService;->sPlaylistArtUpdateDates:Landroidx/collection/SparseArrayCompat;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 418
    invoke-direct {p0, v3}, Lcom/sonyericsson/music/common/RefreshPlaylistArtService;->refreshLocalPlaylistArt(I)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    :cond_2
    monitor-exit p0

    return v5

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private refreshSmartPlaylistArt(Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Z
    .locals 16

    .line 442
    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 444
    sget-object v1, Lcom/sonyericsson/music/common/RefreshPlaylistArtService$1;->$SwitchMap$com$sonyericsson$music$common$SmartPlaylistUtils$SmartPlaylistType:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, -0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    move-object v0, v3

    move-object v9, v0

    goto :goto_0

    .line 466
    :pswitch_0
    invoke-static/range {p0 .. p0}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$SmartPlaylistArtUri;->getFavouritesUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    .line 467
    invoke-static {v0}, Lcom/sonyericsson/music/common/DBUtils;->getFavouritesProperties(Landroid/content/ContentResolver;)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;

    move-result-object v0

    move-object v9, v1

    goto :goto_0

    .line 453
    :pswitch_1
    invoke-static/range {p0 .. p0}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$SmartPlaylistArtUri;->getNewlyAddedUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    .line 454
    invoke-static {v3, v2}, Lcom/sonyericsson/music/common/DBUtils;->getNewlyAddedDescProperty([Ljava/lang/String;I)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;

    move-result-object v1

    move-object v9, v0

    move-object v0, v1

    goto :goto_0

    .line 446
    :pswitch_2
    invoke-static/range {p0 .. p0}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$SmartPlaylistArtUri;->getRecentlyPlayedUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    .line 447
    sget-object v4, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->RECENTLY_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-static {v0, v3, v2, v4}, Lcom/sonyericsson/music/common/DBUtils;->getPlayedPlaylistDescProperty(Landroid/content/ContentResolver;[Ljava/lang/String;ILcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;

    move-result-object v0

    move-object v9, v1

    goto :goto_0

    .line 459
    :pswitch_3
    invoke-static/range {p0 .. p0}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$SmartPlaylistArtUri;->getMostPlayedUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    .line 460
    sget-object v4, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->MOST_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-static {v0, v3, v2, v4}, Lcom/sonyericsson/music/common/DBUtils;->getPlayedPlaylistDescProperty(Landroid/content/ContentResolver;[Ljava/lang/String;ILcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;

    move-result-object v0

    move-object v9, v1

    :goto_0
    if-eqz v0, :cond_0

    .line 473
    invoke-virtual {v0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->getTracksUri()Landroid/net/Uri;

    move-result-object v1

    move-object v11, v1

    goto :goto_1

    :cond_0
    move-object v11, v3

    :goto_1
    const/4 v1, 0x0

    if-eqz v9, :cond_2

    if-eqz v11, :cond_2

    if-eqz v0, :cond_2

    .line 479
    invoke-virtual {v0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->hasLimit()Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v2, v4, :cond_1

    .line 480
    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->getProjection()[Ljava/lang/String;

    move-result-object v4

    .line 481
    invoke-virtual {v0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->getWhere()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->getWhereArgs()[Ljava/lang/String;

    move-result-object v6

    .line 482
    invoke-virtual {v0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->getOrderBy()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->getLimit()I

    move-result v0

    .line 481
    invoke-static {v5, v6, v7, v0}, Lcom/sonyericsson/music/common/DBUtils;->createSqlQueryBundle(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    .line 480
    invoke-virtual {v2, v11, v4, v0, v3}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    move-object v2, v0

    goto :goto_2

    .line 484
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->getProjection()[Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->getWhere()Ljava/lang/String;

    move-result-object v13

    .line 485
    invoke-virtual {v0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->getWhereArgs()[Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->getOrderBy()Ljava/lang/String;

    move-result-object v15

    .line 484
    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v2, v0

    :goto_2
    if-eqz v2, :cond_2

    .line 491
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils;->getArtistColumn(Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Ljava/lang/String;

    move-result-object v6

    .line 492
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils;->getAlbumColumn(Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Ljava/lang/String;

    move-result-object v7

    .line 493
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils;->getAlbumIdColumn(Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v4, p0

    move-object v5, v2

    .line 490
    invoke-direct/range {v4 .. v9}, Lcom/sonyericsson/music/common/RefreshPlaylistArtService;->updateArtUriFromCursor(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 496
    throw v0

    :cond_2
    :goto_3
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private refreshSmartPlaylists()Z
    .locals 2

    .line 426
    sget-object v0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->MOST_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/common/RefreshPlaylistArtService;->refreshSmartPlaylistArt(Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 428
    sget-object v1, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->NEWLY_ADDED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-direct {p0, v1}, Lcom/sonyericsson/music/common/RefreshPlaylistArtService;->refreshSmartPlaylistArt(Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 430
    sget-object v1, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->RECENTLY_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-direct {p0, v1}, Lcom/sonyericsson/music/common/RefreshPlaylistArtService;->refreshSmartPlaylistArt(Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 432
    sget-object v1, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->FAVOURITES:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-direct {p0, v1}, Lcom/sonyericsson/music/common/RefreshPlaylistArtService;->refreshSmartPlaylistArt(Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static update(Landroid/content/Context;I)V
    .locals 5

    .line 120
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.music.PLAYLIST_ART_UPDATE_TYPE"

    .line 121
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/sonyericsson/music/common/RefreshPlaylistArtService;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.sonyericsson.music.PLAYLIST_ART_UPDATE_TYPE_EXTRA"

    .line 122
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 123
    invoke-static {p0, v0}, Lcom/sonyericsson/music/common/RefreshPlaylistArtService;->enqueueWork(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static update(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 4

    .line 114
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.music.PLAYLIST_ART_UPDATE"

    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/sonyericsson/music/common/RefreshPlaylistArtService;

    invoke-direct {v0, v1, p1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    invoke-static {p0, v0}, Lcom/sonyericsson/music/common/RefreshPlaylistArtService;->enqueueWork(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static updateAll(Landroid/content/Context;)V
    .locals 5

    .line 108
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.music.PLAYLIST_ART_UPDATE_ALL"

    .line 109
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/sonyericsson/music/common/RefreshPlaylistArtService;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    invoke-static {p0, v0}, Lcom/sonyericsson/music/common/RefreshPlaylistArtService;->enqueueWork(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private updateArtUriFromCursor(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 2

    .line 582
    invoke-static {p1, p2, p3, p4}, Lcom/sonyericsson/music/common/AlbumArtUtils;->getUnique2by2Images(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 585
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x1

    const/4 p4, 0x0

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 586
    invoke-static {p0, p1}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$PlaylistArt;->getPlaylistArtUri(Landroid/content/Context;Ljava/util/List;)Landroid/net/Uri;

    move-result-object p1

    .line 587
    invoke-direct {p0, p5}, Lcom/sonyericsson/music/common/RefreshPlaylistArtService;->getArtUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    .line 588
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 589
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 590
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "playlist_art_uri"

    .line 591
    invoke-virtual {p2, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p5, p2, v0, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    return p3

    :cond_1
    return p4

    .line 596
    :cond_2
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p5, v0, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p3, 0x0

    :goto_1
    return p3
.end method


# virtual methods
.method protected onHandleWork(Landroid/content/Intent;)V
    .locals 6

    .line 133
    invoke-static {p0}, Lcom/sonyericsson/music/common/PermissionUtils;->isReadStoragePermissionGranted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 137
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    if-eqz p1, :cond_2

    .line 138
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v0

    .line 139
    :goto_1
    invoke-direct {p0, v1}, Lcom/sonyericsson/music/common/RefreshPlaylistArtService;->getResponseAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_a

    if-eqz v3, :cond_a

    const-string v4, "com.sonyericsson.music.PLAYLIST_ART_UPDATE_ALL"

    .line 144
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_4

    const-string v4, "com.sonyericsson.music.PLAYLIST_ART_UPDATE_TYPE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    const-string p1, "com.sonyericsson.music.PLAYLIST_ART_UPDATE"

    .line 167
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    if-eqz v2, :cond_9

    .line 168
    invoke-static {v2}, Lcom/sonyericsson/music/common/MediaStoreUriMatcher;->getUriType(Landroid/net/Uri;)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    .line 193
    invoke-static {v2}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getSmartPlaylistType(Landroid/net/Uri;)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 195
    sget-object v0, Lcom/sonyericsson/music/common/RefreshPlaylistArtService$1;->$SwitchMap$com$sonyericsson$music$common$SmartPlaylistUtils$SmartPlaylistType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_4

    .line 183
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/sonyericsson/music/common/RefreshPlaylistArtService;->refreshLocalPlaylist(Landroid/net/Uri;)Z

    move-result v5

    goto/16 :goto_4

    .line 188
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/sonyericsson/music/common/RefreshPlaylistArtService;->refreshGenre(Landroid/net/Uri;)Z

    move-result v5

    goto/16 :goto_4

    .line 172
    :pswitch_2
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/sonyericsson/music/common/FolderUtils;->getFolderTracksIds(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    .line 174
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/music/common/FolderUtils;->getAllTracksIds(Landroid/content/ContentResolver;)Ljava/util/HashMap;

    move-result-object v0

    .line 176
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$FolderArtUri;->getUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    .line 177
    invoke-direct {p0, v1}, Lcom/sonyericsson/music/common/RefreshPlaylistArtService;->getAllArtUris(Landroid/net/Uri;)Ljava/util/HashMap;

    move-result-object v1

    .line 178
    invoke-direct {p0, v2, p1, v0, v1}, Lcom/sonyericsson/music/common/RefreshPlaylistArtService;->refreshFolderArt(Landroid/net/Uri;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)Z

    move-result v5

    goto :goto_4

    .line 203
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/common/RefreshPlaylistArtService;->refreshSmartPlaylistArt(Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Z

    move-result v5

    goto :goto_4

    :cond_4
    :goto_2
    const-string v0, "com.sonyericsson.music.PLAYLIST_ART_UPDATE_ALL"

    .line 146
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 147
    sget-object p1, Lcom/sonyericsson/music/common/RefreshPlaylistArtService$PlaylistArtUpdateType;->PLAYLISTS:Lcom/sonyericsson/music/common/RefreshPlaylistArtService$PlaylistArtUpdateType;

    invoke-virtual {p1}, Lcom/sonyericsson/music/common/RefreshPlaylistArtService$PlaylistArtUpdateType;->getPlaylistArtTypeValue()I

    move-result p1

    sget-object v0, Lcom/sonyericsson/music/common/RefreshPlaylistArtService$PlaylistArtUpdateType;->SMARTPLAYLIST:Lcom/sonyericsson/music/common/RefreshPlaylistArtService$PlaylistArtUpdateType;

    .line 148
    invoke-virtual {v0}, Lcom/sonyericsson/music/common/RefreshPlaylistArtService$PlaylistArtUpdateType;->getPlaylistArtTypeValue()I

    move-result v0

    or-int/2addr p1, v0

    sget-object v0, Lcom/sonyericsson/music/common/RefreshPlaylistArtService$PlaylistArtUpdateType;->FOLDERS:Lcom/sonyericsson/music/common/RefreshPlaylistArtService$PlaylistArtUpdateType;

    .line 149
    invoke-virtual {v0}, Lcom/sonyericsson/music/common/RefreshPlaylistArtService$PlaylistArtUpdateType;->getPlaylistArtTypeValue()I

    move-result v0

    or-int/2addr p1, v0

    sget-object v0, Lcom/sonyericsson/music/common/RefreshPlaylistArtService$PlaylistArtUpdateType;->GENRES:Lcom/sonyericsson/music/common/RefreshPlaylistArtService$PlaylistArtUpdateType;

    .line 150
    invoke-virtual {v0}, Lcom/sonyericsson/music/common/RefreshPlaylistArtService$PlaylistArtUpdateType;->getPlaylistArtTypeValue()I

    move-result v0

    or-int/2addr p1, v0

    goto :goto_3

    :cond_5
    const-string v0, "com.sonyericsson.music.PLAYLIST_ART_UPDATE_TYPE_EXTRA"

    .line 152
    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 155
    :goto_3
    sget-object v0, Lcom/sonyericsson/music/common/RefreshPlaylistArtService$PlaylistArtUpdateType;->PLAYLISTS:Lcom/sonyericsson/music/common/RefreshPlaylistArtService$PlaylistArtUpdateType;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/common/RefreshPlaylistArtService$PlaylistArtUpdateType;->isTypeSet(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 156
    invoke-direct {p0}, Lcom/sonyericsson/music/common/RefreshPlaylistArtService;->refreshLocalPlaylists()Z

    move-result v0

    or-int/2addr v5, v0

    .line 158
    :cond_6
    sget-object v0, Lcom/sonyericsson/music/common/RefreshPlaylistArtService$PlaylistArtUpdateType;->SMARTPLAYLIST:Lcom/sonyericsson/music/common/RefreshPlaylistArtService$PlaylistArtUpdateType;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/common/RefreshPlaylistArtService$PlaylistArtUpdateType;->isTypeSet(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 159
    invoke-direct {p0}, Lcom/sonyericsson/music/common/RefreshPlaylistArtService;->refreshSmartPlaylists()Z

    move-result v0

    or-int/2addr v5, v0

    .line 161
    :cond_7
    sget-object v0, Lcom/sonyericsson/music/common/RefreshPlaylistArtService$PlaylistArtUpdateType;->FOLDERS:Lcom/sonyericsson/music/common/RefreshPlaylistArtService$PlaylistArtUpdateType;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/common/RefreshPlaylistArtService$PlaylistArtUpdateType;->isTypeSet(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 162
    invoke-direct {p0}, Lcom/sonyericsson/music/common/RefreshPlaylistArtService;->refreshFoldersArt()Z

    move-result v0

    or-int/2addr v5, v0

    .line 164
    :cond_8
    sget-object v0, Lcom/sonyericsson/music/common/RefreshPlaylistArtService$PlaylistArtUpdateType;->GENRES:Lcom/sonyericsson/music/common/RefreshPlaylistArtService$PlaylistArtUpdateType;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/common/RefreshPlaylistArtService$PlaylistArtUpdateType;->isTypeSet(I)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 165
    invoke-direct {p0}, Lcom/sonyericsson/music/common/RefreshPlaylistArtService;->refreshGenres()Z

    move-result p1

    or-int/2addr p1, v5

    move v5, p1

    :cond_9
    :goto_4
    if-eqz v5, :cond_a

    .line 218
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    .line 219
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :cond_a
    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
