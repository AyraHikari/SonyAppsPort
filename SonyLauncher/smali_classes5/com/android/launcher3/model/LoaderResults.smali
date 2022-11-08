.class public Lcom/android/launcher3/model/LoaderResults;
.super Lcom/android/launcher3/model/BaseLoaderResults;
.source "LoaderResults.java"


# direct methods
.method public constructor <init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;[Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 6
    .param p1, "app"    # Lcom/android/launcher3/LauncherAppState;
    .param p2, "dataModel"    # Lcom/android/launcher3/model/BgDataModel;
    .param p3, "allAppsList"    # Lcom/android/launcher3/model/AllAppsList;
    .param p4, "callbacks"    # [Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 36
    sget-object v5, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/model/BaseLoaderResults;-><init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;[Lcom/android/launcher3/model/BgDataModel$Callbacks;Lcom/android/launcher3/util/LooperExecutor;)V

    .line 37
    return-void
.end method

.method static synthetic lambda$bindDeepShortcuts$0(Ljava/util/HashMap;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0
    .param p0, "shortcutMapCopy"    # Ljava/util/HashMap;
    .param p1, "c"    # Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 45
    invoke-interface {p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindDeepShortcutMap(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic lambda$bindWidgets$1(Ljava/util/List;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0
    .param p0, "widgets"    # Ljava/util/List;
    .param p1, "c"    # Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 52
    invoke-interface {p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindAllWidgets(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public bindDeepShortcuts()V
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderResults;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v0

    .line 43
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/launcher3/model/LoaderResults;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel;->deepShortcutMap:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 44
    .local v1, "shortcutMapCopy":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/ComponentKey;Ljava/lang/Integer;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    new-instance v0, Lcom/android/launcher3/model/LoaderResults$$ExternalSyntheticLambda1;

    invoke-direct {v0, v1}, Lcom/android/launcher3/model/LoaderResults$$ExternalSyntheticLambda1;-><init>(Ljava/util/HashMap;)V

    iget-object v2, p0, Lcom/android/launcher3/model/LoaderResults;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher3/model/LoaderResults;->executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    .line 46
    return-void

    .line 44
    .end local v1    # "shortcutMapCopy":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/ComponentKey;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public bindWidgets()V
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderResults;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->widgetsModel:Lcom/android/launcher3/model/WidgetsModel;

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderResults;->mApp:Lcom/android/launcher3/LauncherAppState;

    .line 51
    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/WidgetsModel;->getWidgetsListForPicker(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 52
    .local v0, "widgets":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;>;"
    new-instance v1, Lcom/android/launcher3/model/LoaderResults$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/launcher3/model/LoaderResults$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    iget-object v2, p0, Lcom/android/launcher3/model/LoaderResults;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/model/LoaderResults;->executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    .line 53
    return-void
.end method
