.class Lcom/airbnb/lottie/LottieTask$LottieFutureTask;
.super Ljava/util/concurrent/FutureTask;
.source "LottieTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/LottieTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LottieFutureTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "Lcom/airbnb/lottie/LottieResult<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/lottie/LottieTask;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieTask;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lcom/airbnb/lottie/LottieResult<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 163
    .local p0, "this":Lcom/airbnb/lottie/LottieTask$LottieFutureTask;, "Lcom/airbnb/lottie/LottieTask<TT;>.LottieFutureTask;"
    .local p2, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lcom/airbnb/lottie/LottieResult<TT;>;>;"
    iput-object p1, p0, Lcom/airbnb/lottie/LottieTask$LottieFutureTask;->this$0:Lcom/airbnb/lottie/LottieTask;

    .line 164
    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 165
    return-void
.end method


# virtual methods
.method protected done()V
    .locals 3

    .line 169
    .local p0, "this":Lcom/airbnb/lottie/LottieTask$LottieFutureTask;, "Lcom/airbnb/lottie/LottieTask<TT;>.LottieFutureTask;"
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieTask$LottieFutureTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    return-void

    .line 175
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieTask$LottieFutureTask;->this$0:Lcom/airbnb/lottie/LottieTask;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieTask$LottieFutureTask;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieResult;

    invoke-static {v0, v1}, Lcom/airbnb/lottie/LottieTask;->access$300(Lcom/airbnb/lottie/LottieTask;Lcom/airbnb/lottie/LottieResult;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/airbnb/lottie/LottieTask$LottieFutureTask;->this$0:Lcom/airbnb/lottie/LottieTask;

    new-instance v2, Lcom/airbnb/lottie/LottieResult;

    invoke-direct {v2, v0}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1, v2}, Lcom/airbnb/lottie/LottieTask;->access$300(Lcom/airbnb/lottie/LottieTask;Lcom/airbnb/lottie/LottieResult;)V

    .line 179
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
