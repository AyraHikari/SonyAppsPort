.class Lcom/sonymobile/music/common/ThreadingUtils$1;
.super Landroid/os/AsyncTask;
.source "ThreadingUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/music/common/ThreadingUtils;->fetchTimed(Ljava/util/concurrent/Callable;J)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private volatile mFetched:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic val$callable:Ljava/util/concurrent/Callable;

.field final synthetic val$fLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$fResult:Lcom/sonymobile/music/common/ThreadingUtils$Holder;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Callable;Lcom/sonymobile/music/common/ThreadingUtils$Holder;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/sonymobile/music/common/ThreadingUtils$1;->val$callable:Ljava/util/concurrent/Callable;

    iput-object p2, p0, Lcom/sonymobile/music/common/ThreadingUtils$1;->val$fResult:Lcom/sonymobile/music/common/ThreadingUtils$Holder;

    iput-object p3, p0, Lcom/sonymobile/music/common/ThreadingUtils$1;->val$fLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 69
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonymobile/music/common/ThreadingUtils$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 75
    :try_start_0
    iget-object p1, p0, Lcom/sonymobile/music/common/ThreadingUtils$1;->val$callable:Ljava/util/concurrent/Callable;

    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/sonymobile/music/common/ThreadingUtils$1;->mFetched:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected onCancelled()V
    .locals 1

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/sonymobile/music/common/ThreadingUtils$1;->mFetched:Ljava/lang/Object;

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 69
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonymobile/music/common/ThreadingUtils$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .line 88
    iget-object p1, p0, Lcom/sonymobile/music/common/ThreadingUtils$1;->val$fResult:Lcom/sonymobile/music/common/ThreadingUtils$Holder;

    iget-object v0, p0, Lcom/sonymobile/music/common/ThreadingUtils$1;->mFetched:Ljava/lang/Object;

    iput-object v0, p1, Lcom/sonymobile/music/common/ThreadingUtils$Holder;->mHold:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 89
    iput-object p1, p0, Lcom/sonymobile/music/common/ThreadingUtils$1;->mFetched:Ljava/lang/Object;

    .line 90
    iget-object p1, p0, Lcom/sonymobile/music/common/ThreadingUtils$1;->val$fLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
