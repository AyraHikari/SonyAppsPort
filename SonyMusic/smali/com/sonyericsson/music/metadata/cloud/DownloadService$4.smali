.class final Lcom/sonyericsson/music/metadata/cloud/DownloadService$4;
.super Ljava/lang/Object;
.source "DownloadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/metadata/cloud/DownloadService;->startPendingDownloads(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$appContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/sonyericsson/music/metadata/cloud/DownloadService$4;->val$appContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/cloud/DownloadService$4;->val$appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/music/metadata/cloud/db/FilesTable;->getPendingCloudFiles(Landroid/content/ContentResolver;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/cloud/DownloadService$4;->val$appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/music/metadata/cloud/DownloadService;->access$000(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
