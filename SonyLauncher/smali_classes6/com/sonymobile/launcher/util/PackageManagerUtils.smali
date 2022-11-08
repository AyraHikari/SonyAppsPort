.class public Lcom/sonymobile/launcher/util/PackageManagerUtils;
.super Ljava/lang/Object;
.source "PackageManagerUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PackageManagerUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static hasRequestedPermission(Ljava/lang/String;Landroid/content/pm/PackageInfo;)Z
    .locals 6
    .param p0, "permission"    # Ljava/lang/String;
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .line 50
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_1

    .line 53
    :cond_0
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 54
    .local v4, "requestedPermission":Ljava/lang/String;
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 55
    const/4 v0, 0x1

    return v0

    .line 53
    .end local v4    # "requestedPermission":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 58
    :cond_2
    return v0

    .line 51
    :cond_3
    :goto_1
    return v0
.end method

.method public static isSystemApp(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 4
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 36
    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_0

    move v0, v2

    :cond_0
    return v0

    .line 32
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 33
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method private static isUpdatedSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1
    .param p0, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 43
    if-eqz p0, :cond_0

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
