.class public abstract Lcom/sonyericsson/music/common/RetainedAsyncTask;
.super Landroid/os/AsyncTask;
.source "RetainedAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask<",
        "TParams;TProgress;TResult;>;"
    }
.end annotation


# instance fields
.field protected mAppContext:Landroid/content/Context;

.field protected mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TResult;"
        }
    .end annotation
.end field

.field protected final mRetainKey:Ljava/lang/String;

.field protected mState:Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/common/RetainedAsyncTask;->mAppContext:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcom/sonyericsson/music/common/RetainedAsyncTask;->mRetainKey:Ljava/lang/String;

    .line 82
    sget-object p1, Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;->NOT_STARTED_STATE:Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;

    iput-object p1, p0, Lcom/sonyericsson/music/common/RetainedAsyncTask;->mState:Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;

    return-void
.end method


# virtual methods
.method public cancelAndRemoveTask()V
    .locals 1

    const/4 v0, 0x1

    .line 164
    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 165
    invoke-virtual {p0}, Lcom/sonyericsson/music/common/RetainedAsyncTask;->removeTask()V

    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation

    .line 105
    monitor-enter p0

    .line 106
    :try_start_0
    sget-object v0, Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;->BACKGROUND_JOB_IN_PROGRESS_STATE:Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;

    iput-object v0, p0, Lcom/sonyericsson/music/common/RetainedAsyncTask;->mState:Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;

    .line 107
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/common/RetainedAsyncTask;->doTaskInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 107
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected varargs abstract doTaskInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/sonyericsson/music/common/RetainedAsyncTask;->mResult:Ljava/lang/Object;

    return-object v0
.end method

.method public getRetainKey()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/sonyericsson/music/common/RetainedAsyncTask;->mRetainKey:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;
    .locals 1

    .line 86
    monitor-enter p0

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/music/common/RetainedAsyncTask;->mState:Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 88
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onCancelled(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 130
    iput-object p1, p0, Lcom/sonyericsson/music/common/RetainedAsyncTask;->mResult:Ljava/lang/Object;

    .line 131
    sget-object p1, Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;->BACKGROUND_JOB_DONE_STATE:Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;

    iput-object p1, p0, Lcom/sonyericsson/music/common/RetainedAsyncTask;->mState:Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 118
    iput-object p1, p0, Lcom/sonyericsson/music/common/RetainedAsyncTask;->mResult:Ljava/lang/Object;

    .line 119
    sget-object p1, Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;->BACKGROUND_JOB_DONE_STATE:Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;

    iput-object p1, p0, Lcom/sonyericsson/music/common/RetainedAsyncTask;->mState:Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;

    .line 121
    invoke-virtual {p0}, Lcom/sonyericsson/music/common/RetainedAsyncTask;->processResult()V

    return-void
.end method

.method public processResult()V
    .locals 2

    .line 135
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/music/common/RetainedAsyncTask;->processTaskResult()Z

    move-result v0

    .line 151
    sget-object v1, Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;->PROCESSED_RESULT_STATE:Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;

    iput-object v1, p0, Lcom/sonyericsson/music/common/RetainedAsyncTask;->mState:Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;

    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {p0}, Lcom/sonyericsson/music/common/RetainedAsyncTask;->removeTask()V

    :cond_1
    return-void
.end method

.method protected abstract processTaskResult()Z
.end method

.method protected removeTask()V
    .locals 2

    .line 159
    invoke-static {}, Lcom/sonyericsson/music/RetainManager;->getInstance()Lcom/sonyericsson/music/RetainManager;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lcom/sonyericsson/music/common/RetainedAsyncTask;->mRetainKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/RetainManager;->remove(Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method
