.class public Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "LaunchSdcardAccessDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog$ConfirmationListener;
    }
.end annotation


# static fields
.field static final DIALOG_TYPE_DEFAULT:I = 0x1

.field static final DIALOG_TYPE_RETRY:I = 0x2

.field private static final SAVE_STATE_TYPE:Ljava/lang/String; = "save_state_type"

.field private static final TAG:Ljava/lang/String; = "launch_sdcard_access_dialog"


# instance fields
.field private mBodyText:I

.field private mListener:Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog$ConfirmationListener;

.field private mPositiveButtonText:I

.field private mTitleText:I

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method private constructor <init>(ILcom/sonyericsson/music/delete/LaunchSdcardAccessDialog$ConfirmationListener;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 47
    iput p1, p0, Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog;->mType:I

    .line 48
    iput-object p2, p0, Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog;->mListener:Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog$ConfirmationListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog;)Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog$ConfirmationListener;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog;->mListener:Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog$ConfirmationListener;

    return-object p0
.end method

.method private createDialogMessage(I)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const p1, 0x7f10013b

    .line 121
    iput p1, p0, Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog;->mPositiveButtonText:I

    const p1, 0x7f10013d

    .line 122
    iput p1, p0, Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog;->mTitleText:I

    const p1, 0x7f100139

    .line 123
    iput p1, p0, Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog;->mBodyText:I

    goto :goto_0

    :cond_0
    const p1, 0x7f10027c

    .line 113
    iput p1, p0, Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog;->mPositiveButtonText:I

    const p1, 0x7f10013e

    .line 114
    iput p1, p0, Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog;->mTitleText:I

    const p1, 0x7f10013a

    .line 115
    iput p1, p0, Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog;->mBodyText:I

    :goto_0
    return-void
.end method

.method static find(Landroidx/fragment/app/FragmentActivity;)Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog;
    .locals 1

    .line 57
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "launch_sdcard_access_dialog"

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    .line 59
    instance-of v0, p0, Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog;

    if-eqz v0, :cond_0

    .line 60
    check-cast p0, Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static show(Landroidx/fragment/app/FragmentActivity;ILcom/sonyericsson/music/delete/LaunchSdcardAccessDialog$ConfirmationListener;)V
    .locals 1

    .line 52
    new-instance v0, Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog;

    invoke-direct {v0, p1, p2}, Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog;-><init>(ILcom/sonyericsson/music/delete/LaunchSdcardAccessDialog$ConfirmationListener;)V

    .line 53
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string p1, "launch_sdcard_access_dialog"

    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    const/4 v0, 0x0

    .line 69
    invoke-virtual {p0, v0}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    if-eqz p1, :cond_0

    const-string v0, "save_state_type"

    .line 71
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog;->mType:I

    .line 73
    :cond_0
    iget p1, p0, Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog;->mType:I

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog;->createDialogMessage(I)V

    .line 75
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 76
    iget v0, p0, Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog;->mTitleText:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 77
    iget v0, p0, Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog;->mBodyText:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 78
    iget v0, p0, Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog;->mPositiveButtonText:I

    new-instance v1, Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog$2;-><init>(Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f1000bc

    new-instance v1, Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog$1;-><init>(Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog;)V

    .line 84
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 90
    new-instance v0, Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog$3;-><init>(Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 101
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 106
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "save_state_type"

    .line 107
    iget v1, p0, Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog;->mType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method setListener(Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog$ConfirmationListener;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog;->mListener:Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog$ConfirmationListener;

    return-void
.end method
