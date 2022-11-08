.class Lcom/sonyericsson/music/metadata/cloud/DownloadService$1;
.super Ljava/lang/Object;
.source "DownloadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/metadata/cloud/DownloadService;->download(Landroid/content/Context;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$accountId:I

.field final synthetic val$appContext:Landroid/content/Context;

.field final synthetic val$fileId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/sonyericsson/music/metadata/cloud/DownloadService$1;->val$appContext:Landroid/content/Context;

    iput p2, p0, Lcom/sonyericsson/music/metadata/cloud/DownloadService$1;->val$accountId:I

    iput-object p3, p0, Lcom/sonyericsson/music/metadata/cloud/DownloadService$1;->val$fileId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/cloud/DownloadService$1;->val$appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/music/metadata/cloud/DownloadService$1;->val$accountId:I

    iget-object v2, p0, Lcom/sonyericsson/music/metadata/cloud/DownloadService$1;->val$fileId:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1, v2}, Lcom/sonyericsson/music/metadata/cloud/db/FilesTable;->updateDownloadState(Landroid/content/ContentResolver;ILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/cloud/DownloadService$1;->val$appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/music/metadata/cloud/DownloadService;->access$000(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
