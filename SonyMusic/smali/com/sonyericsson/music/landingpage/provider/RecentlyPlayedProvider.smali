.class public Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;
.super Landroid/content/ContentProvider;
.source "RecentlyPlayedProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedData;,
        Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$MediaExternalContentObserver;,
        Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;,
        Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$UriParseType;
    }
.end annotation


# static fields
.field private static sTestDB:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedDatabaseHelper;


# instance fields
.field private mDatabaseHelper:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedDatabaseHelper;

.field final mMediaContentObserverExternal:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$MediaExternalContentObserver;

.field final mMediaContentObserverExternalLock:Ljava/lang/Object;

.field private mMediaStoreReceiverRegistered:Z

.field private final mMediaStoreScannerReceiver:Landroid/content/BroadcastReceiver;

.field private mRegisteredMediaExternalContentObserver:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->mMediaContentObserverExternalLock:Ljava/lang/Object;

    .line 66
    new-instance v0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$MediaExternalContentObserver;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$MediaExternalContentObserver;-><init>(Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;)V

    iput-object v0, p0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->mMediaContentObserverExternal:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$MediaExternalContentObserver;

    .line 78
    new-instance v0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$1;-><init>(Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;)V

    iput-object v0, p0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->mMediaStoreScannerReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->unregisterMediaExternalContentObserver()V

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->registerMediaExternalContentObserver()V

    return-void
.end method

.method private createContentValues(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 5

    .line 794
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 796
    sget-object v1, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->TYPE:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

    invoke-virtual {v1}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->getColumnName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->TYPE:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

    .line 797
    invoke-virtual {v2}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->getColumnName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 796
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 798
    sget-object v1, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->CONTAINER_URI:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

    invoke-virtual {v1}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->getColumnName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->CONTAINER_URI:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

    .line 799
    invoke-virtual {v2}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->getColumnName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 798
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    sget-object v1, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->TIMESTAMP:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

    invoke-virtual {v1}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->getColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 802
    sget-object v1, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->TIMESTAMP:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

    invoke-virtual {v1}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->getColumnName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->TIMESTAMP:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

    .line 803
    invoke-virtual {v2}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->getColumnName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    .line 802
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 805
    :cond_0
    sget-object p1, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->TIMESTAMP:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

    invoke-virtual {p1}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->getColumnName()Ljava/lang/String;

    move-result-object p1

    .line 806
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 805
    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :goto_0
    return-object v0
.end method

.method private createNewRow(ILjava/lang/String;IJLjava/lang/String;JLjava/lang/String;ZLjava/lang/String;)[Ljava/lang/Object;
    .locals 2

    .line 709
    invoke-static {}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->values()[Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 711
    sget-object v1, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->TYPE:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

    invoke-virtual {v1}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->getIndex()I

    move-result v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    .line 712
    sget-object p1, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->CONTAINER_URI:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

    invoke-virtual {p1}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->getIndex()I

    move-result p1

    aput-object p2, v0, p1

    .line 713
    sget-object p1, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->TIMESTAMP:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

    invoke-virtual {p1}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->getIndex()I

    move-result p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p1

    .line 714
    sget-object p1, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->ID:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

    invoke-virtual {p1}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->getIndex()I

    move-result p1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v0, p1

    .line 715
    sget-object p1, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->TITLE:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

    invoke-virtual {p1}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->getIndex()I

    move-result p1

    aput-object p6, v0, p1

    .line 716
    sget-object p1, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->SUB_ID:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

    invoke-virtual {p1}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->getIndex()I

    move-result p1

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v0, p1

    .line 717
    sget-object p1, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->SUB_TITLE:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

    invoke-virtual {p1}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->getIndex()I

    move-result p1

    aput-object p9, v0, p1

    .line 718
    sget-object p1, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->HIGH_RES:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

    invoke-virtual {p1}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->getIndex()I

    move-result p1

    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p1

    .line 719
    sget-object p1, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->DATA:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

    invoke-virtual {p1}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->getIndex()I

    move-result p1

    aput-object p11, v0, p1

    return-object v0
.end method

.method private createSelectionStringWithIds(Ljava/lang/String;Ljava/util/HashMap;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedData;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 390
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p2, :cond_2

    .line 391
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "=?"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 395
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 397
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    .line 398
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    .line 399
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 400
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 401
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, " OR "

    .line 403
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 407
    :cond_1
    new-instance p1, Landroid/util/Pair;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    move-object p1, v0

    :goto_1
    return-object p1
.end method

.method private deleteMediaStorePlaylistContentUri(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 884
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/music/common/MediaStoreUriMatcher;->getUriType(Landroid/net/Uri;)I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 886
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/music/common/MediaStoreUriMatcher;->getUriType(Landroid/net/Uri;)I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 889
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 895
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 894
    invoke-static {v0, p1}, Lcom/sonyericsson/music/metadata/provider/MediastorePlaylistUtils;->convertMusicInfoPlaylistUriToMediaStorePlaylistUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->CONTAINER_URI:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 898
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    .line 899
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->mDatabaseHelper:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedDatabaseHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v2, "recently_played"

    .line 900
    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private getAlbumData(Landroid/content/Context;Ljava/util/HashMap;)Ljava/util/ArrayList;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedData;",
            ">;)",
            "Ljava/util/ArrayList<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 415
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 416
    sget-object v3, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;->MEDIA_STORE:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;

    sget-object v4, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;->ALBUM:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;

    invoke-static {v0, v3, v4}, Lcom/sonyericsson/music/common/HDAudioUtils;->getHDContent(Landroid/content/Context;Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;)Ljava/util/HashSet;

    move-result-object v3

    const/4 v4, 0x4

    .line 420
    new-array v7, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v7, v4

    const/4 v4, 0x1

    const-string v5, "album"

    aput-object v5, v7, v4

    const/4 v4, 0x2

    const-string v5, "artist_id"

    aput-object v5, v7, v4

    const/4 v4, 0x3

    const-string v5, "artist"

    aput-object v5, v7, v4

    const-string v4, "_id"

    move-object/from16 v15, p0

    .line 425
    invoke-direct {v15, v4, v1}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->createSelectionStringWithIds(Ljava/lang/String;Ljava/util/HashMap;)Landroid/util/Pair;

    move-result-object v4

    .line 427
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v8, v5

    check-cast v8, Ljava/lang/String;

    .line 428
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v9, v4

    check-cast v9, [Ljava/lang/String;

    .line 432
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_2

    .line 435
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 436
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "_id"

    .line 438
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "album"

    .line 439
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "artist_id"

    .line 440
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "artist"

    .line 441
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 444
    :goto_0
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 443
    invoke-static {v0, v8}, Lcom/sonyericsson/music/common/StringUtils;->replaceUnknownArtistWithLocalizedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 446
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 445
    invoke-static {v0, v8}, Lcom/sonyericsson/music/common/StringUtils;->replaceUnknownAlbumWithLocalizedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 448
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 449
    invoke-static {v12, v13, v3}, Lcom/sonyericsson/music/common/HDAudioUtils;->isHighResContent(JLjava/util/HashSet;)Z

    move-result v18

    .line 450
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedData;

    .line 451
    invoke-virtual {v8}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedData;->getContainerUri()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    const/4 v9, 0x2

    .line 454
    invoke-virtual {v8}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedData;->getContainerUri()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedData;->getTimestamp()I

    move-result v11

    .line 455
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    const/16 v21, 0x0

    move-object/from16 v8, p0

    move/from16 v22, v14

    move-object/from16 v14, v16

    move-wide/from16 v15, v19

    move-object/from16 v19, v21

    .line 452
    invoke-direct/range {v8 .. v19}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->createNewRow(ILjava/lang/String;IJLjava/lang/String;JLjava/lang/String;ZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v8

    .line 457
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    move/from16 v22, v14

    .line 459
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v8, :cond_1

    goto :goto_2

    :cond_1
    move-object/from16 v15, p0

    move/from16 v14, v22

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_2
    :goto_2
    if-eqz v4, :cond_4

    .line 463
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v4, v2

    :goto_3
    if-eqz v4, :cond_3

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 465
    :cond_3
    throw v0

    :cond_4
    :goto_4
    return-object v2
.end method

.method private getArtistData(Landroid/content/Context;Ljava/util/HashMap;)Ljava/util/ArrayList;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedData;",
            ">;)",
            "Ljava/util/ArrayList<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p2

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 503
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_4

    const/4 v2, 0x2

    .line 504
    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v5, v2

    const/4 v2, 0x1

    const-string v3, "artist"

    aput-object v3, v5, v2

    const-string v2, "_id"

    move-object/from16 v15, p0

    .line 507
    invoke-direct {v15, v2, v0}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->createSelectionStringWithIds(Ljava/lang/String;Ljava/util/HashMap;)Landroid/util/Pair;

    move-result-object v2

    .line 509
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    .line 510
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v7, v2

    check-cast v7, [Ljava/lang/String;

    .line 514
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_2

    .line 517
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 518
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "_id"

    .line 520
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "artist"

    .line 521
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 524
    :goto_0
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v13, p1

    .line 523
    invoke-static {v13, v5}, Lcom/sonyericsson/music/common/StringUtils;->replaceUnknownArtistWithLocalizedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 526
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 527
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedData;

    .line 528
    invoke-virtual {v5}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedData;->getContainerUri()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    const/4 v7, 0x3

    .line 531
    invoke-virtual {v5}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedData;->getContainerUri()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedData;->getTimestamp()I

    move-result v9

    const-wide/16 v16, -0x1

    const/4 v5, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v6, p0

    move-wide/from16 v13, v16

    move-object v15, v5

    move/from16 v16, v18

    move-object/from16 v17, v19

    .line 529
    invoke-direct/range {v6 .. v17}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->createNewRow(ILjava/lang/String;IJLjava/lang/String;JLjava/lang/String;ZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v5

    .line 533
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    move-object/from16 v15, p0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_2
    :goto_1
    if-eqz v2, :cond_4

    .line 539
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 541
    :cond_3
    throw v0

    :cond_4
    :goto_3
    return-object v1
.end method

.method private static getColumns()[Ljava/lang/String;
    .locals 6

    .line 873
    invoke-static {}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->values()[Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

    move-result-object v0

    .line 874
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    .line 876
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 877
    invoke-virtual {v4}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->getIndex()I

    move-result v5

    invoke-virtual {v4}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->getColumnName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private getFolderData(Landroid/content/Context;Ljava/util/HashMap;)Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedData;",
            ">;)",
            "Ljava/util/ArrayList<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p2

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 474
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 476
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/music/common/FolderUtils;->getFolderSet(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 477
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 478
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/music/common/Folder;

    .line 479
    invoke-virtual {v3}, Lcom/sonyericsson/music/common/Folder;->getId()I

    move-result v4

    int-to-long v9, v4

    .line 480
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    if-nez v1, :cond_1

    .line 482
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 485
    :cond_1
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedData;

    .line 486
    invoke-virtual {v4}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedData;->getContainerUri()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v6, 0x4

    .line 488
    invoke-virtual {v4}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedData;->getContainerUri()Ljava/lang/String;

    move-result-object v7

    .line 489
    invoke-virtual {v4}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedData;->getTimestamp()I

    move-result v8

    invoke-virtual {v3}, Lcom/sonyericsson/music/common/Folder;->getName()Ljava/lang/String;

    move-result-object v11

    const-wide/16 v12, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 490
    invoke-virtual {v3}, Lcom/sonyericsson/music/common/Folder;->getPathDisplayName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v5, p0

    .line 487
    invoke-direct/range {v5 .. v16}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->createNewRow(ILjava/lang/String;IJLjava/lang/String;JLjava/lang/String;ZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v3

    .line 491
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private getGenreData(Landroid/content/Context;Ljava/util/HashMap;)Ljava/util/ArrayList;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedData;",
            ">;)",
            "Ljava/util/ArrayList<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p2

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 600
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_4

    const/4 v2, 0x2

    .line 602
    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v5, v2

    const/4 v2, 0x1

    const-string v3, "name"

    aput-object v3, v5, v2

    const-string v2, "_id"

    move-object/from16 v15, p0

    .line 605
    invoke-direct {v15, v2, v0}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->createSelectionStringWithIds(Ljava/lang/String;Ljava/util/HashMap;)Landroid/util/Pair;

    move-result-object v2

    .line 607
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    .line 608
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v7, v2

    check-cast v7, [Ljava/lang/String;

    .line 612
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Genres;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_2

    .line 615
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 616
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "_id"

    .line 618
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "name"

    .line 619
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 621
    :goto_0
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 622
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedData;

    .line 623
    invoke-virtual {v5}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedData;->getContainerUri()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    const/4 v7, 0x5

    .line 626
    invoke-virtual {v5}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedData;->getContainerUri()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedData;->getTimestamp()I

    move-result v9

    .line 627
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-wide/16 v13, -0x1

    const/4 v5, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v6, p0

    move-object v15, v5

    .line 624
    invoke-direct/range {v6 .. v17}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->createNewRow(ILjava/lang/String;IJLjava/lang/String;JLjava/lang/String;ZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v5

    .line 629
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 631
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    move-object/from16 v15, p0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_2
    :goto_1
    if-eqz v2, :cond_4

    .line 635
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 637
    :cond_3
    throw v0

    :cond_4
    :goto_3
    return-object v1
.end method

.method private getIds(Ljava/util/List;Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$UriParseType;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedData;",
            ">;",
            "Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$UriParseType;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedData;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 362
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 363
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedData;

    .line 364
    invoke-virtual {v1}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedData;->getContainerUri()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 365
    invoke-virtual {v1}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedData;->getContainerUri()Ljava/lang/String;

    move-result-object v2

    .line 367
    sget-object v3, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$2;->$SwitchMap$com$sonyericsson$music$landingpage$provider$RecentlyPlayedProvider$UriParseType:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 376
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_1

    .line 372
    :pswitch_0
    invoke-static {v2}, Lcom/sonyericsson/music/common/DBUtils;->parseMembersContainerId(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_1

    .line 369
    :pswitch_1
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getPlaylistIdParam(Landroid/net/Uri;)I

    move-result v2

    int-to-long v2, v2

    .line 379
    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getPlaylistData(Landroid/content/Context;Ljava/util/HashMap;)Ljava/util/ArrayList;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedData;",
            ">;)",
            "Ljava/util/ArrayList<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p2

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 551
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_5

    const/4 v2, 0x4

    .line 553
    new-array v5, v2, [Ljava/lang/String;

    const-string v2, "_id"

    const/4 v3, 0x0

    aput-object v2, v5, v3

    const-string v2, "name"

    const/4 v4, 0x1

    aput-object v2, v5, v4

    const/4 v2, 0x2

    const-string v4, "path"

    aput-object v4, v5, v2

    const/4 v2, 0x3

    const-string v4, "mediastore_id"

    aput-object v4, v5, v2

    .line 558
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 560
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v6, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    add-int/lit8 v8, v6, 0x1

    .line 561
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    move v6, v8

    goto :goto_0

    .line 563
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 564
    invoke-static {v3}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri(Z)Landroid/net/Uri;

    move-result-object v3

    sget-object v6, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PLAYLIST_IDS:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    invoke-static {v3, v6, v2}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->appendParams(Landroid/net/Uri;Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v4

    move-object v4, v2

    .line 563
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_3

    .line 566
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 567
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "_id"

    .line 569
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "name"

    .line 570
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "path"

    .line 571
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "mediastore_id"

    .line 572
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 575
    :cond_1
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 576
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedData;

    if-eqz v7, :cond_2

    .line 577
    invoke-virtual {v7}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedData;->getContainerUri()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    .line 580
    invoke-virtual {v7}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedData;->getContainerUri()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedData;->getTimestamp()I

    move-result v10

    .line 581
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    int-to-long v14, v7

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 582
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v7, p0

    .line 578
    invoke-direct/range {v7 .. v18}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->createNewRow(ILjava/lang/String;IJLjava/lang/String;JLjava/lang/String;ZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v7

    .line 583
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v7, :cond_1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_3
    :goto_1
    if-eqz v2, :cond_5

    .line 589
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 591
    :cond_4
    throw v0

    :cond_5
    :goto_3
    return-object v1
.end method

.method private getReturnCursorFromSortedMap(Ljava/util/SortedMap;I)Landroid/database/MatrixCursor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/Object;",
            ">;>;I)",
            "Landroid/database/MatrixCursor;"
        }
    .end annotation

    .line 336
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-static {}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->getColumns()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 338
    invoke-interface {p1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object p1

    .line 339
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    .line 341
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    if-ge v1, p2, :cond_2

    .line 343
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 345
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 347
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    if-ge v1, p2, :cond_0

    .line 348
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    if-eqz v3, :cond_1

    .line 350
    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getSmartPlaylistData(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedData;",
            ">;)",
            "Ljava/util/ArrayList<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_5

    .line 645
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 646
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 650
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 651
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 653
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedData;

    .line 654
    invoke-virtual {v4}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedData;->getContainerUri()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 656
    invoke-virtual {v4}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedData;->getContainerUri()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getSmartPlaylistType(Landroid/net/Uri;)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 659
    invoke-virtual {v5}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getProviderTypeId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 661
    invoke-virtual {v5}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getProviderTypeId()I

    move-result v6

    new-instance v7, Landroid/util/Pair;

    invoke-direct {v7, v5, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 667
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    const/4 v4, 0x0

    .line 669
    invoke-static {v4}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri(Z)Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PLAYLIST_TYPE:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    new-array v3, v3, [Ljava/lang/String;

    .line 670
    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 669
    invoke-static {v5, v6, v1}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->appendParams(Landroid/net/Uri;Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 671
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v1, 0x1

    new-array v9, v1, [Ljava/lang/String;

    const-string v1, "smart_playlist_type"

    aput-object v1, v9, v4

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_6

    :try_start_0
    const-string v3, "smart_playlist_type"

    .line 676
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 680
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 682
    :cond_2
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 685
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    if-eqz v4, :cond_3

    .line 687
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-virtual {v5}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getNameResourceId()I

    move-result v5

    move-object/from16 v6, p1

    invoke-virtual {v6, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v8, 0x1

    .line 688
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedData;

    .line 690
    invoke-virtual {v5}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedData;->getContainerUri()Ljava/lang/String;

    move-result-object v9

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedData;

    invoke-virtual {v4}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedData;->getTimestamp()I

    move-result v10

    const-wide/16 v11, -0x1

    const-wide/16 v14, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v7, p0

    .line 688
    invoke-direct/range {v7 .. v18}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->createNewRow(ILjava/lang/String;IJLjava/lang/String;JLjava/lang/String;ZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v4

    .line 693
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object/from16 v6, p1

    .line 695
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_2

    .line 698
    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 699
    throw v0

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_2
    return-object v0
.end method

.method private ignoredContentValueKeys(Landroid/content/ContentValues;)[Ljava/lang/String;
    .locals 3

    .line 775
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 777
    invoke-virtual {p1}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 778
    sget-object v2, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->TYPE:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

    invoke-virtual {v2}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->getColumnName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->CONTAINER_URI:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

    .line 779
    invoke-virtual {v2}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->getColumnName()Ljava/lang/String;

    move-result-object v2

    .line 778
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->TIMESTAMP:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

    .line 780
    invoke-virtual {v2}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->getColumnName()Ljava/lang/String;

    move-result-object v2

    .line 779
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 781
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 785
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method private registerMediaExternalContentObserver()V
    .locals 5

    .line 159
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->mMediaContentObserverExternalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 160
    :try_start_0
    iget-boolean v1, p0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->mRegisteredMediaExternalContentObserver:Z

    if-nez v1, :cond_0

    .line 161
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 163
    sget-object v2, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->mMediaContentObserverExternal:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$MediaExternalContentObserver;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 166
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->mMediaContentObserverExternal:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$MediaExternalContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 169
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->mMediaContentObserverExternal:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$MediaExternalContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/4 v1, 0x1

    .line 172
    iput-boolean v1, p0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->mRegisteredMediaExternalContentObserver:Z

    .line 174
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private registerObservers()V
    .locals 4

    .line 125
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->mMediaContentObserverExternalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 126
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 128
    iget-boolean v2, p0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->mMediaStoreReceiverRegistered:Z

    if-nez v2, :cond_0

    .line 129
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.MEDIA_SCANNER_FINISHED"

    .line 130
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.MEDIA_SCANNER_STARTED"

    .line 131
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "file"

    .line 132
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 133
    iget-object v3, p0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->mMediaStoreScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v2, 0x1

    .line 134
    iput-boolean v2, p0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->mMediaStoreReceiverRegistered:Z

    .line 137
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/music/common/DBUtils;->isMediaScannerScanning(Landroid/content/ContentResolver;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 141
    invoke-direct {p0}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->registerMediaExternalContentObserver()V

    .line 143
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static setTestDb(Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedDatabaseHelper;)V
    .locals 0

    .line 75
    sput-object p0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->sTestDB:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedDatabaseHelper;

    return-void
.end method

.method private sortItemsDescending(Ljava/util/SortedMap;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 311
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 312
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 313
    sget-object v1, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->TIMESTAMP:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

    invoke-virtual {v1}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->getIndex()I

    move-result v1

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Integer;

    .line 314
    invoke-interface {p1, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_0

    .line 316
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 317
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    invoke-interface {p1, v1, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 320
    :cond_0
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private unregisterMediaExternalContentObserver()V
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->mMediaContentObserverExternalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 179
    :try_start_0
    iget-boolean v1, p0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->mRegisteredMediaExternalContentObserver:Z

    if-eqz v1, :cond_0

    .line 180
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->mMediaContentObserverExternal:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$MediaExternalContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v1, 0x0

    .line 182
    iput-boolean v1, p0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->mRegisteredMediaExternalContentObserver:Z

    .line 184
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private unregisterObservers()V
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->mMediaContentObserverExternalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 148
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 149
    iget-boolean v2, p0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->mMediaStoreReceiverRegistered:Z

    if-eqz v2, :cond_0

    .line 150
    iget-object v2, p0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->mMediaStoreScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    .line 151
    iput-boolean v1, p0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->mMediaStoreReceiverRegistered:Z

    .line 154
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->unregisterMediaExternalContentObserver()V

    .line 155
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateMediaStorePlaylistContentUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 14

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 907
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/music/common/MediaStoreUriMatcher;->getUriType(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 909
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/music/common/MediaStoreUriMatcher;->getUriType(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    .line 912
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 918
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 917
    invoke-static {v1, v2}, Lcom/sonyericsson/music/metadata/provider/MediastorePlaylistUtils;->convertMediaStorePlaylistUriToMusicInfoPlaylistUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 922
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 923
    sget-object v3, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->CONTAINER_URI:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

    invoke-virtual {v3}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->getColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->CONTAINER_URI:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

    invoke-virtual {v4}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->getColumnName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " = ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 926
    new-array v13, v4, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v5, 0x0

    aput-object p1, v13, v5

    .line 937
    :try_start_0
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->mDatabaseHelper:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedDatabaseHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v6, "recently_played"

    const/4 v7, 0x0

    .line 938
    new-array v9, v4, [Ljava/lang/String;

    .line 939
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v5

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, p1

    move-object v8, v3

    .line 938
    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_1

    .line 940
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_1

    const-string v1, "recently_played"

    .line 941
    invoke-virtual {p1, v1, v3, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "recently_played"

    .line 945
    invoke-virtual {p1, v0, v2, v3, v13}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    :goto_0
    if-eqz v4, :cond_2

    .line 950
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0

    :catchall_0
    move-exception p1

    move-object v0, v4

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 952
    :cond_3
    throw p1

    :cond_4
    if-eqz p1, :cond_5

    .line 958
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :cond_5
    return-object v0
.end method

.method private verifyContentValueKeys(Landroid/content/ContentValues;)Z
    .locals 1

    .line 789
    sget-object v0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->TYPE:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

    invoke-virtual {v0}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->getColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->CONTAINER_URI:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

    .line 790
    invoke-virtual {v0}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->getColumnName()Ljava/lang/String;

    move-result-object v0

    .line 789
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const-string v0, "register_observer"

    .line 813
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 816
    invoke-direct {p0}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->unregisterObservers()V

    const/4 p1, 0x0

    return p1

    .line 820
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->mDatabaseHelper:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedDatabaseHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v0, "recently_played"

    .line 822
    invoke-virtual {p1, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 826
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 827
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedStore;->getRecentlyPlayedContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p3

    const/4 v0, 0x0

    .line 826
    invoke-virtual {p2, p3, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_1
    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 189
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4

    const-string v0, "register_observer"

    .line 728
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 731
    invoke-direct {p0}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->registerObservers()V

    return-object v0

    .line 748
    :cond_0
    invoke-direct {p0, p2}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->verifyContentValueKeys(Landroid/content/ContentValues;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 751
    sget-object p1, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->CONTAINER_URI:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

    invoke-virtual {p1}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->getColumnName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 752
    sget-object p1, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->CONTAINER_URI:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

    .line 753
    invoke-virtual {p1}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->getColumnName()Ljava/lang/String;

    move-result-object p1

    .line 752
    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 754
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->deleteMediaStorePlaylistContentUri(Ljava/lang/String;)V

    .line 757
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->mDatabaseHelper:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedDatabaseHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 758
    invoke-direct {p0, p2}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->createContentValues(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object p2

    const-string v1, "recently_played"

    const/4 v2, 0x5

    .line 759
    invoke-virtual {p1, v1, v0, p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p1

    const-wide/16 v1, -0x1

    cmp-long v3, p1, v1

    if-eqz v3, :cond_2

    .line 762
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedStore;->getRecentlyPlayedContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p1

    .line 763
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    :cond_2
    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public onCreate()Z
    .locals 2

    .line 109
    sget-object v0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->sTestDB:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedDatabaseHelper;

    if-eqz v0, :cond_0

    .line 110
    iput-object v0, p0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->mDatabaseHelper:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedDatabaseHelper;

    goto :goto_0

    .line 112
    :cond_0
    new-instance v0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedDatabaseHelper;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->mDatabaseHelper:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedDatabaseHelper;

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "max_number_of_items"

    .line 207
    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1e

    if-eqz v3, :cond_0

    .line 211
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 214
    :cond_0
    iget-object v3, v1, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->mDatabaseHelper:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedDatabaseHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "recently_played"

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v12, p5

    .line 215
    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_4

    .line 218
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v2, "type"

    .line 219
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v5, "container_uri"

    .line 220
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "timestamp"

    .line 221
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 225
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 226
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 227
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 228
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 229
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 230
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 232
    :cond_1
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 233
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 234
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    packed-switch v13, :pswitch_data_0

    goto :goto_0

    .line 261
    :pswitch_0
    new-instance v13, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedData;

    invoke-direct {v13, v15, v14}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedData;-><init>(Ljava/lang/String;I)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 243
    :pswitch_1
    new-instance v13, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedData;

    invoke-direct {v13, v15, v14}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedData;-><init>(Ljava/lang/String;I)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 240
    :pswitch_2
    new-instance v13, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedData;

    invoke-direct {v13, v15, v14}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedData;-><init>(Ljava/lang/String;I)V

    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 237
    :pswitch_3
    new-instance v13, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedData;

    invoke-direct {v13, v15, v14}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedData;-><init>(Ljava/lang/String;I)V

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 246
    :pswitch_4
    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 248
    invoke-static {v13}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getSmartPlaylistType(Landroid/net/Uri;)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    move-result-object v13

    if-eqz v13, :cond_2

    .line 250
    new-instance v13, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedData;

    invoke-direct {v13, v15, v14}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedData;-><init>(Ljava/lang/String;I)V

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 252
    :cond_2
    invoke-direct {v1, v15}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->updateMediaStorePlaylistContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    if-eqz v13, :cond_3

    .line 254
    new-instance v15, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedData;

    .line 255
    invoke-virtual {v13}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v15, v13, v14}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedData;-><init>(Ljava/lang/String;I)V

    .line 254
    invoke-interface {v10, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    :cond_3
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-nez v13, :cond_1

    .line 268
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v5, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$UriParseType;->DEFAULT:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$UriParseType;

    invoke-direct {v1, v7, v5}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->getIds(Ljava/util/List;Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$UriParseType;)Ljava/util/HashMap;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->getAlbumData(Landroid/content/Context;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v2

    .line 269
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$UriParseType;->DEFAULT:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$UriParseType;

    invoke-direct {v1, v8, v6}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->getIds(Ljava/util/List;Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$UriParseType;)Ljava/util/HashMap;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->getArtistData(Landroid/content/Context;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v5

    .line 270
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$UriParseType;->DEFAULT:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$UriParseType;

    invoke-direct {v1, v9, v7}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->getIds(Ljava/util/List;Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$UriParseType;)Ljava/util/HashMap;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->getFolderData(Landroid/content/Context;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v6

    .line 271
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    sget-object v8, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$UriParseType;->PLAYLIST:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$UriParseType;

    .line 272
    invoke-direct {v1, v10, v8}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->getIds(Ljava/util/List;Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$UriParseType;)Ljava/util/HashMap;

    move-result-object v8

    .line 271
    invoke-direct {v1, v7, v8}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->getPlaylistData(Landroid/content/Context;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v7

    .line 273
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v1, v8, v11}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->getSmartPlaylistData(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v8

    .line 274
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    sget-object v10, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$UriParseType;->GENRE:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$UriParseType;

    invoke-direct {v1, v12, v10}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->getIds(Ljava/util/List;Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$UriParseType;)Ljava/util/HashMap;

    move-result-object v10

    invoke-direct {v1, v9, v10}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->getGenreData(Landroid/content/Context;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v9

    .line 277
    new-instance v10, Ljava/util/TreeMap;

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 278
    invoke-direct {v1, v10, v2}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->sortItemsDescending(Ljava/util/SortedMap;Ljava/util/List;)V

    .line 279
    invoke-direct {v1, v10, v5}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->sortItemsDescending(Ljava/util/SortedMap;Ljava/util/List;)V

    .line 280
    invoke-direct {v1, v10, v6}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->sortItemsDescending(Ljava/util/SortedMap;Ljava/util/List;)V

    .line 281
    invoke-direct {v1, v10, v7}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->sortItemsDescending(Ljava/util/SortedMap;Ljava/util/List;)V

    .line 282
    invoke-direct {v1, v10, v8}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->sortItemsDescending(Ljava/util/SortedMap;Ljava/util/List;)V

    .line 283
    invoke-direct {v1, v10, v9}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->sortItemsDescending(Ljava/util/SortedMap;Ljava/util/List;)V

    .line 286
    invoke-direct {v1, v10, v4}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->getReturnCursorFromSortedMap(Ljava/util/SortedMap;I)Landroid/database/MatrixCursor;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_4
    :goto_1
    if-eqz v3, :cond_5

    .line 290
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz v2, :cond_6

    .line 297
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/database/MatrixCursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_6
    return-object v2

    :catchall_1
    move-exception v0

    move-object v3, v2

    :goto_2
    if-eqz v3, :cond_7

    .line 290
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 292
    :cond_7
    throw v0

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public shutdown()V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->mDatabaseHelper:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedDatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 121
    invoke-super {p0}, Landroid/content/ContentProvider;->shutdown()V

    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 839
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Update not supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
