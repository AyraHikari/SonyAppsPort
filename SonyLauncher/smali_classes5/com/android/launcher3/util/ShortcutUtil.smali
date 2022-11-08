.class public Lcom/android/launcher3/util/ShortcutUtil;
.super Ljava/lang/Object;
.source "ShortcutUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPersonKeysIfPinnedShortcut(Lcom/android/launcher3/model/data/ItemInfo;)[Ljava/lang/String;
    .locals 1
    .param p0, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 52
    invoke-static {p0}, Lcom/android/launcher3/util/ShortcutUtil;->isActive(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/launcher3/util/ShortcutUtil;->isPinnedShortcut(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getPersonKeys()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/launcher3/Utilities;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 52
    :goto_0
    return-object v0
.end method

.method public static getShortcutIdIfPinnedShortcut(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 44
    invoke-static {p0}, Lcom/android/launcher3/util/ShortcutUtil;->isActive(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/launcher3/util/ShortcutUtil;->isPinnedShortcut(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-static {p0}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/shortcuts/ShortcutKey;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 44
    :goto_0
    return-object v0
.end method

.method private static isActive(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 4
    .param p0, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 65
    instance-of v0, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 66
    invoke-virtual {v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->hasPromiseIconUi()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 67
    .local v0, "isLoading":Z
    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->isDisabled()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method private static isApp(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 1
    .param p0, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 71
    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isDeepShortcut(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 2
    .param p0, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 60
    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    instance-of v0, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isPinnedShortcut(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 2
    .param p0, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 75
    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    instance-of v0, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static supportsDeepShortcuts(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 1
    .param p0, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 37
    invoke-static {p0}, Lcom/android/launcher3/util/ShortcutUtil;->isActive(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/launcher3/util/ShortcutUtil;->isApp(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static supportsShortcuts(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 1
    .param p0, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 30
    invoke-static {p0}, Lcom/android/launcher3/util/ShortcutUtil;->isActive(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/android/launcher3/util/ShortcutUtil;->isApp(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/launcher3/util/ShortcutUtil;->isPinnedShortcut(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
