.class public Lcom/android/launcher3/icons/cache/HandlerRunnable;
.super Ljava/lang/Object;
.source "HandlerRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final mCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mCallbackExecutor:Ljava/util/concurrent/Executor;

.field private mCanceled:Z

.field private final mEndRunnable:Ljava/lang/Runnable;

.field private mEnded:Z

.field private final mTask:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mWorkerHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$gb2m1InnAoayw7K3MvjK2Ysr6xA(Lcom/android/launcher3/icons/cache/HandlerRunnable;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/icons/cache/HandlerRunnable;->onEnd()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 6
    .param p1, "workerHandler"    # Landroid/os/Handler;
    .param p3, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 41
    .local p0, "this":Lcom/android/launcher3/icons/cache/HandlerRunnable;, "Lcom/android/launcher3/icons/cache/HandlerRunnable<TT;>;"
    .local p2, "task":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    .local p4, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TT;>;"
    new-instance v5, Lcom/android/launcher3/icons/cache/HandlerRunnable$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/android/launcher3/icons/cache/HandlerRunnable$$ExternalSyntheticLambda0;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/icons/cache/HandlerRunnable;-><init>(Landroid/os/Handler;Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Ljava/lang/Runnable;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "workerHandler"    # Landroid/os/Handler;
    .param p3, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p5, "endRunnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "TT;>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 45
    .local p0, "this":Lcom/android/launcher3/icons/cache/HandlerRunnable;, "Lcom/android/launcher3/icons/cache/HandlerRunnable<TT;>;"
    .local p2, "task":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    .local p4, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/icons/cache/HandlerRunnable;->mEnded:Z

    .line 37
    iput-boolean v0, p0, Lcom/android/launcher3/icons/cache/HandlerRunnable;->mCanceled:Z

    .line 46
    iput-object p1, p0, Lcom/android/launcher3/icons/cache/HandlerRunnable;->mWorkerHandler:Landroid/os/Handler;

    .line 47
    iput-object p2, p0, Lcom/android/launcher3/icons/cache/HandlerRunnable;->mTask:Ljava/util/function/Supplier;

    .line 48
    iput-object p3, p0, Lcom/android/launcher3/icons/cache/HandlerRunnable;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 49
    iput-object p4, p0, Lcom/android/launcher3/icons/cache/HandlerRunnable;->mCallback:Ljava/util/function/Consumer;

    .line 50
    iput-object p5, p0, Lcom/android/launcher3/icons/cache/HandlerRunnable;->mEndRunnable:Ljava/lang/Runnable;

    .line 51
    return-void
.end method

.method static synthetic lambda$new$0()V
    .locals 0

    .line 41
    return-void
.end method

.method private onEnd()V
    .locals 1

    .line 74
    .local p0, "this":Lcom/android/launcher3/icons/cache/HandlerRunnable;, "Lcom/android/launcher3/icons/cache/HandlerRunnable<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/icons/cache/HandlerRunnable;->mEnded:Z

    if-nez v0, :cond_0

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/icons/cache/HandlerRunnable;->mEnded:Z

    .line 76
    iget-object v0, p0, Lcom/android/launcher3/icons/cache/HandlerRunnable;->mEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 78
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 57
    .local p0, "this":Lcom/android/launcher3/icons/cache/HandlerRunnable;, "Lcom/android/launcher3/icons/cache/HandlerRunnable<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/icons/cache/HandlerRunnable;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/icons/cache/HandlerRunnable;->mCanceled:Z

    .line 59
    iget-object v0, p0, Lcom/android/launcher3/icons/cache/HandlerRunnable;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/launcher3/icons/cache/HandlerRunnable$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/icons/cache/HandlerRunnable$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/icons/cache/HandlerRunnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 60
    return-void
.end method

.method synthetic lambda$run$1$com-android-launcher3-icons-cache-HandlerRunnable(Ljava/lang/Object;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 66
    .local p0, "this":Lcom/android/launcher3/icons/cache/HandlerRunnable;, "Lcom/android/launcher3/icons/cache/HandlerRunnable<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/icons/cache/HandlerRunnable;->mCanceled:Z

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/launcher3/icons/cache/HandlerRunnable;->mCallback:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 69
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/icons/cache/HandlerRunnable;->onEnd()V

    .line 70
    return-void
.end method

.method public run()V
    .locals 3

    .line 64
    .local p0, "this":Lcom/android/launcher3/icons/cache/HandlerRunnable;, "Lcom/android/launcher3/icons/cache/HandlerRunnable<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/icons/cache/HandlerRunnable;->mTask:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    .line 65
    .local v0, "value":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/android/launcher3/icons/cache/HandlerRunnable;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/launcher3/icons/cache/HandlerRunnable$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/icons/cache/HandlerRunnable$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/icons/cache/HandlerRunnable;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 71
    return-void
.end method
