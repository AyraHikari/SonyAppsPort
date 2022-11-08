.class public Lcom/android/launcher3/model/UserLockStateChangedTask;
.super Lcom/android/launcher3/model/BaseModelUpdateTask;
.source "UserLockStateChangedTask.java"


# instance fields
.field private mIsUserUnlocked:Z

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/os/UserHandle;Z)V
    .locals 0
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "isUserUnlocked"    # Z

    .line 46
    invoke-direct {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/launcher3/model/UserLockStateChangedTask;->mUser:Landroid/os/UserHandle;

    .line 48
    iput-boolean p2, p0, Lcom/android/launcher3/model/UserLockStateChangedTask;->mIsUserUnlocked:Z

    .line 49
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;)V
    .locals 12
    .param p1, "app"    # Lcom/android/launcher3/LauncherAppState;
    .param p2, "dataModel"    # Lcom/android/launcher3/model/BgDataModel;
    .param p3, "apps"    # Lcom/android/launcher3/model/AllAppsList;

    .line 53
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 55
    .local v7, "context":Landroid/content/Context;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v8, v0

    .line 56
    .local v8, "pinnedShortcuts":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/model/UserLockStateChangedTask;->mIsUserUnlocked:Z

    if-eqz v0, :cond_2

    .line 57
    new-instance v0, Lcom/android/launcher3/shortcuts/ShortcutRequest;

    iget-object v1, p0, Lcom/android/launcher3/model/UserLockStateChangedTask;->mUser:Landroid/os/UserHandle;

    invoke-direct {v0, v7, v1}, Lcom/android/launcher3/shortcuts/ShortcutRequest;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    const/4 v1, 0x2

    .line 58
    invoke-virtual {v0, v1}, Lcom/android/launcher3/shortcuts/ShortcutRequest;->query(I)Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;

    move-result-object v0

    .line 59
    .local v0, "shortcuts":Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;
    invoke-virtual {v0}, Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;->wasSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    invoke-virtual {v0}, Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    .line 61
    .local v2, "shortcut":Landroid/content/pm/ShortcutInfo;
    invoke-static {v2}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromInfo(Landroid/content/pm/ShortcutInfo;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object v3

    invoke-virtual {v8, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .end local v2    # "shortcut":Landroid/content/pm/ShortcutInfo;
    goto :goto_0

    :cond_0
    goto :goto_1

    .line 67
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/model/UserLockStateChangedTask;->mIsUserUnlocked:Z

    .line 72
    .end local v0    # "shortcuts":Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;
    :cond_2
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 73
    .local v9, "updatedWorkspaceItemInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 75
    .local v3, "removedKeys":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/launcher3/shortcuts/ShortcutKey;>;"
    monitor-enter p2

    .line 76
    :try_start_0
    iget-object v10, p0, Lcom/android/launcher3/model/UserLockStateChangedTask;->mUser:Landroid/os/UserHandle;

    new-instance v11, Lcom/android/launcher3/model/UserLockStateChangedTask$$ExternalSyntheticLambda0;

    move-object v0, v11

    move-object v1, p0

    move-object v2, v8

    move-object v4, v7

    move-object v5, p1

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/model/UserLockStateChangedTask$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/model/UserLockStateChangedTask;Ljava/util/HashMap;Ljava/util/HashSet;Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;Ljava/util/ArrayList;)V

    invoke-virtual {p2, v10, v11}, Lcom/android/launcher3/model/BgDataModel;->forAllWorkspaceItemInfos(Landroid/os/UserHandle;Ljava/util/function/Consumer;)V

    .line 96
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    invoke-virtual {p0, v9}, Lcom/android/launcher3/model/UserLockStateChangedTask;->bindUpdatedWorkspaceItems(Ljava/util/List;)V

    .line 98
    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 99
    invoke-static {v3}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofShortcutKeys(Ljava/util/Set;)Ljava/util/function/Predicate;

    move-result-object v0

    const-string v1, "removed during unlock because it\'s no longer available (possibly due to clear data)"

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/model/UserLockStateChangedTask;->deleteAndBindComponentsRemoved(Ljava/util/function/Predicate;Ljava/lang/String;)V

    .line 105
    :cond_3
    iget-object v0, p2, Lcom/android/launcher3/model/BgDataModel;->deepShortcutMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 106
    .local v0, "keysIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher3/util/ComponentKey;>;"
    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 107
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/ComponentKey;

    iget-object v1, v1, Lcom/android/launcher3/util/ComponentKey;->user:Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/android/launcher3/model/UserLockStateChangedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 108
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 112
    :cond_5
    iget-boolean v1, p0, Lcom/android/launcher3/model/UserLockStateChangedTask;->mIsUserUnlocked:Z

    if-eqz v1, :cond_6

    .line 113
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher3/model/UserLockStateChangedTask;->mUser:Landroid/os/UserHandle;

    new-instance v4, Lcom/android/launcher3/shortcuts/ShortcutRequest;

    invoke-direct {v4, v7, v2}, Lcom/android/launcher3/shortcuts/ShortcutRequest;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    const/16 v5, 0xb

    .line 115
    invoke-virtual {v4, v5}, Lcom/android/launcher3/shortcuts/ShortcutRequest;->query(I)Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;

    move-result-object v4

    .line 113
    invoke-virtual {p2, v1, v2, v4}, Lcom/android/launcher3/model/BgDataModel;->updateDeepShortcutCounts(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;)V

    .line 117
    :cond_6
    invoke-virtual {p0, p2}, Lcom/android/launcher3/model/UserLockStateChangedTask;->bindDeepShortcuts(Lcom/android/launcher3/model/BgDataModel;)V

    .line 118
    return-void

    .line 96
    .end local v0    # "keysIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher3/util/ComponentKey;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method synthetic lambda$execute$0$com-android-launcher3-model-UserLockStateChangedTask(Ljava/util/HashMap;Ljava/util/HashSet;Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;Ljava/util/ArrayList;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .locals 3
    .param p1, "pinnedShortcuts"    # Ljava/util/HashMap;
    .param p2, "removedKeys"    # Ljava/util/HashSet;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "app"    # Lcom/android/launcher3/LauncherAppState;
    .param p5, "updatedWorkspaceItemInfos"    # Ljava/util/ArrayList;
    .param p6, "si"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 77
    iget v0, p6, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->itemType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 78
    iget-boolean v0, p0, Lcom/android/launcher3/model/UserLockStateChangedTask;->mIsUserUnlocked:Z

    if-eqz v0, :cond_1

    .line 79
    invoke-static {p6}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object v0

    .line 80
    .local v0, "key":Lcom/android/launcher3/shortcuts/ShortcutKey;
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    .line 83
    .local v1, "shortcut":Landroid/content/pm/ShortcutInfo;
    if-nez v1, :cond_0

    .line 84
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 85
    return-void

    .line 87
    :cond_0
    iget v2, p6, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->runtimeStatusFlags:I

    and-int/lit8 v2, v2, -0x21

    iput v2, p6, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->runtimeStatusFlags:I

    .line 88
    invoke-virtual {p6, v1, p3}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->updateFromDeepShortcutInfo(Landroid/content/pm/ShortcutInfo;Landroid/content/Context;)V

    .line 89
    invoke-virtual {p4}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v2

    invoke-virtual {v2, p6, v1}, Lcom/android/launcher3/icons/IconCache;->getShortcutIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/ShortcutInfo;)V

    .line 90
    .end local v0    # "key":Lcom/android/launcher3/shortcuts/ShortcutKey;
    .end local v1    # "shortcut":Landroid/content/pm/ShortcutInfo;
    goto :goto_0

    .line 91
    :cond_1
    iget v0, p6, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->runtimeStatusFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p6, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->runtimeStatusFlags:I

    .line 93
    :goto_0
    invoke-virtual {p5, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_2
    return-void
.end method
