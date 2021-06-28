.class public Lcom/sonyericsson/music/dialogs/CastConnectChargerDialog;
.super Lcom/sonyericsson/music/dialogs/HowToInformationDialog;
.source "CastConnectChargerDialog.java"


# static fields
.field public static final CAST_TYPE_DLNA:I = 0x1

.field public static final CAST_TYPE_GOOGLE_CAST:I = 0x0

.field private static final CAST_TYPE_KEY:Ljava/lang/String; = "cast_type"

.field public static final TAG:Ljava/lang/String; = "cast_connect_charger_dialog"


# instance fields
.field private mCastType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/sonyericsson/music/dialogs/HowToInformationDialog;-><init>()V

    return-void
.end method

.method public static newInstance(I)Lcom/sonyericsson/music/dialogs/CastConnectChargerDialog;
    .locals 3

    .line 27
    new-instance v0, Lcom/sonyericsson/music/dialogs/CastConnectChargerDialog;

    invoke-direct {v0}, Lcom/sonyericsson/music/dialogs/CastConnectChargerDialog;-><init>()V

    .line 29
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "cast_type"

    .line 30
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 31
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method protected getBodyText()Ljava/lang/String;
    .locals 1

    .line 53
    iget v0, p0, Lcom/sonyericsson/music/dialogs/CastConnectChargerDialog;->mCastType:I

    if-nez v0, :cond_0

    const v0, 0x7f100155

    .line 54
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const v0, 0x7f100150

    .line 56
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getNegativeButtonText()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getPositiveButtonText()Ljava/lang/String;
    .locals 1

    const v0, 0x7f1000c2

    .line 72
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected isDialogCancelable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 38
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "cast_type"

    .line 39
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/dialogs/CastConnectChargerDialog;->mCastType:I

    .line 41
    invoke-super {p0, p1}, Lcom/sonyericsson/music/dialogs/HowToInformationDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method protected onNegativeButtonClick(Z)V
    .locals 0

    return-void
.end method

.method protected onPositiveButtonClick(Z)V
    .locals 3

    .line 92
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    .line 95
    iget v2, p0, Lcom/sonyericsson/music/dialogs/CastConnectChargerDialog;->mCastType:I

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, p1, v1}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->setShowCastConnectChargerDlg(Landroid/content/Context;ZZ)V

    :cond_1
    return-void
.end method

.method protected showCheckBox()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected showNegativeButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected showPositiveButton()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
