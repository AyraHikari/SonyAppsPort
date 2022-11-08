.class public Lcom/android/launcher3/pm/PinRequestHelper;
.super Ljava/lang/Object;
.source "PinRequestHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createWorkspaceItemFromPinItemRequest(Landroid/content/Context;Landroid/content/pm/LauncherApps$PinItemRequest;J)Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Landroid/content/pm/LauncherApps$PinItemRequest;
    .param p2, "acceptDelay"    # J

    .line 57
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/pm/LauncherApps$PinItemRequest;->getRequestType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 58
    invoke-virtual {p1}, Landroid/content/pm/LauncherApps$PinItemRequest;->isValid()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 60
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gtz v1, :cond_0

    .line 61
    invoke-virtual {p1}, Landroid/content/pm/LauncherApps$PinItemRequest;->accept()Z

    move-result v1

    if-nez v1, :cond_1

    .line 62
    return-object v0

    .line 66
    :cond_0
    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/pm/PinRequestHelper$1;

    invoke-direct {v1, p2, p3, p1}, Lcom/android/launcher3/pm/PinRequestHelper$1;-><init>(JLandroid/content/pm/LauncherApps$PinItemRequest;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 81
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/LauncherApps$PinItemRequest;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    .line 82
    .local v0, "si":Landroid/content/pm/ShortcutInfo;
    new-instance v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v1, v0, p0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>(Landroid/content/pm/ShortcutInfo;Landroid/content/Context;)V

    .line 85
    .local v1, "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    new-instance v2, Lcom/android/launcher3/icons/ShortcutCachingLogic;

    invoke-direct {v2}, Lcom/android/launcher3/icons/ShortcutCachingLogic;-><init>()V

    invoke-virtual {v2, p0, v0}, Lcom/android/launcher3/icons/ShortcutCachingLogic;->loadIcon(Landroid/content/Context;Landroid/content/pm/ShortcutInfo;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v2

    iput-object v2, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    .line 86
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/android/launcher3/LauncherModel;->updateAndBindWorkspaceItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/content/pm/ShortcutInfo;)V

    .line 87
    return-object v1

    .line 89
    .end local v0    # "si":Landroid/content/pm/ShortcutInfo;
    .end local v1    # "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    :cond_2
    return-object v0
.end method

.method public static getPinItemRequest(Landroid/content/Intent;)Landroid/content/pm/LauncherApps$PinItemRequest;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .line 95
    const-string v0, "android.content.pm.extra.PIN_ITEM_REQUEST"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 96
    .local v0, "extra":Landroid/os/Parcelable;
    instance-of v1, v0, Landroid/content/pm/LauncherApps$PinItemRequest;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/content/pm/LauncherApps$PinItemRequest;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method
