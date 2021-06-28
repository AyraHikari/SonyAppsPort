.class public Lcom/sonyericsson/music/dialogs/CloudRetryDownloadDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "CloudRetryDownloadDialog.java"


# static fields
.field private static final ARG_ACCOUNT_ID:Ljava/lang/String; = "account_id"

.field private static final ARG_FILE_ID:Ljava/lang/String; = "file_id"

.field public static final TAG_RETRY_DOWNLOAD_DIALOG:Ljava/lang/String; = "cloud_retry_download"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;I)Landroidx/fragment/app/DialogFragment;
    .locals 3

    .line 27
    new-instance v0, Lcom/sonyericsson/music/dialogs/CloudRetryDownloadDialog;

    invoke-direct {v0}, Lcom/sonyericsson/music/dialogs/CloudRetryDownloadDialog;-><init>()V

    .line 28
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "file_id"

    .line 29
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "account_id"

    .line 30
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 31
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const/4 p0, 0x0

    .line 32
    invoke-virtual {v0, p0}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 39
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f100077

    .line 40
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f100076

    .line 41
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 42
    new-instance v0, Lcom/sonyericsson/music/dialogs/CloudRetryDownloadDialog$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/dialogs/CloudRetryDownloadDialog$1;-><init>(Lcom/sonyericsson/music/dialogs/CloudRetryDownloadDialog;)V

    const v1, 0x7f10027a

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 54
    new-instance v0, Lcom/sonyericsson/music/dialogs/CloudRetryDownloadDialog$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/dialogs/CloudRetryDownloadDialog$2;-><init>(Lcom/sonyericsson/music/dialogs/CloudRetryDownloadDialog;)V

    const v1, 0x7f1000bc

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 66
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
