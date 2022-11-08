.class Lcom/sonymobile/music/common/ThreadingUtils$2;
.super Landroid/os/AsyncTask;
.source "ThreadingUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/music/common/ThreadingUtils;->fetchTimedCloseable(Ljava/util/concurrent/Callable;J)Ljava/io/Closeable;
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
.field private volatile mFetched:Ljava/io/Closeable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic val$c:Ljava/util/concurrent/Callable;

.field final synthetic val$fLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$fResult:Lcom/sonymobile/music/common/ThreadingUtils$Holder;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Callable;Lcom/sonymobile/music/common/ThreadingUtils$Holder;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/sonymobile/music/common/ThreadingUtils$2;->val$c:Ljava/util/concurrent/Callable;

    iput-object p2, p0, Lcom/sonymobile/music/common/ThreadingUtils$2;->val$fResult:Lcom/sonymobile/music/common/ThreadingUtils$Holder;

    iput-object p3, p0, Lcom/sonymobile/music/common/ThreadingUtils$2;->val$fLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 114
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonymobile/music/common/ThreadingUtils$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 120
    :try_start_0
    iget-object p1, p0, Lcom/sonymobile/music/common/ThreadingUtils$2;->val$c:Ljava/util/concurrent/Callable;

    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    iput-object p1, p0, Lcom/sonymobile/music/common/ThreadingUtils$2;->mFetched:Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected onCancelled()V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/sonymobile/music/common/ThreadingUtils$2;->mFetched:Ljava/io/Closeable;

    if-eqz v0, :cond_0

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/music/common/ThreadingUtils$2;->mFetched:Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    .line 134
    iput-object v0, p0, Lcom/sonymobile/music/common/ThreadingUtils$2;->mFetched:Ljava/io/Closeable;

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 114
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonymobile/music/common/ThreadingUtils$2;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .line 139
    iget-object p1, p0, Lcom/sonymobile/music/common/ThreadingUtils$2;->val$fResult:Lcom/sonymobile/music/common/ThreadingUtils$Holder;

    iget-object v0, p0, Lcom/sonymobile/music/common/ThreadingUtils$2;->mFetched:Ljava/io/Closeable;

    iput-object v0, p1, Lcom/sonymobile/music/common/ThreadingUtils$Holder;->mHold:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 140
    iput-object p1, p0, Lcom/sonymobile/music/common/ThreadingUtils$2;->mFetched:Ljava/io/Closeable;

    .line 141
    iget-object p1, p0, Lcom/sonymobile/music/common/ThreadingUtils$2;->val$fLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
