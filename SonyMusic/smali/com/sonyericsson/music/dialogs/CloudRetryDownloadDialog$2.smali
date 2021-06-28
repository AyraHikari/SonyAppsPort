.class Lcom/sonyericsson/music/dialogs/CloudRetryDownloadDialog$2;
.super Ljava/lang/Object;
.source "CloudRetryDownloadDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/dialogs/CloudRetryDownloadDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/dialogs/CloudRetryDownloadDialog;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/dialogs/CloudRetryDownloadDialog;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/sonyericsson/music/dialogs/CloudRetryDownloadDialog$2;->this$0:Lcom/sonyericsson/music/dialogs/CloudRetryDownloadDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 60
    iget-object p1, p0, Lcom/sonyericsson/music/dialogs/CloudRetryDownloadDialog$2;->this$0:Lcom/sonyericsson/music/dialogs/CloudRetryDownloadDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/sonyericsson/music/dialogs/CloudRetryDownloadDialog$2;->this$0:Lcom/sonyericsson/music/dialogs/CloudRetryDownloadDialog;

    .line 61
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "file_id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/sonyericsson/music/dialogs/CloudRetryDownloadDialog$2;->this$0:Lcom/sonyericsson/music/dialogs/CloudRetryDownloadDialog;

    .line 62
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "account_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 60
    invoke-static {p1, p2, v0}, Lcom/sonyericsson/music/metadata/cloud/DownloadService;->cancel(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
