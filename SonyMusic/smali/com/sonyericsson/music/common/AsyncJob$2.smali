.class Lcom/sonyericsson/music/common/AsyncJob$2;
.super Ljava/util/concurrent/FutureTask;
.source "AsyncJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/common/AsyncJob;->execute(Ljava/util/concurrent/Executor;Landroid/os/Handler;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/common/AsyncJob;

.field final synthetic val$target:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/common/AsyncJob;Ljava/util/concurrent/Callable;Landroid/os/Handler;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/sonyericsson/music/common/AsyncJob$2;->this$0:Lcom/sonyericsson/music/common/AsyncJob;

    iput-object p3, p0, Lcom/sonyericsson/music/common/AsyncJob$2;->val$target:Landroid/os/Handler;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected done()V
    .locals 3

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/music/common/AsyncJob$2;->this$0:Lcom/sonyericsson/music/common/AsyncJob;

    iget-object v1, p0, Lcom/sonyericsson/music/common/AsyncJob$2;->val$target:Landroid/os/Handler;

    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/music/common/AsyncJob;->postToTarget(Landroid/os/Handler;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 69
    new-instance v1, Ljava/lang/RuntimeException;

    .line 70
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const-string v2, "An error occured while executing doInBackground()"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    :goto_0
    return-void
.end method
