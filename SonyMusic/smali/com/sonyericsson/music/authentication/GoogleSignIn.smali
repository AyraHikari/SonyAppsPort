.class public Lcom/sonyericsson/music/authentication/GoogleSignIn;
.super Ljava/lang/Object;
.source "GoogleSignIn.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteProfileAndIntroShown(Landroid/content/Context;)V
    .locals 2

    .line 52
    invoke-static {}, Lcom/sonymobile/music/common/ThreadingUtils;->throwIfMainDebug()V

    .line 55
    sget-object v0, Lcom/sonyericsson/music/authentication/GoogleAccount;->GOOGLE_ACCOUNT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 58
    :try_start_0
    invoke-static {p0, v1}, Lcom/sonyericsson/music/authentication/GoogleSignIn;->setIntroductionShown(Landroid/content/Context;Z)V

    .line 60
    invoke-static {p0}, Lcom/sonyericsson/music/metadata/cloud/GoogleDriveUtils;->removeGoogleDriveData(Landroid/content/Context;)V

    .line 62
    invoke-static {p0}, Lcom/sonyericsson/music/authentication/GoogleProfile;->clear(Landroid/content/Context;)V

    .line 63
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static saveProfileAndIntroShown(Landroid/content/Context;Lcom/sonyericsson/music/authentication/GoogleProfile;)V
    .locals 2

    .line 39
    invoke-static {}, Lcom/sonymobile/music/common/ThreadingUtils;->throwIfMainDebug()V

    .line 42
    sget-object v0, Lcom/sonyericsson/music/authentication/GoogleAccount;->GOOGLE_ACCOUNT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 43
    :try_start_0
    invoke-static {p0, v1}, Lcom/sonyericsson/music/authentication/GoogleSignIn;->setIntroductionShown(Landroid/content/Context;Z)V

    .line 45
    invoke-static {p0, p1}, Lcom/sonyericsson/music/authentication/GoogleProfile;->save(Landroid/content/Context;Lcom/sonyericsson/music/authentication/GoogleProfile;)V

    .line 47
    invoke-static {p0, p1}, Lcom/sonyericsson/music/metadata/cloud/GoogleDriveUtils;->storeProfileInDatabase(Landroid/content/Context;Lcom/sonyericsson/music/authentication/GoogleProfile;)V

    .line 48
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static setIntroductionShown(Landroid/content/Context;Z)V
    .locals 1

    .line 30
    invoke-static {}, Lcom/sonymobile/music/common/ThreadingUtils;->throwIfMainDebug()V

    .line 33
    sget-object v0, Lcom/sonyericsson/music/authentication/GoogleAccount;->GOOGLE_ACCOUNT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 34
    :try_start_0
    invoke-static {p0, p1}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->setGoogleSignInIntroductionShown(Landroid/content/Context;Z)V

    .line 35
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static shouldShowIntroduction(Landroid/content/Context;)Z
    .locals 1

    .line 21
    invoke-static {}, Lcom/sonymobile/music/common/ThreadingUtils;->throwIfMainDebug()V

    .line 24
    sget-object v0, Lcom/sonyericsson/music/authentication/GoogleAccount;->GOOGLE_ACCOUNT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 25
    :try_start_0
    invoke-static {p0}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->isGoogleSignInIntroductionShown(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
