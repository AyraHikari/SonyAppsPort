.class public Lcom/android/launcher3/util/InstantAppResolver;
.super Ljava/lang/Object;
.source "InstantAppResolver.java"

# interfaces
.implements Lcom/android/launcher3/util/ResourceBasedOverride;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/android/launcher3/util/InstantAppResolver;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 33
    const-class v0, Lcom/android/launcher3/util/InstantAppResolver;

    sget v1, Lcom/android/launcher3/R$string;->instant_app_resolver_class:I

    invoke-static {v0, p0, v1}, Lcom/android/launcher3/util/ResourceBasedOverride$Overrides;->getObject(Ljava/lang/Class;Landroid/content/Context;I)Lcom/android/launcher3/util/ResourceBasedOverride;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/InstantAppResolver;

    return-object v0
.end method


# virtual methods
.method public isInstantApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 48
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/util/InstantAppResolver;->isInstantApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 49
    :catch_0
    move-exception v2

    .line 50
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to determine whether package is instant app "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "InstantAppResolver"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v1
.end method

.method public isInstantApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public isInstantApp(Lcom/android/launcher3/model/data/AppInfo;)Z
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/model/data/AppInfo;

    .line 42
    const/4 v0, 0x0

    return v0
.end method
