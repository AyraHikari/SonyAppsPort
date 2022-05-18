.class public Lcom/sonyericsson/music/dialogs/ConfirmSignOutDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "ConfirmSignOutDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/dialogs/ConfirmSignOutDialog$ConfirmSignOutListener;
    }
.end annotation


# static fields
.field private static final ACCOUNT_NAME_KEY:Ljava/lang/String; = "account_name"

.field public static final TAG:Ljava/lang/String; = "ConfirmSignOutDialog"


# instance fields
.field private mListener:Lcom/sonyericsson/music/dialogs/ConfirmSignOutDialog$ConfirmSignOutListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method private static newInstance(Ljava/lang/String;)Lcom/sonyericsson/music/dialogs/ConfirmSignOutDialog;
    .locals 3

    .line 49
    new-instance v0, Lcom/sonyericsson/music/dialogs/ConfirmSignOutDialog;

    invoke-direct {v0}, Lcom/sonyericsson/music/dialogs/ConfirmSignOutDialog;-><init>()V

    .line 50
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "account_name"

    .line 51
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static setConfirmSignOutListener(Landroidx/fragment/app/FragmentManager;Lcom/sonyericsson/music/dialogs/ConfirmSignOutDialog$ConfirmSignOutListener;)V
    .locals 1

    const-string v0, "ConfirmSignOutDialog"

    .line 58
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 59
    instance-of v0, p0, Lcom/sonyericsson/music/dialogs/ConfirmSignOutDialog;

    if-eqz v0, :cond_0

    .line 60
    check-cast p0, Lcom/sonyericsson/music/dialogs/ConfirmSignOutDialog;

    .line 61
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/dialogs/ConfirmSignOutDialog;->setConfirmSignOutListener(Lcom/sonyericsson/music/dialogs/ConfirmSignOutDialog$ConfirmSignOutListener;)V

    :cond_0
    return-void
.end method

.method private setConfirmSignOutListener(Lcom/sonyericsson/music/dialogs/ConfirmSignOutDialog$ConfirmSignOutListener;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/sonyericsson/music/dialogs/ConfirmSignOutDialog;->mListener:Lcom/sonyericsson/music/dialogs/ConfirmSignOutDialog$ConfirmSignOutListener;

    return-void
.end method

.method public static show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Lcom/sonyericsson/music/dialogs/ConfirmSignOutDialog$ConfirmSignOutListener;)V
    .locals 1

    const-string v0, "ConfirmSignOutDialog"

    .line 37
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 39
    invoke-static {p1}, Lcom/sonyericsson/music/dialogs/ConfirmSignOutDialog;->newInstance(Ljava/lang/String;)Lcom/sonyericsson/music/dialogs/ConfirmSignOutDialog;

    move-result-object p1

    .line 40
    invoke-direct {p1, p2}, Lcom/sonyericsson/music/dialogs/ConfirmSignOutDialog;->setConfirmSignOutListener(Lcom/sonyericsson/music/dialogs/ConfirmSignOutDialog$ConfirmSignOutListener;)V

    const-string p2, "ConfirmSignOutDialog"

    .line 41
    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_0
    instance-of p0, v0, Lcom/sonyericsson/music/dialogs/ConfirmSignOutDialog;

    if-eqz p0, :cond_1

    .line 43
    check-cast v0, Lcom/sonyericsson/music/dialogs/ConfirmSignOutDialog;

    .line 44
    invoke-direct {v0, p2}, Lcom/sonyericsson/music/dialogs/ConfirmSignOutDialog;->setConfirmSignOutListener(Lcom/sonyericsson/music/dialogs/ConfirmSignOutDialog$ConfirmSignOutListener;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 81
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 82
    iget-object p1, p0, Lcom/sonyericsson/music/dialogs/ConfirmSignOutDialog;->mListener:Lcom/sonyericsson/music/dialogs/ConfirmSignOutDialog$ConfirmSignOutListener;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 83
    invoke-interface {p1, v0}, Lcom/sonyericsson/music/dialogs/ConfirmSignOutDialog$ConfirmSignOutListener;->onConfirmSignOut(Z)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 103
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/music/dialogs/ConfirmSignOutDialog;->mListener:Lcom/sonyericsson/music/dialogs/ConfirmSignOutDialog$ConfirmSignOutListener;

    if-eqz v0, :cond_1

    .line 104
    invoke-interface {v0, p2}, Lcom/sonyericsson/music/dialogs/ConfirmSignOutDialog$ConfirmSignOutListener;->onConfirmSignOut(Z)V

    .line 107
    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 68
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "account_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 69
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 70
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f100205

    .line 71
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 72
    invoke-virtual {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const p1, 0x7f1000c2

    .line 73
    invoke-virtual {v1, p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const p1, 0x7f1000bc

    .line 74
    invoke-virtual {v1, p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 p1, 0x1

    .line 75
    invoke-virtual {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 76
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
