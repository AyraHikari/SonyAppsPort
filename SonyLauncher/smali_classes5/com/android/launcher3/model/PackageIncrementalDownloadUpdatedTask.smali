.class public Lcom/android/launcher3/model/PackageIncrementalDownloadUpdatedTask;
.super Lcom/android/launcher3/model/BaseModelUpdateTask;
.source "PackageIncrementalDownloadUpdatedTask.java"


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private final mProgress:I

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/UserHandle;F)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "progress"    # F

    .line 39
    invoke-direct {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;-><init>()V

    .line 40
    iput-object p2, p0, Lcom/android/launcher3/model/PackageIncrementalDownloadUpdatedTask;->mUser:Landroid/os/UserHandle;

    .line 41
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p3

    float-to-double v0, v0

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v0, p3

    float-to-int v0, v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x64

    :goto_0
    iput v0, p0, Lcom/android/launcher3/model/PackageIncrementalDownloadUpdatedTask;->mProgress:I

    .line 42
    iput-object p1, p0, Lcom/android/launcher3/model/PackageIncrementalDownloadUpdatedTask;->mPackageName:Ljava/lang/String;

    .line 43
    return-void
.end method

.method static synthetic lambda$execute$0(Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0
    .param p0, "appInfo"    # Lcom/android/launcher3/model/data/AppInfo;
    .param p1, "c"    # Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 59
    invoke-interface {p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindIncrementalDownloadProgressUpdated(Lcom/android/launcher3/model/data/AppInfo;)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;)V
    .locals 5
    .param p1, "app"    # Lcom/android/launcher3/LauncherAppState;
    .param p2, "dataModel"    # Lcom/android/launcher3/model/BgDataModel;
    .param p3, "appsList"    # Lcom/android/launcher3/model/AllAppsList;

    .line 47
    new-instance v0, Lcom/android/launcher3/pm/PackageInstallInfo;

    iget-object v1, p0, Lcom/android/launcher3/model/PackageIncrementalDownloadUpdatedTask;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/launcher3/model/PackageIncrementalDownloadUpdatedTask;->mProgress:I

    iget-object v3, p0, Lcom/android/launcher3/model/PackageIncrementalDownloadUpdatedTask;->mUser:Landroid/os/UserHandle;

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/launcher3/pm/PackageInstallInfo;-><init>(Ljava/lang/String;IILandroid/os/UserHandle;)V

    .line 53
    .local v0, "downloadInfo":Lcom/android/launcher3/pm/PackageInstallInfo;
    monitor-enter p3

    .line 54
    :try_start_0
    invoke-virtual {p3, v0}, Lcom/android/launcher3/model/AllAppsList;->updatePromiseInstallInfo(Lcom/android/launcher3/pm/PackageInstallInfo;)Ljava/util/List;

    move-result-object v1

    .line 55
    .local v1, "updatedAppInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/AppInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 56
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/AppInfo;

    .line 57
    .local v3, "appInfo":Lcom/android/launcher3/model/data/AppInfo;
    iget v4, v3, Lcom/android/launcher3/model/data/AppInfo;->runtimeStatusFlags:I

    and-int/lit16 v4, v4, -0x401

    iput v4, v3, Lcom/android/launcher3/model/data/AppInfo;->runtimeStatusFlags:I

    .line 58
    new-instance v4, Lcom/android/launcher3/model/PackageIncrementalDownloadUpdatedTask$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3}, Lcom/android/launcher3/model/PackageIncrementalDownloadUpdatedTask$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/model/data/AppInfo;)V

    invoke-virtual {p0, v4}, Lcom/android/launcher3/model/PackageIncrementalDownloadUpdatedTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    .line 60
    .end local v3    # "appInfo":Lcom/android/launcher3/model/data/AppInfo;
    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/model/PackageIncrementalDownloadUpdatedTask;->bindApplicationsIfNeeded()V

    .line 63
    .end local v1    # "updatedAppInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/AppInfo;>;"
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v1, "updatedWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    monitor-enter p2

    .line 67
    :try_start_1
    iget-object v2, p0, Lcom/android/launcher3/model/PackageIncrementalDownloadUpdatedTask;->mUser:Landroid/os/UserHandle;

    new-instance v3, Lcom/android/launcher3/model/PackageIncrementalDownloadUpdatedTask$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/launcher3/model/PackageIncrementalDownloadUpdatedTask$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/model/PackageIncrementalDownloadUpdatedTask;Lcom/android/launcher3/pm/PackageInstallInfo;Ljava/util/ArrayList;)V

    invoke-virtual {p2, v2, v3}, Lcom/android/launcher3/model/BgDataModel;->forAllWorkspaceItemInfos(Landroid/os/UserHandle;Ljava/util/function/Consumer;)V

    .line 74
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    invoke-virtual {p0, v1}, Lcom/android/launcher3/model/PackageIncrementalDownloadUpdatedTask;->bindUpdatedWorkspaceItems(Ljava/util/List;)V

    .line 76
    return-void

    .line 74
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 63
    .end local v1    # "updatedWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method synthetic lambda$execute$1$com-android-launcher3-model-PackageIncrementalDownloadUpdatedTask(Lcom/android/launcher3/pm/PackageInstallInfo;Ljava/util/ArrayList;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .locals 2
    .param p1, "downloadInfo"    # Lcom/android/launcher3/pm/PackageInstallInfo;
    .param p2, "updatedWorkspaceItems"    # Ljava/util/ArrayList;
    .param p3, "si"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 68
    iget-object v0, p0, Lcom/android/launcher3/model/PackageIncrementalDownloadUpdatedTask;->mPackageName:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget v0, p3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->runtimeStatusFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->runtimeStatusFlags:I

    .line 70
    invoke-virtual {p3, p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->setProgressLevel(Lcom/android/launcher3/pm/PackageInstallInfo;)V

    .line 71
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_0
    return-void
.end method
