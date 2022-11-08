.class public Lcom/android/launcher3/util/LooperIdleLock;
.super Ljava/lang/Object;
.source "LooperIdleLock.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# instance fields
.field private mIsLocked:Z

.field private final mLock:Ljava/lang/Object;

.field private mLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/os/Looper;)V
    .locals 1
    .param p1, "lock"    # Ljava/lang/Object;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/launcher3/util/LooperIdleLock;->mLock:Ljava/lang/Object;

    .line 34
    iput-object p2, p0, Lcom/android/launcher3/util/LooperIdleLock;->mLooper:Landroid/os/Looper;

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/util/LooperIdleLock;->mIsLocked:Z

    .line 36
    invoke-virtual {p2}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 37
    return-void
.end method


# virtual methods
.method public awaitLocked(J)Z
    .locals 1
    .param p1, "ms"    # J

    .line 53
    iget-boolean v0, p0, Lcom/android/launcher3/util/LooperIdleLock;->mIsLocked:Z

    if-eqz v0, :cond_0

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/util/LooperIdleLock;->mLock:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 62
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/launcher3/util/LooperIdleLock;->mIsLocked:Z

    return v0
.end method

.method public queueIdle()Z
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/android/launcher3/util/LooperIdleLock;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 42
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/launcher3/util/LooperIdleLock;->mIsLocked:Z

    .line 43
    iget-object v2, p0, Lcom/android/launcher3/util/LooperIdleLock;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 44
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    iget-object v0, p0, Lcom/android/launcher3/util/LooperIdleLock;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 49
    return v1

    .line 44
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
