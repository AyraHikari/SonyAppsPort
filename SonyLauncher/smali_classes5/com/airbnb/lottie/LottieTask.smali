.class public Lcom/airbnb/lottie/LottieTask;
.super Ljava/lang/Object;
.source "LottieTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/LottieTask$LottieFutureTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static EXECUTOR:Ljava/util/concurrent/Executor;


# instance fields
.field private final failureListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/airbnb/lottie/LottieListener<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field

.field private final handler:Landroid/os/Handler;

.field private volatile result:Lcom/airbnb/lottie/LottieResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/LottieResult<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final successListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/airbnb/lottie/LottieListener<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/LottieTask;->EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lcom/airbnb/lottie/LottieResult<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 47
    .local p0, "this":Lcom/airbnb/lottie/LottieTask;, "Lcom/airbnb/lottie/LottieTask<TT;>;"
    .local p1, "runnable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lcom/airbnb/lottie/LottieResult<TT;>;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/airbnb/lottie/LottieTask;-><init>(Ljava/util/concurrent/Callable;Z)V

    .line 48
    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Callable;Z)V
    .locals 2
    .param p2, "runNow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lcom/airbnb/lottie/LottieResult<",
            "TT;>;>;Z)V"
        }
    .end annotation

    .line 54
    .local p0, "this":Lcom/airbnb/lottie/LottieTask;, "Lcom/airbnb/lottie/LottieTask<TT;>;"
    .local p1, "runnable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lcom/airbnb/lottie/LottieResult<TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/LinkedHashSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieTask;->successListeners:Ljava/util/Set;

    .line 40
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieTask;->failureListeners:Ljava/util/Set;

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieTask;->handler:Landroid/os/Handler;

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/LottieTask;->result:Lcom/airbnb/lottie/LottieResult;

    .line 55
    if-eqz p2, :cond_0

    .line 57
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieResult;

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/LottieTask;->setResult(Lcom/airbnb/lottie/LottieResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Lcom/airbnb/lottie/LottieResult;

    invoke-direct {v1, v0}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/airbnb/lottie/LottieTask;->setResult(Lcom/airbnb/lottie/LottieResult;)V

    .line 60
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 62
    :cond_0
    sget-object v0, Lcom/airbnb/lottie/LottieTask;->EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/airbnb/lottie/LottieTask$LottieFutureTask;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/LottieTask$LottieFutureTask;-><init>(Lcom/airbnb/lottie/LottieTask;Ljava/util/concurrent/Callable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 64
    :goto_1
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/lottie/LottieTask;)Lcom/airbnb/lottie/LottieResult;
    .locals 1
    .param p0, "x0"    # Lcom/airbnb/lottie/LottieTask;

    .line 27
    iget-object v0, p0, Lcom/airbnb/lottie/LottieTask;->result:Lcom/airbnb/lottie/LottieResult;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/lottie/LottieTask;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/airbnb/lottie/LottieTask;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 27
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieTask;->notifySuccessListeners(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/airbnb/lottie/LottieTask;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lcom/airbnb/lottie/LottieTask;
    .param p1, "x1"    # Ljava/lang/Throwable;

    .line 27
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieTask;->notifyFailureListeners(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$300(Lcom/airbnb/lottie/LottieTask;Lcom/airbnb/lottie/LottieResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/airbnb/lottie/LottieTask;
    .param p1, "x1"    # Lcom/airbnb/lottie/LottieResult;

    .line 27
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieTask;->setResult(Lcom/airbnb/lottie/LottieResult;)V

    return-void
.end method

.method private declared-synchronized notifyFailureListeners(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .local p0, "this":Lcom/airbnb/lottie/LottieTask;, "Lcom/airbnb/lottie/LottieTask<TT;>;"
    monitor-enter p0

    .line 151
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/airbnb/lottie/LottieTask;->failureListeners:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 152
    .local v0, "listenersCopy":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/LottieListener<Ljava/lang/Throwable;>;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    const-string v1, "Lottie encountered an error but no failure listener was added:"

    invoke-static {v1, p1}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    monitor-exit p0

    return-void

    .line 157
    .end local p0    # "this":Lcom/airbnb/lottie/LottieTask;, "Lcom/airbnb/lottie/LottieTask<TT;>;"
    :cond_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieListener;

    .line 158
    .local v2, "l":Lcom/airbnb/lottie/LottieListener;, "Lcom/airbnb/lottie/LottieListener<Ljava/lang/Throwable;>;"
    invoke-interface {v2, p1}, Lcom/airbnb/lottie/LottieListener;->onResult(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    .end local v2    # "l":Lcom/airbnb/lottie/LottieListener;, "Lcom/airbnb/lottie/LottieListener<Ljava/lang/Throwable;>;"
    goto :goto_0

    .line 160
    :cond_1
    monitor-exit p0

    return-void

    .line 150
    .end local v0    # "listenersCopy":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/LottieListener<Ljava/lang/Throwable;>;>;"
    .end local p1    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private notifyListeners()V
    .locals 2

    .line 123
    .local p0, "this":Lcom/airbnb/lottie/LottieTask;, "Lcom/airbnb/lottie/LottieTask<TT;>;"
    iget-object v0, p0, Lcom/airbnb/lottie/LottieTask;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/airbnb/lottie/LottieTask$1;

    invoke-direct {v1, p0}, Lcom/airbnb/lottie/LottieTask$1;-><init>(Lcom/airbnb/lottie/LottieTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 137
    return-void
.end method

.method private declared-synchronized notifySuccessListeners(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .local p0, "this":Lcom/airbnb/lottie/LottieTask;, "Lcom/airbnb/lottie/LottieTask<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    .line 142
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/airbnb/lottie/LottieTask;->successListeners:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 143
    .local v0, "listenersCopy":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/LottieListener<TT;>;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieListener;

    .line 144
    .local v2, "l":Lcom/airbnb/lottie/LottieListener;, "Lcom/airbnb/lottie/LottieListener<TT;>;"
    invoke-interface {v2, p1}, Lcom/airbnb/lottie/LottieListener;->onResult(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    .end local v2    # "l":Lcom/airbnb/lottie/LottieListener;, "Lcom/airbnb/lottie/LottieListener<TT;>;"
    goto :goto_0

    .line 146
    .end local p0    # "this":Lcom/airbnb/lottie/LottieTask;, "Lcom/airbnb/lottie/LottieTask<TT;>;"
    :cond_0
    monitor-exit p0

    return-void

    .line 141
    .end local v0    # "listenersCopy":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/LottieListener<TT;>;>;"
    .end local p1    # "value":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private setResult(Lcom/airbnb/lottie/LottieResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/LottieResult<",
            "TT;>;)V"
        }
    .end annotation

    .line 67
    .local p0, "this":Lcom/airbnb/lottie/LottieTask;, "Lcom/airbnb/lottie/LottieTask<TT;>;"
    .local p1, "result":Lcom/airbnb/lottie/LottieResult;, "Lcom/airbnb/lottie/LottieResult<TT;>;"
    iget-object v0, p0, Lcom/airbnb/lottie/LottieTask;->result:Lcom/airbnb/lottie/LottieResult;

    if-nez v0, :cond_0

    .line 70
    iput-object p1, p0, Lcom/airbnb/lottie/LottieTask;->result:Lcom/airbnb/lottie/LottieResult;

    .line 71
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieTask;->notifyListeners()V

    .line 72
    return-void

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A task may only be set once."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized addFailureListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/LottieListener<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/airbnb/lottie/LottieTask<",
            "TT;>;"
        }
    .end annotation

    .local p0, "this":Lcom/airbnb/lottie/LottieTask;, "Lcom/airbnb/lottie/LottieTask<TT;>;"
    .local p1, "listener":Lcom/airbnb/lottie/LottieListener;, "Lcom/airbnb/lottie/LottieListener<Ljava/lang/Throwable;>;"
    monitor-enter p0

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieTask;->result:Lcom/airbnb/lottie/LottieResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieTask;->result:Lcom/airbnb/lottie/LottieResult;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieResult;->getException()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/airbnb/lottie/LottieTask;->result:Lcom/airbnb/lottie/LottieResult;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieResult;->getException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/airbnb/lottie/LottieListener;->onResult(Ljava/lang/Object;)V

    .line 107
    .end local p0    # "this":Lcom/airbnb/lottie/LottieTask;, "Lcom/airbnb/lottie/LottieTask<TT;>;"
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieTask;->failureListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit p0

    return-object p0

    .line 102
    .end local p1    # "listener":Lcom/airbnb/lottie/LottieListener;, "Lcom/airbnb/lottie/LottieListener<Ljava/lang/Throwable;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/LottieListener<",
            "TT;>;)",
            "Lcom/airbnb/lottie/LottieTask<",
            "TT;>;"
        }
    .end annotation

    .local p0, "this":Lcom/airbnb/lottie/LottieTask;, "Lcom/airbnb/lottie/LottieTask<TT;>;"
    .local p1, "listener":Lcom/airbnb/lottie/LottieListener;, "Lcom/airbnb/lottie/LottieListener<TT;>;"
    monitor-enter p0

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieTask;->result:Lcom/airbnb/lottie/LottieResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieTask;->result:Lcom/airbnb/lottie/LottieResult;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/airbnb/lottie/LottieTask;->result:Lcom/airbnb/lottie/LottieResult;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/airbnb/lottie/LottieListener;->onResult(Ljava/lang/Object;)V

    .line 83
    .end local p0    # "this":Lcom/airbnb/lottie/LottieTask;, "Lcom/airbnb/lottie/LottieTask<TT;>;"
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieTask;->successListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit p0

    return-object p0

    .line 78
    .end local p1    # "listener":Lcom/airbnb/lottie/LottieListener;, "Lcom/airbnb/lottie/LottieListener<TT;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeFailureListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/LottieListener<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/airbnb/lottie/LottieTask<",
            "TT;>;"
        }
    .end annotation

    .local p0, "this":Lcom/airbnb/lottie/LottieTask;, "Lcom/airbnb/lottie/LottieTask<TT;>;"
    .local p1, "listener":Lcom/airbnb/lottie/LottieListener;, "Lcom/airbnb/lottie/LottieListener<Ljava/lang/Throwable;>;"
    monitor-enter p0

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieTask;->failureListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    monitor-exit p0

    return-object p0

    .line 116
    .end local p0    # "this":Lcom/airbnb/lottie/LottieTask;, "Lcom/airbnb/lottie/LottieTask<TT;>;"
    .end local p1    # "listener":Lcom/airbnb/lottie/LottieListener;, "Lcom/airbnb/lottie/LottieListener<Ljava/lang/Throwable;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/LottieListener<",
            "TT;>;)",
            "Lcom/airbnb/lottie/LottieTask<",
            "TT;>;"
        }
    .end annotation

    .local p0, "this":Lcom/airbnb/lottie/LottieTask;, "Lcom/airbnb/lottie/LottieTask<TT;>;"
    .local p1, "listener":Lcom/airbnb/lottie/LottieListener;, "Lcom/airbnb/lottie/LottieListener<TT;>;"
    monitor-enter p0

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieTask;->successListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit p0

    return-object p0

    .line 92
    .end local p0    # "this":Lcom/airbnb/lottie/LottieTask;, "Lcom/airbnb/lottie/LottieTask<TT;>;"
    .end local p1    # "listener":Lcom/airbnb/lottie/LottieListener;, "Lcom/airbnb/lottie/LottieListener<TT;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
