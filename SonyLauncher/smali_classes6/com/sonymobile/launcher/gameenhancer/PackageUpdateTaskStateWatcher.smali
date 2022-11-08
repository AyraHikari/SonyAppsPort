.class public Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher;
.super Ljava/lang/Object;
.source "PackageUpdateTaskStateWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher$PackageUpdateState;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "PackageUpdateTaskStateWatcher"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mRunnable:Ljava/lang/Runnable;

.field public mState:Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher$PackageUpdateState;

.field private mWorkerThread:Landroid/os/HandlerThread;

.field private packageUpdateTaskQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/util/concurrent/Future<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher;->packageUpdateTaskQueue:Ljava/util/Queue;

    .line 37
    sget-object v0, Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher$PackageUpdateState;->IDLE:Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher$PackageUpdateState;

    iput-object v0, p0, Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher;->mState:Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher$PackageUpdateState;

    .line 44
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PackageUpdateTaskQueueHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher;->mWorkerThread:Landroid/os/HandlerThread;

    .line 45
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 46
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher;->mHandler:Landroid/os/Handler;

    .line 47
    new-instance v0, Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher$$ExternalSyntheticLambda0;-><init>(Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher;)V

    iput-object v0, p0, Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher;->mRunnable:Ljava/lang/Runnable;

    .line 62
    return-void
.end method


# virtual methods
.method synthetic lambda$new$0$com-sonymobile-launcher-gameenhancer-PackageUpdateTaskStateWatcher()V
    .locals 3

    .line 50
    const-string v0, "PackageUpdateTask is failed"

    const-string v1, "PackageUpdateTaskStateWatcher"

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher;->packageUpdateTaskQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .local v2, "task":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    if-nez v2, :cond_0

    .line 59
    .end local v2    # "task":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    nop

    :goto_1
    sget-object v0, Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher$PackageUpdateState;->IDLE:Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher$PackageUpdateState;

    invoke-virtual {p0, v0}, Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher;->setState(Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher$PackageUpdateState;)V

    .line 60
    goto :goto_2

    .line 52
    .restart local v2    # "task":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :cond_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    nop

    .end local v2    # "task":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 56
    :catch_0
    move-exception v2

    .line 57
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_2
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sonymobile/launcher/util/Log;->e(Ljava/lang/String;[Ljava/lang/String;)I

    .line 59
    nop

    .end local v2    # "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 54
    :catch_1
    move-exception v2

    .line 55
    .local v2, "e":Ljava/util/concurrent/ExecutionException;
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sonymobile/launcher/util/Log;->e(Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    nop

    .end local v2    # "e":Ljava/util/concurrent/ExecutionException;
    goto :goto_1

    .line 61
    :goto_2
    return-void

    .line 59
    :goto_3
    sget-object v1, Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher$PackageUpdateState;->IDLE:Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher$PackageUpdateState;

    invoke-virtual {p0, v1}, Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher;->setState(Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher$PackageUpdateState;)V

    .line 60
    throw v0
.end method

.method public setState(Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher$PackageUpdateState;)V
    .locals 2
    .param p1, "state"    # Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher$PackageUpdateState;

    .line 83
    iput-object p1, p0, Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher;->mState:Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher$PackageUpdateState;

    .line 85
    invoke-static {}, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutServiceClient;->getInstance()Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutServiceClient;

    move-result-object v0

    .line 86
    .local v0, "client":Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutServiceClient;
    if-eqz v0, :cond_0

    .line 87
    invoke-static {p1}, Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher$PackageUpdateState;->-$$Nest$fgetstateId(Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher$PackageUpdateState;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutServiceClient;->sendStoreGameIconSettingUpdateState(I)V

    .line 89
    :cond_0
    return-void
.end method

.method public start(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "*>;>;)V"
        }
    .end annotation

    .line 73
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<*>;>;"
    sget-object v0, Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher$PackageUpdateState;->RUNNING:Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher$PackageUpdateState;

    invoke-virtual {p0, v0}, Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher;->setState(Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher$PackageUpdateState;)V

    .line 74
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 75
    .local v1, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    iget-object v2, p0, Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher;->packageUpdateTaskQueue:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 76
    .end local v1    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    goto :goto_0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher;->mRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 78
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 80
    :cond_1
    return-void
.end method

.method public start(Ljava/util/concurrent/Future;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    .line 65
    .local p1, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    sget-object v0, Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher$PackageUpdateState;->RUNNING:Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher$PackageUpdateState;

    invoke-virtual {p0, v0}, Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher;->setState(Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher$PackageUpdateState;)V

    .line 66
    iget-object v0, p0, Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher;->packageUpdateTaskQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher;->mRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 70
    :cond_0
    return-void
.end method
