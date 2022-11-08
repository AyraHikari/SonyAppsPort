.class public Lcom/android/launcher3/pm/InstallSessionTracker;
.super Landroid/content/pm/PackageInstaller$SessionCallback;
.source "InstallSessionTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/pm/InstallSessionTracker$Callback;
    }
.end annotation


# instance fields
.field private mActiveSessions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            ">;"
        }
    .end annotation
.end field

.field private final mInstaller:Landroid/content/pm/PackageInstaller;

.field private final mLauncherApps:Landroid/content/pm/LauncherApps;

.field private final mWeakCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/launcher3/pm/InstallSessionTracker$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mWeakHelper:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/launcher3/pm/InstallSessionHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/launcher3/pm/InstallSessionHelper;Lcom/android/launcher3/pm/InstallSessionTracker$Callback;Landroid/content/pm/PackageInstaller;Landroid/content/pm/LauncherApps;)V
    .locals 1
    .param p1, "installerCompat"    # Lcom/android/launcher3/pm/InstallSessionHelper;
    .param p2, "callback"    # Lcom/android/launcher3/pm/InstallSessionTracker$Callback;
    .param p3, "installer"    # Landroid/content/pm/PackageInstaller;
    .param p4, "launcherApps"    # Landroid/content/pm/LauncherApps;

    .line 58
    invoke-direct {p0}, Landroid/content/pm/PackageInstaller$SessionCallback;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/pm/InstallSessionTracker;->mActiveSessions:Landroid/util/SparseArray;

    .line 59
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher3/pm/InstallSessionTracker;->mWeakHelper:Ljava/lang/ref/WeakReference;

    .line 60
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher3/pm/InstallSessionTracker;->mWeakCallback:Ljava/lang/ref/WeakReference;

    .line 61
    iput-object p3, p0, Lcom/android/launcher3/pm/InstallSessionTracker;->mInstaller:Landroid/content/pm/PackageInstaller;

    .line 62
    iput-object p4, p0, Lcom/android/launcher3/pm/InstallSessionTracker;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 63
    return-void
.end method

.method private getActiveSessionMap(Lcom/android/launcher3/pm/InstallSessionHelper;)Landroid/util/SparseArray;
    .locals 2
    .param p1, "helper"    # Lcom/android/launcher3/pm/InstallSessionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/pm/InstallSessionHelper;",
            ")",
            "Landroid/util/SparseArray<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            ">;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/android/launcher3/pm/InstallSessionTracker;->mActiveSessions:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/pm/InstallSessionTracker;->mActiveSessions:Landroid/util/SparseArray;

    .line 164
    invoke-virtual {p1}, Lcom/android/launcher3/pm/InstallSessionHelper;->getActiveSessions()Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/pm/InstallSessionTracker$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/pm/InstallSessionTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/pm/InstallSessionTracker;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/pm/InstallSessionTracker;->mActiveSessions:Landroid/util/SparseArray;

    return-object v0
.end method

.method private pushSessionDisplayToLauncher(ILcom/android/launcher3/pm/InstallSessionHelper;Lcom/android/launcher3/pm/InstallSessionTracker$Callback;)Landroid/content/pm/PackageInstaller$SessionInfo;
    .locals 4
    .param p1, "sessionId"    # I
    .param p2, "helper"    # Lcom/android/launcher3/pm/InstallSessionHelper;
    .param p3, "callback"    # Lcom/android/launcher3/pm/InstallSessionTracker$Callback;

    .line 150
    invoke-virtual {p2, p1}, Lcom/android/launcher3/pm/InstallSessionHelper;->getVerifiedSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v0

    .line 151
    .local v0, "session":Landroid/content/pm/PackageInstaller$SessionInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 152
    new-instance v1, Lcom/android/launcher3/util/PackageUserKey;

    .line 153
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/android/launcher3/pm/InstallSessionHelper;->getUserHandle(Landroid/content/pm/PackageInstaller$SessionInfo;)Landroid/os/UserHandle;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 154
    .local v1, "key":Lcom/android/launcher3/util/PackageUserKey;
    invoke-direct {p0, p2}, Lcom/android/launcher3/pm/InstallSessionTracker;->getActiveSessionMap(Lcom/android/launcher3/pm/InstallSessionHelper;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 155
    invoke-interface {p3, v1, v0}, Lcom/android/launcher3/pm/InstallSessionTracker$Callback;->onUpdateSessionDisplay(Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;)V

    .line 156
    return-object v0

    .line 158
    .end local v1    # "key":Lcom/android/launcher3/util/PackageUserKey;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method synthetic lambda$getActiveSessionMap$0$com-android-launcher3-pm-InstallSessionTracker(Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;)V
    .locals 2
    .param p1, "key"    # Lcom/android/launcher3/util/PackageUserKey;
    .param p2, "si"    # Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 165
    iget-object v0, p0, Lcom/android/launcher3/pm/InstallSessionTracker;->mActiveSessions:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public onActiveChanged(IZ)V
    .locals 0
    .param p1, "sessionId"    # I
    .param p2, "active"    # Z

    .line 133
    return-void
.end method

.method public onBadgingChanged(I)V
    .locals 3
    .param p1, "sessionId"    # I

    .line 137
    iget-object v0, p0, Lcom/android/launcher3/pm/InstallSessionTracker;->mWeakHelper:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/pm/InstallSessionHelper;

    .line 138
    .local v0, "helper":Lcom/android/launcher3/pm/InstallSessionHelper;
    iget-object v1, p0, Lcom/android/launcher3/pm/InstallSessionTracker;->mWeakCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/pm/InstallSessionTracker$Callback;

    .line 139
    .local v1, "callback":Lcom/android/launcher3/pm/InstallSessionTracker$Callback;
    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/pm/InstallSessionTracker;->pushSessionDisplayToLauncher(ILcom/android/launcher3/pm/InstallSessionHelper;Lcom/android/launcher3/pm/InstallSessionTracker$Callback;)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v2

    .line 143
    .local v2, "sessionInfo":Landroid/content/pm/PackageInstaller$SessionInfo;
    if-eqz v2, :cond_1

    .line 144
    invoke-virtual {v0, v2}, Lcom/android/launcher3/pm/InstallSessionHelper;->tryQueuePromiseAppIcon(Landroid/content/pm/PackageInstaller$SessionInfo;)V

    .line 146
    :cond_1
    return-void

    .line 140
    .end local v2    # "sessionInfo":Landroid/content/pm/PackageInstaller$SessionInfo;
    :cond_2
    :goto_0
    return-void
.end method

.method public onCreated(I)V
    .locals 6
    .param p1, "sessionId"    # I

    .line 67
    iget-object v0, p0, Lcom/android/launcher3/pm/InstallSessionTracker;->mWeakHelper:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/pm/InstallSessionHelper;

    .line 68
    .local v0, "helper":Lcom/android/launcher3/pm/InstallSessionHelper;
    iget-object v1, p0, Lcom/android/launcher3/pm/InstallSessionTracker;->mWeakCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/pm/InstallSessionTracker$Callback;

    .line 69
    .local v1, "callback":Lcom/android/launcher3/pm/InstallSessionTracker$Callback;
    sget-boolean v2, Lcom/android/launcher3/testing/TestProtocol;->sDebugTracing:Z

    const-string v3, "Session created sessionId="

    const-string v4, "b/202985412"

    if-eqz v2, :cond_0

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", callback="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", helper="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_0
    if-eqz v1, :cond_4

    if-nez v0, :cond_1

    goto :goto_0

    .line 77
    :cond_1
    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/pm/InstallSessionTracker;->pushSessionDisplayToLauncher(ILcom/android/launcher3/pm/InstallSessionHelper;Lcom/android/launcher3/pm/InstallSessionTracker$Callback;)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v2

    .line 78
    .local v2, "sessionInfo":Landroid/content/pm/PackageInstaller$SessionInfo;
    sget-boolean v5, Lcom/android/launcher3/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v5, :cond_2

    .line 79
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", sessionInfo="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_2
    if-eqz v2, :cond_3

    sget-object v3, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_ALL_APPS_OWN_ORDER:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v3}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 83
    invoke-static {v2}, Lcom/sonymobile/launcher/util/PackageInstallerUtils;->isPossibleAutoInstallSession(Landroid/content/pm/PackageInstaller$SessionInfo;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 84
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 85
    invoke-interface {v1, v2}, Lcom/android/launcher3/pm/InstallSessionTracker$Callback;->onInstallSessionCreated(Landroid/content/pm/PackageInstaller$SessionInfo;)V

    .line 88
    :cond_3
    invoke-virtual {v0, v2}, Lcom/android/launcher3/pm/InstallSessionHelper;->tryQueuePromiseAppIcon(Landroid/content/pm/PackageInstaller$SessionInfo;)V

    .line 89
    return-void

    .line 75
    .end local v2    # "sessionInfo":Landroid/content/pm/PackageInstaller$SessionInfo;
    :cond_4
    :goto_0
    return-void
.end method

.method public onFinished(IZ)V
    .locals 7
    .param p1, "sessionId"    # I
    .param p2, "success"    # Z

    .line 93
    iget-object v0, p0, Lcom/android/launcher3/pm/InstallSessionTracker;->mWeakHelper:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/pm/InstallSessionHelper;

    .line 94
    .local v0, "helper":Lcom/android/launcher3/pm/InstallSessionHelper;
    iget-object v1, p0, Lcom/android/launcher3/pm/InstallSessionTracker;->mWeakCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/pm/InstallSessionTracker$Callback;

    .line 95
    .local v1, "callback":Lcom/android/launcher3/pm/InstallSessionTracker$Callback;
    if-eqz v1, :cond_3

    if-nez v0, :cond_0

    goto :goto_1

    .line 100
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/launcher3/pm/InstallSessionTracker;->getActiveSessionMap(Lcom/android/launcher3/pm/InstallSessionHelper;)Landroid/util/SparseArray;

    move-result-object v2

    .line 101
    .local v2, "activeSessions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/launcher3/util/PackageUserKey;>;"
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/util/PackageUserKey;

    .line 102
    .local v3, "key":Lcom/android/launcher3/util/PackageUserKey;
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 104
    if-eqz v3, :cond_2

    iget-object v4, v3, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 105
    iget-object v4, v3, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    .line 107
    .local v4, "packageName":Ljava/lang/String;
    if-eqz p2, :cond_1

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    const/4 v5, 0x3

    :goto_0
    iget-object v6, v3, Lcom/android/launcher3/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    .line 106
    invoke-static {v5, v4, v6}, Lcom/android/launcher3/pm/PackageInstallInfo;->fromState(ILjava/lang/String;Landroid/os/UserHandle;)Lcom/android/launcher3/pm/PackageInstallInfo;

    move-result-object v5

    .line 109
    .local v5, "info":Lcom/android/launcher3/pm/PackageInstallInfo;
    invoke-interface {v1, v5}, Lcom/android/launcher3/pm/InstallSessionTracker$Callback;->onPackageStateChanged(Lcom/android/launcher3/pm/PackageInstallInfo;)V

    .line 111
    if-nez p2, :cond_2

    invoke-virtual {v0, p1}, Lcom/android/launcher3/pm/InstallSessionHelper;->promiseIconAddedForId(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 112
    iget-object v6, v3, Lcom/android/launcher3/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    invoke-interface {v1, v4, v6}, Lcom/android/launcher3/pm/InstallSessionTracker$Callback;->onSessionFailure(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 114
    invoke-virtual {v0, p1}, Lcom/android/launcher3/pm/InstallSessionHelper;->removePromiseIconId(I)V

    .line 117
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "info":Lcom/android/launcher3/pm/PackageInstallInfo;
    :cond_2
    return-void

    .line 96
    .end local v2    # "activeSessions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/launcher3/util/PackageUserKey;>;"
    .end local v3    # "key":Lcom/android/launcher3/util/PackageUserKey;
    :cond_3
    :goto_1
    return-void
.end method

.method public onProgressChanged(IF)V
    .locals 4
    .param p1, "sessionId"    # I
    .param p2, "progress"    # F

    .line 121
    iget-object v0, p0, Lcom/android/launcher3/pm/InstallSessionTracker;->mWeakHelper:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/pm/InstallSessionHelper;

    .line 122
    .local v0, "helper":Lcom/android/launcher3/pm/InstallSessionHelper;
    iget-object v1, p0, Lcom/android/launcher3/pm/InstallSessionTracker;->mWeakCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/pm/InstallSessionTracker$Callback;

    .line 123
    .local v1, "callback":Lcom/android/launcher3/pm/InstallSessionTracker$Callback;
    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/launcher3/pm/InstallSessionHelper;->getVerifiedSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v2

    .line 127
    .local v2, "session":Landroid/content/pm/PackageInstaller$SessionInfo;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 128
    invoke-static {v2}, Lcom/android/launcher3/pm/PackageInstallInfo;->fromInstallingState(Landroid/content/pm/PackageInstaller$SessionInfo;)Lcom/android/launcher3/pm/PackageInstallInfo;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/launcher3/pm/InstallSessionTracker$Callback;->onPackageStateChanged(Lcom/android/launcher3/pm/PackageInstallInfo;)V

    .line 130
    :cond_1
    return-void

    .line 124
    .end local v2    # "session":Landroid/content/pm/PackageInstaller$SessionInfo;
    :cond_2
    :goto_0
    return-void
.end method

.method register()V
    .locals 2

    .line 171
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/launcher3/pm/InstallSessionTracker;->mInstaller:Landroid/content/pm/PackageInstaller;

    sget-object v1, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageInstaller;->registerSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;Landroid/os/Handler;)V

    goto :goto_0

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/pm/InstallSessionTracker;->mLauncherApps:Landroid/content/pm/LauncherApps;

    sget-object v1, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0, v1, p0}, Landroid/content/pm/LauncherApps;->registerPackageInstallerSessionCallback(Ljava/util/concurrent/Executor;Landroid/content/pm/PackageInstaller$SessionCallback;)V

    .line 176
    :goto_0
    return-void
.end method

.method public unregister()V
    .locals 2

    .line 179
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/launcher3/pm/InstallSessionTracker;->mInstaller:Landroid/content/pm/PackageInstaller;

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageInstaller;->unregisterSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V

    goto :goto_0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/pm/InstallSessionTracker;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v0, p0}, Landroid/content/pm/LauncherApps;->unregisterPackageInstallerSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V

    .line 184
    :goto_0
    return-void
.end method
