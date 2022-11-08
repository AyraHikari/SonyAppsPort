.class public Lcom/android/launcher3/model/PredictionUpdateTask;
.super Lcom/android/launcher3/model/BaseModelUpdateTask;
.source "PredictionUpdateTask.java"


# instance fields
.field private final mPredictorState:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

.field private final mTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;Ljava/util/List;)V
    .locals 0
    .param p1, "predictorState"    # Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;)V"
        }
    .end annotation

    .line 49
    .local p2, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/app/prediction/AppTarget;>;"
    invoke-direct {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/launcher3/model/PredictionUpdateTask;->mPredictorState:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    .line 51
    iput-object p2, p0, Lcom/android/launcher3/model/PredictionUpdateTask;->mTargets:Ljava/util/List;

    .line 52
    return-void
.end method

.method static synthetic lambda$execute$0(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 2
    .param p0, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 64
    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$execute$1(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/os/UserHandle;
    .locals 1
    .param p0, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 65
    iget-object v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    return-object v0
.end method

.method static synthetic lambda$execute$2(Landroid/os/UserHandle;Landroid/content/ComponentName;Lcom/android/launcher3/model/data/AppInfo;)Z
    .locals 1
    .param p0, "user"    # Landroid/os/UserHandle;
    .param p1, "cn"    # Landroid/content/ComponentName;
    .param p2, "info"    # Lcom/android/launcher3/model/data/AppInfo;

    .line 85
    iget-object v0, p2, Lcom/android/launcher3/model/data/AppInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$execute$3(Lcom/android/launcher3/LauncherAppState;Landroid/content/Context;Lcom/android/launcher3/model/data/AppInfo;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .locals 2
    .param p0, "app"    # Lcom/android/launcher3/LauncherAppState;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ai"    # Lcom/android/launcher3/model/data/AppInfo;

    .line 87
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)V

    .line 88
    invoke-virtual {p2, p1}, Lcom/android/launcher3/model/data/AppInfo;->makeWorkspaceItem(Landroid/content/Context;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$execute$4(Landroid/content/Context;Landroid/content/ComponentName;Landroid/os/UserHandle;Lcom/android/launcher3/LauncherAppState;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cn"    # Landroid/content/ComponentName;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "app"    # Lcom/android/launcher3/LauncherAppState;

    .line 92
    const-class v0, Landroid/content/pm/LauncherApps;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    .line 93
    invoke-static {p1}, Lcom/android/launcher3/model/data/AppInfo;->makeLaunchIntent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/content/pm/LauncherApps;->resolveActivity(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object v0

    .line 94
    .local v0, "lai":Landroid/content/pm/LauncherActivityInfo;
    if-nez v0, :cond_0

    .line 95
    const/4 v1, 0x0

    return-object v1

    .line 97
    :cond_0
    new-instance v1, Lcom/android/launcher3/model/data/AppInfo;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/launcher3/model/data/AppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;)V

    .line 98
    .local v1, "ai":Lcom/android/launcher3/model/data/AppInfo;
    invoke-virtual {p3}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0, v3}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/LauncherActivityInfo;Z)V

    .line 99
    invoke-virtual {v1, p0}, Lcom/android/launcher3/model/data/AppInfo;->makeWorkspaceItem(Landroid/content/Context;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v2

    return-object v2
.end method

.method static synthetic lambda$execute$5(Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/LauncherAppState;Landroid/os/UserHandle;)V
    .locals 1
    .param p0, "dataModel"    # Lcom/android/launcher3/model/BgDataModel;
    .param p1, "app"    # Lcom/android/launcher3/LauncherAppState;
    .param p2, "u"    # Landroid/os/UserHandle;

    .line 114
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/launcher3/model/BgDataModel;->updateShortcutPinnedState(Landroid/content/Context;Landroid/os/UserHandle;)V

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

    .line 59
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getDevicePrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/model/PredictionUpdateTask;->mTargets:Ljava/util/List;

    .line 60
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    const-string v3, "last_prediction_enabled_state"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 62
    iget-object v1, p2, Lcom/android/launcher3/model/BgDataModel;->extraItems:Lcom/android/launcher3/util/IntSparseArrayMap;

    iget-object v2, p0, Lcom/android/launcher3/model/PredictionUpdateTask;->mPredictorState:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    iget v2, v2, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->containerId:I

    .line 63
    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/IntSparseArrayMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;

    iget-object v1, v1, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/model/PredictionUpdateTask$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/launcher3/model/PredictionUpdateTask$$ExternalSyntheticLambda0;-><init>()V

    .line 64
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/model/PredictionUpdateTask$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/launcher3/model/PredictionUpdateTask$$ExternalSyntheticLambda1;-><init>()V

    .line 65
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 66
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 68
    .local v1, "usersForChangedShortcuts":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/UserHandle;>;"
    new-instance v2, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;

    iget-object v3, p0, Lcom/android/launcher3/model/PredictionUpdateTask;->mPredictorState:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    iget v3, v3, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->containerId:I

    invoke-direct {v2, v3}, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;-><init>(I)V

    .line 69
    .local v2, "fci":Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;
    iget-object v3, p0, Lcom/android/launcher3/model/PredictionUpdateTask;->mTargets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/prediction/AppTarget;

    .line 71
    .local v4, "target":Landroid/app/prediction/AppTarget;
    invoke-virtual {v4}, Landroid/app/prediction/AppTarget;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v5

    .line 72
    .local v5, "si":Landroid/content/pm/ShortcutInfo;
    if-eqz v5, :cond_0

    .line 73
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v6, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v6, v5, v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>(Landroid/content/pm/ShortcutInfo;Landroid/content/Context;)V

    .line 75
    .local v6, "itemInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v7

    invoke-virtual {v7, v6, v5}, Lcom/android/launcher3/icons/IconCache;->getShortcutIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/ShortcutInfo;)V

    goto :goto_1

    .line 77
    .end local v6    # "itemInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    :cond_0
    invoke-virtual {v4}, Landroid/app/prediction/AppTarget;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 78
    .local v6, "className":Ljava/lang/String;
    const-string v7, "@instantapp"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 80
    goto :goto_0

    .line 82
    :cond_1
    new-instance v7, Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/app/prediction/AppTarget;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .local v7, "cn":Landroid/content/ComponentName;
    invoke-virtual {v4}, Landroid/app/prediction/AppTarget;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    .line 84
    .local v8, "user":Landroid/os/UserHandle;
    iget-object v9, p3, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v9

    new-instance v10, Lcom/android/launcher3/model/PredictionUpdateTask$$ExternalSyntheticLambda2;

    invoke-direct {v10, v8, v7}, Lcom/android/launcher3/model/PredictionUpdateTask$$ExternalSyntheticLambda2;-><init>(Landroid/os/UserHandle;Landroid/content/ComponentName;)V

    .line 85
    invoke-interface {v9, v10}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v9

    new-instance v10, Lcom/android/launcher3/model/PredictionUpdateTask$$ExternalSyntheticLambda3;

    invoke-direct {v10, p1, v0}, Lcom/android/launcher3/model/PredictionUpdateTask$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/LauncherAppState;Landroid/content/Context;)V

    .line 86
    invoke-interface {v9, v10}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v9

    .line 90
    invoke-interface {v9}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object v9

    new-instance v10, Lcom/android/launcher3/model/PredictionUpdateTask$$ExternalSyntheticLambda4;

    invoke-direct {v10, v0, v7, v8, p1}, Lcom/android/launcher3/model/PredictionUpdateTask$$ExternalSyntheticLambda4;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/os/UserHandle;Lcom/android/launcher3/LauncherAppState;)V

    .line 91
    invoke-virtual {v9, v10}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 102
    .local v9, "itemInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    if-nez v9, :cond_2

    .line 103
    goto :goto_0

    .line 102
    :cond_2
    move-object v6, v9

    .line 107
    .end local v7    # "cn":Landroid/content/ComponentName;
    .end local v8    # "user":Landroid/os/UserHandle;
    .end local v9    # "itemInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .local v6, "itemInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    :goto_1
    iget v7, v2, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;->containerId:I

    iput v7, v6, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->container:I

    .line 108
    iget-object v7, v2, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;->items:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    .end local v4    # "target":Landroid/app/prediction/AppTarget;
    .end local v5    # "si":Landroid/content/pm/ShortcutInfo;
    .end local v6    # "itemInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    goto :goto_0

    .line 111
    :cond_3
    iget-object v3, p2, Lcom/android/launcher3/model/BgDataModel;->extraItems:Lcom/android/launcher3/util/IntSparseArrayMap;

    iget v4, v2, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;->containerId:I

    invoke-virtual {v3, v4, v2}, Lcom/android/launcher3/util/IntSparseArrayMap;->put(ILjava/lang/Object;)V

    .line 112
    invoke-virtual {p0, v2}, Lcom/android/launcher3/model/PredictionUpdateTask;->bindExtraContainerItems(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V

    .line 113
    new-instance v3, Lcom/android/launcher3/model/PredictionUpdateTask$$ExternalSyntheticLambda5;

    invoke-direct {v3, p2, p1}, Lcom/android/launcher3/model/PredictionUpdateTask$$ExternalSyntheticLambda5;-><init>(Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/LauncherAppState;)V

    invoke-interface {v1, v3}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 117
    iget-object v3, p0, Lcom/android/launcher3/model/PredictionUpdateTask;->mPredictorState:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    iget-object v3, v3, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->storage:Lcom/android/launcher3/util/PersistedItemArray;

    iget-object v4, v2, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;->items:Ljava/util/List;

    invoke-virtual {v3, v0, v4}, Lcom/android/launcher3/util/PersistedItemArray;->write(Landroid/content/Context;Ljava/util/List;)V

    .line 118
    return-void
.end method
