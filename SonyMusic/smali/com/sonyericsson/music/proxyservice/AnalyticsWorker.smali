.class public Lcom/sonyericsson/music/proxyservice/AnalyticsWorker;
.super Ljava/lang/Object;
.source "AnalyticsWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/proxyservice/AnalyticsWorker$AnalyticsRunner;
    }
.end annotation


# static fields
.field public static final SEND_ANALYTICS_ACTION:Ljava/lang/String; = "com.sonyericsson.music.SEND_ANALYTICS_ACTION"

.field private static sIsServiceProcess:Ljava/lang/Boolean;

.field private static sWorkExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized executeTask(Lcom/sonyericsson/music/proxyservice/AnalyticsWorker$AnalyticsRunner;)V
    .locals 2

    const-class v0, Lcom/sonyericsson/music/proxyservice/AnalyticsWorker;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lcom/sonyericsson/music/proxyservice/AnalyticsWorker;->sWorkExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_0

    .line 46
    sget-object v1, Lcom/sonyericsson/music/proxyservice/AnalyticsWorker;->sWorkExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
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

    const-class v0, Lcom/sonyericsson/music/proxyservice/AnalyticsWorker;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lcom/sonyericsson/music/proxyservice/AnalyticsWorker;->sWorkExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/sonymobile/music/common/ProcessUtils;->isRunningInServiceProcess(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 33
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    sput-object p0, Lcom/sonyericsson/music/proxyservice/AnalyticsWorker;->sWorkExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 p0, 0x1

    .line 34
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/sonyericsson/music/proxyservice/AnalyticsWorker;->sIsServiceProcess:Ljava/lang/Boolean;

    .line 36
    :cond_0
    sget-object p0, Lcom/sonyericsson/music/proxyservice/AnalyticsWorker;->sIsServiceProcess:Ljava/lang/Boolean;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 37
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/sonyericsson/music/proxyservice/AnalyticsWorker;->sIsServiceProcess:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static sendAnalytics(Landroid/content/Context;)V
    .locals 5

    .line 91
    sget-object v0, Lcom/sonyericsson/music/proxyservice/AnalyticsWorker;->sIsServiceProcess:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    sget-object v0, Lcom/sonyericsson/music/proxyservice/AnalyticsWorker;->sWorkExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 92
    invoke-static {p0}, Lcom/sonyericsson/music/proxyservice/AnalyticsWorker;->initialise(Landroid/content/Context;)V

    .line 95
    :cond_0
    sget-object v0, Lcom/sonyericsson/music/proxyservice/AnalyticsWorker;->sIsServiceProcess:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 96
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.music.SEND_ANALYTICS_ACTION"

    const/4 v2, 0x0

    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/sonyericsson/music/proxyservice/AnalyticsWorker;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    new-instance v1, Lcom/sonyericsson/music/proxyservice/AnalyticsWorker$AnalyticsRunner;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/music/proxyservice/AnalyticsWorker$AnalyticsRunner;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {v1}, Lcom/sonyericsson/music/proxyservice/AnalyticsWorker;->executeTask(Lcom/sonyericsson/music/proxyservice/AnalyticsWorker$AnalyticsRunner;)V

    goto :goto_0

    :cond_1
    const-string v0, "com.sonyericsson.music.SEND_ANALYTICS_ACTION"

    .line 101
    invoke-static {p0, v0}, Lcom/sonyericsson/music/proxyservice/AnalyticsWorker;->startServiceByAction(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static startServiceByAction(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 51
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sonyericsson/music/proxyservice/PlaybackService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
