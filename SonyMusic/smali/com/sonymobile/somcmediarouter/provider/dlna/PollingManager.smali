.class final Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;
.super Ljava/lang/Object;
.source "PollingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager$Callback;,
        Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager$PollingThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PollingManager"


# instance fields
.field private final mCallback:Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager$Callback;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mPollingThread:Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager$PollingThread;

.field private mUpdatePlaybackPosition:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager$Callback;)V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager$PollingThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager$PollingThread;-><init>(Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager$1;)V

    iput-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;->mPollingThread:Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager$PollingThread;

    .line 32
    iput-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 34
    iput-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;->mHandler:Landroid/os/Handler;

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;->mUpdatePlaybackPosition:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    iput-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;->mCallback:Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager$Callback;

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;)Landroid/os/Handler;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;->mUpdatePlaybackPosition:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;)Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager$Callback;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;->mCallback:Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager$Callback;

    return-object p0
.end method


# virtual methods
.method public cancelUpdateForOnShot()V
    .locals 2

    .line 104
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 105
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;->TAG:Ljava/lang/String;

    const-string v1, "cancelUpdateForOnShot()"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 110
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public createThread()V
    .locals 4

    .line 43
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 44
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;->TAG:Ljava/lang/String;

    const-string v1, "createThread()"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PollingThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 47
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 48
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 50
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;->mPollingThread:Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager$PollingThread;

    monitor-enter v1

    .line 51
    :try_start_0
    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;->mPollingThread:Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager$PollingThread;

    invoke-direct {v2, v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;->mHandler:Landroid/os/Handler;

    .line 52
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public disableGetPosition()V
    .locals 2

    .line 121
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 122
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;->TAG:Ljava/lang/String;

    const-string v1, "disableGetPosition()"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;->mUpdatePlaybackPosition:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public enableGetPosition()V
    .locals 2

    .line 114
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 115
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;->TAG:Ljava/lang/String;

    const-string v1, "enableGetPosition()"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;->mUpdatePlaybackPosition:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public requestUpdateForOnShot()V
    .locals 4

    .line 92
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 93
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;->TAG:Ljava/lang/String;

    const-string v1, "requestUpdateForOnShot()"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 98
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 99
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public restartThread()V
    .locals 4

    .line 80
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 81
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;->TAG:Ljava/lang/String;

    const-string v1, "restartThread()"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 86
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 87
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public startThread()V
    .locals 4

    .line 68
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 69
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;->TAG:Ljava/lang/String;

    const-string v1, "startThread()"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 74
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 75
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public stopThread()V
    .locals 2

    .line 57
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 58
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;->TAG:Ljava/lang/String;

    const-string v1, "stopThread()"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 63
    iput-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;->mHandler:Landroid/os/Handler;

    :cond_1
    return-void
.end method
