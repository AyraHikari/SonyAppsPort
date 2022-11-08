.class public Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;
.super Ljava/lang/Object;
.source "TaskbarModelCallbacks.java"

# interfaces
.implements Lcom/android/launcher3/model/BgDataModel$Callbacks;
.implements Lcom/android/launcher3/util/LauncherBindableItemsContainer;


# instance fields
.field private final mContainer:Lcom/android/launcher3/taskbar/TaskbarView;

.field private final mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field private mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

.field private final mHotseatItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPredictedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/taskbar/TaskbarView;)V
    .locals 1
    .param p1, "context"    # Lcom/android/launcher3/taskbar/TaskbarActivityContext;
    .param p2, "container"    # Lcom/android/launcher3/taskbar/TaskbarView;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mHotseatItems:Landroid/util/SparseArray;

    .line 48
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mPredictedItems:Ljava/util/List;

    .line 58
    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    .line 59
    iput-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mContainer:Lcom/android/launcher3/taskbar/TaskbarView;

    .line 60
    return-void
.end method

.method private commitItemsToUI()V
    .locals 7

    .line 167
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isBindingItems()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    .line 172
    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    new-array v0, v0, [Lcom/android/launcher3/model/data/ItemInfo;

    .line 173
    .local v0, "hotseatItemInfos":[Lcom/android/launcher3/model/data/ItemInfo;
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mPredictedItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 174
    .local v1, "predictionSize":I
    const/4 v2, 0x0

    .line 176
    .local v2, "predictionNextIndex":I
    const/4 v3, 0x1

    .line 177
    .local v3, "isHotseatEmpty":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_3

    .line 178
    iget-object v5, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mHotseatItems:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;

    aput-object v5, v0, v4

    .line 179
    aget-object v5, v0, v4

    if-nez v5, :cond_1

    if-ge v2, v1, :cond_1

    .line 180
    iget-object v5, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mPredictedItems:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;

    aput-object v5, v0, v4

    .line 181
    aget-object v5, v0, v4

    iput v4, v5, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    .line 182
    add-int/lit8 v2, v2, 0x1

    .line 184
    :cond_1
    aget-object v5, v0, v4

    if-eqz v5, :cond_2

    .line 185
    const/4 v3, 0x0

    .line 177
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 188
    .end local v4    # "i":I
    :cond_3
    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mContainer:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {v4, v0}, Lcom/android/launcher3/taskbar/TaskbarView;->updateHotseatItems([Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 190
    move v4, v3

    .line 191
    .local v4, "finalIsHotseatEmpty":Z
    iget-object v5, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    new-instance v6, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0, v4}, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;Z)V

    invoke-virtual {v5, v6}, Lcom/android/launcher3/taskbar/TaskbarControllers;->runAfterInit(Ljava/lang/Runnable;)V

    .line 196
    return-void
.end method

.method private handleItemsAdded(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)Z"
        }
    .end annotation

    .line 97
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    const/4 v0, 0x0

    .line 98
    .local v0, "modified":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    .line 99
    .local v2, "item":Lcom/android/launcher3/model/data/ItemInfo;
    iget v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v4, -0x65

    if-ne v3, v4, :cond_0

    .line 100
    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mHotseatItems:Landroid/util/SparseArray;

    iget v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 101
    const/4 v0, 0x1

    .line 103
    .end local v2    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    :cond_0
    goto :goto_0

    .line 104
    :cond_1
    return v0
.end method

.method private handleItemsRemoved(Ljava/util/function/Predicate;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)Z"
        }
    .end annotation

    .line 137
    .local p1, "matcher":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    const/4 v0, 0x0

    .line 138
    .local v0, "modified":Z
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mHotseatItems:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 139
    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mHotseatItems:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    const/4 v0, 0x1

    .line 141
    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mHotseatItems:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 138
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 144
    .end local v1    # "i":I
    :cond_1
    return v0
.end method


# virtual methods
.method public bindAllApplications([Lcom/android/launcher3/model/data/AppInfo;I)V
    .locals 1
    .param p1, "apps"    # [Lcom/android/launcher3/model/data/AppInfo;
    .param p2, "flags"    # I

    .line 205
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarAllAppsController:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->setApps([Lcom/android/launcher3/model/data/AppInfo;I)V

    .line 206
    return-void
.end method

.method public bindAppsAdded(Lcom/android/launcher3/util/IntArray;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
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

    .line 82
    .local p2, "addNotAnimated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    .local p3, "addAnimated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    invoke-direct {p0, p2}, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->handleItemsAdded(Ljava/util/List;)Z

    move-result v0

    .line 83
    .local v0, "add1":Z
    invoke-direct {p0, p3}, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->handleItemsAdded(Ljava/util/List;)Z

    move-result v1

    .line 84
    .local v1, "add2":Z
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 85
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->commitItemsToUI()V

    .line 87
    :cond_1
    return-void
.end method

.method public bindDeepShortcutMap(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 200
    .local p1, "deepShortcutMapCopy":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/ComponentKey;Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarPopupController:Lcom/android/launcher3/taskbar/TaskbarPopupController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarPopupController;->setDeepShortcutMap(Ljava/util/HashMap;)V

    .line 201
    return-void
.end method

.method public bindExtraContainerItems(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V
    .locals 2
    .param p1, "item"    # Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;

    .line 158
    iget v0, p1, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;->containerId:I

    const/16 v1, -0x67

    if-ne v0, v1, :cond_0

    .line 159
    iget-object v0, p1, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;->items:Ljava/util/List;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mPredictedItems:Ljava/util/List;

    .line 160
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->commitItemsToUI()V

    goto :goto_0

    .line 161
    :cond_0
    iget v0, p1, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;->containerId:I

    const/16 v1, -0x68

    if-ne v0, v1, :cond_1

    .line 162
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarAllAppsController:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;

    iget-object v1, p1, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;->items:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->setPredictedApps(Ljava/util/List;)V

    .line 164
    :cond_1
    :goto_0
    return-void
.end method

.method public bindItems(Ljava/util/List;Z)V
    .locals 1
    .param p2, "forceAnimateIcons"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 91
    .local p1, "shortcuts":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->handleItemsAdded(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->commitItemsToUI()V

    .line 94
    :cond_0
    return-void
.end method

.method public bindItemsModified(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 149
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    invoke-static {p1}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofItems(Ljava/util/Collection;)Ljava/util/function/Predicate;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->handleItemsRemoved(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 150
    .local v0, "removed":Z
    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->handleItemsAdded(Ljava/util/List;)Z

    move-result v1

    .line 151
    .local v1, "added":Z
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 152
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->commitItemsToUI()V

    .line 154
    :cond_1
    return-void
.end method

.method public bindRestoreItemsChange(Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 115
    .local p1, "updates":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/launcher3/model/data/ItemInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->updateRestoreItems(Ljava/util/HashSet;Lcom/android/launcher3/views/ActivityContext;)V

    .line 116
    return-void
.end method

.method public bindWorkspaceComponentsRemoved(Ljava/util/function/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 131
    .local p1, "matcher":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->handleItemsRemoved(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->commitItemsToUI()V

    .line 134
    :cond_0
    return-void
.end method

.method public bindWorkspaceItemsChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 110
    .local p1, "updated":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->updateWorkspaceItems(Ljava/util/List;Lcom/android/launcher3/views/ActivityContext;)V

    .line 111
    return-void
.end method

.method protected dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "TaskbarModelCallbacks:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 211
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mHotseatItems:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const-string v3, "%s\thotseat items count=%s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 212
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mPredictedItems:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 213
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    .line 214
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "%s\tpredicted items count=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 216
    :cond_0
    return-void
.end method

.method public finishBindingItems(Lcom/android/launcher3/util/IntSet;)V
    .locals 2
    .param p1, "pagesBoundFirst"    # Lcom/android/launcher3/util/IntSet;

    .line 75
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setBindingItems(Z)V

    .line 76
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->commitItemsToUI()V

    .line 77
    return-void
.end method

.method public init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V
    .locals 0
    .param p1, "controllers"    # Lcom/android/launcher3/taskbar/TaskbarControllers;

    .line 63
    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    .line 64
    return-void
.end method

.method synthetic lambda$commitItemsToUI$0$com-android-launcher3-taskbar-TaskbarModelCallbacks(Z)V
    .locals 2
    .param p1, "finalIsHotseatEmpty"    # Z

    .line 192
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    .line 194
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->applyState()V

    .line 195
    return-void
.end method

.method public mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V
    .locals 4
    .param p1, "op"    # Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;

    .line 120
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mContainer:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarView;->getChildCount()I

    move-result v0

    .line 121
    .local v0, "itemCount":I
    const/4 v1, 0x0

    .local v1, "itemIdx":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 122
    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mContainer:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/taskbar/TaskbarView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 123
    .local v2, "item":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {p1, v3, v2}, Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;->evaluate(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 124
    return-void

    .line 121
    .end local v2    # "item":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 127
    .end local v1    # "itemIdx":I
    :cond_1
    return-void
.end method

.method public startBinding()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setBindingItems(Z)V

    .line 69
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mHotseatItems:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 70
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mPredictedItems:Ljava/util/List;

    .line 71
    return-void
.end method
