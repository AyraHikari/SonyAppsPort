.class public Lcom/android/launcher3/icons/LauncherActivityCachingLogic;
.super Ljava/lang/Object;
.source "LauncherActivityCachingLogic.java"

# interfaces
.implements Lcom/android/launcher3/icons/cache/CachingLogic;
.implements Lcom/android/launcher3/util/ResourceBasedOverride;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/icons/cache/CachingLogic<",
        "Landroid/content/pm/LauncherActivityInfo;",
        ">;",
        "Lcom/android/launcher3/util/ResourceBasedOverride;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/android/launcher3/icons/LauncherActivityCachingLogic;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 39
    const-class v0, Lcom/android/launcher3/icons/LauncherActivityCachingLogic;

    sget v1, Lcom/android/launcher3/R$string;->launcher_activity_logic_class:I

    invoke-static {v0, p0, v1}, Lcom/android/launcher3/util/ResourceBasedOverride$Overrides;->getObject(Ljava/lang/Class;Landroid/content/Context;I)Lcom/android/launcher3/util/ResourceBasedOverride;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/icons/LauncherActivityCachingLogic;

    return-object v0
.end method


# virtual methods
.method public getComponent(Landroid/content/pm/LauncherActivityInfo;)Landroid/content/ComponentName;
    .locals 1
    .param p1, "object"    # Landroid/content/pm/LauncherActivityInfo;

    .line 45
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getComponent(Ljava/lang/Object;)Landroid/content/ComponentName;
    .locals 0

    .line 32
    check-cast p1, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/icons/LauncherActivityCachingLogic;->getComponent(Landroid/content/pm/LauncherActivityInfo;)Landroid/content/ComponentName;

    move-result-object p1

    return-object p1
.end method

.method public getLabel(Landroid/content/pm/LauncherActivityInfo;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "object"    # Landroid/content/pm/LauncherActivityInfo;

    .line 55
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLabel(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 0

    .line 32
    check-cast p1, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/icons/LauncherActivityCachingLogic;->getLabel(Landroid/content/pm/LauncherActivityInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getUser(Landroid/content/pm/LauncherActivityInfo;)Landroid/os/UserHandle;
    .locals 1
    .param p1, "object"    # Landroid/content/pm/LauncherActivityInfo;

    .line 50
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUser(Ljava/lang/Object;)Landroid/os/UserHandle;
    .locals 0

    .line 32
    check-cast p1, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/icons/LauncherActivityCachingLogic;->getUser(Landroid/content/pm/LauncherActivityInfo;)Landroid/os/UserHandle;

    move-result-object p1

    return-object p1
.end method

.method public loadIcon(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "object"    # Landroid/content/pm/LauncherActivityInfo;

    .line 60
    invoke-static {p1}, Lcom/android/launcher3/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/LauncherIcons;

    move-result-object v0

    .line 61
    .local v0, "li":Lcom/android/launcher3/icons/LauncherIcons;
    :try_start_0
    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    .line 62
    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getIconProvider()Lcom/android/launcher3/icons/IconProvider;

    move-result-object v1

    iget v2, v0, Lcom/android/launcher3/icons/LauncherIcons;->mFillResIconDpi:I

    invoke-virtual {v1, p2, v2}, Lcom/android/launcher3/icons/IconProvider;->getIcon(Landroid/content/pm/LauncherActivityInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;

    invoke-direct {v2}, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;-><init>()V

    .line 63
    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->setUser(Landroid/os/UserHandle;)Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;

    move-result-object v2

    .line 61
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/icons/LauncherIcons;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/icons/LauncherIcons;->close()V

    .line 61
    :cond_0
    return-object v1

    .line 60
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Lcom/android/launcher3/icons/LauncherIcons;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public bridge synthetic loadIcon(Landroid/content/Context;Ljava/lang/Object;)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 0

    .line 32
    check-cast p2, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/icons/LauncherActivityCachingLogic;->loadIcon(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p1

    return-object p1
.end method
