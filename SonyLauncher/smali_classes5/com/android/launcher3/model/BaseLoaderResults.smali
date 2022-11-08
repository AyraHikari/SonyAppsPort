.class public abstract Lcom/android/launcher3/model/BaseLoaderResults;
.super Ljava/lang/Object;
.source "BaseLoaderResults.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;
    }
.end annotation


# static fields
.field protected static final INVALID_SCREEN_ID:I = -0x1

.field private static final ITEMS_CHUNK:I = 0x6

.field protected static final TAG:Ljava/lang/String; = "BaseLoaderResults"


# instance fields
.field protected final mApp:Lcom/android/launcher3/LauncherAppState;

.field private final mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

.field protected final mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

.field private final mCallbacksList:[Lcom/android/launcher3/model/BgDataModel$Callbacks;

.field private mMyBindingId:I

.field protected final mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;[Lcom/android/launcher3/model/BgDataModel$Callbacks;Lcom/android/launcher3/util/LooperExecutor;)V
    .locals 0
    .param p1, "app"    # Lcom/android/launcher3/LauncherAppState;
    .param p2, "dataModel"    # Lcom/android/launcher3/model/BgDataModel;
    .param p3, "allAppsList"    # Lcom/android/launcher3/model/AllAppsList;
    .param p4, "callbacksList"    # [Lcom/android/launcher3/model/BgDataModel$Callbacks;
    .param p5, "uiExecutor"    # Lcom/android/launcher3/util/LooperExecutor;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p5, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    .line 76
    iput-object p1, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mApp:Lcom/android/launcher3/LauncherAppState;

    .line 77
    iput-object p2, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    .line 78
    iput-object p3, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    .line 79
    iput-object p4, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mCallbacksList:[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 80
    return-void
.end method

.method static synthetic lambda$bindAllApps$0([Lcom/android/launcher3/model/data/AppInfo;ILcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0
    .param p0, "apps"    # [Lcom/android/launcher3/model/data/AppInfo;
    .param p1, "flags"    # I
    .param p2, "c"    # Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 115
    invoke-interface {p2, p0, p1}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindAllApplications([Lcom/android/launcher3/model/data/AppInfo;I)V

    return-void
.end method

.method static synthetic lambda$bindOwnOrderApps$1(Ljava/util/ArrayList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0
    .param p0, "ownOrderApps"    # Ljava/util/ArrayList;
    .param p1, "c"    # Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 139
    invoke-interface {p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindAllAppsOwnOrder(Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$sortWorkspaceItemsSpatially$2(IILcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/data/ItemInfo;)I
    .locals 3
    .param p0, "screenCellCount"    # I
    .param p1, "screenCols"    # I
    .param p2, "lhs"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p3, "rhs"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 152
    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget v1, p3, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-ne v0, v1, :cond_0

    .line 154
    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    packed-switch v0, :pswitch_data_0

    .line 171
    const/4 v0, 0x0

    return v0

    .line 156
    :pswitch_0
    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    mul-int/2addr v0, p0

    iget v1, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    iget v1, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    add-int/2addr v0, v1

    .line 158
    .local v0, "lr":I
    iget v1, p3, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    mul-int/2addr v1, p0

    iget v2, p3, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    mul-int/2addr v2, p1

    add-int/2addr v1, v2

    iget v2, p3, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    add-int/2addr v1, v2

    .line 160
    .local v1, "rr":I
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v2

    return v2

    .line 164
    .end local v0    # "lr":I
    .end local v1    # "rr":I
    :pswitch_1
    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget v1, p3, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0

    .line 175
    :cond_0
    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget v1, p3, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch -0x65
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public bindAllApps()V
    .locals 4

    .line 113
    iget-object v0, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/model/AllAppsList;->copyData()[Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v0

    .line 114
    .local v0, "apps":[Lcom/android/launcher3/model/data/AppInfo;
    iget-object v1, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    invoke-virtual {v1}, Lcom/android/launcher3/model/AllAppsList;->getFlags()I

    move-result v1

    .line 115
    .local v1, "flags":I
    new-instance v2, Lcom/android/launcher3/model/BaseLoaderResults$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v1}, Lcom/android/launcher3/model/BaseLoaderResults$$ExternalSyntheticLambda0;-><init>([Lcom/android/launcher3/model/data/AppInfo;I)V

    iget-object v3, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/model/BaseLoaderResults;->executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    .line 116
    return-void
.end method

.method public abstract bindDeepShortcuts()V
.end method

.method public bindOwnOrderApps()V
    .locals 5

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v0, "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    iget-object v1, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v1, v1, Lcom/android/launcher3/model/BgDataModel;->allAppsOwnOrderItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    .line 122
    .local v2, "info":Lcom/android/launcher3/model/data/ItemInfo;
    iget v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 123
    move-object v3, v2

    check-cast v3, Lcom/android/launcher3/model/data/FolderInfo;

    .line 124
    .local v3, "folderInfo":Lcom/android/launcher3/model/data/FolderInfo;
    iget-object v4, v3, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 125
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    .end local v2    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v3    # "folderInfo":Lcom/android/launcher3/model/data/FolderInfo;
    :cond_0
    goto :goto_0

    .line 129
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 130
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    .line 131
    .restart local v2    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    iget-object v3, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v3, v3, Lcom/android/launcher3/model/BgDataModel;->allAppsOwnOrderItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 132
    .end local v2    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    goto :goto_1

    .line 135
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v1, "ownOrderApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    iget-object v2, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v2

    .line 137
    :try_start_0
    iget-object v3, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v3, v3, Lcom/android/launcher3/model/BgDataModel;->allAppsOwnOrderItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 138
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    new-instance v2, Lcom/android/launcher3/model/BaseLoaderResults$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/android/launcher3/model/BaseLoaderResults$$ExternalSyntheticLambda1;-><init>(Ljava/util/ArrayList;)V

    iget-object v3, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/model/BaseLoaderResults;->executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    .line 140
    return-void

    .line 138
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public abstract bindWidgets()V
.end method

.method public bindWorkspace(Z)V
    .locals 21
    .param p1, "incrementBindId"    # Z

    .line 87
    move-object/from16 v12, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 88
    .local v13, "workspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    .line 89
    .local v14, "appWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    new-instance v0, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntArray;-><init>()V

    move-object v15, v0

    .line 90
    .local v15, "orderedScreenIds":Lcom/android/launcher3/util/IntArray;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 92
    .local v11, "extraItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;>;"
    iget-object v1, v12, Lcom/android/launcher3/model/BaseLoaderResults;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v1

    .line 93
    :try_start_0
    iget-object v0, v12, Lcom/android/launcher3/model/BaseLoaderResults;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 94
    iget-object v0, v12, Lcom/android/launcher3/model/BaseLoaderResults;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 95
    iget-object v0, v12, Lcom/android/launcher3/model/BaseLoaderResults;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v0}, Lcom/android/launcher3/model/BgDataModel;->collectWorkspaceScreens()Lcom/android/launcher3/util/IntArray;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/android/launcher3/util/IntArray;->addAll(Lcom/android/launcher3/util/IntArray;)V

    .line 96
    iget-object v0, v12, Lcom/android/launcher3/model/BaseLoaderResults;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->extraItems:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/launcher3/model/BaseLoaderResults$$ExternalSyntheticLambda4;

    invoke-direct {v2, v11}, Lcom/android/launcher3/model/BaseLoaderResults$$ExternalSyntheticLambda4;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/IntSparseArrayMap;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 97
    if-eqz p1, :cond_0

    .line 98
    :try_start_1
    iget-object v0, v12, Lcom/android/launcher3/model/BaseLoaderResults;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget v2, v0, Lcom/android/launcher3/model/BgDataModel;->lastBindId:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/launcher3/model/BgDataModel;->lastBindId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 101
    :catchall_0
    move-exception v0

    move-object/from16 v20, v11

    goto :goto_2

    .line 100
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, v12, Lcom/android/launcher3/model/BaseLoaderResults;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget v0, v0, Lcom/android/launcher3/model/BgDataModel;->lastBindId:I

    iput v0, v12, Lcom/android/launcher3/model/BaseLoaderResults;->mMyBindingId:I

    .line 101
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 103
    iget-object v0, v12, Lcom/android/launcher3/model/BaseLoaderResults;->mCallbacksList:[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    array-length v10, v0

    const/4 v1, 0x0

    move v9, v1

    :goto_1
    if-ge v9, v10, :cond_1

    aget-object v16, v0, v9

    .line 104
    .local v16, "cb":Lcom/android/launcher3/model/BgDataModel$Callbacks;
    new-instance v17, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;

    iget-object v4, v12, Lcom/android/launcher3/model/BaseLoaderResults;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    iget-object v5, v12, Lcom/android/launcher3/model/BaseLoaderResults;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object v6, v12, Lcom/android/launcher3/model/BaseLoaderResults;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget v7, v12, Lcom/android/launcher3/model/BaseLoaderResults;->mMyBindingId:I

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move-object/from16 v3, v16

    move-object v8, v13

    move/from16 v18, v9

    move-object v9, v14

    move/from16 v19, v10

    move-object v10, v11

    move-object/from16 v20, v11

    .end local v11    # "extraItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;>;"
    .local v20, "extraItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;>;"
    move-object v11, v15

    invoke-direct/range {v1 .. v11}, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;-><init>(Lcom/android/launcher3/model/BaseLoaderResults;Lcom/android/launcher3/model/BgDataModel$Callbacks;Ljava/util/concurrent/Executor;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/util/IntArray;)V

    .line 105
    invoke-static/range {v17 .. v17}, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;->-$$Nest$mbind(Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;)V

    .line 103
    .end local v16    # "cb":Lcom/android/launcher3/model/BgDataModel$Callbacks;
    add-int/lit8 v9, v18, 0x1

    move/from16 v10, v19

    move-object/from16 v11, v20

    goto :goto_1

    .line 107
    .end local v20    # "extraItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;>;"
    .restart local v11    # "extraItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;>;"
    :cond_1
    return-void

    .line 101
    :catchall_1
    move-exception v0

    move-object/from16 v20, v11

    .end local v11    # "extraItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;>;"
    .restart local v20    # "extraItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;>;"
    :goto_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_2
.end method

.method protected executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "task"    # Lcom/android/launcher3/LauncherModel$CallbackTask;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 181
    new-instance v0, Lcom/android/launcher3/model/BaseLoaderResults$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/model/BaseLoaderResults$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/model/BaseLoaderResults;Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 190
    return-void
.end method

.method synthetic lambda$executeCallbacksTask$3$com-android-launcher3-model-BaseLoaderResults(Lcom/android/launcher3/LauncherModel$CallbackTask;)V
    .locals 4
    .param p1, "task"    # Lcom/android/launcher3/LauncherModel$CallbackTask;

    .line 182
    iget v0, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mMyBindingId:I

    iget-object v1, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget v1, v1, Lcom/android/launcher3/model/BgDataModel;->lastBindId:I

    if-eq v0, v1, :cond_0

    .line 183
    const-string v0, "BaseLoaderResults"

    const-string v1, "Too many consecutive reloads, skipping obsolete data-bind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mCallbacksList:[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 187
    .local v3, "cb":Lcom/android/launcher3/model/BgDataModel$Callbacks;
    invoke-interface {p1, v3}, Lcom/android/launcher3/LauncherModel$CallbackTask;->execute(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    .line 186
    .end local v3    # "cb":Lcom/android/launcher3/model/BgDataModel$Callbacks;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 189
    :cond_1
    return-void
.end method

.method public newIdleLock(Ljava/lang/Object;)Lcom/android/launcher3/util/LooperIdleLock;
    .locals 2
    .param p1, "lock"    # Ljava/lang/Object;

    .line 193
    new-instance v0, Lcom/android/launcher3/util/LooperIdleLock;

    iget-object v1, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LooperExecutor;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/launcher3/util/LooperIdleLock;-><init>(Ljava/lang/Object;Landroid/os/Looper;)V

    .line 195
    .local v0, "idleLock":Lcom/android/launcher3/util/LooperIdleLock;
    iget-object v1, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LooperExecutor;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/MessageQueue;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperIdleLock;->queueIdle()Z

    .line 198
    :cond_0
    return-object v0
.end method

.method protected sortWorkspaceItemsSpatially(Lcom/android/launcher3/InvariantDeviceProfile;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "profile"    # Lcom/android/launcher3/InvariantDeviceProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/InvariantDeviceProfile;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 149
    .local p2, "workspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    iget v0, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    .line 150
    .local v0, "screenCols":I
    iget v1, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget v2, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    mul-int/2addr v1, v2

    .line 151
    .local v1, "screenCellCount":I
    new-instance v2, Lcom/android/launcher3/model/BaseLoaderResults$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1, v0}, Lcom/android/launcher3/model/BaseLoaderResults$$ExternalSyntheticLambda2;-><init>(II)V

    invoke-static {p2, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 178
    return-void
.end method
