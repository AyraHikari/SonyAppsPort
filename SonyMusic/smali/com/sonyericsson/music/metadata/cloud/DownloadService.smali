.class public Lcom/sonyericsson/music/metadata/cloud/DownloadService;
.super Landroid/app/IntentService;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/metadata/cloud/DownloadService$BackgroundWorker;,
        Lcom/sonyericsson/music/metadata/cloud/DownloadService$CallbackHandler;
    }
.end annotation


# instance fields
.field private mCallbackHandler:Lcom/sonyericsson/music/metadata/cloud/DownloadService$CallbackHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    const-class v0, Lcom/sonyericsson/music/metadata/cloud/DownloadService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-static {p0}, Lcom/sonyericsson/music/metadata/cloud/DownloadService;->startDownload(Landroid/content/Context;)V

    return-void
.end method

.method public static cancel(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .line 84
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sonyericsson/music/metadata/cloud/DownloadService$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/sonyericsson/music/metadata/cloud/DownloadService$3;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 90
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static download(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 46
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sonyericsson/music/metadata/cloud/DownloadService$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/sonyericsson/music/metadata/cloud/DownloadService$1;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 60
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static downloadFilesInParent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 66
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sonyericsson/music/metadata/cloud/DownloadService$2;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/sonyericsson/music/metadata/cloud/DownloadService$2;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 80
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static startDownload(Landroid/content/Context;)V
    .locals 3

    .line 109
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sonyericsson/music/metadata/cloud/DownloadService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 111
    invoke-virtual {p0, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void
.end method

.method public static startPendingDownloads(Landroid/content/Context;)V
    .locals 2

    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 97
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sonyericsson/music/metadata/cloud/DownloadService$4;

    invoke-direct {v1, p0}, Lcom/sonyericsson/music/metadata/cloud/DownloadService$4;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 105
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 119
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 121
    new-instance v0, Lcom/sonyericsson/music/metadata/cloud/DownloadService$CallbackHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/music/metadata/cloud/DownloadService$CallbackHandler;-><init>(Lcom/sonyericsson/music/metadata/cloud/DownloadService;Lcom/sonyericsson/music/metadata/cloud/DownloadService$1;)V

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/cloud/DownloadService;->mCallbackHandler:Lcom/sonyericsson/music/metadata/cloud/DownloadService$CallbackHandler;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/cloud/DownloadService;->mCallbackHandler:Lcom/sonyericsson/music/metadata/cloud/DownloadService$CallbackHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 128
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 1

    .line 133
    new-instance p1, Lcom/sonyericsson/music/metadata/cloud/DownloadService$BackgroundWorker;

    iget-object v0, p0, Lcom/sonyericsson/music/metadata/cloud/DownloadService;->mCallbackHandler:Lcom/sonyericsson/music/metadata/cloud/DownloadService$CallbackHandler;

    invoke-direct {p1, p0, v0}, Lcom/sonyericsson/music/metadata/cloud/DownloadService$BackgroundWorker;-><init>(Landroid/content/Context;Lcom/sonyericsson/music/metadata/cloud/DownloadService$CallbackHandler;)V

    .line 134
    invoke-static {p1}, Lcom/sonyericsson/music/metadata/cloud/DownloadService$BackgroundWorker;->access$200(Lcom/sonyericsson/music/metadata/cloud/DownloadService$BackgroundWorker;)V

    .line 135
    invoke-static {p1}, Lcom/sonyericsson/music/metadata/cloud/DownloadService$BackgroundWorker;->access$300(Lcom/sonyericsson/music/metadata/cloud/DownloadService$BackgroundWorker;)V

    return-void
.end method
