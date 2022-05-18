.class public Lcom/sonyericsson/music/library/GoogleDriveFragment;
.super Lcom/sonyericsson/music/library/CloudFragment;
.source "GoogleDriveFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/library/GoogleDriveFragment$AuthorizeUserTask;
    }
.end annotation


# static fields
.field static final REQUEST_CODE_AUTHORIZATION:I = 0x1

.field public static final TAG:Ljava/lang/String; = "google_drive_fragment"


# instance fields
.field private mAuthTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mUserRecoveredFromTokenFailure:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 61
    invoke-static {}, Lcom/sonyericsson/music/metadata/cloud/GoogleDriveUtils;->getDatabaseCloudServiceId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/library/CloudFragment;-><init>(I)V

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sonyericsson/music/library/GoogleDriveFragment;->mUserRecoveredFromTokenFailure:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/music/library/GoogleDriveFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/sonyericsson/music/library/GoogleDriveFragment;->mUserRecoveredFromTokenFailure:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static close(Landroid/app/Activity;Lcom/sonyericsson/music/MusicFragmentManager;)V
    .locals 1

    const-string v0, "google_drive_fragment"

    .line 57
    invoke-virtual {p1, p0, v0}, Lcom/sonyericsson/music/MusicFragmentManager;->popBackStackConditional(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public static open(Lcom/sonyericsson/music/MusicFragmentManager;)V
    .locals 3

    .line 51
    new-instance v0, Lcom/sonyericsson/music/library/GoogleDriveFragment;

    invoke-direct {v0}, Lcom/sonyericsson/music/library/GoogleDriveFragment;-><init>()V

    const-string v1, "google_drive_fragment"

    const/4 v2, 0x1

    .line 52
    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/sonyericsson/music/MusicFragmentManager;->openFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method authorizeAccount()V
    .locals 4

    .line 114
    iget-object v0, p0, Lcom/sonyericsson/music/library/GoogleDriveFragment;->mAuthTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 115
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 117
    :cond_0
    new-instance v0, Lcom/sonyericsson/music/library/GoogleDriveFragment$AuthorizeUserTask;

    iget-object v1, p0, Lcom/sonyericsson/music/library/CloudFragment;->mAccountName:Ljava/lang/String;

    iget v2, p0, Lcom/sonyericsson/music/library/CloudFragment;->mDbAccountId:I

    .line 118
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sonyericsson/music/library/GoogleDriveFragment$AuthorizeUserTask;-><init>(Lcom/sonyericsson/music/library/GoogleDriveFragment;Ljava/lang/String;ILandroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/music/library/GoogleDriveFragment;->mAuthTask:Landroid/os/AsyncTask;

    .line 119
    iget-object v0, p0, Lcom/sonyericsson/music/library/GoogleDriveFragment;->mAuthTask:Landroid/os/AsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method backgroundExitBecauseOfMissingAccount(Landroid/content/Context;)V
    .locals 0

    .line 151
    invoke-static {}, Lcom/sonymobile/music/common/ThreadingUtils;->throwIfMainDebug()V

    .line 152
    invoke-static {p1}, Lcom/sonyericsson/music/authentication/GoogleSignIn;->deleteProfileAndIntroShown(Landroid/content/Context;)V

    return-void
.end method

.method getMimeTypeFolder()Ljava/lang/String;
    .locals 1

    const-string v0, "application/vnd.google-apps.folder"

    return-object v0
.end method

.method getRootFolder()Ljava/lang/String;
    .locals 1

    const-string v0, "root"

    return-object v0
.end method

.method public getSubTag()Ljava/lang/String;
    .locals 1

    const-string v0, "google_drive_fragment"

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 98
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 82
    iget-object p1, p0, Lcom/sonyericsson/music/library/GoogleDriveFragment;->mUserRecoveredFromTokenFailure:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 86
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/GoogleDriveFragment;->authorizeAccount()V

    goto :goto_0

    .line 88
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/music/library/GoogleDriveFragment;->mUserRecoveredFromTokenFailure:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const p1, 0x7f100153

    .line 92
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/library/CloudFragment;->handleAuthorizeFailed(I)V

    :goto_0
    return-void
.end method

.method onAuthorizedDone(Landroid/content/Intent;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 139
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 144
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const v0, 0x7f10019b

    .line 66
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/library/BaseFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 67
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/music/library/CloudFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 105
    invoke-super {p0}, Lcom/sonyericsson/music/library/CloudFragment;->onDestroy()V

    .line 107
    iget-object v0, p0, Lcom/sonyericsson/music/library/GoogleDriveFragment;->mAuthTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 108
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 72
    invoke-super {p0}, Lcom/sonyericsson/music/library/BaseFragment;->onStart()V

    .line 74
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->setGoogleDriveUsed(Landroid/content/Context;Z)V

    return-void
.end method
