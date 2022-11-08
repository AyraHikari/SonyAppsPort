.class public interface abstract Lcom/android/launcher3/model/BgDataModel$Callbacks;
.super Ljava/lang/Object;
.source "BgDataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/model/BgDataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation


# static fields
.field public static final FLAG_HAS_SHORTCUT_PERMISSION:I = 0x1

.field public static final FLAG_QUIET_MODE_CHANGE_PERMISSION:I = 0x4

.field public static final FLAG_QUIET_MODE_ENABLED:I = 0x2


# virtual methods
.method public bindAllApplications([Lcom/android/launcher3/model/data/AppInfo;I)V
    .locals 0
    .param p1, "apps"    # [Lcom/android/launcher3/model/data/AppInfo;
    .param p2, "flags"    # I

    .line 540
    return-void
.end method

.method public bindAllAppsOwnOrder(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 547
    .local p1, "ownOrderApps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    return-void
.end method

.method public bindAllWidgets(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;",
            ">;)V"
        }
    .end annotation

    .line 527
    .local p1, "widgets":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;>;"
    return-void
.end method

.method public bindAppsAdded(Lcom/android/launcher3/util/IntArray;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "newScreens"    # Lcom/android/launcher3/util/IntArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/IntArray;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 511
    .local p2, "addNotAnimated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    .local p3, "addAnimated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    return-void
.end method

.method public bindDeepShortcutMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 533
    .local p1, "deepShortcutMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/ComponentKey;Ljava/lang/Integer;>;"
    return-void
.end method

.method public bindExtraContainerItems(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V
    .locals 0
    .param p1, "item"    # Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;

    .line 538
    return-void
.end method

.method public bindIncrementalDownloadProgressUpdated(Lcom/android/launcher3/model/data/AppInfo;)V
    .locals 0
    .param p1, "app"    # Lcom/android/launcher3/model/data/AppInfo;

    .line 521
    return-void
.end method

.method public bindItems(Ljava/util/List;Z)V
    .locals 0
    .param p2, "forceAnimateIcons"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 506
    .local p1, "shortcuts":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    return-void
.end method

.method public bindItemsModified(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 516
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    return-void
.end method

.method public bindRestoreItemsChange(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 524
    .local p1, "updates":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/launcher3/model/data/ItemInfo;>;"
    return-void
.end method

.method public bindScreens(Lcom/android/launcher3/util/IntArray;)V
    .locals 0
    .param p1, "orderedScreenIds"    # Lcom/android/launcher3/util/IntArray;

    .line 507
    return-void
.end method

.method public bindStringCache(Lcom/android/launcher3/model/StringCache;)V
    .locals 0
    .param p1, "cache"    # Lcom/android/launcher3/model/StringCache;

    .line 545
    return-void
.end method

.method public bindWidgetsRestored(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    .line 523
    .local p1, "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    return-void
.end method

.method public bindWorkspaceComponentsRemoved(Ljava/util/function/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 525
    .local p1, "matcher":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    return-void
.end method

.method public bindWorkspaceComponentsRemovedWithoutWidget(Ljava/util/function/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 526
    .local p1, "matcher":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    return-void
.end method

.method public bindWorkspaceItemsChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 522
    .local p1, "updated":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    return-void
.end method

.method public clearPendingBinds()V
    .locals 0

    .line 503
    return-void
.end method

.method public finishBindingItems(Lcom/android/launcher3/util/IntSet;)V
    .locals 0
    .param p1, "pagesBoundFirst"    # Lcom/android/launcher3/util/IntSet;

    .line 508
    return-void
.end method

.method public getPagesToBindSynchronously(Lcom/android/launcher3/util/IntArray;)Lcom/android/launcher3/util/IntSet;
    .locals 1
    .param p1, "orderedScreenIds"    # Lcom/android/launcher3/util/IntArray;

    .line 500
    new-instance v0, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntSet;-><init>()V

    return-object v0
.end method

.method public onInitialBindComplete(Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/util/RunnableList;)V
    .locals 0
    .param p1, "boundPages"    # Lcom/android/launcher3/util/IntSet;
    .param p2, "pendingTasks"    # Lcom/android/launcher3/util/RunnableList;

    .line 530
    invoke-virtual {p2}, Lcom/android/launcher3/util/RunnableList;->executeAllAndDestroy()V

    .line 531
    return-void
.end method

.method public preAddApps()V
    .locals 0

    .line 509
    return-void
.end method

.method public removeOwnOrderAppsItem(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 0
    .param p1, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 549
    return-void
.end method

.method public startBinding()V
    .locals 0

    .line 504
    return-void
.end method
