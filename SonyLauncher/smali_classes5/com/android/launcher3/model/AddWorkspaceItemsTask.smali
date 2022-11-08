.class public Lcom/android/launcher3/model/AddWorkspaceItemsTask;
.super Lcom/android/launcher3/model/BaseModelUpdateTask;
.source "AddWorkspaceItemsTask.java"


# static fields
.field private static final LOG:Ljava/lang/String; = "AddWorkspaceItemsTask"


# instance fields
.field protected final mItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mItemSpaceFinder:Lcom/android/launcher3/model/WorkspaceItemSpaceFinder;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 67
    .local p1, "itemList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/Object;>;>;"
    new-instance v0, Lcom/android/launcher3/model/WorkspaceItemSpaceFinder;

    invoke-direct {v0}, Lcom/android/launcher3/model/WorkspaceItemSpaceFinder;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/model/AddWorkspaceItemsTask;-><init>(Ljava/util/List;Lcom/android/launcher3/model/WorkspaceItemSpaceFinder;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/android/launcher3/model/WorkspaceItemSpaceFinder;)V
    .locals 0
    .param p2, "itemSpaceFinder"    # Lcom/android/launcher3/model/WorkspaceItemSpaceFinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Ljava/lang/Object;",
            ">;>;",
            "Lcom/android/launcher3/model/WorkspaceItemSpaceFinder;",
            ")V"
        }
    .end annotation

    .line 75
    .local p1, "itemList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/Object;>;>;"
    invoke-direct {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/android/launcher3/model/AddWorkspaceItemsTask;->mItemList:Ljava/util/List;

    .line 77
    iput-object p2, p0, Lcom/android/launcher3/model/AddWorkspaceItemsTask;->mItemSpaceFinder:Lcom/android/launcher3/model/WorkspaceItemSpaceFinder;

    .line 78
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;)V
    .locals 23
    .param p1, "app"    # Lcom/android/launcher3/LauncherAppState;
    .param p2, "dataModel"    # Lcom/android/launcher3/model/BgDataModel;
    .param p3, "apps"    # Lcom/android/launcher3/model/AllAppsList;

    .line 82
    move-object/from16 v1, p0

    move-object/from16 v13, p2

    iget-object v0, v1, Lcom/android/launcher3/model/AddWorkspaceItemsTask;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    return-void

    .line 86
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    .line 87
    .local v14, "addedItemsFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    new-instance v0, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntArray;-><init>()V

    move-object v15, v0

    .line 89
    .local v15, "addedWorkspaceScreensFinal":Lcom/android/launcher3/util/IntArray;
    monitor-enter p2

    .line 90
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/model/BgDataModel;->collectWorkspaceScreens()Lcom/android/launcher3/util/IntArray;

    move-result-object v5

    .line 92
    .local v5, "workspaceScreens":Lcom/android/launcher3/util/IntArray;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v0, "filteredItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    iget-object v2, v1, Lcom/android/launcher3/model/AddWorkspaceItemsTask;->mItemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v12, 0x1

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 94
    .local v3, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/Object;>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    .line 95
    .local v4, "item":Lcom/android/launcher3/model/data/ItemInfo;
    iget v6, v4, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-eqz v6, :cond_2

    iget v6, v4, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-ne v6, v12, :cond_4

    .line 98
    :cond_2
    invoke-virtual {v4}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v6

    iget-object v7, v4, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, v13, v6, v7}, Lcom/android/launcher3/model/AddWorkspaceItemsTask;->shortcutExists(Lcom/android/launcher3/model/BgDataModel;Landroid/content/Intent;Landroid/os/UserHandle;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 99
    sget-boolean v6, Lcom/android/launcher3/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v6, :cond_1

    .line 100
    const-string v6, "b/202985412"

    const-string v7, "AddWorkspaceItemsTask Item already on workspace."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 106
    :cond_3
    nop

    .line 107
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerUtil;->isGameEnhancerApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v6

    .line 110
    .local v6, "isGameEnhancerApp":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v4}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/launcher3/util/PackageManagerHelper;->isSystemApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-nez v6, :cond_4

    .line 112
    sget-boolean v7, Lcom/android/launcher3/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v7, :cond_1

    .line 113
    const-string v7, "b/202985412"

    const-string v8, "AddWorkspaceItemsTask Item is a system app."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 120
    .end local v6    # "isGameEnhancerApp":Z
    :cond_4
    iget v6, v4, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-nez v6, :cond_5

    .line 121
    instance-of v6, v4, Lcom/android/launcher3/model/data/WorkspaceItemFactory;

    if-eqz v6, :cond_5

    .line 122
    move-object v6, v4

    check-cast v6, Lcom/android/launcher3/model/data/WorkspaceItemFactory;

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/launcher3/model/data/WorkspaceItemFactory;->makeWorkspaceItem(Landroid/content/Context;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v6

    move-object v4, v6

    .line 125
    :cond_5
    if-eqz v4, :cond_6

    .line 126
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    .end local v3    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/Object;>;"
    .end local v4    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    :cond_6
    goto :goto_0

    .line 130
    :cond_7
    sget-object v2, Lcom/android/launcher3/pm/InstallSessionHelper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    .line 131
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/pm/InstallSessionHelper;

    move-object v11, v2

    .line 132
    .local v11, "packageInstaller":Lcom/android/launcher3/pm/InstallSessionHelper;
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/content/pm/LauncherApps;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/LauncherApps;

    move-object v10, v2

    .line 134
    .local v10, "launcherApps":Landroid/content/pm/LauncherApps;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    move-object v9, v2

    .line 135
    .local v9, "item":Lcom/android/launcher3/model/data/ItemInfo;
    nop

    .line 136
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v9}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerUtil;->isGameEnhancerApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    move/from16 v17, v2

    .line 139
    .local v17, "isGameEnhancerApp":Z
    if-eqz v17, :cond_8

    .line 140
    iget-object v2, v1, Lcom/android/launcher3/model/AddWorkspaceItemsTask;->mItemSpaceFinder:Lcom/android/launcher3/model/WorkspaceItemSpaceFinder;

    iget v7, v9, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v8, v9, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object v6, v15

    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher3/model/WorkspaceItemSpaceFinder;->findSpaceForItemForGE(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;II)[I

    move-result-object v2

    move-object/from16 v18, v0

    move-object v3, v2

    move-object/from16 v19, v5

    move-object v4, v9

    move-object v0, v10

    move-object v5, v11

    move v2, v12

    .local v2, "coords":[I
    goto :goto_2

    .line 143
    .end local v2    # "coords":[I
    :cond_8
    iget-object v6, v1, Lcom/android/launcher3/model/AddWorkspaceItemsTask;->mItemSpaceFinder:Lcom/android/launcher3/model/WorkspaceItemSpaceFinder;

    iget v2, v9, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v3, v9, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object v4, v9

    .end local v9    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    .restart local v4    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    move-object v9, v5

    move-object/from16 v18, v0

    move-object v0, v10

    .end local v10    # "launcherApps":Landroid/content/pm/LauncherApps;
    .local v0, "launcherApps":Landroid/content/pm/LauncherApps;
    .local v18, "filteredItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    move-object v10, v15

    move-object/from16 v19, v5

    move-object v5, v11

    .end local v11    # "packageInstaller":Lcom/android/launcher3/pm/InstallSessionHelper;
    .local v5, "packageInstaller":Lcom/android/launcher3/pm/InstallSessionHelper;
    .local v19, "workspaceScreens":Lcom/android/launcher3/util/IntArray;
    move v11, v2

    move v2, v12

    move v12, v3

    invoke-virtual/range {v6 .. v12}, Lcom/android/launcher3/model/WorkspaceItemSpaceFinder;->findSpaceForItem(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;II)[I

    move-result-object v3

    .line 146
    .local v3, "coords":[I
    :goto_2
    const/4 v12, 0x0

    aget v9, v3, v12

    .line 149
    .local v9, "screenId":I
    instance-of v6, v4, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-nez v6, :cond_b

    instance-of v6, v4, Lcom/android/launcher3/model/data/FolderInfo;

    if-nez v6, :cond_b

    instance-of v6, v4, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v6, :cond_9

    goto :goto_3

    .line 152
    :cond_9
    instance-of v6, v4, Lcom/android/launcher3/model/data/WorkspaceItemFactory;

    if-eqz v6, :cond_a

    .line 153
    move-object v6, v4

    check-cast v6, Lcom/android/launcher3/model/data/WorkspaceItemFactory;

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/launcher3/model/data/WorkspaceItemFactory;->makeWorkspaceItem(Landroid/content/Context;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v6

    .local v6, "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    goto :goto_4

    .line 155
    .end local v6    # "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    :cond_a
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v6, "Unexpected info type"

    invoke-direct {v2, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v14    # "addedItemsFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    .end local v15    # "addedWorkspaceScreensFinal":Lcom/android/launcher3/util/IntArray;
    .end local p0    # "this":Lcom/android/launcher3/model/AddWorkspaceItemsTask;
    .end local p1    # "app":Lcom/android/launcher3/LauncherAppState;
    .end local p2    # "dataModel":Lcom/android/launcher3/model/BgDataModel;
    .end local p3    # "apps":Lcom/android/launcher3/model/AllAppsList;
    throw v2

    .line 151
    .restart local v14    # "addedItemsFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    .restart local v15    # "addedWorkspaceScreensFinal":Lcom/android/launcher3/util/IntArray;
    .restart local p0    # "this":Lcom/android/launcher3/model/AddWorkspaceItemsTask;
    .restart local p1    # "app":Lcom/android/launcher3/LauncherAppState;
    .restart local p2    # "dataModel":Lcom/android/launcher3/model/BgDataModel;
    .restart local p3    # "apps":Lcom/android/launcher3/model/AllAppsList;
    :cond_b
    :goto_3
    move-object v6, v4

    .line 158
    .restart local v6    # "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    :goto_4
    instance-of v7, v4, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v7, :cond_18

    move-object v7, v4

    check-cast v7, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v7}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->isPromise()Z

    move-result v7

    if-eqz v7, :cond_18

    .line 159
    move-object v7, v4

    check-cast v7, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 160
    .local v7, "workspaceInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    invoke-virtual {v4}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_c

    .line 161
    invoke-virtual {v4}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    :cond_c
    const/4 v8, 0x0

    .line 162
    .local v8, "packageName":Ljava/lang/String;
    :goto_5
    if-nez v8, :cond_e

    .line 163
    sget-boolean v10, Lcom/android/launcher3/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v10, :cond_d

    .line 164
    const-string v10, "b/202985412"

    const-string v11, "AddWorkspaceItemsTask Null packageName."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v0

    move v12, v2

    move-object v11, v5

    move-object/from16 v0, v18

    move-object/from16 v5, v19

    goto/16 :goto_1

    .line 163
    :cond_d
    move-object v10, v0

    move v12, v2

    move-object v11, v5

    move-object/from16 v0, v18

    move-object/from16 v5, v19

    goto/16 :goto_1

    .line 168
    :cond_e
    iget-object v10, v4, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v5, v10, v8}, Lcom/android/launcher3/pm/InstallSessionHelper;->getActiveSessionInfo(Landroid/os/UserHandle;Ljava/lang/String;)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v10

    .line 171
    .local v10, "sessionInfo":Landroid/content/pm/PackageInstaller$SessionInfo;
    invoke-virtual {v5, v10}, Lcom/android/launcher3/pm/InstallSessionHelper;->verifySessionInfo(Landroid/content/pm/PackageInstaller$SessionInfo;)Z

    move-result v11

    if-nez v11, :cond_10

    if-nez v17, :cond_10

    .line 172
    const-string v11, "AddWorkspaceItemsTask"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Item info failed session info verification. Skipping : "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    sget-boolean v2, Lcom/android/launcher3/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v2, :cond_f

    .line 175
    const-string v2, "b/202985412"

    const-string v11, "AddWorkspaceItemsTaskFailed verification."

    invoke-static {v2, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v0

    move-object v11, v5

    move-object/from16 v0, v18

    move-object/from16 v5, v19

    const/4 v12, 0x1

    goto/16 :goto_1

    .line 174
    :cond_f
    move-object v10, v0

    move-object v11, v5

    move-object/from16 v0, v18

    move-object/from16 v5, v19

    const/4 v12, 0x1

    goto/16 :goto_1

    .line 180
    :cond_10
    iget-object v2, v4, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    .line 181
    invoke-virtual {v0, v8, v2}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v2

    .line 182
    .local v2, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    if-eqz v2, :cond_11

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_11

    const/4 v11, 0x1

    goto :goto_6

    :cond_11
    move v11, v12

    .line 184
    .local v11, "hasActivity":Z
    :goto_6
    if-nez v10, :cond_14

    .line 185
    if-nez v11, :cond_13

    .line 187
    sget-boolean v12, Lcom/android/launcher3/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v12, :cond_12

    .line 188
    const-string v12, "b/202985412"

    move-object/from16 v20, v0

    .end local v0    # "launcherApps":Landroid/content/pm/LauncherApps;
    .local v20, "launcherApps":Landroid/content/pm/LauncherApps;
    const-string v0, "AddWorkspaceItemsTaskSession cancelled"

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v5

    move-object/from16 v0, v18

    move-object/from16 v5, v19

    move-object/from16 v10, v20

    const/4 v12, 0x1

    goto/16 :goto_1

    .line 187
    .end local v20    # "launcherApps":Landroid/content/pm/LauncherApps;
    .restart local v0    # "launcherApps":Landroid/content/pm/LauncherApps;
    :cond_12
    move-object/from16 v20, v0

    .end local v0    # "launcherApps":Landroid/content/pm/LauncherApps;
    .restart local v20    # "launcherApps":Landroid/content/pm/LauncherApps;
    move-object v11, v5

    move-object/from16 v0, v18

    move-object/from16 v5, v19

    move-object/from16 v10, v20

    const/4 v12, 0x1

    goto/16 :goto_1

    .line 185
    .end local v20    # "launcherApps":Landroid/content/pm/LauncherApps;
    .restart local v0    # "launcherApps":Landroid/content/pm/LauncherApps;
    :cond_13
    move-object/from16 v20, v0

    .end local v0    # "launcherApps":Landroid/content/pm/LauncherApps;
    .restart local v20    # "launcherApps":Landroid/content/pm/LauncherApps;
    goto :goto_7

    .line 193
    .end local v20    # "launcherApps":Landroid/content/pm/LauncherApps;
    .restart local v0    # "launcherApps":Landroid/content/pm/LauncherApps;
    :cond_14
    move-object/from16 v20, v0

    .line 194
    .end local v0    # "launcherApps":Landroid/content/pm/LauncherApps;
    .restart local v20    # "launcherApps":Landroid/content/pm/LauncherApps;
    invoke-virtual {v10}, Landroid/content/pm/PackageInstaller$SessionInfo;->getProgress()F

    move-result v0

    const/high16 v21, 0x42c80000    # 100.0f

    mul-float v0, v0, v21

    float-to-int v0, v0

    .line 193
    const/4 v12, 0x1

    invoke-virtual {v7, v0, v12}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->setProgressLevel(II)V

    .line 198
    :goto_7
    if-eqz v11, :cond_17

    .line 201
    new-instance v0, Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v12

    move-object/from16 v22, v5

    const/4 v5, 0x0

    .end local v5    # "packageInstaller":Lcom/android/launcher3/pm/InstallSessionHelper;
    .local v22, "packageInstaller":Lcom/android/launcher3/pm/InstallSessionHelper;
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/LauncherActivityInfo;

    move-object/from16 v21, v2

    .end local v2    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    .local v21, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    iget-object v2, v4, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v0, v12, v5, v2}, Lcom/android/launcher3/model/data/AppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;)V

    .line 202
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/model/data/AppInfo;->makeWorkspaceItem(Landroid/content/Context;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v0

    move-object v6, v0

    .line 204
    invoke-virtual {v6}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v2, v6, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, v13, v0, v2}, Lcom/android/launcher3/model/AddWorkspaceItemsTask;->shortcutExists(Lcom/android/launcher3/model/BgDataModel;Landroid/content/Intent;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 209
    sget-boolean v0, Lcom/android/launcher3/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v0, :cond_15

    .line 210
    const-string v0, "b/202985412"

    const-string v2, "AddWorkspaceItemsTaskshortcutExists"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v18

    move-object/from16 v5, v19

    move-object/from16 v10, v20

    move-object/from16 v11, v22

    const/4 v12, 0x1

    goto/16 :goto_1

    .line 209
    :cond_15
    move-object/from16 v0, v18

    move-object/from16 v5, v19

    move-object/from16 v10, v20

    move-object/from16 v11, v22

    const/4 v12, 0x1

    goto/16 :goto_1

    .line 215
    :cond_16
    move-object v0, v6

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 216
    .local v0, "wii":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    const-string v2, ""

    iput-object v2, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->title:Ljava/lang/CharSequence;

    .line 217
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v2

    iget-object v5, v4, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v2, v5}, Lcom/android/launcher3/icons/IconCache;->getDefaultIcon(Landroid/os/UserHandle;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v2

    iput-object v2, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    .line 218
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v2

    move-object v5, v6

    check-cast v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 219
    invoke-virtual {v5}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->usingLowResIcon()Z

    move-result v5

    .line 218
    invoke-virtual {v2, v0, v5}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)V

    move-object v0, v6

    goto :goto_9

    .line 198
    .end local v0    # "wii":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .end local v21    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    .end local v22    # "packageInstaller":Lcom/android/launcher3/pm/InstallSessionHelper;
    .restart local v2    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    .restart local v5    # "packageInstaller":Lcom/android/launcher3/pm/InstallSessionHelper;
    :cond_17
    move-object/from16 v21, v2

    move-object/from16 v22, v5

    .end local v2    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    .end local v5    # "packageInstaller":Lcom/android/launcher3/pm/InstallSessionHelper;
    .restart local v21    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    .restart local v22    # "packageInstaller":Lcom/android/launcher3/pm/InstallSessionHelper;
    goto :goto_8

    .line 158
    .end local v7    # "workspaceInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v10    # "sessionInfo":Landroid/content/pm/PackageInstaller$SessionInfo;
    .end local v11    # "hasActivity":Z
    .end local v20    # "launcherApps":Landroid/content/pm/LauncherApps;
    .end local v21    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    .end local v22    # "packageInstaller":Lcom/android/launcher3/pm/InstallSessionHelper;
    .local v0, "launcherApps":Landroid/content/pm/LauncherApps;
    .restart local v5    # "packageInstaller":Lcom/android/launcher3/pm/InstallSessionHelper;
    :cond_18
    move-object/from16 v20, v0

    move-object/from16 v22, v5

    .line 224
    .end local v0    # "launcherApps":Landroid/content/pm/LauncherApps;
    .end local v5    # "packageInstaller":Lcom/android/launcher3/pm/InstallSessionHelper;
    .restart local v20    # "launcherApps":Landroid/content/pm/LauncherApps;
    .restart local v22    # "packageInstaller":Lcom/android/launcher3/pm/InstallSessionHelper;
    :goto_8
    move-object v0, v6

    .end local v6    # "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    .local v0, "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/model/AddWorkspaceItemsTask;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v6

    const/16 v8, -0x64

    const/4 v2, 0x1

    aget v10, v3, v2

    const/4 v5, 0x2

    aget v11, v3, v5

    move-object v7, v0

    invoke-virtual/range {v6 .. v11}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    .line 229
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    const-string v5, "AddWorkspaceItemsTask"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Adding item info to workspace: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .end local v0    # "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v3    # "coords":[I
    .end local v4    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v9    # "screenId":I
    .end local v17    # "isGameEnhancerApp":Z
    move v12, v2

    move-object/from16 v0, v18

    move-object/from16 v5, v19

    move-object/from16 v10, v20

    move-object/from16 v11, v22

    goto/16 :goto_1

    .line 134
    .end local v18    # "filteredItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    .end local v19    # "workspaceScreens":Lcom/android/launcher3/util/IntArray;
    .end local v20    # "launcherApps":Landroid/content/pm/LauncherApps;
    .end local v22    # "packageInstaller":Lcom/android/launcher3/pm/InstallSessionHelper;
    .local v0, "filteredItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    .local v5, "workspaceScreens":Lcom/android/launcher3/util/IntArray;
    .local v10, "launcherApps":Landroid/content/pm/LauncherApps;
    .local v11, "packageInstaller":Lcom/android/launcher3/pm/InstallSessionHelper;
    :cond_19
    move-object/from16 v18, v0

    move-object/from16 v19, v5

    move-object/from16 v20, v10

    move-object/from16 v22, v11

    .line 234
    .end local v0    # "filteredItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    .end local v5    # "workspaceScreens":Lcom/android/launcher3/util/IntArray;
    .end local v10    # "launcherApps":Landroid/content/pm/LauncherApps;
    .end local v11    # "packageInstaller":Lcom/android/launcher3/pm/InstallSessionHelper;
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 237
    new-instance v0, Lcom/android/launcher3/model/AddWorkspaceItemsTask$1;

    invoke-direct {v0, v1, v14, v15}, Lcom/android/launcher3/model/AddWorkspaceItemsTask$1;-><init>(Lcom/android/launcher3/model/AddWorkspaceItemsTask;Ljava/util/ArrayList;Lcom/android/launcher3/util/IntArray;)V

    invoke-virtual {v1, v0}, Lcom/android/launcher3/model/AddWorkspaceItemsTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    .line 258
    :cond_1a
    return-void

    .line 234
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected shortcutExists(Lcom/android/launcher3/model/BgDataModel;Landroid/content/Intent;Landroid/os/UserHandle;)Z
    .locals 12
    .param p1, "dataModel"    # Lcom/android/launcher3/model/BgDataModel;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 266
    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 268
    return v0

    .line 270
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 273
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 274
    .local v1, "compPkgName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 275
    invoke-virtual {p2, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    .line 276
    .local v3, "intentWithPkg":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    .local v4, "intentWithoutPkg":Ljava/lang/String;
    goto :goto_0

    .line 278
    .end local v3    # "intentWithPkg":Ljava/lang/String;
    .end local v4    # "intentWithoutPkg":Ljava/lang/String;
    :cond_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    .line 279
    .restart local v3    # "intentWithPkg":Ljava/lang/String;
    invoke-virtual {p2, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "intentWithoutPkg":Ljava/lang/String;
    goto :goto_0

    .line 282
    .end local v1    # "compPkgName":Ljava/lang/String;
    .end local v3    # "intentWithPkg":Ljava/lang/String;
    .end local v4    # "intentWithoutPkg":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    .line 283
    .restart local v1    # "compPkgName":Ljava/lang/String;
    invoke-virtual {p2, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    .line 284
    .restart local v3    # "intentWithPkg":Ljava/lang/String;
    invoke-virtual {p2, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    .line 287
    .restart local v4    # "intentWithoutPkg":Ljava/lang/String;
    :goto_0
    invoke-static {p2}, Lcom/android/launcher3/util/PackageManagerHelper;->isLauncherAppTarget(Landroid/content/Intent;)Z

    move-result v5

    .line 288
    .local v5, "isLauncherAppTarget":Z
    monitor-enter p1

    .line 289
    :try_start_0
    iget-object v6, p1, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v6}, Lcom/android/launcher3/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/model/data/ItemInfo;

    .line 290
    .local v7, "item":Lcom/android/launcher3/model/data/ItemInfo;
    instance-of v8, v7, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v8, :cond_5

    .line 291
    move-object v8, v7

    check-cast v8, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 292
    .local v8, "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    invoke-virtual {v7}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v9

    if-eqz v9, :cond_5

    iget-object v9, v8, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v9, p3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 293
    new-instance v9, Landroid/content/Intent;

    invoke-virtual {v7}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 294
    .local v9, "copyIntent":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 295
    invoke-virtual {v9, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v10

    .line 296
    .local v10, "s":Ljava/lang/String;
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_2

    .line 301
    :cond_3
    if-eqz v5, :cond_5

    .line 302
    invoke-virtual {v8}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->isPromise()Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v11, 0x2

    .line 303
    invoke-virtual {v8, v11}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->hasStatusFlag(I)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 304
    invoke-virtual {v8}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v11

    if-eqz v11, :cond_5

    if-eqz v1, :cond_5

    .line 306
    invoke-virtual {v8}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 307
    monitor-exit p1

    return v0

    .line 297
    :cond_4
    :goto_2
    monitor-exit p1

    return v0

    .line 311
    .end local v7    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v8    # "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .end local v9    # "copyIntent":Landroid/content/Intent;
    .end local v10    # "s":Ljava/lang/String;
    :cond_5
    goto :goto_1

    .line 312
    :cond_6
    monitor-exit p1

    .line 313
    return v2

    .line 312
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
