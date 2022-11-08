.class public Lcom/android/launcher3/util/LooperExecutor;
.super Ljava/util/concurrent/AbstractExecutorService;
.source "LooperExecutor.java"


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .line 34
    invoke-direct {p0}, Ljava/util/concurrent/AbstractExecutorService;-><init>()V

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/launcher3/util/LooperExecutor;->mHandler:Landroid/os/Handler;

    .line 36
    return-void
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .param p1, "l"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 92
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 44
    invoke-virtual {p0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 45
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    :goto_0
    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/android/launcher3/util/LooperExecutor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 1

    .line 106
    invoke-virtual {p0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getThread()Ljava/lang/Thread;
    .locals 1

    .line 99
    invoke-virtual {p0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method public isShutdown()Z
    .locals 1

    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public isTerminated()Z
    .locals 1

    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 55
    invoke-virtual {p0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 56
    return-void
.end method

.method public setThreadPriority(I)V
    .locals 1
    .param p1, "priority"    # I

    .line 116
    invoke-virtual {p0}, Lcom/android/launcher3/util/LooperExecutor;->getThread()Ljava/lang/Thread;

    move-result-object v0

    check-cast v0, Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {v0, p1}, Landroid/os/Process;->setThreadPriority(II)V

    .line 117
    return-void
.end method

.method public shutdown()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 64
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 73
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
