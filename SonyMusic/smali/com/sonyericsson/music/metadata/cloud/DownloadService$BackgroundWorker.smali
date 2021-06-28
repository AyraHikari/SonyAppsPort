.class Lcom/sonyericsson/music/metadata/cloud/DownloadService$BackgroundWorker;
.super Ljava/lang/Object;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/metadata/cloud/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackgroundWorker"
.end annotation


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mCallbackHandler:Lcom/sonyericsson/music/metadata/cloud/DownloadService$CallbackHandler;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/sonyericsson/music/metadata/cloud/DownloadService$CallbackHandler;)V
    .locals 0

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/metadata/cloud/DownloadService$BackgroundWorker;->mAppContext:Landroid/content/Context;

    .line 206
    iput-object p2, p0, Lcom/sonyericsson/music/metadata/cloud/DownloadService$BackgroundWorker;->mCallbackHandler:Lcom/sonyericsson/music/metadata/cloud/DownloadService$CallbackHandler;

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/music/metadata/cloud/DownloadService$BackgroundWorker;)V
    .locals 0

    .line 199
    invoke-direct {p0}, Lcom/sonyericsson/music/metadata/cloud/DownloadService$BackgroundWorker;->download()V

    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/music/metadata/cloud/DownloadService$BackgroundWorker;)V
    .locals 0

    .line 199
    invoke-direct {p0}, Lcom/sonyericsson/music/metadata/cloud/DownloadService$BackgroundWorker;->cleanUp()V

    return-void
.end method

.method private cleanUp()V
    .locals 6

    .line 263
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/cloud/DownloadService$BackgroundWorker;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/music/common/PermissionUtils;->isWriteStoragePermissionGranted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/cloud/DownloadService$BackgroundWorker;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 269
    invoke-static {v0}, Lcom/sonyericsson/music/metadata/cloud/db/FilesTable;->getDownloadingCloudFiles(Landroid/content/ContentResolver;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 271
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 272
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;

    .line 273
    invoke-virtual {v2}, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->getFilePath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 274
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 276
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_1

    .line 277
    sget-object v3, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 285
    invoke-virtual {v2}, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->getAccountId()I

    move-result v5

    .line 286
    invoke-virtual {v2}, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->getFileId()Ljava/lang/String;

    move-result-object v2

    .line 284
    invoke-static {v0, v3, v4, v5, v2}, Lcom/sonyericsson/music/metadata/cloud/db/FilesTable;->updateDownloadState(Landroid/content/ContentResolver;ILjava/lang/String;ILjava/lang/String;)I

    goto :goto_0

    :cond_2
    return-void
.end method

.method private download()V
    .locals 8

    .line 210
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/cloud/DownloadService$BackgroundWorker;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 217
    invoke-static {v0}, Lcom/sonyericsson/music/metadata/cloud/db/FilesTable;->getPendingCloudFiles(Landroid/content/ContentResolver;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-eqz v1, :cond_3

    .line 218
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    if-nez v3, :cond_3

    .line 220
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;

    .line 221
    invoke-virtual {v5}, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->getAccountId()I

    move-result v6

    invoke-static {v0, v6}, Lcom/sonyericsson/music/metadata/cloud/db/AccountTable;->getAccountForId(Landroid/content/ContentResolver;I)Lcom/sonyericsson/music/metadata/cloud/db/CloudAccount;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 224
    invoke-virtual {v6}, Lcom/sonyericsson/music/metadata/cloud/db/CloudAccount;->getServiceId()I

    move-result v7

    if-eq v7, v4, :cond_0

    goto :goto_1

    .line 226
    :cond_0
    invoke-virtual {v5}, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p0, v3, v1, v2}, Lcom/sonyericsson/music/metadata/cloud/DownloadService$BackgroundWorker;->reportProgress(Ljava/lang/String;IZ)V

    .line 228
    iget-object v1, p0, Lcom/sonyericsson/music/metadata/cloud/DownloadService$BackgroundWorker;->mAppContext:Landroid/content/Context;

    .line 229
    invoke-virtual {v5}, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->getFileId()Ljava/lang/String;

    move-result-object v3

    .line 230
    invoke-virtual {v5}, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->getAccountId()I

    move-result v5

    .line 231
    invoke-virtual {v6}, Lcom/sonyericsson/music/metadata/cloud/db/CloudAccount;->getAccountName()Ljava/lang/String;

    move-result-object v6

    .line 228
    invoke-static {v1, v3, v7, v5, v6}, Lcom/sonyericsson/music/metadata/cloud/GoogleDrive;->downloadFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    xor-int/2addr v1, v4

    if-nez v1, :cond_1

    .line 234
    iget-object v3, p0, Lcom/sonyericsson/music/metadata/cloud/DownloadService$BackgroundWorker;->mAppContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sonyericsson/music/metadata/cloud/DriveAnalytics;->sendDownloadEvent(Landroid/content/Context;)V

    :cond_1
    move v3, v1

    .line 244
    :cond_2
    :goto_1
    invoke-static {v0}, Lcom/sonyericsson/music/metadata/cloud/db/FilesTable;->getPendingCloudFiles(Landroid/content/ContentResolver;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 247
    invoke-direct {p0, v0, v2, v4}, Lcom/sonyericsson/music/metadata/cloud/DownloadService$BackgroundWorker;->reportProgress(Ljava/lang/String;IZ)V

    return-void
.end method

.method private reportProgress(Ljava/lang/String;IZ)V
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/cloud/DownloadService$BackgroundWorker;->mCallbackHandler:Lcom/sonyericsson/music/metadata/cloud/DownloadService$CallbackHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 252
    :cond_0
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 253
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 254
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
