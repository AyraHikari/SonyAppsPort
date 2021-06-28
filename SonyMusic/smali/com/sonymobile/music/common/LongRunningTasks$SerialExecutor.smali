.class Lcom/sonymobile/music/common/LongRunningTasks$SerialExecutor;
.super Ljava/lang/Object;
.source "LongRunningTasks.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/music/common/LongRunningTasks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerialExecutor"
.end annotation


# instance fields
.field mActive:Ljava/lang/Runnable;

.field final mTasks:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/music/common/LongRunningTasks$SerialExecutor;->mTasks:Ljava/util/ArrayDeque;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/music/common/LongRunningTasks$1;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/sonymobile/music/common/LongRunningTasks$SerialExecutor;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized execute(Ljava/lang/Runnable;)V
    .locals 2

    monitor-enter p0

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/music/common/LongRunningTasks$SerialExecutor;->mTasks:Ljava/util/ArrayDeque;

    new-instance v1, Lcom/sonymobile/music/common/LongRunningTasks$SerialExecutor$1;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/music/common/LongRunningTasks$SerialExecutor$1;-><init>(Lcom/sonymobile/music/common/LongRunningTasks$SerialExecutor;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 104
    iget-object p1, p0, Lcom/sonymobile/music/common/LongRunningTasks$SerialExecutor;->mActive:Ljava/lang/Runnable;

    if-nez p1, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/sonymobile/music/common/LongRunningTasks$SerialExecutor;->scheduleNext()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized scheduleNext()V
    .locals 2

    monitor-enter p0

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/music/common/LongRunningTasks$SerialExecutor;->mTasks:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/sonymobile/music/common/LongRunningTasks$SerialExecutor;->mActive:Ljava/lang/Runnable;

    .line 111
    iget-object v0, p0, Lcom/sonymobile/music/common/LongRunningTasks$SerialExecutor;->mActive:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 112
    sget-object v0, Lcom/sonymobile/music/common/LongRunningTasks;->LRT_THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/sonymobile/music/common/LongRunningTasks$SerialExecutor;->mActive:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
