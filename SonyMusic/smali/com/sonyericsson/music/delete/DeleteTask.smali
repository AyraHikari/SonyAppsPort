.class Lcom/sonyericsson/music/delete/DeleteTask;
.super Landroid/os/AsyncTask;
.source "DeleteTask.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;",
        "Landroid/content/ServiceConnection;"
    }
.end annotation


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private final mDeleteFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/delete/DeleteUtils$DeleteFile;",
            ">;"
        }
    .end annotation
.end field

.field private final mFolderId:Ljava/lang/String;

.field private mHasBinder:Z

.field private final mIsSingleItem:Z

.field private final mLatch:Ljava/util/concurrent/CountDownLatch;

.field private mLock:Ljava/lang/Object;

.field private mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

.field private final mTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/delete/DeleteUtils$DeleteFile;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    if-eqz p2, :cond_0

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/delete/DeleteTask;->mAppContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/sonyericsson/music/delete/DeleteTask;->mDeleteFiles:Ljava/util/List;

    .line 63
    iput-object p3, p0, Lcom/sonyericsson/music/delete/DeleteTask;->mTitle:Ljava/lang/String;

    .line 64
    iput-boolean p4, p0, Lcom/sonyericsson/music/delete/DeleteTask;->mIsSingleItem:Z

    .line 65
    iput-object p5, p0, Lcom/sonyericsson/music/delete/DeleteTask;->mFolderId:Ljava/lang/String;

    .line 67
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/sonyericsson/music/delete/DeleteTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 68
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/music/delete/DeleteTask;->mLock:Ljava/lang/Object;

    return-void

    .line 58
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "deleteFiles is not allowed to be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 3

    .line 81
    :try_start_0
    iget-object p1, p0, Lcom/sonyericsson/music/delete/DeleteTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v0, 0x1388

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :catch_0
    iget-object p1, p0, Lcom/sonyericsson/music/delete/DeleteTask;->mDeleteFiles:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 88
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/sonyericsson/music/delete/DeleteTask;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 91
    :try_start_1
    iget-object v1, p0, Lcom/sonyericsson/music/delete/DeleteTask;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    .line 92
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/sonyericsson/music/delete/DeleteTask;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 97
    iget-object v2, p0, Lcom/sonyericsson/music/delete/DeleteTask;->mDeleteFiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 98
    iget-object p1, p0, Lcom/sonyericsson/music/delete/DeleteTask;->mDeleteFiles:Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/music/delete/DeleteUtils;->deleteTracks(Landroid/content/ContentResolver;Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;Ljava/util/List;)I

    move-result p1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 92
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 103
    :cond_0
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/delete/DeleteTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled()V
    .locals 1

    .line 145
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 147
    iget-boolean v0, p0, Lcom/sonyericsson/music/delete/DeleteTask;->mHasBinder:Z

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/sonyericsson/music/delete/DeleteTask;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 149
    iput-boolean v0, p0, Lcom/sonyericsson/music/delete/DeleteTask;->mHasBinder:Z

    :cond_0
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 5

    .line 108
    iget-boolean v0, p0, Lcom/sonyericsson/music/delete/DeleteTask;->mHasBinder:Z

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/sonyericsson/music/delete/DeleteTask;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 113
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-lez p1, :cond_2

    .line 114
    iget-boolean p1, p0, Lcom/sonyericsson/music/delete/DeleteTask;->mIsSingleItem:Z

    if-eqz p1, :cond_1

    const p1, 0x7f100134

    goto :goto_0

    :cond_1
    const p1, 0x7f100135

    .line 116
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/music/delete/DeleteTask;->mAppContext:Landroid/content/Context;

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sonyericsson/music/delete/DeleteTask;->mTitle:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 118
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/music/delete/DeleteTask;->mFolderId:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 119
    iget-object v1, p0, Lcom/sonyericsson/music/delete/DeleteTask;->mAppContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/sonyericsson/music/common/FolderActions;->refreshFolderArts(Landroid/content/Context;Ljava/lang/String;)V

    .line 121
    :cond_3
    iget-object p1, p0, Lcom/sonyericsson/music/delete/DeleteTask;->mAppContext:Landroid/content/Context;

    const v1, 0x7f1002bd

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 123
    :goto_1
    iget-object v1, p0, Lcom/sonyericsson/music/delete/DeleteTask;->mAppContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/sonyericsson/music/common/MusicToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 34
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/delete/DeleteTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 73
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 75
    iget-object v0, p0, Lcom/sonyericsson/music/delete/DeleteTask;->mAppContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/sonyericsson/music/common/MusicUtils;->startAndBindMediaPlaybackService(Landroid/content/Context;Landroid/content/ServiceConnection;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/music/delete/DeleteTask;->mHasBinder:Z

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 128
    iget-object p1, p0, Lcom/sonyericsson/music/delete/DeleteTask;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 129
    :try_start_0
    invoke-static {p2}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/music/delete/DeleteTask;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    .line 130
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    iget-object p1, p0, Lcom/sonyericsson/music/delete/DeleteTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception p2

    .line 130
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 136
    iget-object p1, p0, Lcom/sonyericsson/music/delete/DeleteTask;->mLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    .line 137
    :try_start_0
    iput-object v0, p0, Lcom/sonyericsson/music/delete/DeleteTask;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    .line 138
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    iget-object p1, p0, Lcom/sonyericsson/music/delete/DeleteTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const/4 p1, 0x1

    .line 140
    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->cancel(Z)Z

    return-void

    :catchall_0
    move-exception v0

    .line 138
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
