.class public abstract Lcom/sonyericsson/music/common/AsyncJob;
.super Ljava/lang/Object;
.source "AsyncJob.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mTask:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sonyericsson/music/common/AsyncJob;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final cancel(Z)V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/sonyericsson/music/common/AsyncJob;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 80
    iget-object v0, p0, Lcom/sonyericsson/music/common/AsyncJob;->mTask:Ljava/util/concurrent/FutureTask;

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method public final varargs execute(Ljava/util/concurrent/Executor;Landroid/os/Handler;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/Handler;",
            "[TParams;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/sonyericsson/music/common/AsyncJob;->onPreExecute()V

    .line 44
    new-instance v0, Lcom/sonyericsson/music/common/AsyncJob$1;

    invoke-direct {v0, p0, p3}, Lcom/sonyericsson/music/common/AsyncJob$1;-><init>(Lcom/sonyericsson/music/common/AsyncJob;[Ljava/lang/Object;)V

    .line 55
    new-instance p3, Lcom/sonyericsson/music/common/AsyncJob$2;

    invoke-direct {p3, p0, v0, p2}, Lcom/sonyericsson/music/common/AsyncJob$2;-><init>(Lcom/sonyericsson/music/common/AsyncJob;Ljava/util/concurrent/Callable;Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/sonyericsson/music/common/AsyncJob;->mTask:Ljava/util/concurrent/FutureTask;

    .line 75
    iget-object p2, p0, Lcom/sonyericsson/music/common/AsyncJob;->mTask:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 39
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Executor and target must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract onPostExecute(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation
.end method

.method public abstract onPreExecute()V
.end method

.method postToTarget(Landroid/os/Handler;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "TResult;)V"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/sonyericsson/music/common/AsyncJob;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/sonyericsson/music/common/AsyncJob$3;

    invoke-direct {v0, p0, p2}, Lcom/sonyericsson/music/common/AsyncJob$3;-><init>(Lcom/sonyericsson/music/common/AsyncJob;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
