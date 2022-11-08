.class public Lcom/android/launcher3/model/CacheDataUpdatedTask;
.super Lcom/android/launcher3/model/BaseModelUpdateTask;
.source "CacheDataUpdatedTask.java"


# static fields
.field public static final OP_CACHE_UPDATE:I = 0x1

.field public static final OP_SESSION_UPDATE:I = 0x2


# instance fields
.field private final mOp:I

.field private final mPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(ILandroid/os/UserHandle;Ljava/util/HashSet;)V
    .locals 0
    .param p1, "op"    # I
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/UserHandle;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 41
    .local p3, "packages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;-><init>()V

    .line 42
    iput p1, p0, Lcom/android/launcher3/model/CacheDataUpdatedTask;->mOp:I

    .line 43
    iput-object p2, p0, Lcom/android/launcher3/model/CacheDataUpdatedTask;->mUser:Landroid/os/UserHandle;

    .line 44
    iput-object p3, p0, Lcom/android/launcher3/model/CacheDataUpdatedTask;->mPackages:Ljava/util/HashSet;

    .line 45
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;)V
    .locals 4
    .param p1, "app"    # Lcom/android/launcher3/LauncherAppState;
    .param p2, "dataModel"    # Lcom/android/launcher3/model/BgDataModel;
    .param p3, "apps"    # Lcom/android/launcher3/model/AllAppsList;

    .line 49
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v0

    .line 50
    .local v0, "iconCache":Lcom/android/launcher3/icons/IconCache;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v1, "updatedShortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    monitor-enter p2

    .line 53
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher3/model/CacheDataUpdatedTask;->mUser:Landroid/os/UserHandle;

    new-instance v3, Lcom/android/launcher3/model/CacheDataUpdatedTask$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/launcher3/model/CacheDataUpdatedTask$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/model/CacheDataUpdatedTask;Lcom/android/launcher3/icons/IconCache;Ljava/util/ArrayList;)V

    invoke-virtual {p2, v2, v3}, Lcom/android/launcher3/model/BgDataModel;->forAllWorkspaceItemInfos(Landroid/os/UserHandle;Ljava/util/function/Consumer;)V

    .line 62
    iget-object v2, p0, Lcom/android/launcher3/model/CacheDataUpdatedTask;->mPackages:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/android/launcher3/model/CacheDataUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {p3, v2, v3}, Lcom/android/launcher3/model/AllAppsList;->updateIconsAndLabels(Ljava/util/HashSet;Landroid/os/UserHandle;)V

    .line 63
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    invoke-virtual {p0, v1}, Lcom/android/launcher3/model/CacheDataUpdatedTask;->bindUpdatedWorkspaceItems(Ljava/util/List;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/launcher3/model/CacheDataUpdatedTask;->bindApplicationsIfNeeded()V

    .line 66
    return-void

    .line 63
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public isValidShortcut(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z
    .locals 1
    .param p1, "si"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 69
    iget v0, p0, Lcom/android/launcher3/model/CacheDataUpdatedTask;->mOp:I

    packed-switch v0, :pswitch_data_0

    .line 75
    const/4 v0, 0x0

    return v0

    .line 73
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->hasPromiseIconUi()Z

    move-result v0

    return v0

    .line 71
    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method synthetic lambda$execute$0$com-android-launcher3-model-CacheDataUpdatedTask(Lcom/android/launcher3/icons/IconCache;Ljava/util/ArrayList;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .locals 3
    .param p1, "iconCache"    # Lcom/android/launcher3/icons/IconCache;
    .param p2, "updatedShortcuts"    # Ljava/util/ArrayList;
    .param p3, "si"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 54
    invoke-virtual {p3}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 55
    .local v0, "cn":Landroid/content/ComponentName;
    iget v1, p3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->itemType:I

    if-nez v1, :cond_0

    .line 56
    invoke-virtual {p0, p3}, Lcom/android/launcher3/model/CacheDataUpdatedTask;->isValidShortcut(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/model/CacheDataUpdatedTask;->mPackages:Ljava/util/HashSet;

    .line 57
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {p3}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->usingLowResIcon()Z

    move-result v1

    invoke-virtual {p1, p3, v1}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)V

    .line 59
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_0
    return-void
.end method
