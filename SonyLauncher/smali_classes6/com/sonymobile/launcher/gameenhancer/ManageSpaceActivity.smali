.class public Lcom/sonymobile/launcher/gameenhancer/ManageSpaceActivity;
.super Landroid/app/Activity;
.source "ManageSpaceActivity.java"


# instance fields
.field private dialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/launcher/gameenhancer/ManageSpaceActivity;->dialog:Landroid/app/Dialog;

    return-void
.end method

.method private clearApplicationUserData()V
    .locals 1

    .line 76
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/sonymobile/launcher/gameenhancer/ManageSpaceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->clearApplicationUserData()Z

    .line 77
    return-void
.end method

.method private createDataClearDialog()Landroid/app/Dialog;
    .locals 7

    .line 46
    new-instance v0, Lcom/sonymobile/launcher/gameenhancer/ManageSpaceActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/sonymobile/launcher/gameenhancer/ManageSpaceActivity$$ExternalSyntheticLambda0;-><init>(Lcom/sonymobile/launcher/gameenhancer/ManageSpaceActivity;)V

    .line 49
    .local v0, "onPositiveClickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/sonymobile/launcher/gameenhancer/ManageSpaceActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/sonymobile/launcher/gameenhancer/ManageSpaceActivity$$ExternalSyntheticLambda1;-><init>(Lcom/sonymobile/launcher/gameenhancer/ManageSpaceActivity;)V

    .line 52
    .local v1, "onNegativeClickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/sonymobile/launcher/gameenhancer/ManageSpaceActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/sonymobile/launcher/gameenhancer/ManageSpaceActivity$$ExternalSyntheticLambda2;-><init>(Lcom/sonymobile/launcher/gameenhancer/ManageSpaceActivity;)V

    .line 56
    .local v2, "onCancelListener":Landroid/content/DialogInterface$OnCancelListener;
    invoke-static {p0}, Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconFeature;->isFeatureEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 57
    invoke-static {p0}, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerAccessor;->isHideLauncherIconEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 58
    sget v3, Lcom/android/launcher3/R$string;->ge_dialog_delete_appdata_hidegameicon_off_txt:I

    invoke-virtual {p0, v3}, Lcom/sonymobile/launcher/gameenhancer/ManageSpaceActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "msg":Ljava/lang/String;
    goto :goto_0

    .line 60
    .end local v3    # "msg":Ljava/lang/String;
    :cond_0
    const-string v3, "clear_data_dlg_text"

    invoke-static {p0, v3}, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerUtil;->getStringFromSettingsApp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 63
    .restart local v3    # "msg":Ljava/lang/String;
    :goto_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v5, Lcom/android/launcher3/R$string;->ge_dialog_delete_appdata_hidegameicon_off_title_txt:I

    .line 64
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 65
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1010355

    .line 66
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    sget v5, Lcom/android/launcher3/R$string;->ge_dialog_btn_ok_txt:I

    .line 67
    invoke-virtual {v4, v5, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    sget v5, Lcom/android/launcher3/R$string;->ge_dialog_btn_cancel_txt:I

    .line 68
    invoke-virtual {v4, v5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 69
    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 70
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 71
    .local v4, "dialog":Landroid/app/Dialog;
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 72
    return-object v4
.end method


# virtual methods
.method synthetic lambda$createDataClearDialog$0$com-sonymobile-launcher-gameenhancer-ManageSpaceActivity(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .line 47
    invoke-direct {p0}, Lcom/sonymobile/launcher/gameenhancer/ManageSpaceActivity;->clearApplicationUserData()V

    return-void
.end method

.method synthetic lambda$createDataClearDialog$1$com-sonymobile-launcher-gameenhancer-ManageSpaceActivity(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .line 50
    invoke-virtual {p0}, Lcom/sonymobile/launcher/gameenhancer/ManageSpaceActivity;->finishAndRemoveTask()V

    return-void
.end method

.method synthetic lambda$createDataClearDialog$2$com-sonymobile-launcher-gameenhancer-ManageSpaceActivity(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .line 53
    invoke-virtual {p0}, Lcom/sonymobile/launcher/gameenhancer/ManageSpaceActivity;->finishAndRemoveTask()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    sget v0, Lcom/android/launcher3/R$layout;->somc_activity_empty_layout:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/launcher/gameenhancer/ManageSpaceActivity;->setContentView(I)V

    .line 28
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 39
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 40
    iget-object v0, p0, Lcom/sonymobile/launcher/gameenhancer/ManageSpaceActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 41
    invoke-virtual {p0}, Lcom/sonymobile/launcher/gameenhancer/ManageSpaceActivity;->finishAndRemoveTask()V

    .line 42
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 32
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 33
    invoke-direct {p0}, Lcom/sonymobile/launcher/gameenhancer/ManageSpaceActivity;->createDataClearDialog()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/launcher/gameenhancer/ManageSpaceActivity;->dialog:Landroid/app/Dialog;

    .line 34
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 35
    return-void
.end method
