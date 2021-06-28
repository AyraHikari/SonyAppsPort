.class public Lcom/sonymobile/music/common/ThreadingUtils;
.super Ljava/lang/Object;
.source "ThreadingUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/music/common/ThreadingUtils$Holder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fetchTimed(Ljava/util/concurrent/Callable;J)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;J)TT;"
        }
    .end annotation

    .line 66
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 67
    new-instance v2, Lcom/sonymobile/music/common/ThreadingUtils$Holder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/sonymobile/music/common/ThreadingUtils$Holder;-><init>(Lcom/sonymobile/music/common/ThreadingUtils$1;)V

    .line 69
    new-instance v3, Lcom/sonymobile/music/common/ThreadingUtils$1;

    invoke-direct {v3, p0, v2, v0}, Lcom/sonymobile/music/common/ThreadingUtils$1;-><init>(Ljava/util/concurrent/Callable;Lcom/sonymobile/music/common/ThreadingUtils$Holder;Ljava/util/concurrent/CountDownLatch;)V

    sget-object p0, Lcom/sonymobile/music/common/LongRunningTasks;->LRT_THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    .line 92
    invoke-virtual {v3, p0, v4}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p0

    .line 95
    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 96
    invoke-virtual {p0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    :catch_0
    invoke-virtual {p0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 102
    :cond_0
    :goto_0
    iget-object p0, v2, Lcom/sonymobile/music/common/ThreadingUtils$Holder;->mHold:Ljava/lang/Object;

    return-object p0
.end method

.method public static fetchTimedCloseable(Ljava/util/concurrent/Callable;J)Ljava/io/Closeable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Closeable;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;J)TT;"
        }
    .end annotation

    .line 111
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 112
    new-instance v2, Lcom/sonymobile/music/common/ThreadingUtils$Holder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/sonymobile/music/common/ThreadingUtils$Holder;-><init>(Lcom/sonymobile/music/common/ThreadingUtils$1;)V

    .line 114
    new-instance v3, Lcom/sonymobile/music/common/ThreadingUtils$2;

    invoke-direct {v3, p0, v2, v0}, Lcom/sonymobile/music/common/ThreadingUtils$2;-><init>(Ljava/util/concurrent/Callable;Lcom/sonymobile/music/common/ThreadingUtils$Holder;Ljava/util/concurrent/CountDownLatch;)V

    sget-object p0, Lcom/sonymobile/music/common/LongRunningTasks;->LRT_THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    .line 143
    invoke-virtual {v3, p0, v4}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p0

    .line 146
    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 147
    invoke-virtual {p0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 150
    :catch_0
    invoke-virtual {p0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 153
    :cond_0
    :goto_0
    iget-object p0, v2, Lcom/sonymobile/music/common/ThreadingUtils$Holder;->mHold:Ljava/lang/Object;

    check-cast p0, Ljava/io/Closeable;

    return-object p0
.end method

.method public static isMain()Z
    .locals 2

    .line 24
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static throwIfMainDebug()V
    .locals 2

    .line 28
    sget-boolean v0, Lcom/sonymobile/music/common/Debug;->DOLOGGING:Z

    if-eqz v0, :cond_1

    .line 29
    invoke-static {}, Lcom/sonymobile/music/common/ThreadingUtils;->isMain()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "May not be run on main thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public static throwIfNotLockedDebug(Ljava/lang/Object;)V
    .locals 1

    .line 50
    sget-boolean v0, Lcom/sonymobile/music/common/Debug;->DOLOGGING:Z

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    .line 51
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "The lock is not held!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static throwIfNotMainDebug()V
    .locals 2

    .line 36
    sget-boolean v0, Lcom/sonymobile/music/common/Debug;->DOLOGGING:Z

    if-eqz v0, :cond_1

    .line 37
    invoke-static {}, Lcom/sonymobile/music/common/ThreadingUtils;->isMain()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Must be run on main thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method
