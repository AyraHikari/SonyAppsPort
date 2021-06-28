.class Lcom/sonyericsson/music/metadata/cloud/DownloadService$CallbackHandler;
.super Landroid/os/Handler;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/metadata/cloud/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackHandler"
.end annotation


# static fields
.field static final PROGRESS:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/metadata/cloud/DownloadService;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/music/metadata/cloud/DownloadService;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/sonyericsson/music/metadata/cloud/DownloadService$CallbackHandler;->this$0:Lcom/sonyericsson/music/metadata/cloud/DownloadService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/music/metadata/cloud/DownloadService;Lcom/sonyericsson/music/metadata/cloud/DownloadService$1;)V
    .locals 0

    .line 138
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/metadata/cloud/DownloadService$CallbackHandler;-><init>(Lcom/sonyericsson/music/metadata/cloud/DownloadService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 145
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/music/metadata/cloud/DownloadService$CallbackHandler;->onProgress(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method onProgress(Ljava/lang/String;I)V
    .locals 5

    const/4 v0, 0x1

    if-lez p2, :cond_2

    const/4 v1, 0x0

    if-le p2, v0, :cond_0

    .line 163
    iget-object v2, p0, Lcom/sonyericsson/music/metadata/cloud/DownloadService$CallbackHandler;->this$0:Lcom/sonyericsson/music/metadata/cloud/DownloadService;

    const v3, 0x7f100079

    new-array v4, v0, [Ljava/lang/Object;

    .line 164
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/app/IntentService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/sonyericsson/music/metadata/cloud/DownloadService$CallbackHandler;->this$0:Lcom/sonyericsson/music/metadata/cloud/DownloadService;

    const v2, 0x7f10007a

    .line 165
    invoke-virtual {p2, v2}, Landroid/app/IntentService;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 167
    :goto_0
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v3, p0, Lcom/sonyericsson/music/metadata/cloud/DownloadService$CallbackHandler;->this$0:Lcom/sonyericsson/music/metadata/cloud/DownloadService;

    const-string v4, "download_music"

    invoke-direct {v2, v3, v4}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 170
    iget-object v3, p0, Lcom/sonyericsson/music/metadata/cloud/DownloadService$CallbackHandler;->this$0:Lcom/sonyericsson/music/metadata/cloud/DownloadService;

    const v4, 0x7f10007b

    .line 171
    invoke-virtual {v3, v4}, Landroid/app/IntentService;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 170
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    iget-object v3, p0, Lcom/sonyericsson/music/metadata/cloud/DownloadService$CallbackHandler;->this$0:Lcom/sonyericsson/music/metadata/cloud/DownloadService;

    const v4, 0x7f100078

    new-array v0, v0, [Ljava/lang/Object;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, ""

    :goto_1
    aput-object p1, v0, v1

    .line 172
    invoke-virtual {v3, v4, v0}, Landroid/app/IntentService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 174
    invoke-virtual {v2, p2}, Landroidx/core/app/NotificationCompat$Builder;->setSubText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    const p1, 0x7f0801d3

    .line 175
    invoke-virtual {v2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    const/4 p1, -0x1

    .line 176
    invoke-virtual {v2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    const-string p1, "progress"

    .line 177
    invoke-virtual {v2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 178
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 180
    iget-object p2, p0, Lcom/sonyericsson/music/metadata/cloud/DownloadService$CallbackHandler;->this$0:Lcom/sonyericsson/music/metadata/cloud/DownloadService;

    const/4 v0, 0x3

    invoke-virtual {p2, v0, p1}, Landroid/app/IntentService;->startForeground(ILandroid/app/Notification;)V

    goto :goto_2

    .line 186
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/cloud/DownloadService$CallbackHandler;->this$0:Lcom/sonyericsson/music/metadata/cloud/DownloadService;

    invoke-virtual {p1, v0}, Landroid/app/IntentService;->stopForeground(Z)V

    :goto_2
    return-void
.end method
