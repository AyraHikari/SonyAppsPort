.class public Lcom/sonyericsson/music/metadata/MusicInfoWorker;
.super Ljava/lang/Object;
.source "MusicInfoWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/metadata/MusicInfoWorker$MusicInfoWorkRunner;
    }
.end annotation


# static fields
.field public static final INTENT_ACTION_SYNC_HIGH_RES_MEDIA:Ljava/lang/String; = "com.sonyericsson.music.musicinfo.SYNC_HIGH_RES_MEDIA"

.field public static final INTENT_ACTION_SYNC_MEDIASTORE_DATA:Ljava/lang/String; = "com.sonyericsson.music.musicinfo.SYNC_MEDIASTORE_DATA"

.field public static final INTENT_ACTION_SYNC_PLAYLISTS:Ljava/lang/String; = "com.sonyericsson.music.musicinfo.SYNC_PLAYLISTS"

.field private static sIsServiceProcess:Ljava/lang/Boolean;

.field private static sWorkExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized executeTask(Lcom/sonyericsson/music/metadata/MusicInfoWorker$MusicInfoWorkRunner;)V
    .locals 2

    const-class v0, Lcom/sonyericsson/music/metadata/MusicInfoWorker;

    monitor-enter v0

    .line 54
    :try_start_0
    sget-object v1, Lcom/sonyericsson/music/metadata/MusicInfoWorker;->sWorkExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_0

    .line 55
    sget-object v1, Lcom/sonyericsson/music/metadata/MusicInfoWorker;->sWorkExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized initialise(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/sonyericsson/music/metadata/MusicInfoWorker;

    monitor-enter v0

    .line 41
    :try_start_0
    sget-object v1, Lcom/sonyericsson/music/metadata/MusicInfoWorker;->sWorkExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/sonymobile/music/common/ProcessUtils;->isRunningInServiceProcess(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 42
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    sput-object p0, Lcom/sonyericsson/music/metadata/MusicInfoWorker;->sWorkExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 p0, 0x1

    .line 43
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/sonyericsson/music/metadata/MusicInfoWorker;->sIsServiceProcess:Ljava/lang/Boolean;

    .line 45
    :cond_0
    sget-object p0, Lcom/sonyericsson/music/metadata/MusicInfoWorker;->sIsServiceProcess:Ljava/lang/Boolean;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 46
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/sonyericsson/music/metadata/MusicInfoWorker;->sIsServiceProcess:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static startHighResContainersSync(Landroid/content/Context;)V
    .locals 3

    .line 100
    sget-object v0, Lcom/sonyericsson/music/metadata/MusicInfoWorker;->sIsServiceProcess:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    sget-object v0, Lcom/sonyericsson/music/metadata/MusicInfoWorker;->sWorkExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 101
    invoke-static {p0}, Lcom/sonyericsson/music/metadata/MusicInfoWorker;->initialise(Landroid/content/Context;)V

    .line 103
    :cond_0
    sget-object v0, Lcom/sonyericsson/music/metadata/MusicInfoWorker;->sIsServiceProcess:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 104
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    new-instance v0, Lcom/sonyericsson/music/metadata/MusicInfoWorker$MusicInfoWorkRunner;

    const-string v1, "com.sonyericsson.music.musicinfo.SYNC_HIGH_RES_MEDIA"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/sonyericsson/music/metadata/MusicInfoWorker$MusicInfoWorkRunner;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/music/metadata/MusicInfoWorker$1;)V

    invoke-static {v0}, Lcom/sonyericsson/music/metadata/MusicInfoWorker;->executeTask(Lcom/sonyericsson/music/metadata/MusicInfoWorker$MusicInfoWorkRunner;)V

    goto :goto_0

    :cond_1
    const-string v0, "com.sonyericsson.music.musicinfo.SYNC_HIGH_RES_MEDIA"

    .line 107
    invoke-static {p0, v0}, Lcom/sonyericsson/music/metadata/MusicInfoWorker;->startServiceByAction(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static startMediaStoreDataSync(Landroid/content/Context;)V
    .locals 3

    .line 116
    sget-object v0, Lcom/sonyericsson/music/metadata/MusicInfoWorker;->sIsServiceProcess:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    sget-object v0, Lcom/sonyericsson/music/metadata/MusicInfoWorker;->sWorkExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 117
    invoke-static {p0}, Lcom/sonyericsson/music/metadata/MusicInfoWorker;->initialise(Landroid/content/Context;)V

    .line 119
    :cond_0
    sget-object v0, Lcom/sonyericsson/music/metadata/MusicInfoWorker;->sIsServiceProcess:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 120
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    new-instance v0, Lcom/sonyericsson/music/metadata/MusicInfoWorker$MusicInfoWorkRunner;

    const-string v1, "com.sonyericsson.music.musicinfo.SYNC_MEDIASTORE_DATA"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/sonyericsson/music/metadata/MusicInfoWorker$MusicInfoWorkRunner;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/music/metadata/MusicInfoWorker$1;)V

    invoke-static {v0}, Lcom/sonyericsson/music/metadata/MusicInfoWorker;->executeTask(Lcom/sonyericsson/music/metadata/MusicInfoWorker$MusicInfoWorkRunner;)V

    goto :goto_0

    :cond_1
    const-string v0, "com.sonyericsson.music.musicinfo.SYNC_MEDIASTORE_DATA"

    .line 123
    invoke-static {p0, v0}, Lcom/sonyericsson/music/metadata/MusicInfoWorker;->startServiceByAction(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static startPlaylistSync(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 73
    invoke-static {p0, v0}, Lcom/sonyericsson/music/metadata/MusicInfoWorker;->startPlaylistSync(Landroid/content/Context;I)V

    return-void
.end method

.method public static startPlaylistSync(Landroid/content/Context;I)V
    .locals 3

    .line 81
    sget-object v0, Lcom/sonyericsson/music/metadata/MusicInfoWorker;->sIsServiceProcess:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    sget-object v0, Lcom/sonyericsson/music/metadata/MusicInfoWorker;->sWorkExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 82
    invoke-static {p0}, Lcom/sonyericsson/music/metadata/MusicInfoWorker;->initialise(Landroid/content/Context;)V

    .line 85
    :cond_0
    sget-object v0, Lcom/sonyericsson/music/metadata/MusicInfoWorker;->sIsServiceProcess:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 86
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "delay_art_refresh"

    .line 88
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 89
    new-instance p1, Lcom/sonyericsson/music/metadata/MusicInfoWorker$MusicInfoWorkRunner;

    const-string v1, "com.sonyericsson.music.musicinfo.SYNC_PLAYLISTS"

    const/4 v2, 0x0

    invoke-direct {p1, p0, v1, v0, v2}, Lcom/sonyericsson/music/metadata/MusicInfoWorker$MusicInfoWorkRunner;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/sonyericsson/music/metadata/MusicInfoWorker$1;)V

    invoke-static {p1}, Lcom/sonyericsson/music/metadata/MusicInfoWorker;->executeTask(Lcom/sonyericsson/music/metadata/MusicInfoWorker$MusicInfoWorkRunner;)V

    goto :goto_0

    :cond_1
    const-string p1, "com.sonyericsson.music.musicinfo.SYNC_PLAYLISTS"

    .line 91
    invoke-static {p0, p1}, Lcom/sonyericsson/music/metadata/MusicInfoWorker;->startServiceByAction(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static startServiceByAction(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 61
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sonyericsson/music/proxyservice/PlaybackService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
