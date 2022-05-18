.class Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$SettingsUpdater;
.super Landroid/os/AsyncTask;
.source "GoogleDriveConnectionSettingsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SettingsUpdater"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private final mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$GoogleDriveConnectionSettingListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreferredDownloadConnection:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$GoogleDriveConnectionSettingListener;I)V
    .locals 0

    .line 154
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$SettingsUpdater;->mAppContext:Landroid/content/Context;

    .line 156
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$SettingsUpdater;->mListener:Ljava/lang/ref/WeakReference;

    .line 157
    iput p3, p0, Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$SettingsUpdater;->mPreferredDownloadConnection:I

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 147
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$SettingsUpdater;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .line 162
    iget-object p1, p0, Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$SettingsUpdater;->mAppContext:Landroid/content/Context;

    const v0, 0x7f100265

    .line 163
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 164
    iget-object v0, p0, Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$SettingsUpdater;->mAppContext:Landroid/content/Context;

    iget v1, p0, Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$SettingsUpdater;->mPreferredDownloadConnection:I

    invoke-static {v0, p1, v1}, Lcom/sonyericsson/music/common/SettingsProviderWrapper;->set(Landroid/content/Context;Ljava/lang/String;I)Z

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 147
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$SettingsUpdater;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    .line 170
    iget-object p1, p0, Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$SettingsUpdater;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$GoogleDriveConnectionSettingListener;

    if-eqz p1, :cond_0

    .line 172
    invoke-interface {p1}, Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$GoogleDriveConnectionSettingListener;->onGoogleDriveConnectionSet()V

    :cond_0
    return-void
.end method
