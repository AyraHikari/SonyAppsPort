.class public Lcom/android/launcher3/SessionCommitReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SessionCommitReceiver.java"


# static fields
.field public static final ADD_ICON_PREFERENCE_KEY:Ljava/lang/String; = "pref_add_icon_to_home"

.field private static final LOG:Ljava/lang/String; = "SessionCommitReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static isEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 101
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_add_icon_to_home"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$onReceive$0(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 49
    invoke-static {p0, p1}, Lcom/android/launcher3/SessionCommitReceiver;->processIntent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private static processIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 54
    invoke-static {p0}, Lcom/android/launcher3/SessionCommitReceiver;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "b/202985412"

    if-nez v0, :cond_1

    .line 56
    sget-boolean v0, Lcom/android/launcher3/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v0, :cond_0

    .line 57
    const-string v0, "SessionCommitReceiver not enabled"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    return-void

    .line 62
    :cond_1
    const-string v0, "android.content.pm.extra.SESSION"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 63
    .local v0, "info":Landroid/content/pm/PackageInstaller$SessionInfo;
    const-string v2, "android.intent.extra.USER"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 64
    .local v2, "user":Landroid/os/UserHandle;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.content.pm.action.SESSION_COMMITTED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz v0, :cond_7

    if-nez v2, :cond_2

    goto/16 :goto_2

    .line 73
    :cond_2
    sget-object v3, Lcom/android/launcher3/pm/InstallSessionHelper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v3, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/pm/InstallSessionHelper;

    .line 74
    .local v3, "packageInstallerCompat":Lcom/android/launcher3/pm/InstallSessionHelper;
    invoke-virtual {v3, v0}, Lcom/android/launcher3/pm/InstallSessionHelper;->restoreDbIfApplicable(Landroid/content/pm/PackageInstaller$SessionInfo;)Z

    .line 75
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x4

    if-nez v4, :cond_5

    .line 76
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getInstallReason()I

    move-result v4

    if-ne v4, v5, :cond_5

    .line 77
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/pm/InstallSessionHelper;->promiseIconAddedForId(I)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 91
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding package name to install queue. Package name: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 92
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", has app icon: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 93
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppIcon()Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    move v4, v5

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", has app label: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 94
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 91
    const-string v4, "SessionCommitReceiver"

    invoke-static {v4, v1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    sget-object v1, Lcom/android/launcher3/model/ItemInstallQueue;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/ItemInstallQueue;

    .line 97
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Lcom/android/launcher3/model/ItemInstallQueue;->queueItem(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 98
    return-void

    .line 78
    :cond_5
    :goto_1
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/pm/InstallSessionHelper;->removePromiseIconId(I)V

    .line 79
    sget-boolean v4, Lcom/android/launcher3/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v4, :cond_6

    .line 80
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    move-result v4

    .line 81
    .local v4, "id":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SessionCommitReceiver, TextUtils.isEmpty="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 82
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", info.getInstallReason()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 83
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getInstallReason()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", INSTALL_REASON_USER="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", icon added="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 85
    invoke-virtual {v3, v4}, Lcom/android/launcher3/pm/InstallSessionHelper;->promiseIconAddedForId(I)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 81
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .end local v4    # "id":I
    :cond_6
    return-void

    .line 67
    .end local v3    # "packageInstallerCompat":Lcom/android/launcher3/pm/InstallSessionHelper;
    :cond_7
    :goto_2
    sget-boolean v3, Lcom/android/launcher3/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v3, :cond_8

    .line 68
    const-string v3, "SessionCommitReceiver invalid intent"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_8
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 49
    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/SessionCommitReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Lcom/android/launcher3/SessionCommitReceiver$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 50
    return-void
.end method
