.class Lcom/android/launcher3/model/QuickstepModelDelegate$WorkspaceItemFactory;
.super Ljava/lang/Object;
.source "QuickstepModelDelegate.java"

# interfaces
.implements Lcom/android/launcher3/util/PersistedItemArray$ItemFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/model/QuickstepModelDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WorkspaceItemFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/util/PersistedItemArray$ItemFactory<",
        "Lcom/android/launcher3/model/data/ItemInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAppState:Lcom/android/launcher3/LauncherAppState;

.field private final mMaxCount:I

.field private final mPinnedShortcuts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/launcher3/shortcuts/ShortcutKey;",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mReadCount:I

.field private final mUMS:Lcom/android/launcher3/model/UserManagerState;


# direct methods
.method protected constructor <init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/UserManagerState;Ljava/util/Map;I)V
    .locals 1
    .param p1, "appState"    # Lcom/android/launcher3/LauncherAppState;
    .param p2, "ums"    # Lcom/android/launcher3/model/UserManagerState;
    .param p4, "maxCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/LauncherAppState;",
            "Lcom/android/launcher3/model/UserManagerState;",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/shortcuts/ShortcutKey;",
            "Landroid/content/pm/ShortcutInfo;",
            ">;I)V"
        }
    .end annotation

    .line 443
    .local p3, "pinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 440
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$WorkspaceItemFactory;->mReadCount:I

    .line 444
    iput-object p1, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$WorkspaceItemFactory;->mAppState:Lcom/android/launcher3/LauncherAppState;

    .line 445
    iput-object p2, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$WorkspaceItemFactory;->mUMS:Lcom/android/launcher3/model/UserManagerState;

    .line 446
    iput-object p3, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$WorkspaceItemFactory;->mPinnedShortcuts:Ljava/util/Map;

    .line 447
    iput p4, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$WorkspaceItemFactory;->mMaxCount:I

    .line 448
    return-void
.end method


# virtual methods
.method public createInfo(ILandroid/os/UserHandle;Landroid/content/Intent;)Lcom/android/launcher3/model/data/ItemInfo;
    .locals 4
    .param p1, "itemType"    # I
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "intent"    # Landroid/content/Intent;

    .line 453
    iget v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$WorkspaceItemFactory;->mReadCount:I

    iget v1, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$WorkspaceItemFactory;->mMaxCount:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 454
    return-object v2

    .line 456
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 484
    return-object v2

    .line 470
    :sswitch_0
    invoke-static {p3, p2}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromIntent(Landroid/content/Intent;Landroid/os/UserHandle;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object v0

    .line 471
    .local v0, "key":Lcom/android/launcher3/shortcuts/ShortcutKey;
    if-nez v0, :cond_1

    .line 472
    return-object v2

    .line 474
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$WorkspaceItemFactory;->mPinnedShortcuts:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    .line 475
    .local v1, "si":Landroid/content/pm/ShortcutInfo;
    if-nez v1, :cond_2

    .line 476
    return-object v2

    .line 478
    :cond_2
    new-instance v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object v3, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$WorkspaceItemFactory;->mAppState:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>(Landroid/content/pm/ShortcutInfo;Landroid/content/Context;)V

    .line 479
    .local v2, "wii":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    iget-object v3, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$WorkspaceItemFactory;->mAppState:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/android/launcher3/icons/IconCache;->getShortcutIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/ShortcutInfo;)V

    .line 480
    iget v3, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$WorkspaceItemFactory;->mReadCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$WorkspaceItemFactory;->mReadCount:I

    .line 481
    return-object v2

    .line 458
    .end local v0    # "key":Lcom/android/launcher3/shortcuts/ShortcutKey;
    .end local v1    # "si":Landroid/content/pm/ShortcutInfo;
    .end local v2    # "wii":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    :sswitch_1
    iget-object v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$WorkspaceItemFactory;->mAppState:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/content/pm/LauncherApps;

    .line 459
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    .line 460
    invoke-virtual {v0, p3, p2}, Landroid/content/pm/LauncherApps;->resolveActivity(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object v0

    .line 461
    .local v0, "lai":Landroid/content/pm/LauncherActivityInfo;
    if-nez v0, :cond_3

    .line 462
    return-object v2

    .line 464
    :cond_3
    new-instance v1, Lcom/android/launcher3/model/data/AppInfo;

    iget-object v2, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$WorkspaceItemFactory;->mUMS:Lcom/android/launcher3/model/UserManagerState;

    invoke-virtual {v2, p2}, Lcom/android/launcher3/model/UserManagerState;->isUserQuiet(Landroid/os/UserHandle;)Z

    move-result v2

    invoke-direct {v1, v0, p2, v2}, Lcom/android/launcher3/model/data/AppInfo;-><init>(Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;Z)V

    .line 465
    .local v1, "info":Lcom/android/launcher3/model/data/AppInfo;
    iget-object v2, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$WorkspaceItemFactory;->mAppState:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0, v3}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/LauncherActivityInfo;Z)V

    .line 466
    iget v2, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$WorkspaceItemFactory;->mReadCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$WorkspaceItemFactory;->mReadCount:I

    .line 467
    iget-object v2, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$WorkspaceItemFactory;->mAppState:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/model/data/AppInfo;->makeWorkspaceItem(Landroid/content/Context;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v2

    return-object v2

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x6 -> :sswitch_0
    .end sparse-switch
.end method
