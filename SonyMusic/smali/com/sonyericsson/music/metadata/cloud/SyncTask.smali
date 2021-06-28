.class public Lcom/sonyericsson/music/metadata/cloud/SyncTask;
.super Lcom/sonyericsson/music/common/RetainedAsyncTask;
.source "SyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/music/common/RetainedAsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final RETAIN_KEY_PREFIX:Ljava/lang/String; = "com.sonyericsson.music.metadata.cloud.SyncTask"


# instance fields
.field private final mAccountId:I

.field private final mIsManualSync:Z

.field private final mServiceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;IIZ)V
    .locals 1

    .line 42
    invoke-static {p2, p3}, Lcom/sonyericsson/music/metadata/cloud/SyncTask;->getRetainKey(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/common/RetainedAsyncTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    iput p2, p0, Lcom/sonyericsson/music/metadata/cloud/SyncTask;->mAccountId:I

    .line 45
    iput p3, p0, Lcom/sonyericsson/music/metadata/cloud/SyncTask;->mServiceId:I

    .line 46
    iput-boolean p4, p0, Lcom/sonyericsson/music/metadata/cloud/SyncTask;->mIsManualSync:Z

    return-void
.end method

.method private static alreadyRunning(Lcom/sonyericsson/music/RetainManager;II)Z
    .locals 0

    .line 82
    invoke-static {p1, p2}, Lcom/sonyericsson/music/metadata/cloud/SyncTask;->getRetainKey(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/RetainManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/music/metadata/cloud/SyncTask;

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    .line 85
    invoke-virtual {p0}, Lcom/sonyericsson/music/common/RetainedAsyncTask;->getState()Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;

    move-result-object p0

    .line 86
    sget-object p2, Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;->BACKGROUND_JOB_DONE_STATE:Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;

    if-eq p0, p2, :cond_0

    sget-object p2, Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;->PROCESSED_RESULT_STATE:Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;

    if-eq p0, p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1

    :cond_1
    return p1
.end method

.method private static getRetainKey(II)Ljava/lang/String;
    .locals 2

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sonyericsson/music/metadata/cloud/SyncTask;->RETAIN_KEY_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static start(Lcom/sonyericsson/music/MusicActivity;IIZ)V
    .locals 2

    .line 33
    invoke-static {}, Lcom/sonyericsson/music/RetainManager;->getInstance()Lcom/sonyericsson/music/RetainManager;

    move-result-object v0

    .line 34
    invoke-static {v0, p1, p2}, Lcom/sonyericsson/music/metadata/cloud/SyncTask;->alreadyRunning(Lcom/sonyericsson/music/RetainManager;II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Lcom/sonyericsson/music/metadata/cloud/SyncTask;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sonyericsson/music/metadata/cloud/SyncTask;-><init>(Landroid/content/Context;IIZ)V

    .line 36
    invoke-static {p1, p2}, Lcom/sonyericsson/music/metadata/cloud/SyncTask;->getRetainKey(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Lcom/sonyericsson/music/RetainManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v1, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic doTaskInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 19
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/metadata/cloud/SyncTask;->doTaskInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doTaskInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .line 51
    iget-object p1, p0, Lcom/sonyericsson/music/common/RetainedAsyncTask;->mAppContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget v0, p0, Lcom/sonyericsson/music/metadata/cloud/SyncTask;->mAccountId:I

    iget-boolean v1, p0, Lcom/sonyericsson/music/metadata/cloud/SyncTask;->mIsManualSync:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-static {p1, v0, v1}, Lcom/sonyericsson/music/metadata/cloud/db/AccountTable;->updateSyncState(Landroid/content/ContentResolver;II)I

    move-result p1

    if-lez p1, :cond_2

    .line 56
    iget p1, p0, Lcom/sonyericsson/music/metadata/cloud/SyncTask;->mServiceId:I

    if-eq p1, v2, :cond_1

    goto :goto_1

    .line 58
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/music/common/RetainedAsyncTask;->mAppContext:Landroid/content/Context;

    iget v0, p0, Lcom/sonyericsson/music/metadata/cloud/SyncTask;->mAccountId:I

    invoke-static {p1, v0}, Lcom/sonyericsson/music/metadata/cloud/GoogleDrive;->synchronize(Landroid/content/Context;I)Z

    .line 67
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/sonyericsson/music/common/RetainedAsyncTask;->mAppContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sonyericsson/music/metadata/cloud/DownloadService;->startPendingDownloads(Landroid/content/Context;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected processTaskResult()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
