.class public Lcom/android/launcher3/pm/InstallSessionHelper;
.super Ljava/lang/Object;
.source "InstallSessionHelper.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MainThreadInitializedObject<",
            "Lcom/android/launcher3/pm/InstallSessionHelper;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG:Ljava/lang/String; = "InstallSessionHelper"

.field protected static final PROMISE_ICON_IDS:Ljava/lang/String; = "promise_icon_ids"


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private final mInstaller:Landroid/content/pm/PackageInstaller;

.field private final mLauncherApps:Landroid/content/pm/LauncherApps;

.field private mPromiseIconIds:Lcom/android/launcher3/util/IntSet;

.field private final mSessionVerifiedMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 68
    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    new-instance v1, Lcom/android/launcher3/pm/InstallSessionHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/launcher3/pm/InstallSessionHelper$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/android/launcher3/pm/InstallSessionHelper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/pm/InstallSessionHelper;->mSessionVerifiedMap:Ljava/util/HashMap;

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/pm/InstallSessionHelper;->mInstaller:Landroid/content/pm/PackageInstaller;

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/pm/InstallSessionHelper;->mAppContext:Landroid/content/Context;

    .line 82
    const-class v0, Landroid/content/pm/LauncherApps;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iput-object v0, p0, Lcom/android/launcher3/pm/InstallSessionHelper;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 83
    return-void
.end method

.method private getPromiseIconIds()Lcom/android/launcher3/util/IntSet;
    .locals 5

    .line 87
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertWorkerThread()V

    .line 88
    iget-object v0, p0, Lcom/android/launcher3/pm/InstallSessionHelper;->mPromiseIconIds:Lcom/android/launcher3/util/IntSet;

    if-eqz v0, :cond_0

    .line 89
    return-object v0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/pm/InstallSessionHelper;->mAppContext:Landroid/content/Context;

    .line 92
    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "promise_icon_ids"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-static {v0}, Lcom/android/launcher3/util/IntArray;->fromConcatString(Ljava/lang/String;)Lcom/android/launcher3/util/IntArray;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/util/IntSet;->wrap(Lcom/android/launcher3/util/IntArray;)Lcom/android/launcher3/util/IntSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/pm/InstallSessionHelper;->mPromiseIconIds:Lcom/android/launcher3/util/IntSet;

    .line 94
    new-instance v0, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntArray;-><init>()V

    .line 95
    .local v0, "existingIds":Lcom/android/launcher3/util/IntArray;
    invoke-virtual {p0}, Lcom/android/launcher3/pm/InstallSessionHelper;->getActiveSessions()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 96
    .local v2, "info":Landroid/content/pm/PackageInstaller$SessionInfo;
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/launcher3/util/IntArray;->add(I)V

    .line 97
    .end local v2    # "info":Landroid/content/pm/PackageInstaller$SessionInfo;
    goto :goto_0

    .line 98
    :cond_1
    new-instance v1, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v1}, Lcom/android/launcher3/util/IntArray;-><init>()V

    .line 100
    .local v1, "idsToRemove":Lcom/android/launcher3/util/IntArray;
    iget-object v2, p0, Lcom/android/launcher3/pm/InstallSessionHelper;->mPromiseIconIds:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v2}, Lcom/android/launcher3/util/IntSet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_3

    .line 101
    iget-object v3, p0, Lcom/android/launcher3/pm/InstallSessionHelper;->mPromiseIconIds:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v3}, Lcom/android/launcher3/util/IntSet;->getArray()Lcom/android/launcher3/util/IntArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/launcher3/util/IntArray;->contains(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 102
    iget-object v3, p0, Lcom/android/launcher3/pm/InstallSessionHelper;->mPromiseIconIds:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v3}, Lcom/android/launcher3/util/IntSet;->getArray()Lcom/android/launcher3/util/IntArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/launcher3/util/IntArray;->add(I)V

    .line 100
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 105
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {v1}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .restart local v2    # "i":I
    :goto_2
    if-ltz v2, :cond_4

    .line 106
    iget-object v3, p0, Lcom/android/launcher3/pm/InstallSessionHelper;->mPromiseIconIds:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v3}, Lcom/android/launcher3/util/IntSet;->getArray()Lcom/android/launcher3/util/IntArray;

    move-result-object v3

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/util/IntArray;->removeValue(I)V

    .line 105
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 108
    .end local v2    # "i":I
    :cond_4
    iget-object v2, p0, Lcom/android/launcher3/pm/InstallSessionHelper;->mPromiseIconIds:Lcom/android/launcher3/util/IntSet;

    return-object v2
.end method

.method public static getUserHandle(Landroid/content/pm/PackageInstaller$SessionInfo;)Landroid/os/UserHandle;
    .locals 1
    .param p0, "info"    # Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 280
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_Q:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static isRestore(Landroid/content/pm/PackageInstaller$SessionInfo;)Z
    .locals 2
    .param p0, "info"    # Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 200
    invoke-virtual {p0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getInstallReason()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updatePromiseIconPrefs()V
    .locals 3

    .line 134
    iget-object v0, p0, Lcom/android/launcher3/pm/InstallSessionHelper;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 135
    invoke-direct {p0}, Lcom/android/launcher3/pm/InstallSessionHelper;->getPromiseIconIds()Lcom/android/launcher3/util/IntSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/util/IntSet;->getArray()Lcom/android/launcher3/util/IntArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/util/IntArray;->toConcatString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "promise_icon_ids"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 136
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 137
    return-void
.end method

.method private verify(Landroid/content/pm/PackageInstaller$SessionInfo;)Landroid/content/pm/PackageInstaller$SessionInfo;
    .locals 7
    .param p1, "sessionInfo"    # Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 144
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    .line 145
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 146
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, "pkg":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/launcher3/pm/InstallSessionHelper;->mSessionVerifiedMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 161
    :try_start_0
    iget-object v5, p0, Lcom/android/launcher3/pm/InstallSessionHelper;->mSessionVerifiedMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 162
    new-instance v5, Lcom/android/launcher3/util/PackageManagerHelper;

    iget-object v6, p0, Lcom/android/launcher3/pm/InstallSessionHelper;->mAppContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/launcher3/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    .line 163
    invoke-static {p1}, Lcom/android/launcher3/pm/InstallSessionHelper;->getUserHandle(Landroid/content/pm/PackageInstaller$SessionInfo;)Landroid/os/UserHandle;

    move-result-object v6

    .line 162
    invoke-virtual {v5, v3, v6, v1}, Lcom/android/launcher3/util/PackageManagerHelper;->getApplicationInfo(Ljava/lang/String;Landroid/os/UserHandle;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    if-eqz v5, :cond_1

    move v0, v1

    .line 164
    .local v0, "hasSystemFlag":Z
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/pm/InstallSessionHelper;->mSessionVerifiedMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .end local v0    # "hasSystemFlag":Z
    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    iget-object v0, p0, Lcom/android/launcher3/pm/InstallSessionHelper;->mSessionVerifiedMap:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v2, p1

    :cond_3
    return-object v2

    .line 166
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 147
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_4
    :goto_0
    sget-boolean v3, Lcom/android/launcher3/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v3, :cond_8

    .line 148
    const-string v3, "b/202985412"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InstallSessionHelper verify, info="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p1, :cond_5

    move v0, v1

    :cond_5
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", info install name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 150
    if-nez p1, :cond_6

    .line 151
    move-object v1, v2

    goto :goto_1

    .line 152
    :cond_6
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", empty pkg name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 153
    if-nez p1, :cond_7

    .line 154
    move-object v1, v2

    goto :goto_2

    .line 155
    :cond_7
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    .line 153
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_8
    return-object v2
.end method


# virtual methods
.method public getActiveSessionInfo(Landroid/os/UserHandle;Ljava/lang/String;)Landroid/content/pm/PackageInstaller$SessionInfo;
    .locals 4
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "pkg"    # Ljava/lang/String;

    .line 121
    invoke-virtual {p0}, Lcom/android/launcher3/pm/InstallSessionHelper;->getAllVerifiedSessions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 122
    .local v1, "info":Landroid/content/pm/PackageInstaller$SessionInfo;
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 123
    .local v2, "match":Z
    sget-boolean v3, Lcom/android/launcher3/Utilities;->ATLEAST_Q:Z

    if-eqz v3, :cond_0

    invoke-static {v1}, Lcom/android/launcher3/pm/InstallSessionHelper;->getUserHandle(Landroid/content/pm/PackageInstaller$SessionInfo;)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 124
    const/4 v2, 0x0

    .line 126
    :cond_0
    if-eqz v2, :cond_1

    .line 127
    return-object v1

    .line 129
    .end local v1    # "info":Landroid/content/pm/PackageInstaller$SessionInfo;
    .end local v2    # "match":Z
    :cond_1
    goto :goto_0

    .line 130
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActiveSessions()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;"
        }
    .end annotation

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 113
    .local v0, "activePackages":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/pm/InstallSessionHelper;->getAllVerifiedSessions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 114
    .local v2, "info":Landroid/content/pm/PackageInstaller$SessionInfo;
    new-instance v3, Lcom/android/launcher3/util/PackageUserKey;

    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Lcom/android/launcher3/pm/InstallSessionHelper;->getUserHandle(Landroid/content/pm/PackageInstaller$SessionInfo;)Landroid/os/UserHandle;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .end local v2    # "info":Landroid/content/pm/PackageInstaller$SessionInfo;
    goto :goto_0

    .line 117
    :cond_0
    return-object v0
.end method

.method public getAllVerifiedSessions()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;"
        }
    .end annotation

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    sget-boolean v1, Lcom/android/launcher3/Utilities;->ATLEAST_Q:Z

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/android/launcher3/pm/InstallSessionHelper;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v1}, Landroid/content/pm/LauncherApps;->getAllPackageInstallerSessions()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/pm/InstallSessionHelper;->mInstaller:Landroid/content/pm/PackageInstaller;

    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller;->getAllSessions()Ljava/util/List;

    move-result-object v1

    :goto_0
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 174
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 175
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 176
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInstaller$SessionInfo;

    invoke-direct {p0, v2}, Lcom/android/launcher3/pm/InstallSessionHelper;->verify(Landroid/content/pm/PackageInstaller$SessionInfo;)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v2

    if-nez v2, :cond_1

    .line 177
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 180
    :cond_2
    return-object v0
.end method

.method getVerifiedSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;
    .locals 1
    .param p1, "sessionId"    # I

    .line 140
    iget-object v0, p0, Lcom/android/launcher3/pm/InstallSessionHelper;->mInstaller:Landroid/content/pm/PackageInstaller;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/pm/InstallSessionHelper;->verify(Landroid/content/pm/PackageInstaller$SessionInfo;)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v0

    return-object v0
.end method

.method public promiseIconAddedForId(I)Z
    .locals 1
    .param p1, "sessionId"    # I

    .line 205
    invoke-direct {p0}, Lcom/android/launcher3/pm/InstallSessionHelper;->getPromiseIconIds()Lcom/android/launcher3/util/IntSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v0

    return v0
.end method

.method public registerInstallTracker(Lcom/android/launcher3/pm/InstallSessionTracker$Callback;)Lcom/android/launcher3/pm/InstallSessionTracker;
    .locals 3
    .param p1, "callback"    # Lcom/android/launcher3/pm/InstallSessionTracker$Callback;

    .line 273
    new-instance v0, Lcom/android/launcher3/pm/InstallSessionTracker;

    iget-object v1, p0, Lcom/android/launcher3/pm/InstallSessionHelper;->mInstaller:Landroid/content/pm/PackageInstaller;

    iget-object v2, p0, Lcom/android/launcher3/pm/InstallSessionHelper;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/android/launcher3/pm/InstallSessionTracker;-><init>(Lcom/android/launcher3/pm/InstallSessionHelper;Lcom/android/launcher3/pm/InstallSessionTracker$Callback;Landroid/content/pm/PackageInstaller;Landroid/content/pm/LauncherApps;)V

    .line 275
    .local v0, "tracker":Lcom/android/launcher3/pm/InstallSessionTracker;
    invoke-virtual {v0}, Lcom/android/launcher3/pm/InstallSessionTracker;->register()V

    .line 276
    return-object v0
.end method

.method public removePromiseIconId(I)V
    .locals 1
    .param p1, "sessionId"    # I

    .line 210
    invoke-virtual {p0, p1}, Lcom/android/launcher3/pm/InstallSessionHelper;->promiseIconAddedForId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-direct {p0}, Lcom/android/launcher3/pm/InstallSessionHelper;->getPromiseIconIds()Lcom/android/launcher3/util/IntSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntSet;->getArray()Lcom/android/launcher3/util/IntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/IntArray;->removeValue(I)V

    .line 212
    invoke-direct {p0}, Lcom/android/launcher3/pm/InstallSessionHelper;->updatePromiseIconPrefs()V

    .line 214
    :cond_0
    return-void
.end method

.method public restoreDbIfApplicable(Landroid/content/pm/PackageInstaller$SessionInfo;)Z
    .locals 2
    .param p1, "info"    # Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 187
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_DATABASE_RESTORE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 188
    return v1

    .line 190
    :cond_0
    invoke-static {p1}, Lcom/android/launcher3/pm/InstallSessionHelper;->isRestore(Landroid/content/pm/PackageInstaller$SessionInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/android/launcher3/pm/InstallSessionHelper;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "restore_backup_table"

    invoke-static {v0, v1}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    .line 193
    const/4 v0, 0x1

    return v0

    .line 195
    :cond_1
    return v1
.end method

.method tryQueuePromiseAppIcon(Landroid/content/pm/PackageInstaller$SessionInfo;)V
    .locals 3
    .param p1, "sessionInfo"    # Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 226
    sget-boolean v0, Lcom/android/launcher3/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v0, :cond_1

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InstallSessionHelper tryQueuePromiseAppIcon, FeatureFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/config/FeatureFlags;->PROMISE_APPS_NEW_INSTALLS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    .line 228
    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", SessionCommitReceiveEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/pm/InstallSessionHelper;->mAppContext:Landroid/content/Context;

    .line 229
    invoke-static {v1}, Lcom/android/launcher3/SessionCommitReceiver;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", verifySessionInfo(sessionInfo)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 230
    invoke-virtual {p0, p1}, Lcom/android/launcher3/pm/InstallSessionHelper;->verifySessionInfo(Landroid/content/pm/PackageInstaller$SessionInfo;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", !promiseIconAdded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 232
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/pm/InstallSessionHelper;->promiseIconAddedForId(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    const-string v1, "b/202985412"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_1
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->PROMISE_APPS_NEW_INSTALLS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/pm/InstallSessionHelper;->mAppContext:Landroid/content/Context;

    .line 235
    invoke-static {v0}, Lcom/android/launcher3/SessionCommitReceiver;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 236
    invoke-virtual {p0, p1}, Lcom/android/launcher3/pm/InstallSessionHelper;->verifySessionInfo(Landroid/content/pm/PackageInstaller$SessionInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 237
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/pm/InstallSessionHelper;->promiseIconAddedForId(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding package name to install queue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 239
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 238
    const-string v1, "InstallSessionHelper"

    invoke-static {v1, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    sget-object v0, Lcom/android/launcher3/model/ItemInstallQueue;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher3/pm/InstallSessionHelper;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/ItemInstallQueue;

    .line 242
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/android/launcher3/pm/InstallSessionHelper;->getUserHandle(Landroid/content/pm/PackageInstaller$SessionInfo;)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/model/ItemInstallQueue;->queueItem(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 244
    invoke-direct {p0}, Lcom/android/launcher3/pm/InstallSessionHelper;->getPromiseIconIds()Lcom/android/launcher3/util/IntSet;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntSet;->add(I)V

    .line 245
    invoke-direct {p0}, Lcom/android/launcher3/pm/InstallSessionHelper;->updatePromiseIconPrefs()V

    .line 247
    :cond_2
    return-void
.end method

.method public verifySessionInfo(Landroid/content/pm/PackageInstaller$SessionInfo;)Z
    .locals 7
    .param p1, "sessionInfo"    # Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 250
    sget-boolean v0, Lcom/android/launcher3/testing/TestProtocol;->sDebugTracing:Z

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    .line 251
    if-eqz p1, :cond_1

    new-instance v0, Lcom/android/launcher3/util/PackageManagerHelper;

    iget-object v4, p0, Lcom/android/launcher3/pm/InstallSessionHelper;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/android/launcher3/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    .line 253
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lcom/android/launcher3/pm/InstallSessionHelper;->getUserHandle(Landroid/content/pm/PackageInstaller$SessionInfo;)Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/util/PackageManagerHelper;->isAppInstalled(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 254
    .local v0, "appNotInstalled":Z
    :goto_1
    if-eqz p1, :cond_2

    .line 255
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v3

    .line 256
    .local v4, "labelNotEmpty":Z
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "InstallSessionHelper verifySessionInfo, verify(sessionInfo)="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 257
    invoke-direct {p0, p1}, Lcom/android/launcher3/pm/InstallSessionHelper;->verify(Landroid/content/pm/PackageInstaller$SessionInfo;)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", reason="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 258
    if-nez p1, :cond_3

    const/4 v6, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getInstallReason()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", PackageManager.INSTALL_REASON_USER="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", hasIcon="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p1, :cond_4

    .line 260
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppIcon()Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_4

    move v6, v2

    goto :goto_4

    :cond_4
    move v6, v3

    :goto_4
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", label is ! empty="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " +, app not installed="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 256
    const-string v6, "b/202985412"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    .end local v0    # "appNotInstalled":Z
    .end local v4    # "labelNotEmpty":Z
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/launcher3/pm/InstallSessionHelper;->verify(Landroid/content/pm/PackageInstaller$SessionInfo;)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 265
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getInstallReason()I

    move-result v0

    if-ne v0, v1, :cond_6

    .line 266
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 267
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Lcom/android/launcher3/util/PackageManagerHelper;

    iget-object v1, p0, Lcom/android/launcher3/pm/InstallSessionHelper;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    .line 269
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/android/launcher3/pm/InstallSessionHelper;->getUserHandle(Landroid/content/pm/PackageInstaller$SessionInfo;)Landroid/os/UserHandle;

    move-result-object v4

    .line 268
    invoke-virtual {v0, v1, v4}, Lcom/android/launcher3/util/PackageManagerHelper;->isAppInstalled(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_5

    :cond_6
    move v2, v3

    .line 264
    :goto_5
    return v2
.end method
