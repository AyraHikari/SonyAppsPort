.class public Lcom/sonyericsson/music/delete/DeleteDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "DeleteDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/delete/DeleteDialog$ConfirmationListener;
    }
.end annotation


# static fields
.field private static final ARG_IS_PLAYLIST:Ljava/lang/String; = "is_playlist"

.field private static final ARG_NAME:Ljava/lang/String; = "name"

.field private static final TAG:Ljava/lang/String; = "delete_dialog"


# instance fields
.field private mListener:Lcom/sonyericsson/music/delete/DeleteDialog$ConfirmationListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/music/delete/DeleteDialog;)Lcom/sonyericsson/music/delete/DeleteDialog$ConfirmationListener;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/sonyericsson/music/delete/DeleteDialog;->mListener:Lcom/sonyericsson/music/delete/DeleteDialog$ConfirmationListener;

    return-object p0
.end method

.method static find(Landroidx/fragment/app/FragmentActivity;)Lcom/sonyericsson/music/delete/DeleteDialog;
    .locals 1

    .line 48
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "delete_dialog"

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    .line 50
    instance-of v0, p0, Lcom/sonyericsson/music/delete/DeleteDialog;

    if-eqz v0, :cond_0

    .line 51
    check-cast p0, Lcom/sonyericsson/music/delete/DeleteDialog;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static newInstance(Ljava/lang/String;Z)Lcom/sonyericsson/music/delete/DeleteDialog;
    .locals 3

    .line 58
    new-instance v0, Lcom/sonyericsson/music/delete/DeleteDialog;

    invoke-direct {v0}, Lcom/sonyericsson/music/delete/DeleteDialog;-><init>()V

    .line 60
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "name"

    .line 61
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "is_playlist"

    .line 62
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 63
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const/4 p0, 0x0

    .line 64
    invoke-virtual {v0, p0}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    return-object v0
.end method

.method static show(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;ZLcom/sonyericsson/music/delete/DeleteDialog$ConfirmationListener;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 40
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    .line 41
    invoke-static {p1, p2}, Lcom/sonyericsson/music/delete/DeleteDialog;->newInstance(Ljava/lang/String;Z)Lcom/sonyericsson/music/delete/DeleteDialog;

    move-result-object p1

    const-string p2, "delete_dialog"

    .line 42
    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 44
    check-cast p1, Lcom/sonyericsson/music/delete/DeleteDialog;

    invoke-virtual {p1, p3}, Lcom/sonyericsson/music/delete/DeleteDialog;->setListener(Lcom/sonyericsson/music/delete/DeleteDialog$ConfirmationListener;)V

    return-void

    .line 37
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Listener not allowed to be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 108
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 110
    iget-object p1, p0, Lcom/sonyericsson/music/delete/DeleteDialog;->mListener:Lcom/sonyericsson/music/delete/DeleteDialog$ConfirmationListener;

    if-eqz p1, :cond_0

    .line 111
    invoke-interface {p1}, Lcom/sonyericsson/music/delete/DeleteDialog$ConfirmationListener;->onDeletionDenied()V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 71
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "name"

    .line 72
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "is_playlist"

    .line 73
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 77
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v3, 0x7f100137

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-virtual {p1, v3, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v3, 0x7f100136

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-virtual {p1, v3, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 82
    :goto_0
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 83
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 85
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    const p1, 0x7f1000be

    new-instance v1, Lcom/sonyericsson/music/delete/DeleteDialog$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/music/delete/DeleteDialog$2;-><init>(Lcom/sonyericsson/music/delete/DeleteDialog;)V

    .line 86
    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const p1, 0x7f1000bc

    new-instance v1, Lcom/sonyericsson/music/delete/DeleteDialog$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/music/delete/DeleteDialog$1;-><init>(Lcom/sonyericsson/music/delete/DeleteDialog;)V

    .line 94
    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 103
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 117
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    const/4 p1, 0x0

    .line 119
    iput-object p1, p0, Lcom/sonyericsson/music/delete/DeleteDialog;->mListener:Lcom/sonyericsson/music/delete/DeleteDialog$ConfirmationListener;

    return-void
.end method

.method setListener(Lcom/sonyericsson/music/delete/DeleteDialog$ConfirmationListener;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/sonyericsson/music/delete/DeleteDialog;->mListener:Lcom/sonyericsson/music/delete/DeleteDialog$ConfirmationListener;

    return-void
.end method
