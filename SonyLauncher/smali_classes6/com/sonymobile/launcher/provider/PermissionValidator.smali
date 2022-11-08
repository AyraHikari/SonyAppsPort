.class public Lcom/sonymobile/launcher/provider/PermissionValidator;
.super Ljava/lang/Object;
.source "PermissionValidator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCallerPackages(Landroid/content/Context;)[Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 102
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hasPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "permission"    # Ljava/lang/String;

    .line 64
    invoke-static {p1}, Lcom/sonymobile/launcher/provider/PermissionValidator;->getCallerPackages(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "packageNames":[Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 67
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 68
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, p2, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 70
    const/4 v1, 0x1

    return v1

    .line 67
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 75
    :cond_1
    return v1
.end method


# virtual methods
.method public hasInsertBadgePermission(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 30
    const-string v0, "com.sonymobile.home.permission.PROVIDER_INSERT_BADGE"

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/launcher/provider/PermissionValidator;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 31
    invoke-virtual {p0, p1}, Lcom/sonymobile/launcher/provider/PermissionValidator;->hasInsertBadgeProxyPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 30
    :goto_1
    return v0
.end method

.method public hasInsertBadgeProxyPermission(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 42
    const-string v0, "com.sonymobile.home.permission.PROVIDER_INSERT_BADGE_PROXY"

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/launcher/provider/PermissionValidator;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasReadBadgePermission(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 53
    const-string v0, "com.sonymobile.home.permission.PROVIDER_READ_BADGE"

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/launcher/provider/PermissionValidator;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isLauncherActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "activityName"    # Ljava/lang/String;
    .param p4, "user"    # Landroid/os/UserHandle;

    .line 116
    const-class v0, Landroid/content/pm/LauncherApps;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    .line 117
    .local v0, "launcherApps":Landroid/content/pm/LauncherApps;
    nop

    .line 118
    invoke-virtual {v0, p2, p4}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    .line 119
    .local v1, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 120
    return v2

    .line 123
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/LauncherActivityInfo;

    .line 124
    .local v4, "activityInfo":Landroid/content/pm/LauncherActivityInfo;
    invoke-virtual {v4}, Landroid/content/pm/LauncherActivityInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 125
    const/4 v2, 0x1

    return v2

    .line 127
    .end local v4    # "activityInfo":Landroid/content/pm/LauncherActivityInfo;
    :cond_1
    goto :goto_0

    .line 129
    :cond_2
    return v2
.end method

.method public verifyPackageBelongsToCallingUid(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageNameToVerify"    # Ljava/lang/String;

    .line 88
    invoke-static {p1}, Lcom/sonymobile/launcher/provider/PermissionValidator;->getCallerPackages(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "packageNames":[Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 91
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 92
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 93
    const/4 v1, 0x1

    return v1

    .line 91
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 98
    :cond_1
    return v1
.end method
