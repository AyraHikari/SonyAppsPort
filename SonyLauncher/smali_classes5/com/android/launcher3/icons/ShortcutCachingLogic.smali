.class public Lcom/android/launcher3/icons/ShortcutCachingLogic;
.super Ljava/lang/Object;
.source "ShortcutCachingLogic.java"

# interfaces
.implements Lcom/android/launcher3/icons/cache/CachingLogic;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/icons/cache/CachingLogic<",
        "Landroid/content/pm/ShortcutInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ShortcutCachingLogic"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIcon(Landroid/content/Context;Landroid/content/pm/ShortcutInfo;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shortcutInfo"    # Landroid/content/pm/ShortcutInfo;
    .param p2, "density"    # I

    .line 101
    :try_start_0
    const-class v0, Landroid/content/pm/LauncherApps;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    .line 102
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/LauncherApps;->getShortcutIconDrawable(Landroid/content/pm/ShortcutInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    return-object v0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "ShortcutCachingLogic"

    const-string v2, "Failed to get shortcut icon"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public addToMemCache()Z
    .locals 1

    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public getComponent(Landroid/content/pm/ShortcutInfo;)Landroid/content/ComponentName;
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ShortcutInfo;

    .line 48
    invoke-static {p1}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromInfo(Landroid/content/pm/ShortcutInfo;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/shortcuts/ShortcutKey;->componentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public bridge synthetic getComponent(Ljava/lang/Object;)Landroid/content/ComponentName;
    .locals 0

    .line 42
    check-cast p1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/icons/ShortcutCachingLogic;->getComponent(Landroid/content/pm/ShortcutInfo;)Landroid/content/ComponentName;

    move-result-object p1

    return-object p1
.end method

.method public getDescription(Landroid/content/pm/ShortcutInfo;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "object"    # Landroid/content/pm/ShortcutInfo;
    .param p2, "fallback"    # Ljava/lang/CharSequence;

    .line 63
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getLongLabel()Ljava/lang/CharSequence;

    move-result-object v0

    .line 64
    .local v0, "label":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p2

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public bridge synthetic getDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 42
    check-cast p1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/icons/ShortcutCachingLogic;->getDescription(Landroid/content/pm/ShortcutInfo;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getLabel(Landroid/content/pm/ShortcutInfo;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ShortcutInfo;

    .line 58
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLabel(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 0

    .line 42
    check-cast p1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/icons/ShortcutCachingLogic;->getLabel(Landroid/content/pm/ShortcutInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getLastUpdatedTime(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/PackageInfo;)J
    .locals 4
    .param p1, "shortcutInfo"    # Landroid/content/pm/ShortcutInfo;
    .param p2, "info"    # Landroid/content/pm/PackageInfo;

    .line 81
    if-eqz p1, :cond_1

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_DEEP_SHORTCUT_ICON_CACHE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getLastChangedTimestamp()J

    move-result-wide v0

    iget-wide v2, p2, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0

    .line 82
    :cond_1
    :goto_0
    iget-wide v0, p2, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    return-wide v0
.end method

.method public bridge synthetic getLastUpdatedTime(Ljava/lang/Object;Landroid/content/pm/PackageInfo;)J
    .locals 0

    .line 42
    check-cast p1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/icons/ShortcutCachingLogic;->getLastUpdatedTime(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/PackageInfo;)J

    move-result-wide p1

    return-wide p1
.end method

.method public getUser(Landroid/content/pm/ShortcutInfo;)Landroid/os/UserHandle;
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ShortcutInfo;

    .line 53
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUser(Ljava/lang/Object;)Landroid/os/UserHandle;
    .locals 0

    .line 42
    check-cast p1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/icons/ShortcutCachingLogic;->getUser(Landroid/content/pm/ShortcutInfo;)Landroid/os/UserHandle;

    move-result-object p1

    return-object p1
.end method

.method public loadIcon(Landroid/content/Context;Landroid/content/pm/ShortcutInfo;)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ShortcutInfo;

    .line 70
    invoke-static {p1}, Lcom/android/launcher3/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/LauncherIcons;

    move-result-object v0

    .line 71
    .local v0, "li":Lcom/android/launcher3/icons/LauncherIcons;
    nop

    .line 72
    :try_start_0
    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->fillResIconDpi:I

    .line 71
    invoke-static {p1, p2, v1}, Lcom/android/launcher3/icons/ShortcutCachingLogic;->getIcon(Landroid/content/Context;Landroid/content/pm/ShortcutInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 73
    .local v1, "unbadgedDrawable":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_1

    sget-object v2, Lcom/android/launcher3/icons/BitmapInfo;->LOW_RES_INFO:Lcom/android/launcher3/icons/BitmapInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/icons/LauncherIcons;->close()V

    .line 73
    :cond_0
    return-object v2

    .line 74
    :cond_1
    :try_start_1
    new-instance v2, Lcom/android/launcher3/icons/BitmapInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/icons/LauncherIcons;->createScaledBitmapWithoutShadow(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 75
    invoke-static {p1}, Lcom/android/launcher3/util/Themes;->getColorAccent(Landroid/content/Context;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/android/launcher3/icons/BitmapInfo;-><init>(Landroid/graphics/Bitmap;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher3/icons/LauncherIcons;->close()V

    .line 74
    :cond_2
    return-object v2

    .line 70
    .end local v1    # "unbadgedDrawable":Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    :try_start_2
    invoke-virtual {v0}, Lcom/android/launcher3/icons/LauncherIcons;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v1
.end method

.method public bridge synthetic loadIcon(Landroid/content/Context;Ljava/lang/Object;)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 0

    .line 42
    check-cast p2, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/icons/ShortcutCachingLogic;->loadIcon(Landroid/content/Context;Landroid/content/pm/ShortcutInfo;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p1

    return-object p1
.end method
