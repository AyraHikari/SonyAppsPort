.class Lcom/sonyericsson/music/common/AsyncJob$1;
.super Ljava/lang/Object;
.source "AsyncJob.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


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
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/common/AsyncJob;

.field final synthetic val$params:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/common/AsyncJob;[Ljava/lang/Object;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/sonyericsson/music/common/AsyncJob$1;->this$0:Lcom/sonyericsson/music/common/AsyncJob;

    iput-object p2, p0, Lcom/sonyericsson/music/common/AsyncJob$1;->val$params:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/sonyericsson/music/common/AsyncJob$1;->this$0:Lcom/sonyericsson/music/common/AsyncJob;

    iget-object v0, v0, Lcom/sonyericsson/music/common/AsyncJob;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/sonyericsson/music/common/AsyncJob$1;->this$0:Lcom/sonyericsson/music/common/AsyncJob;

    iget-object v1, p0, Lcom/sonyericsson/music/common/AsyncJob$1;->val$params:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/common/AsyncJob;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
