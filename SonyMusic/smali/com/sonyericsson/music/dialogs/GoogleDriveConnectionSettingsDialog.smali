.class public Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "GoogleDriveConnectionSettingsDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$SettingsUpdater;,
        Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$ConnectionSetting;,
        Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$GoogleDriveConnectionSettingListener;
    }
.end annotation


# static fields
.field private static final DOWNLOAD_CONNECTION_KEY:Ljava/lang/String; = "connection_key"

.field public static final TAG:Ljava/lang/String; = "GoogleDriveConnectionSettingsDialog"


# instance fields
.field private mListener:Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$GoogleDriveConnectionSettingListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog;Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$ConnectionSetting;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog;->handleOnClick(Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$ConnectionSetting;)V

    return-void
.end method

.method private handleOnClick(Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$ConnectionSetting;)V
    .locals 4

    .line 129
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 130
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    .line 131
    sget-object v1, Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$ConnectionSetting;->WIFI:Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$ConnectionSetting;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    .line 132
    new-instance p1, Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$SettingsUpdater;

    iget-object v1, p0, Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog;->mListener:Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$GoogleDriveConnectionSettingListener;

    const/16 v3, 0x64

    invoke-direct {p1, v0, v1, v3}, Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$SettingsUpdater;-><init>(Landroid/content/Context;Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$GoogleDriveConnectionSettingListener;I)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v2, [Ljava/lang/Void;

    .line 133
    invoke-virtual {p1, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 134
    :cond_0
    sget-object v1, Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$ConnectionSetting;->WIFI_AND_MOBILE:Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$ConnectionSetting;

    if-ne p1, v1, :cond_1

    .line 135
    new-instance p1, Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$SettingsUpdater;

    iget-object v1, p0, Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog;->mListener:Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$GoogleDriveConnectionSettingListener;

    const/16 v3, 0xc8

    invoke-direct {p1, v0, v1, v3}, Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$SettingsUpdater;-><init>(Landroid/content/Context;Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$GoogleDriveConnectionSettingListener;I)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v2, [Ljava/lang/Void;

    .line 136
    invoke-virtual {p1, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 139
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public static newInstance(I)Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog;
    .locals 3

    .line 36
    new-instance v0, Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog;

    invoke-direct {v0}, Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog;-><init>()V

    .line 37
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "connection_key"

    .line 38
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 39
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 89
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 91
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "connection_key"

    .line 92
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 100
    :cond_0
    sget-object v1, Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$ConnectionSetting;->WIFI_AND_MOBILE:Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$ConnectionSetting;

    goto :goto_0

    .line 97
    :cond_1
    sget-object v1, Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$ConnectionSetting;->WIFI:Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$ConnectionSetting;

    :goto_0
    if-eqz v1, :cond_2

    .line 114
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 115
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    const v2, 0x7f10007f

    .line 116
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 117
    invoke-static {p1}, Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$ConnectionSetting;->getOptions(Landroid/content/Context;)[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1}, Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$ConnectionSetting;->getIndex()I

    move-result v1

    new-instance v2, Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$1;-><init>(Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog;)V

    invoke-virtual {v0, p1, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 125
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1

    .line 110
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal download connection setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setGoogleDriveConnectionSettingListener(Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$GoogleDriveConnectionSettingListener;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog;->mListener:Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$GoogleDriveConnectionSettingListener;

    return-void
.end method
