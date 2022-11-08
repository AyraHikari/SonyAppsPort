.class public Lcom/android/launcher3/icons/ComponentWithLabelAndIcon$ComponentWithIconCachingLogic;
.super Lcom/android/launcher3/icons/ComponentWithLabel$ComponentCachingLogic;
.source "ComponentWithLabelAndIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/icons/ComponentWithLabelAndIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ComponentWithIconCachingLogic"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/icons/ComponentWithLabel$ComponentCachingLogic<",
        "Lcom/android/launcher3/icons/ComponentWithLabelAndIcon;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "addToMemCache"    # Z

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/icons/ComponentWithLabel$ComponentCachingLogic;-><init>(Landroid/content/Context;Z)V

    .line 40
    return-void
.end method


# virtual methods
.method public bridge synthetic loadIcon(Landroid/content/Context;Lcom/android/launcher3/icons/ComponentWithLabel;)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 0

    .line 36
    check-cast p2, Lcom/android/launcher3/icons/ComponentWithLabelAndIcon;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/icons/ComponentWithLabelAndIcon$ComponentWithIconCachingLogic;->loadIcon(Landroid/content/Context;Lcom/android/launcher3/icons/ComponentWithLabelAndIcon;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p1

    return-object p1
.end method

.method public loadIcon(Landroid/content/Context;Lcom/android/launcher3/icons/ComponentWithLabelAndIcon;)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "object"    # Lcom/android/launcher3/icons/ComponentWithLabelAndIcon;

    .line 45
    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v0

    .line 45
    invoke-interface {p2, v0}, Lcom/android/launcher3/icons/ComponentWithLabelAndIcon;->getFullResIcon(Lcom/android/launcher3/icons/IconCache;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 47
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 48
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/icons/ComponentWithLabel$ComponentCachingLogic;->loadIcon(Landroid/content/Context;Lcom/android/launcher3/icons/ComponentWithLabel;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v1

    return-object v1

    .line 50
    :cond_0
    invoke-static {p1}, Lcom/android/launcher3/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/LauncherIcons;

    move-result-object v1

    .line 51
    .local v1, "li":Lcom/android/launcher3/icons/LauncherIcons;
    :try_start_0
    new-instance v2, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;

    invoke-direct {v2}, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;-><init>()V

    invoke-interface {p2}, Lcom/android/launcher3/icons/ComponentWithLabelAndIcon;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->setUser(Landroid/os/UserHandle;)Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/icons/LauncherIcons;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher3/icons/LauncherIcons;->close()V

    .line 51
    :cond_1
    return-object v2

    .line 50
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    :try_start_1
    invoke-virtual {v1}, Lcom/android/launcher3/icons/LauncherIcons;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v2
.end method

.method public bridge synthetic loadIcon(Landroid/content/Context;Ljava/lang/Object;)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 0

    .line 36
    check-cast p2, Lcom/android/launcher3/icons/ComponentWithLabelAndIcon;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/icons/ComponentWithLabelAndIcon$ComponentWithIconCachingLogic;->loadIcon(Landroid/content/Context;Lcom/android/launcher3/icons/ComponentWithLabelAndIcon;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p1

    return-object p1
.end method
