.class public Lcom/android/launcher3/model/ShortcutsChangedTask;
.super Lcom/android/launcher3/model/BaseModelUpdateTask;
.source "ShortcutsChangedTask.java"


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private final mShortcuts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpdateIdMap:Z

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;Z)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .param p4, "updateIdMap"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Landroid/os/UserHandle;",
            "Z)V"
        }
    .end annotation

    .line 47
    .local p2, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-direct {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/launcher3/model/ShortcutsChangedTask;->mPackageName:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/android/launcher3/model/ShortcutsChangedTask;->mShortcuts:Ljava/util/List;

    .line 50
    iput-object p3, p0, Lcom/android/launcher3/model/ShortcutsChangedTask;->mUser:Landroid/os/UserHandle;

    .line 51
    iput-boolean p4, p0, Lcom/android/launcher3/model/ShortcutsChangedTask;->mUpdateIdMap:Z

    .line 52
    return-void
.end method

.method static synthetic lambda$execute$1(Ljava/lang/String;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z
    .locals 1
    .param p0, "sid"    # Ljava/lang/String;
    .param p1, "itemInfo"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 98
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getDeepShortcutId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$execute$2(Landroid/content/pm/ShortcutInfo;Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;Ljava/util/ArrayList;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .locals 1
    .param p0, "fullDetails"    # Landroid/content/pm/ShortcutInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "app"    # Lcom/android/launcher3/LauncherAppState;
    .param p3, "updatedWorkspaceItemInfos"    # Ljava/util/ArrayList;
    .param p4, "workspaceItemInfo"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 100
    invoke-virtual {p4, p0, p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->updateFromDeepShortcutInfo(Landroid/content/pm/ShortcutInfo;Landroid/content/Context;)V

    .line 101
    invoke-virtual {p2}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v0

    invoke-virtual {v0, p4, p0}, Lcom/android/launcher3/icons/IconCache;->getShortcutIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/ShortcutInfo;)V

    .line 102
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;)V
    .locals 11
    .param p1, "app"    # Lcom/android/launcher3/LauncherAppState;
    .param p2, "dataModel"    # Lcom/android/launcher3/model/BgDataModel;
    .param p3, "apps"    # Lcom/android/launcher3/model/AllAppsList;

    .line 56
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 58
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v1, "matchingWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    monitor-enter p2

    .line 61
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher3/model/ShortcutsChangedTask;->mUser:Landroid/os/UserHandle;

    new-instance v3, Lcom/android/launcher3/model/ShortcutsChangedTask$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1}, Lcom/android/launcher3/model/ShortcutsChangedTask$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/model/ShortcutsChangedTask;Ljava/util/ArrayList;)V

    invoke-virtual {p2, v2, v3}, Lcom/android/launcher3/model/BgDataModel;->forAllWorkspaceItemInfos(Landroid/os/UserHandle;Ljava/util/function/Consumer;)V

    .line 67
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 70
    iget-object v2, p0, Lcom/android/launcher3/model/ShortcutsChangedTask;->mShortcuts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    new-instance v2, Lcom/android/launcher3/util/PackageManagerHelper;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/launcher3/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/launcher3/model/ShortcutsChangedTask;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/launcher3/model/ShortcutsChangedTask;->mUser:Landroid/os/UserHandle;

    .line 73
    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/util/PackageManagerHelper;->isAppInstalled(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 75
    return-void

    .line 79
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/model/ShortcutsChangedTask$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/android/launcher3/model/ShortcutsChangedTask$$ExternalSyntheticLambda1;-><init>()V

    .line 80
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 81
    invoke-interface {v2}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object v2

    .line 82
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 83
    .local v2, "allLauncherKnownIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Lcom/android/launcher3/shortcuts/ShortcutRequest;

    iget-object v4, p0, Lcom/android/launcher3/model/ShortcutsChangedTask;->mUser:Landroid/os/UserHandle;

    invoke-direct {v3, v0, v4}, Lcom/android/launcher3/shortcuts/ShortcutRequest;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    iget-object v4, p0, Lcom/android/launcher3/model/ShortcutsChangedTask;->mPackageName:Ljava/lang/String;

    .line 84
    invoke-virtual {v3, v4, v2}, Lcom/android/launcher3/shortcuts/ShortcutRequest;->forPackage(Ljava/lang/String;Ljava/util/List;)Lcom/android/launcher3/shortcuts/ShortcutRequest;

    move-result-object v3

    const/16 v4, 0xb

    .line 85
    invoke-virtual {v3, v4}, Lcom/android/launcher3/shortcuts/ShortcutRequest;->query(I)Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;

    move-result-object v3

    .line 87
    .local v3, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 88
    .local v4, "nonPinnedIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v5, "updatedWorkspaceItemInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ShortcutInfo;

    .line 90
    .local v7, "fullDetails":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v8

    if-nez v8, :cond_1

    .line 91
    goto :goto_0

    .line 94
    :cond_1
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v8

    .line 95
    .local v8, "sid":Ljava/lang/String;
    invoke-interface {v4, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 96
    nop

    .line 97
    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v9

    new-instance v10, Lcom/android/launcher3/model/ShortcutsChangedTask$$ExternalSyntheticLambda2;

    invoke-direct {v10, v8}, Lcom/android/launcher3/model/ShortcutsChangedTask$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-interface {v9, v10}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v9

    new-instance v10, Lcom/android/launcher3/model/ShortcutsChangedTask$$ExternalSyntheticLambda3;

    invoke-direct {v10, v7, v0, p1, v5}, Lcom/android/launcher3/model/ShortcutsChangedTask$$ExternalSyntheticLambda3;-><init>(Landroid/content/pm/ShortcutInfo;Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;Ljava/util/ArrayList;)V

    .line 99
    invoke-interface {v9, v10}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 104
    .end local v7    # "fullDetails":Landroid/content/pm/ShortcutInfo;
    .end local v8    # "sid":Ljava/lang/String;
    goto :goto_0

    .line 106
    :cond_2
    invoke-virtual {p0, v5}, Lcom/android/launcher3/model/ShortcutsChangedTask;->bindUpdatedWorkspaceItems(Ljava/util/List;)V

    .line 107
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 108
    nop

    .line 109
    invoke-interface {v4}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lcom/android/launcher3/model/ShortcutsChangedTask$$ExternalSyntheticLambda4;

    invoke-direct {v7, p0}, Lcom/android/launcher3/model/ShortcutsChangedTask$$ExternalSyntheticLambda4;-><init>(Lcom/android/launcher3/model/ShortcutsChangedTask;)V

    .line 110
    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v6

    .line 111
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 108
    invoke-static {v6}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofShortcutKeys(Ljava/util/Set;)Ljava/util/function/Predicate;

    move-result-object v6

    const-string v7, "removed because the shortcut is no longer available in shortcut service"

    invoke-virtual {p0, v6, v7}, Lcom/android/launcher3/model/ShortcutsChangedTask;->deleteAndBindComponentsRemoved(Ljava/util/function/Predicate;Ljava/lang/String;)V

    .line 116
    .end local v2    # "allLauncherKnownIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .end local v4    # "nonPinnedIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "updatedWorkspaceItemInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    :cond_3
    iget-boolean v2, p0, Lcom/android/launcher3/model/ShortcutsChangedTask;->mUpdateIdMap:Z

    if-eqz v2, :cond_4

    .line 118
    iget-object v2, p0, Lcom/android/launcher3/model/ShortcutsChangedTask;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/launcher3/model/ShortcutsChangedTask;->mUser:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/launcher3/model/ShortcutsChangedTask;->mShortcuts:Ljava/util/List;

    invoke-virtual {p2, v2, v3, v4}, Lcom/android/launcher3/model/BgDataModel;->updateDeepShortcutCounts(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;)V

    .line 119
    invoke-virtual {p0, p2}, Lcom/android/launcher3/model/ShortcutsChangedTask;->bindDeepShortcuts(Lcom/android/launcher3/model/BgDataModel;)V

    .line 121
    :cond_4
    return-void

    .line 67
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method synthetic lambda$execute$0$com-android-launcher3-model-ShortcutsChangedTask(Ljava/util/ArrayList;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .locals 2
    .param p1, "matchingWorkspaceItems"    # Ljava/util/ArrayList;
    .param p2, "si"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 62
    iget v0, p2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->itemType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/model/ShortcutsChangedTask;->mPackageName:Ljava/lang/String;

    .line 63
    invoke-virtual {p2}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_0
    return-void
.end method

.method synthetic lambda$execute$3$com-android-launcher3-model-ShortcutsChangedTask(Ljava/lang/String;)Lcom/android/launcher3/shortcuts/ShortcutKey;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .line 110
    new-instance v0, Lcom/android/launcher3/shortcuts/ShortcutKey;

    iget-object v1, p0, Lcom/android/launcher3/model/ShortcutsChangedTask;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/launcher3/model/ShortcutsChangedTask;->mUser:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v2, p1}, Lcom/android/launcher3/shortcuts/ShortcutKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-object v0
.end method
