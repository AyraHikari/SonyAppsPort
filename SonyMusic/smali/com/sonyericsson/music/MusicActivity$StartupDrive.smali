.class Lcom/sonyericsson/music/MusicActivity$StartupDrive;
.super Landroid/os/AsyncTask;
.source "MusicActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/MusicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StartupDrive"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAction:Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;

.field private final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sonyericsson/music/MusicActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;)V
    .locals 1

    .line 2311
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2312
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonyericsson/music/MusicActivity$StartupDrive;->mActivity:Ljava/lang/ref/WeakReference;

    .line 2313
    iput-object p2, p0, Lcom/sonyericsson/music/MusicActivity$StartupDrive;->mAction:Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    .line 2318
    iget-object p1, p0, Lcom/sonyericsson/music/MusicActivity$StartupDrive;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/MusicActivity;

    if-eqz p1, :cond_0

    .line 2319
    invoke-static {p1}, Lcom/sonyericsson/music/authentication/GoogleSignIn;->shouldShowIntroduction(Landroid/content/Context;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2307
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/MusicActivity$StartupDrive;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    .line 2324
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity$StartupDrive;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/MusicActivity;

    if-eqz v0, :cond_1

    .line 2325
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2326
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2328
    iget-object p1, p0, Lcom/sonyericsson/music/MusicActivity$StartupDrive;->mAction:Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;

    const/4 v1, 0x4

    invoke-static {v0, p1, v1}, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;->startForResult(Landroid/app/Activity;Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;I)V

    goto :goto_0

    .line 2331
    :cond_0
    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->getMusicFragmentManager()Lcom/sonyericsson/music/MusicFragmentManager;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/music/library/GoogleDriveFragment;->open(Lcom/sonyericsson/music/MusicFragmentManager;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 2307
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/MusicActivity$StartupDrive;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
