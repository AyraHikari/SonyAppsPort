.class public Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;
.super Lcom/sonyericsson/music/common/RetainedAsyncTask;
.source "ListenerBasedRetainedAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask$RetainedAsyncTaskListener;
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
        "Lcom/sonyericsson/music/common/RetainedAsyncTask<",
        "TParams;TProgress;TResult;>;"
    }
.end annotation


# instance fields
.field protected mListener:Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask$RetainedAsyncTaskListener;

.field mResultReturned:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/common/RetainedAsyncTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;->mResultReturned:Z

    return-void
.end method

.method private returnResultToListener()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;->mListener:Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask$RetainedAsyncTaskListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/common/RetainedAsyncTask;->mAppContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;->mResultReturned:Z

    if-nez v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/sonyericsson/music/common/RetainedAsyncTask;->getState()Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;

    move-result-object v0

    .line 53
    sget-object v1, Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;->PROCESSED_RESULT_STATE:Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;

    if-ne v0, v1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;->mListener:Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask$RetainedAsyncTaskListener;

    iget-object v1, p0, Lcom/sonyericsson/music/common/RetainedAsyncTask;->mResult:Ljava/lang/Object;

    invoke-interface {v0, p0, v1}, Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask$RetainedAsyncTaskListener;->onTaskDone(Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;->mResultReturned:Z

    .line 57
    invoke-virtual {p0}, Lcom/sonyericsson/music/common/RetainedAsyncTask;->removeTask()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected varargs doTaskInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method protected onPreExecute()V
    .locals 1

    .line 42
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 44
    iget-object v0, p0, Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;->mListener:Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask$RetainedAsyncTaskListener;

    if-eqz v0, :cond_0

    .line 45
    invoke-interface {v0, p0}, Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask$RetainedAsyncTaskListener;->onTaskPreExecute(Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;)V

    :cond_0
    return-void
.end method

.method protected processTaskResult()Z
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;->mListener:Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask$RetainedAsyncTaskListener;

    if-eqz v0, :cond_0

    .line 70
    iget-object v1, p0, Lcom/sonyericsson/music/common/RetainedAsyncTask;->mResult:Ljava/lang/Object;

    invoke-interface {v0, p0, v1}, Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask$RetainedAsyncTaskListener;->onTaskDone(Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;->mResultReturned:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setListener(Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask$RetainedAsyncTaskListener;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;->mListener:Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask$RetainedAsyncTaskListener;

    .line 37
    invoke-direct {p0}, Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;->returnResultToListener()V

    return-void
.end method
