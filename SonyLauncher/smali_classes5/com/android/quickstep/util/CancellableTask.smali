.class public abstract Lcom/android/quickstep/util/CancellableTask;
.super Ljava/lang/Object;
.source "CancellableTask.java"

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
.field private mCancelled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    .local p0, "this":Lcom/android/quickstep/util/CancellableTask;, "Lcom/android/quickstep/util/CancellableTask<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/util/CancellableTask;->mCancelled:Z

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 66
    .local p0, "this":Lcom/android/quickstep/util/CancellableTask;, "Lcom/android/quickstep/util/CancellableTask<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/util/CancellableTask;->mCancelled:Z

    .line 67
    return-void
.end method

.method public abstract getResultOnBg()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract handleResult(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method synthetic lambda$run$0$com-android-quickstep-util-CancellableTask(Ljava/lang/Object;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Object;

    .line 40
    .local p0, "this":Lcom/android/quickstep/util/CancellableTask;, "Lcom/android/quickstep/util/CancellableTask<TT;>;"
    iget-boolean v0, p0, Lcom/android/quickstep/util/CancellableTask;->mCancelled:Z

    if-eqz v0, :cond_0

    .line 41
    return-void

    .line 43
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/CancellableTask;->handleResult(Ljava/lang/Object;)V

    .line 44
    return-void
.end method

.method public final run()V
    .locals 3

    .line 32
    .local p0, "this":Lcom/android/quickstep/util/CancellableTask;, "Lcom/android/quickstep/util/CancellableTask<TT;>;"
    iget-boolean v0, p0, Lcom/android/quickstep/util/CancellableTask;->mCancelled:Z

    if-eqz v0, :cond_0

    .line 33
    return-void

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/util/CancellableTask;->getResultOnBg()Ljava/lang/Object;

    move-result-object v0

    .line 36
    .local v0, "result":Ljava/lang/Object;, "TT;"
    iget-boolean v1, p0, Lcom/android/quickstep/util/CancellableTask;->mCancelled:Z

    if-eqz v1, :cond_1

    .line 37
    return-void

    .line 39
    :cond_1
    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/android/quickstep/util/CancellableTask$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/android/quickstep/util/CancellableTask$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/util/CancellableTask;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 45
    return-void
.end method
