.class public Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$DiscardDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "EditMusicInfoBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DiscardDialog"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "discard_dialog"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 770
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$DiscardDialog;
    .locals 1

    .line 775
    new-instance v0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$DiscardDialog;

    invoke-direct {v0}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$DiscardDialog;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 781
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1000e7

    .line 782
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 783
    new-instance v0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$DiscardDialog$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$DiscardDialog$1;-><init>(Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$DiscardDialog;)V

    const v1, 0x7f1000c2

    .line 784
    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 795
    new-instance v0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$DiscardDialog$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$DiscardDialog$2;-><init>(Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$DiscardDialog;)V

    const v1, 0x7f1000bc

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 802
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
