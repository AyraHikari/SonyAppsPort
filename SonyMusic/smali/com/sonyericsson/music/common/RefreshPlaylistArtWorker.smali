.class public Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;
.super Ljava/lang/Object;
.source "RefreshPlaylistArtWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;,
        Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$RefreshPlaylistArtRunner;
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

.field public static final PLAYLIST_ART_UPDATE_TYPE:Ljava/lang/String; = "com.sonyericsson.music.PLAYLIST_ART_UPDATE_TYPE"

.field public static final PLAYLIST_ART_UPDATE_TYPE_EXTRA:Ljava/lang/String; = "com.sonyericsson.music.PLAYLIST_ART_UPDATE_TYPE_EXTRA"

.field private static sIsUiProcess:Ljava/lang/Boolean;

.field private static final sPlaylistArtUpdateDates:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRefreshPlaylistArtReceiver:Landroid/content/BroadcastReceiver;

.field private static sWorkExecutor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 49
    new-instance v0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$1;

    invoke-direct {v0}, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$1;-><init>()V

    sput-object v0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->sRefreshPlaylistArtReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x4

    .line 150
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

    sput-object v1, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->LOCAL_PLAYLISTS_PROJECTION:[Ljava/lang/String;

    .line 157
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v3

    const-string v2, "album"

    aput-object v2, v1, v4

    const-string v2, "artist"

    aput-object v2, v1, v5

    const-string v2, "album_id"

    aput-object v2, v1, v6

    sput-object v1, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->LOCAL_PLAYLIST_TRACKS_COLUMNS:[Ljava/lang/String;

    .line 164
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "album"

    aput-object v1, v0, v4

    const-string v1, "artist"

    aput-object v1, v0, v5

    const-string v1, "album_id"

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->GENRE_TRACKS_COLUMNS:[Ljava/lang/String;

    .line 171
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    sput-object v0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->sPlaylistArtUpdateDates:Landroidx/collection/SparseArrayCompat;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p1, p0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->mContext:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$1;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;Landroid/content/Intent;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->onHandleWork(Landroid/content/Intent;)V

    return-void
.end method

.method private cleanupGenreIds(Ljava/util/HashMap;)V
    .locals 4
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

    .line 767
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 769
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 770
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 771
    iget-object v1, p0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->mContext:Landroid/content/Context;

    .line 772
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$GenreArtUri;->getUriWithId(Landroid/content/Context;J)Landroid/net/Uri;

    move-result-object v0

    .line 773
    iget-object v1, p0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

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

    .line 482
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 484
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 485
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 486
    iget-object v1, p0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->mContext:Landroid/content/Context;

    .line 487
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$LocalPlaylistArtUri;->getUriWithId(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 488
    iget-object v1, p0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static declared-synchronized executeTask(Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$RefreshPlaylistArtRunner;)V
    .locals 2

    const-class v0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;

    monitor-enter v0

    .line 96
    :try_start_0
    sget-object v1, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->sWorkExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_0

    .line 97
    sget-object v1, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->sWorkExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getAllArtUris(Landroid/net/Uri;)Ljava/util/HashMap;
    .locals 9
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

    .line 638
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_3

    .line 639
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "playlist_id"

    .line 640
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v1, "playlist_art_uri"

    .line 641
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 642
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 644
    :cond_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 645
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 646
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
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

    move-object v8, v0

    move-object v0, p1

    move-object p1, v8

    :goto_0
    if-eqz p1, :cond_1

    .line 652
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 654
    :cond_1
    throw v0

    :cond_2
    move-object p1, v0

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    .line 652
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v0
.end method

.method private getArtUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8

    const-string v0, ""

    .line 661
    iget-object v1, p0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 664
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "playlist_art_uri"

    .line 665
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 666
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 669
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 670
    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private getResponseAction(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_2

    const-string v0, "com.sonyericsson.music.PLAYLIST_ART_UPDATE_ALL"

    .line 323
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "com.sonyericsson.music.PLAYLIST_ART_UPDATED_ALL"

    return-object p1

    :cond_0
    const-string v0, "com.sonyericsson.music.PLAYLIST_ART_UPDATE"

    .line 325
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "com.sonyericsson.music.PLAYLIST_ART_UPDATED"

    return-object p1

    :cond_1
    const-string v0, "com.sonyericsson.music.PLAYLIST_ART_UPDATE_TYPE"

    .line 327
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "com.sonyericsson.music.PLAYLIST_ART_UPDATED_TYPE"

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private static declared-synchronized initialise(Landroid/content/Context;)V
    .locals 4

    const-class v0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;

    monitor-enter v0

    .line 79
    :try_start_0
    sget-object v1, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->sWorkExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/sonymobile/music/common/ProcessUtils;->isRunningInServiceProcess(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->sWorkExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v1, 0x1

    .line 81
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->sIsUiProcess:Ljava/lang/Boolean;

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v1, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->sRefreshPlaylistArtReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.sonyericsson.music.PLAYLIST_ART_UPDATE_TYPE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 86
    :cond_0
    sget-object p0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->sIsUiProcess:Ljava/lang/Boolean;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 87
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->sIsUiProcess:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private onHandleWork(Landroid/content/Intent;)V
    .locals 6

    .line 230
    iget-object v0, p0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/music/common/PermissionUtils;->isReadStoragePermissionGranted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 234
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    if-eqz p1, :cond_2

    .line 235
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v0

    .line 236
    :goto_1
    invoke-direct {p0, v1}, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->getResponseAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_a

    if-eqz v3, :cond_a

    const-string v4, "com.sonyericsson.music.PLAYLIST_ART_UPDATE_ALL"

    .line 241
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

    .line 264
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    if-eqz v2, :cond_9

    .line 265
    invoke-static {v2}, Lcom/sonyericsson/music/common/MediaStoreUriMatcher;->getUriType(Landroid/net/Uri;)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    .line 290
    invoke-static {v2}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getSmartPlaylistType(Landroid/net/Uri;)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 292
    sget-object v0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$2;->$SwitchMap$com$sonyericsson$music$common$SmartPlaylistUtils$SmartPlaylistType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_4

    .line 280
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->refreshLocalPlaylist(Landroid/net/Uri;)Z

    move-result v5

    goto/16 :goto_4

    .line 285
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->refreshGenre(Landroid/net/Uri;)Z

    move-result v5

    goto/16 :goto_4

    .line 268
    :pswitch_2
    iget-object p1, p0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->mContext:Landroid/content/Context;

    .line 269
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/sonyericsson/music/common/FolderUtils;->getFolderTracksIds(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    .line 270
    iget-object v0, p0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->mContext:Landroid/content/Context;

    .line 271
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/music/common/FolderUtils;->getAllTracksIds(Landroid/content/ContentResolver;)Ljava/util/HashMap;

    move-result-object v0

    .line 272
    iget-object v1, p0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->mContext:Landroid/content/Context;

    .line 273
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$FolderArtUri;->getUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    .line 274
    invoke-direct {p0, v1}, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->getAllArtUris(Landroid/net/Uri;)Ljava/util/HashMap;

    move-result-object v1

    .line 275
    invoke-direct {p0, v2, p1, v0, v1}, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->refreshFolderArt(Landroid/net/Uri;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)Z

    move-result v5

    goto :goto_4

    .line 300
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->refreshSmartPlaylistArt(Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Z

    move-result v5

    goto :goto_4

    :cond_4
    :goto_2
    const-string v0, "com.sonyericsson.music.PLAYLIST_ART_UPDATE_ALL"

    .line 243
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 244
    sget-object p1, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;->PLAYLISTS:Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;

    invoke-virtual {p1}, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;->getPlaylistArtTypeValue()I

    move-result p1

    sget-object v0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;->SMARTPLAYLIST:Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;

    .line 245
    invoke-virtual {v0}, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;->getPlaylistArtTypeValue()I

    move-result v0

    or-int/2addr p1, v0

    sget-object v0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;->FOLDERS:Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;

    .line 246
    invoke-virtual {v0}, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;->getPlaylistArtTypeValue()I

    move-result v0

    or-int/2addr p1, v0

    sget-object v0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;->GENRES:Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;

    .line 247
    invoke-virtual {v0}, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;->getPlaylistArtTypeValue()I

    move-result v0

    or-int/2addr p1, v0

    goto :goto_3

    :cond_5
    const-string v0, "com.sonyericsson.music.PLAYLIST_ART_UPDATE_TYPE_EXTRA"

    .line 249
    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 252
    :goto_3
    sget-object v0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;->PLAYLISTS:Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;->isTypeSet(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 253
    invoke-direct {p0}, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->refreshLocalPlaylists()Z

    move-result v0

    or-int/2addr v5, v0

    .line 255
    :cond_6
    sget-object v0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;->SMARTPLAYLIST:Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;->isTypeSet(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 256
    invoke-direct {p0}, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->refreshSmartPlaylists()Z

    move-result v0

    or-int/2addr v5, v0

    .line 258
    :cond_7
    sget-object v0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;->FOLDERS:Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;->isTypeSet(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 259
    invoke-direct {p0}, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->refreshFoldersArt()Z

    move-result v0

    or-int/2addr v5, v0

    .line 261
    :cond_8
    sget-object v0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;->GENRES:Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;->isTypeSet(I)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 262
    invoke-direct {p0}, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->refreshGenres()Z

    move-result p1

    or-int/2addr p1, v5

    move v5, p1

    :cond_9
    :goto_4
    if-eqz v5, :cond_a

    .line 315
    iget-object p1, p0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    .line 316
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

    .line 396
    iget-object v0, p0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_3

    .line 399
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    .line 403
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 402
    invoke-static {v0, v1}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$FolderArtUri;->getUriWithId(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    if-eqz p4, :cond_0

    .line 406
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

    .line 409
    :goto_0
    invoke-static {v0, p2, p3, p1}, Lcom/sonyericsson/music/common/AlbumArtUtils;->createFolderBitmapUri(Landroid/content/Context;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 411
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_1
    move-object p3, p2

    .line 414
    :goto_1
    invoke-static {p4, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 415
    new-instance p3, Landroid/content/ContentValues;

    invoke-direct {p3}, Landroid/content/ContentValues;-><init>()V

    const-string p4, "playlist_art_uri"

    if-eqz p1, :cond_2

    .line 417
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    const-string p1, ""

    .line 416
    :goto_2
    invoke-virtual {p3, p4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    iget-object p1, p0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

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

    .line 336
    iget-object v0, p0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->mContext:Landroid/content/Context;

    .line 337
    invoke-static {v0}, Lcom/sonyericsson/music/common/FolderUtils;->getFolderSet(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    .line 339
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 340
    invoke-static {v0}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$FolderArtUri;->getUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    .line 341
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/music/common/Folder;

    .line 342
    invoke-virtual {v5}, Lcom/sonyericsson/music/common/Folder;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v10, 0x1

    .line 344
    new-array v6, v10, [Ljava/lang/String;

    const-string v4, "playlist_id"

    aput-object v4, v6, v2

    const/4 v11, 0x0

    .line 347
    :try_start_0
    iget-object v4, p0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

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

    .line 351
    :cond_1
    :goto_1
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "playlist_id"

    .line 353
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 352
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 354
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 355
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "playlist_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 356
    iget-object v7, p0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

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

    .line 361
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->mContext:Landroid/content/Context;

    .line 362
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v11}, Lcom/sonyericsson/music/common/FolderUtils;->getFolderTracksIds(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 363
    iget-object v2, p0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->mContext:Landroid/content/Context;

    .line 364
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/music/common/FolderUtils;->getAllTracksIds(Landroid/content/ContentResolver;)Ljava/util/HashMap;

    move-result-object v2

    .line 365
    iget-object v3, p0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$FolderArtUri;->getUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v3

    .line 366
    invoke-direct {p0, v3}, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->getAllArtUris(Landroid/net/Uri;)Ljava/util/HashMap;

    move-result-object v3

    .line 368
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

    .line 370
    invoke-virtual {v6}, Lcom/sonyericsson/music/common/Folder;->getId()I

    move-result v6

    int-to-long v8, v6

    invoke-static {v7, v8, v9}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Files;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v6

    .line 369
    invoke-direct {p0, v6, v0, v2, v3}, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->refreshFolderArt(Landroid/net/Uri;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)Z

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

    .line 376
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v4, v11

    :goto_5
    if-eqz v4, :cond_6

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 378
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

    .line 708
    invoke-static {p1}, Lcom/sonyericsson/music/common/MediaStoreUriMatcher;->getUriType(Landroid/net/Uri;)I

    move-result v2

    const-wide/16 v3, -0x1

    if-ne v1, v2, :cond_1

    .line 709
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/music/common/DBUtils;->parseMembersContainerId(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_0

    .line 711
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 714
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

    .line 722
    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->refreshGenreArt(J)Z

    move-result v0

    :cond_3
    return v0
.end method

.method private refreshGenreArt(J)Z
    .locals 13

    const-string v0, "external"

    .line 781
    invoke-static {v0, p1, p2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v2

    .line 783
    iget-object v0, p0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->GENRE_TRACKS_COLUMNS:[Ljava/lang/String;

    const-string v6, "title_key"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 788
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 789
    iget-object v1, p0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$GenreArtUri;->getUriWithId(Landroid/content/Context;J)Landroid/net/Uri;

    move-result-object v12

    const-string v9, "artist"

    const-string v10, "album"

    const-string v11, "album_id"

    move-object v7, p0

    move-object v8, v0

    .line 790
    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->updateArtUriFromCursor(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, p1

    .line 795
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 796
    throw p1

    :cond_1
    :goto_0
    return v1
.end method

.method private refreshGenres()Z
    .locals 10

    const/4 v0, 0x0

    .line 735
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->mContext:Landroid/content/Context;

    .line 736
    invoke-static {v1}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$GenreArtUri;->getUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    .line 735
    invoke-direct {p0, v1}, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->getAllArtUris(Landroid/net/Uri;)Ljava/util/HashMap;

    move-result-object v1

    const/4 v2, 0x1

    .line 738
    new-array v5, v2, [Ljava/lang/String;

    const-string v2, "_id"

    const/4 v9, 0x0

    aput-object v2, v5, v9

    .line 739
    iget-object v2, p0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Genres;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 742
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "_id"

    .line 743
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 746
    :cond_0
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    if-eqz v1, :cond_1

    .line 748
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    :cond_1
    invoke-direct {p0, v3, v4}, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->refreshGenreArt(J)Z

    move-result v3

    or-int/2addr v9, v3

    .line 751
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    :cond_2
    if-eqz v0, :cond_3

    .line 756
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 761
    :cond_3
    invoke-direct {p0, v1}, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->cleanupGenreIds(Ljava/util/HashMap;)V

    return v9

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    .line 756
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 758
    :cond_4
    throw v1

    return-void
.end method

.method private refreshLocalPlaylist(Landroid/net/Uri;)Z
    .locals 7

    .line 430
    iget-object v0, p0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->LOCAL_PLAYLISTS_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 432
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 433
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->refreshPlaylist(Landroid/database/Cursor;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_0

    .line 437
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 439
    :cond_0
    throw v0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 437
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return v0
.end method

.method private refreshLocalPlaylistArt(I)Z
    .locals 12

    .line 602
    invoke-static {p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$Members;->getContentUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 603
    iget-object v0, p0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->LOCAL_PLAYLIST_TRACKS_COLUMNS:[Ljava/lang/String;

    const-string v5, "play_order"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 608
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 609
    iget-object v1, p0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$LocalPlaylistArtUri;->getUriWithId(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v11

    const-string v8, "artist"

    const-string v9, "album"

    const-string v10, "album_id"

    move-object v6, p0

    move-object v7, v0

    .line 611
    invoke-direct/range {v6 .. v11}, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->updateArtUriFromCursor(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, p1

    .line 617
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 618
    throw p1

    :cond_1
    :goto_0
    return v1
.end method

.method private refreshLocalPlaylists()Z
    .locals 9

    const/4 v0, 0x0

    .line 450
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->mContext:Landroid/content/Context;

    .line 451
    invoke-static {v1}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$LocalPlaylistArtUri;->getUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    .line 450
    invoke-direct {p0, v1}, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->getAllArtUris(Landroid/net/Uri;)Ljava/util/HashMap;

    move-result-object v1

    .line 453
    sget-object v2, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;->PLAYLIST_TYPE_ALL_NOT_SMART:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;

    invoke-static {v2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri(Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;)Landroid/net/Uri;

    move-result-object v4

    .line 455
    iget-object v2, p0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->LOCAL_PLAYLISTS_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "COALESCE (date_updated, date_created, date_played) DESC "

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 457
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "_id"

    .line 458
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    :cond_0
    if-eqz v1, :cond_1

    .line 462
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    :cond_1
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->refreshPlaylist(Landroid/database/Cursor;)Z

    move-result v4

    or-int/2addr v2, v4

    .line 466
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    :cond_2
    if-eqz v0, :cond_3

    .line 471
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 476
    :cond_3
    invoke-direct {p0, v1}, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->cleanupPlaylistIds(Ljava/util/HashMap;)V

    return v2

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    .line 471
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 473
    :cond_4
    throw v1

    return-void
.end method

.method private declared-synchronized refreshPlaylist(Landroid/database/Cursor;)Z
    .locals 8

    monitor-enter p0

    :try_start_0
    const-string v0, "smart_playlist_type"

    .line 500
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v1, "date_updated"

    .line 501
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "date_created"

    .line 502
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "_id"

    .line 503
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 504
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sget-object v4, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$PlaylistProviderTypeIndex;->SMART_PLAYLIST_TYPE_NONE:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$PlaylistProviderTypeIndex;

    .line 505
    invoke-virtual {v4}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$PlaylistProviderTypeIndex;->getId()I

    move-result v4

    const/4 v5, 0x0

    if-eq v0, v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 506
    :goto_0
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 507
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 508
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 509
    sget-object p1, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->sPlaylistArtUpdateDates:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {p1, v3}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    .line 512
    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long p1, v0, v6

    if-lez p1, :cond_2

    .line 513
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    .line 514
    sget-object p1, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->sPlaylistArtUpdateDates:Landroidx/collection/SparseArrayCompat;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 515
    invoke-direct {p0, v3}, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->refreshLocalPlaylistArt(I)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 517
    :cond_2
    monitor-exit p0

    return v5

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private refreshSmartPlaylistArt(Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Z
    .locals 13

    .line 539
    iget-object v0, p0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 541
    sget-object v1, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$2;->$SwitchMap$com$sonyericsson$music$common$SmartPlaylistUtils$SmartPlaylistType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, -0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    move-object v0, v3

    move-object v6, v0

    goto :goto_0

    .line 563
    :pswitch_0
    iget-object v1, p0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$SmartPlaylistArtUri;->getFavouritesUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    .line 564
    invoke-static {v0}, Lcom/sonyericsson/music/common/DBUtils;->getFavouritesProperties(Landroid/content/ContentResolver;)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;

    move-result-object v0

    move-object v6, v1

    goto :goto_0

    .line 550
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$SmartPlaylistArtUri;->getNewlyAddedUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    .line 551
    invoke-static {v3, v2}, Lcom/sonyericsson/music/common/DBUtils;->getNewlyAddedDescProperty([Ljava/lang/String;I)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;

    move-result-object v1

    move-object v6, v0

    move-object v0, v1

    goto :goto_0

    .line 543
    :pswitch_2
    iget-object v1, p0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$SmartPlaylistArtUri;->getRecentlyPlayedUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    .line 544
    sget-object v4, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->RECENTLY_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-static {v0, v3, v2, v4}, Lcom/sonyericsson/music/common/DBUtils;->getPlayedPlaylistDescProperty(Landroid/content/ContentResolver;[Ljava/lang/String;ILcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;

    move-result-object v0

    move-object v6, v1

    goto :goto_0

    .line 556
    :pswitch_3
    iget-object v1, p0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$SmartPlaylistArtUri;->getMostPlayedUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    .line 557
    sget-object v4, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->MOST_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-static {v0, v3, v2, v4}, Lcom/sonyericsson/music/common/DBUtils;->getPlayedPlaylistDescProperty(Landroid/content/ContentResolver;[Ljava/lang/String;ILcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;

    move-result-object v0

    move-object v6, v1

    :goto_0
    if-eqz v0, :cond_0

    .line 570
    invoke-virtual {v0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->getTracksUri()Landroid/net/Uri;

    move-result-object v1

    move-object v8, v1

    goto :goto_1

    :cond_0
    move-object v8, v3

    :goto_1
    const/4 v1, 0x0

    if-eqz v6, :cond_2

    if-eqz v8, :cond_2

    if-eqz v0, :cond_2

    .line 576
    invoke-virtual {v0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->hasLimit()Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v2, v4, :cond_1

    .line 577
    iget-object v2, p0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->getProjection()[Ljava/lang/String;

    move-result-object v4

    .line 578
    invoke-virtual {v0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->getWhere()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->getWhereArgs()[Ljava/lang/String;

    move-result-object v7

    .line 579
    invoke-virtual {v0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->getOrderBy()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->getLimit()I

    move-result v0

    .line 578
    invoke-static {v5, v7, v9, v0}, Lcom/sonyericsson/music/common/DBUtils;->createSqlQueryBundle(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    .line 577
    invoke-virtual {v2, v8, v4, v0, v3}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    move-object v7, v0

    goto :goto_2

    .line 581
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->getProjection()[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->getWhere()Ljava/lang/String;

    move-result-object v10

    .line 582
    invoke-virtual {v0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->getWhereArgs()[Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->getOrderBy()Ljava/lang/String;

    move-result-object v12

    .line 581
    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v7, v0

    :goto_2
    if-eqz v7, :cond_2

    .line 588
    :try_start_0
    invoke-static {p1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils;->getArtistColumn(Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Ljava/lang/String;

    move-result-object v3

    .line 589
    invoke-static {p1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils;->getAlbumColumn(Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Ljava/lang/String;

    move-result-object v4

    .line 590
    invoke-static {p1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils;->getAlbumIdColumn(Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v2, v7

    .line 587
    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->updateArtUriFromCursor(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 592
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 593
    throw v0

    :cond_2
    :goto_3
    return v1

    nop

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

    .line 523
    sget-object v0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->MOST_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->refreshSmartPlaylistArt(Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 525
    sget-object v1, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->NEWLY_ADDED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-direct {p0, v1}, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->refreshSmartPlaylistArt(Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 527
    sget-object v1, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->RECENTLY_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-direct {p0, v1}, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->refreshSmartPlaylistArt(Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 529
    sget-object v1, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->FAVOURITES:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-direct {p0, v1}, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->refreshSmartPlaylistArt(Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static update(Landroid/content/Context;I)V
    .locals 5

    .line 213
    sget-object v0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->sIsUiProcess:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    sget-object v0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->sWorkExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 214
    invoke-static {p0}, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->initialise(Landroid/content/Context;)V

    .line 216
    :cond_0
    sget-object v0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->sIsUiProcess:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 217
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.music.PLAYLIST_ART_UPDATE_TYPE"

    const/4 v2, 0x0

    .line 219
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.sonyericsson.music.PLAYLIST_ART_UPDATE_TYPE_EXTRA"

    .line 220
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 221
    new-instance p1, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$RefreshPlaylistArtRunner;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0, v0}, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$RefreshPlaylistArtRunner;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {p1}, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->executeTask(Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$RefreshPlaylistArtRunner;)V

    :cond_1
    return-void
.end method

.method public static update(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 4

    .line 197
    sget-object v0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->sIsUiProcess:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    sget-object v0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->sWorkExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 198
    invoke-static {p0}, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->initialise(Landroid/content/Context;)V

    .line 200
    :cond_0
    sget-object v0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->sIsUiProcess:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 201
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.music.PLAYLIST_ART_UPDATE"

    .line 203
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;

    invoke-direct {v0, v1, p1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 204
    new-instance p1, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$RefreshPlaylistArtRunner;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0, v0}, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$RefreshPlaylistArtRunner;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {p1}, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->executeTask(Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$RefreshPlaylistArtRunner;)V

    :cond_1
    return-void
.end method

.method public static updateAll(Landroid/content/Context;)V
    .locals 5

    .line 181
    sget-object v0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->sIsUiProcess:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    sget-object v0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->sWorkExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 182
    invoke-static {p0}, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->initialise(Landroid/content/Context;)V

    .line 184
    :cond_0
    sget-object v0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->sIsUiProcess:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 185
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.music.PLAYLIST_ART_UPDATE_ALL"

    const/4 v2, 0x0

    .line 187
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 188
    new-instance v1, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$RefreshPlaylistArtRunner;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$RefreshPlaylistArtRunner;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {v1}, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->executeTask(Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$RefreshPlaylistArtRunner;)V

    :cond_1
    return-void
.end method

.method private updateArtUriFromCursor(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 2

    .line 679
    invoke-static {p1, p2, p3, p4}, Lcom/sonyericsson/music/common/AlbumArtUtils;->getUnique2by2Images(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 682
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x1

    const/4 p4, 0x0

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 683
    iget-object p2, p0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$PlaylistArt;->getPlaylistArtUri(Landroid/content/Context;Ljava/util/List;)Landroid/net/Uri;

    move-result-object p1

    .line 684
    invoke-direct {p0, p5}, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->getArtUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    .line 685
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 686
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 687
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "playlist_art_uri"

    .line 688
    invoke-virtual {p2, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    iget-object p1, p0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

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

    .line 693
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

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
