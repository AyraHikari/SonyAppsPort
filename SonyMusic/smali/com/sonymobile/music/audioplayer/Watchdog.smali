.class public Lcom/sonymobile/music/audioplayer/Watchdog;
.super Ljava/lang/Thread;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/music/audioplayer/Watchdog$WatchDogListener;
    }
.end annotation


# static fields
.field private static final ACTION_FORCEDUMP:Ljava/lang/String; = "com.sonymobile.crashmonitor.FORCEDUMP"

.field private static final ANR_TIMEOUT:J = 0x3a98L

.field private static final APP_FORCED_DUMP_SRC_PREFIX:Ljava/lang/String; = "app_forced"

.field private static final FORCEDUMP_EXTRA_PROCESSNAME:Ljava/lang/String; = "processName"

.field private static final FORCEDUMP_EXTRA_SOURCE:Ljava/lang/String; = "source"


# instance fields
.field private final mApplicationContext:Landroid/content/Context;

.field private volatile mBegin:J

.field private mCount:I

.field private final mListener:Lcom/sonymobile/music/audioplayer/Watchdog$WatchDogListener;

.field private final mTargetThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Thread;Lcom/sonymobile/music/audioplayer/Watchdog$WatchDogListener;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lcom/sonymobile/music/audioplayer/Watchdog;->mCount:I

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sonymobile/music/audioplayer/Watchdog;->mApplicationContext:Landroid/content/Context;

    .line 69
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "watchdog/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 70
    iput-object p3, p0, Lcom/sonymobile/music/audioplayer/Watchdog;->mTargetThread:Ljava/lang/Thread;

    .line 71
    iput-object p4, p0, Lcom/sonymobile/music/audioplayer/Watchdog;->mListener:Lcom/sonymobile/music/audioplayer/Watchdog$WatchDogListener;

    return-void
.end method

.method public static sendForceDumpBroadcastIntent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 218
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonymobile.crashmonitor.FORCEDUMP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "processName"

    const-string v2, "com.sonyericsson.music"

    .line 219
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "source"

    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app_forced"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.sonymobile.crashmonitor.system"

    .line 222
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static stackTraceToString([Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 4

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Watchdog detected a hang\n"

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_0

    .line 231
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    const-string v3, "\tat "

    .line 233
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    .line 235
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "Stack was null!"

    .line 238
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method causeHalt(Ljava/lang/String;)V
    .locals 5

    .line 138
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/music/audioplayer/Watchdog;->mTargetThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 149
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 150
    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "eng"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "userdebug"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 201
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/music/audioplayer/Watchdog;->mListener:Lcom/sonymobile/music/audioplayer/Watchdog$WatchDogListener;

    if-eqz v2, :cond_2

    .line 202
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WatchDog: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-static {v0}, Lcom/sonymobile/music/audioplayer/Watchdog;->stackTraceToString([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 202
    invoke-interface {v2, p1}, Lcom/sonymobile/music/audioplayer/Watchdog$WatchDogListener;->onKillingProcess(Ljava/lang/String;)V

    .line 208
    :cond_2
    new-instance p1, Lcom/sonymobile/music/audioplayer/Watchdog$2;

    invoke-direct {p1, p0}, Lcom/sonymobile/music/audioplayer/Watchdog$2;-><init>(Lcom/sonymobile/music/audioplayer/Watchdog;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 151
    :cond_3
    :goto_0
    sget-object p1, Lcom/sonymobile/music/audioplayer/Debug;->DEBUG:Lcom/sonymobile/music/audioplayer/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "Target is not responding, force dump of system, and ANR of Walkman app/main thread"

    invoke-virtual {p1, v2, v3}, Lcom/sonymobile/music/debug/DebugBase;->logE(Ljava/lang/Class;Ljava/lang/String;)V

    .line 154
    iget-object p1, p0, Lcom/sonymobile/music/audioplayer/Watchdog;->mApplicationContext:Landroid/content/Context;

    const-string v2, "Suspected MediaPlayer hang"

    invoke-static {p1, v2}, Lcom/sonymobile/music/audioplayer/Watchdog;->sendForceDumpBroadcastIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 156
    sget-object p1, Lcom/sonymobile/music/audioplayer/Debug;->DEBUG:Lcom/sonymobile/music/audioplayer/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0}, Lcom/sonymobile/music/audioplayer/Watchdog;->stackTraceToString([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/sonymobile/music/debug/DebugBase;->logE(Ljava/lang/Class;Ljava/lang/String;)V

    .line 157
    new-instance p1, Lcom/sonymobile/music/audioplayer/Watchdog$1;

    invoke-direct {p1, p0}, Lcom/sonymobile/music/audioplayer/Watchdog$1;-><init>(Lcom/sonymobile/music/audioplayer/Watchdog;)V

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 192
    :catch_0
    :goto_1
    :try_start_0
    sget-object p1, Lcom/sonymobile/music/audioplayer/Debug;->DEBUG:Lcom/sonymobile/music/audioplayer/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0}, Lcom/sonymobile/music/audioplayer/Watchdog;->stackTraceToString([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/sonymobile/music/debug/DebugBase;->logE(Ljava/lang/Class;Ljava/lang/String;)V

    const-wide/16 v1, 0x1f4

    .line 193
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method control()V
    .locals 1

    .line 120
    monitor-enter p0

    .line 121
    :try_start_0
    iget v0, p0, Lcom/sonymobile/music/audioplayer/Watchdog;->mCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sonymobile/music/audioplayer/Watchdog;->mCount:I

    .line 122
    iget v0, p0, Lcom/sonymobile/music/audioplayer/Watchdog;->mCount:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    .line 123
    iput v0, p0, Lcom/sonymobile/music/audioplayer/Watchdog;->mCount:I

    .line 125
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 126
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method halt()V
    .locals 0

    .line 134
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public run()V
    .locals 6

    .line 77
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :cond_0
    :goto_0
    :try_start_1
    iget v0, p0, Lcom/sonymobile/music/audioplayer/Watchdog;->mCount:I

    if-nez v0, :cond_1

    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x3a98

    .line 83
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 85
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sonymobile/music/audioplayer/Watchdog;->mBegin:J

    sub-long/2addr v2, v4

    .line 86
    iget v4, p0, Lcom/sonymobile/music/audioplayer/Watchdog;->mCount:I

    if-lez v4, :cond_0

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    .line 91
    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/music/audioplayer/Watchdog;->causeHalt(Ljava/lang/String;)V

    .line 92
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_1
    return-void
.end method

.method unleash()V
    .locals 2

    .line 106
    monitor-enter p0

    .line 107
    :try_start_0
    iget v0, p0, Lcom/sonymobile/music/audioplayer/Watchdog;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonymobile/music/audioplayer/Watchdog;->mCount:I

    .line 108
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonymobile/music/audioplayer/Watchdog;->mBegin:J

    .line 109
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 110
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
