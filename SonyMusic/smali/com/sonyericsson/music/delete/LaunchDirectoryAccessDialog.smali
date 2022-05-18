.class public Lcom/sonyericsson/music/delete/LaunchDirectoryAccessDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "LaunchDirectoryAccessDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "launch_directory_access_dialog"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/music/delete/LaunchDirectoryAccessDialog;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/sonyericsson/music/delete/LaunchDirectoryAccessDialog;->launchDirectoryAccess()V

    return-void
.end method

.method private launchDirectoryAccess()V
    .locals 2

    .line 69
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 70
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.STORAGE_VOLUME_ACCESS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method static show(Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    .line 27
    new-instance v0, Lcom/sonyericsson/music/delete/LaunchDirectoryAccessDialog;

    invoke-direct {v0}, Lcom/sonyericsson/music/delete/LaunchDirectoryAccessDialog;-><init>()V

    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v1, "launch_directory_access_dialog"

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 34
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 36
    new-array v0, v0, [Ljava/lang/Object;

    const v1, 0x7f100128

    .line 37
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f1001a7

    .line 36
    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 40
    new-instance v0, Lcom/sonyericsson/music/delete/LaunchDirectoryAccessDialog$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/delete/LaunchDirectoryAccessDialog$2;-><init>(Lcom/sonyericsson/music/delete/LaunchDirectoryAccessDialog;)V

    const v1, 0x7f1000c0

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v0, Lcom/sonyericsson/music/delete/LaunchDirectoryAccessDialog$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/delete/LaunchDirectoryAccessDialog$1;-><init>(Lcom/sonyericsson/music/delete/LaunchDirectoryAccessDialog;)V

    const v1, 0x7f1000bc

    .line 48
    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 55
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 60
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 62
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 64
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
