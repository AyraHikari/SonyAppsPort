.class public Lcom/android/launcher3/model/PackageInstallStateChangedTask;
.super Lcom/android/launcher3/model/BaseModelUpdateTask;
.source "PackageInstallStateChangedTask.java"


# instance fields
.field private final mInstallInfo:Lcom/android/launcher3/pm/PackageInstallInfo;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/pm/PackageInstallInfo;)V
    .locals 0
    .param p1, "installInfo"    # Lcom/android/launcher3/pm/PackageInstallInfo;

    .line 38
    invoke-direct {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/launcher3/model/PackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher3/pm/PackageInstallInfo;

    .line 40
    return-void
.end method

.method static synthetic lambda$execute$0(Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0
    .param p0, "appInfo"    # Lcom/android/launcher3/model/data/AppInfo;
    .param p1, "c"    # Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 64
    invoke-interface {p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindIncrementalDownloadProgressUpdated(Lcom/android/launcher3/model/data/AppInfo;)V

    return-void
.end method

.method static synthetic lambda$execute$2(Ljava/util/HashSet;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0
    .param p0, "updates"    # Ljava/util/HashSet;
    .param p1, "callbacks"    # Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 88
    invoke-interface {p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindRestoreItemsChange(Ljava/util/HashSet;)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;)V
    .locals 5
    .param p1, "app"    # Lcom/android/launcher3/LauncherAppState;
    .param p2, "dataModel"    # Lcom/android/launcher3/model/BgDataModel;
    .param p3, "apps"    # Lcom/android/launcher3/model/AllAppsList;

    .line 44
    iget-object v0, p0, Lcom/android/launcher3/model/PackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher3/pm/PackageInstallInfo;

    iget v0, v0, Lcom/android/launcher3/pm/PackageInstallInfo;->state:I

    if-nez v0, :cond_1

    .line 48
    :try_start_0
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/model/PackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher3/pm/PackageInstallInfo;

    iget-object v1, v1, Lcom/android/launcher3/pm/PackageInstallInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 50
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/util/InstantAppResolver;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/util/InstantAppResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/InstantAppResolver;->isInstantApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/launcher3/model/PackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher3/pm/PackageInstallInfo;

    iget-object v3, v3, Lcom/android/launcher3/pm/PackageInstallInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/LauncherModel;->onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 57
    :goto_0
    return-void

    .line 60
    :cond_1
    monitor-enter p3

    .line 61
    :try_start_1
    iget-object v0, p0, Lcom/android/launcher3/model/PackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher3/pm/PackageInstallInfo;

    invoke-virtual {p3, v0}, Lcom/android/launcher3/model/AllAppsList;->updatePromiseInstallInfo(Lcom/android/launcher3/pm/PackageInstallInfo;)Ljava/util/List;

    move-result-object v0

    .line 62
    .local v0, "updatedAppInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/AppInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 63
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/AppInfo;

    .line 64
    .local v2, "appInfo":Lcom/android/launcher3/model/data/AppInfo;
    new-instance v3, Lcom/android/launcher3/model/PackageInstallStateChangedTask$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/launcher3/model/PackageInstallStateChangedTask$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/model/data/AppInfo;)V

    invoke-virtual {p0, v3}, Lcom/android/launcher3/model/PackageInstallStateChangedTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    .line 65
    .end local v2    # "appInfo":Lcom/android/launcher3/model/data/AppInfo;
    goto :goto_1

    .line 67
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/model/PackageInstallStateChangedTask;->bindApplicationsIfNeeded()V

    .line 68
    .end local v0    # "updatedAppInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/AppInfo;>;"
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 70
    monitor-enter p2

    .line 71
    :try_start_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 72
    .local v0, "updates":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/launcher3/model/data/ItemInfo;>;"
    iget-object v1, p0, Lcom/android/launcher3/model/PackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher3/pm/PackageInstallInfo;

    iget-object v1, v1, Lcom/android/launcher3/pm/PackageInstallInfo;->user:Landroid/os/UserHandle;

    new-instance v2, Lcom/android/launcher3/model/PackageInstallStateChangedTask$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/model/PackageInstallStateChangedTask$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/model/PackageInstallStateChangedTask;Ljava/util/HashSet;)V

    invoke-virtual {p2, v1, v2}, Lcom/android/launcher3/model/BgDataModel;->forAllWorkspaceItemInfos(Landroid/os/UserHandle;Ljava/util/function/Consumer;)V

    .line 80
    iget-object v1, p2, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    .line 81
    .local v2, "widget":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    iget-object v3, v2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/model/PackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher3/pm/PackageInstallInfo;

    iget-object v4, v4, Lcom/android/launcher3/pm/PackageInstallInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 82
    iget-object v3, p0, Lcom/android/launcher3/model/PackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher3/pm/PackageInstallInfo;

    iget v3, v3, Lcom/android/launcher3/pm/PackageInstallInfo;->progress:I

    iput v3, v2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->installProgress:I

    .line 83
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 85
    .end local v2    # "widget":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    :cond_3
    goto :goto_2

    .line 87
    :cond_4
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 88
    new-instance v1, Lcom/android/launcher3/model/PackageInstallStateChangedTask$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/android/launcher3/model/PackageInstallStateChangedTask$$ExternalSyntheticLambda2;-><init>(Ljava/util/HashSet;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/model/PackageInstallStateChangedTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    .line 90
    .end local v0    # "updates":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/launcher3/model/data/ItemInfo;>;"
    :cond_5
    monitor-exit p2

    .line 91
    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 68
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method synthetic lambda$execute$1$com-android-launcher3-model-PackageInstallStateChangedTask(Ljava/util/HashSet;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .locals 2
    .param p1, "updates"    # Ljava/util/HashSet;
    .param p2, "si"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 73
    invoke-virtual {p2}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->hasPromiseIconUi()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/model/PackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher3/pm/PackageInstallInfo;

    iget-object v0, v0, Lcom/android/launcher3/pm/PackageInstallInfo;->packageName:Ljava/lang/String;

    .line 74
    invoke-virtual {p2}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/launcher3/model/PackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher3/pm/PackageInstallInfo;

    invoke-virtual {p2, v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->setProgressLevel(Lcom/android/launcher3/pm/PackageInstallInfo;)V

    .line 76
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_0
    return-void
.end method
