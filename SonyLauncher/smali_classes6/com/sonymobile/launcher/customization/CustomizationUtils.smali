.class public Lcom/sonymobile/launcher/customization/CustomizationUtils;
.super Ljava/lang/Object;
.source "CustomizationUtils.java"


# static fields
.field public static final IMAGE_PATH:Ljava/lang/String; = "/etc/customization/content/com/sonyericsson/home/"

.field private static final TAG:Ljava/lang/String; = "CustomizationUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createShortcutImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "iconFilename"    # Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    .line 68
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/etc/customization/content/com/sonyericsson/home/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 70
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    invoke-static {p0}, Lcom/android/launcher3/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/LauncherIcons;

    move-result-object v2

    .line 71
    .local v2, "li":Lcom/android/launcher3/icons/LauncherIcons;
    new-instance v3, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;

    invoke-direct {v3}, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;-><init>()V

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->setUser(Landroid/os/UserHandle;)Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/android/launcher3/icons/LauncherIcons;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v3

    iget-object v0, v3, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    .line 72
    invoke-virtual {v2}, Lcom/android/launcher3/icons/LauncherIcons;->recycle()V

    .line 75
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v2    # "li":Lcom/android/launcher3/icons/LauncherIcons;
    :cond_0
    return-object v0
.end method

.method public static createShortcutItem(JLjava/lang/String;Ljava/lang/String;)Lcom/sonymobile/launcher/data/ShortcutItem;
    .locals 6
    .param p0, "containerId"    # J
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "uri"    # Ljava/lang/String;

    .line 87
    const-string v4, ""

    const/4 v5, 0x0

    move-wide v0, p0

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/launcher/customization/CustomizationUtils;->createShortcutItem(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/launcher/data/ShortcutItem;

    move-result-object v0

    return-object v0
.end method

.method public static createShortcutItem(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/launcher/data/ShortcutItem;
    .locals 6
    .param p0, "containerId"    # J
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "uri"    # Ljava/lang/String;
    .param p4, "iconPackageName"    # Ljava/lang/String;
    .param p5, "iconResourceName"    # Ljava/lang/String;

    .line 102
    const/4 v0, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/launcher/customization/CustomizationUtils;->createShortcutItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/launcher/data/ShortcutItem;

    move-result-object v0

    .line 104
    .local v0, "item":Lcom/sonymobile/launcher/data/ShortcutItem;
    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0, p0, p1}, Lcom/sonymobile/launcher/data/ShortcutItem;->setContainerId(J)V

    .line 107
    :cond_0
    return-object v0
.end method

.method public static createShortcutItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/launcher/data/ShortcutItem;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "iconPackageName"    # Ljava/lang/String;
    .param p4, "iconResourceName"    # Ljava/lang/String;
    .param p5, "iconFilename"    # Ljava/lang/String;

    .line 122
    const/4 v0, 0x0

    .line 125
    .local v0, "item":Lcom/sonymobile/launcher/data/ShortcutItem;
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p2, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 126
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, "packageName":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 131
    move-object v2, p3

    .line 135
    :cond_0
    new-instance v3, Lcom/sonymobile/launcher/data/ShortcutItem;

    invoke-direct {v3, v2, p1, v1}, Lcom/sonymobile/launcher/data/ShortcutItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    move-object v0, v3

    .line 136
    if-eqz p5, :cond_1

    .line 137
    invoke-static {p0, p5}, Lcom/sonymobile/launcher/customization/CustomizationUtils;->createShortcutImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 138
    .local v3, "image":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v4}, Lcom/sonymobile/launcher/data/ShortcutItem;->setShortcutData(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 140
    .end local v3    # "image":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {v0, p3, p4}, Lcom/sonymobile/launcher/data/ShortcutItem;->setShortcutData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "packageName":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 142
    :catch_0
    move-exception v1

    .line 143
    .local v1, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v1}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 146
    .end local v1    # "e":Ljava/net/URISyntaxException;
    :goto_1
    return-object v0
.end method

.method private static getCategoryIndex([Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "categories"    # [Ljava/lang/String;
    .param p1, "category"    # Ljava/lang/String;

    .line 158
    if-eqz p1, :cond_1

    .line 159
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 160
    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    return v0

    .line 159
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static getFolderName([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "categories"    # [Ljava/lang/String;
    .param p1, "categoryNames"    # [Ljava/lang/String;
    .param p2, "category"    # Ljava/lang/String;

    .line 54
    invoke-static {p0, p2}, Lcom/sonymobile/launcher/customization/CustomizationUtils;->getCategoryIndex([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 55
    .local v0, "index":I
    aget-object v1, p1, v0

    return-object v1
.end method

.method public static getQualifiedName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 39
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_0

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 42
    :cond_0
    return-object p0
.end method
