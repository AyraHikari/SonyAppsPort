.class public Lcom/android/launcher3/model/WorkspaceItemSpaceFinder;
.super Ljava/lang/Object;
.source "WorkspaceItemSpaceFinder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private findNextAvailableIconSpaceInScreen(Lcom/android/launcher3/LauncherAppState;Ljava/util/ArrayList;[III)Z
    .locals 5
    .param p1, "app"    # Lcom/android/launcher3/LauncherAppState;
    .param p3, "xy"    # [I
    .param p4, "spanX"    # I
    .param p5, "spanY"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/LauncherAppState;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;[III)Z"
        }
    .end annotation

    .line 173
    .local p2, "occupiedPos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    .line 175
    .local v0, "profile":Lcom/android/launcher3/InvariantDeviceProfile;
    new-instance v1, Lcom/android/launcher3/util/GridOccupancy;

    iget v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget v3, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    .line 176
    .local v1, "occupied":Lcom/android/launcher3/util/GridOccupancy;
    if-eqz p2, :cond_0

    .line 177
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    .line 178
    .local v3, "r":Lcom/android/launcher3/model/data/ItemInfo;
    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    .line 179
    .end local v3    # "r":Lcom/android/launcher3/model/data/ItemInfo;
    goto :goto_0

    .line 181
    :cond_0
    invoke-virtual {v1, p3, p4, p5}, Lcom/android/launcher3/util/GridOccupancy;->findVacantCell([III)Z

    move-result v2

    return v2
.end method


# virtual methods
.method public findSpaceForItem(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;II)[I
    .locals 17
    .param p1, "app"    # Lcom/android/launcher3/LauncherAppState;
    .param p2, "dataModel"    # Lcom/android/launcher3/model/BgDataModel;
    .param p3, "workspaceScreens"    # Lcom/android/launcher3/util/IntArray;
    .param p4, "addedWorkspaceScreensFinal"    # Lcom/android/launcher3/util/IntArray;
    .param p5, "spanX"    # I
    .param p6, "spanY"    # I

    .line 45
    move-object/from16 v1, p2

    move-object/from16 v2, p3

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    move-object v3, v0

    .line 48
    .local v3, "screenItems":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;>;"
    monitor-enter p2

    .line 49
    :try_start_0
    iget-object v0, v1, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    .line 50
    .local v4, "info":Lcom/android/launcher3/model/data/ItemInfo;
    iget v5, v4, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v6, -0x64

    if-ne v5, v6, :cond_1

    .line 51
    iget v5, v4, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    int-to-long v5, v5

    invoke-virtual {v3, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 52
    .local v5, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    if-nez v5, :cond_0

    .line 53
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v6

    .line 54
    iget v6, v4, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    int-to-long v6, v6

    invoke-virtual {v3, v6, v7, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 56
    :cond_0
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .end local v4    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v5    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    :cond_1
    goto :goto_0

    .line 59
    :cond_2
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, "screenId":I
    const/4 v4, 0x2

    new-array v11, v4, [I

    .line 64
    .local v11, "coordinates":[I
    const/4 v12, 0x0

    .line 66
    .local v12, "found":Z
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v13

    .line 68
    .local v13, "screenCount":I
    new-instance v5, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v5}, Lcom/android/launcher3/util/IntSet;-><init>()V

    move-object v14, v5

    .line 69
    .local v14, "screensToExclude":Lcom/android/launcher3/util/IntSet;
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/util/IntArray;->isEmpty()Z

    move-result v5

    const/4 v15, 0x0

    if-nez v5, :cond_3

    .line 70
    invoke-virtual {v14, v15}, Lcom/android/launcher3/util/IntSet;->add(I)V

    .line 73
    :cond_3
    const/4 v5, 0x0

    move v10, v5

    .local v10, "screen":I
    :goto_1
    if-ge v10, v13, :cond_6

    .line 74
    invoke-virtual {v2, v10}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v0

    .line 75
    invoke-virtual {v14, v0}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v5

    if-nez v5, :cond_4

    int-to-long v5, v0

    .line 76
    invoke-virtual {v3, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/util/ArrayList;

    .line 75
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object v8, v11

    move/from16 v9, p5

    move/from16 v16, v10

    .end local v10    # "screen":I
    .local v16, "screen":I
    move/from16 v10, p6

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher3/model/WorkspaceItemSpaceFinder;->findNextAvailableIconSpaceInScreen(Lcom/android/launcher3/LauncherAppState;Ljava/util/ArrayList;[III)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 78
    const/4 v12, 0x1

    .line 79
    goto :goto_2

    .line 75
    .end local v16    # "screen":I
    .restart local v10    # "screen":I
    :cond_4
    move/from16 v16, v10

    .line 73
    .end local v10    # "screen":I
    .restart local v16    # "screen":I
    :cond_5
    add-int/lit8 v10, v16, 0x1

    .end local v16    # "screen":I
    .restart local v10    # "screen":I
    goto :goto_1

    :cond_6
    move/from16 v16, v10

    .line 83
    .end local v10    # "screen":I
    :goto_2
    if-nez v12, :cond_8

    .line 85
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "generate_new_screen_id"

    invoke-static {v5, v6}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "value"

    .line 87
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 90
    invoke-virtual {v2, v0}, Lcom/android/launcher3/util/IntArray;->add(I)V

    .line 91
    move-object/from16 v10, p4

    invoke-virtual {v10, v0}, Lcom/android/launcher3/util/IntArray;->add(I)V

    .line 94
    int-to-long v5, v0

    .line 95
    invoke-virtual {v3, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/util/ArrayList;

    .line 94
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object v8, v11

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher3/model/WorkspaceItemSpaceFinder;->findNextAvailableIconSpaceInScreen(Lcom/android/launcher3/LauncherAppState;Ljava/util/ArrayList;[III)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_3

    .line 96
    :cond_7
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Can\'t find space to add the item"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 99
    :cond_8
    :goto_3
    const/4 v5, 0x3

    new-array v5, v5, [I

    aput v0, v5, v15

    aget v6, v11, v15

    const/4 v7, 0x1

    aput v6, v5, v7

    aget v6, v11, v7

    aput v6, v5, v4

    return-object v5

    .line 59
    .end local v0    # "screenId":I
    .end local v11    # "coordinates":[I
    .end local v12    # "found":Z
    .end local v13    # "screenCount":I
    .end local v14    # "screensToExclude":Lcom/android/launcher3/util/IntSet;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected findSpaceForItemForGE(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;II)[I
    .locals 17
    .param p1, "app"    # Lcom/android/launcher3/LauncherAppState;
    .param p2, "dataModel"    # Lcom/android/launcher3/model/BgDataModel;
    .param p3, "workspaceScreens"    # Lcom/android/launcher3/util/IntArray;
    .param p4, "addedWorkspaceScreensFinal"    # Lcom/android/launcher3/util/IntArray;
    .param p5, "spanX"    # I
    .param p6, "spanY"    # I

    .line 104
    move-object/from16 v1, p2

    move-object/from16 v2, p3

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    move-object v3, v0

    .line 107
    .local v3, "screenItems":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;>;"
    monitor-enter p2

    .line 108
    :try_start_0
    iget-object v0, v1, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    .line 109
    .local v4, "info":Lcom/android/launcher3/model/data/ItemInfo;
    iget v5, v4, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v6, -0x64

    if-ne v5, v6, :cond_1

    .line 110
    iget v5, v4, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    int-to-long v5, v5

    invoke-virtual {v3, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 111
    .local v5, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    if-nez v5, :cond_0

    .line 112
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v6

    .line 113
    iget v6, v4, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    int-to-long v6, v6

    invoke-virtual {v3, v6, v7, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 115
    :cond_0
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .end local v4    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v5    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    :cond_1
    goto :goto_0

    .line 118
    :cond_2
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    const/4 v0, 0x0

    .line 122
    .local v0, "screenId":I
    const/4 v4, 0x2

    new-array v11, v4, [I

    .line 123
    .local v11, "cordinates":[I
    const/4 v12, 0x0

    .line 125
    .local v12, "found":Z
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v13

    .line 127
    .local v13, "screenCount":I
    const/4 v14, 0x0

    const/4 v15, 0x1

    if-le v13, v15, :cond_5

    .line 129
    const/4 v5, 0x0

    move v10, v5

    .local v10, "screen":I
    :goto_1
    if-ge v10, v13, :cond_4

    .line 130
    invoke-virtual {v2, v10}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v0

    .line 131
    int-to-long v5, v0

    invoke-virtual {v3, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/util/ArrayList;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object v8, v11

    move/from16 v9, p5

    move/from16 v16, v10

    .end local v10    # "screen":I
    .local v16, "screen":I
    move/from16 v10, p6

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher3/model/WorkspaceItemSpaceFinder;->findNextAvailableIconSpaceInScreen(Lcom/android/launcher3/LauncherAppState;Ljava/util/ArrayList;[III)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 134
    const/4 v5, 0x1

    .line 135
    .end local v12    # "found":Z
    .local v5, "found":Z
    move v12, v5

    goto :goto_2

    .line 129
    .end local v5    # "found":Z
    .restart local v12    # "found":Z
    :cond_3
    add-int/lit8 v10, v16, 0x1

    .end local v16    # "screen":I
    .restart local v10    # "screen":I
    goto :goto_1

    :cond_4
    move/from16 v16, v10

    .end local v10    # "screen":I
    :goto_2
    goto :goto_3

    .line 140
    :cond_5
    invoke-virtual {v2, v14}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v0

    .line 141
    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v5

    if-lez v5, :cond_6

    .line 142
    int-to-long v5, v0

    invoke-virtual {v3, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/util/ArrayList;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object v8, v11

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher3/model/WorkspaceItemSpaceFinder;->findNextAvailableIconSpaceInScreen(Lcom/android/launcher3/LauncherAppState;Ljava/util/ArrayList;[III)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 145
    const/4 v12, 0x1

    .line 150
    :cond_6
    :goto_3
    if-nez v12, :cond_8

    .line 152
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "generate_new_screen_id"

    invoke-static {v5, v6}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "value"

    .line 154
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 157
    invoke-virtual {v2, v0}, Lcom/android/launcher3/util/IntArray;->add(I)V

    .line 158
    move-object/from16 v10, p4

    invoke-virtual {v10, v0}, Lcom/android/launcher3/util/IntArray;->add(I)V

    .line 161
    int-to-long v5, v0

    invoke-virtual {v3, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/util/ArrayList;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object v8, v11

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher3/model/WorkspaceItemSpaceFinder;->findNextAvailableIconSpaceInScreen(Lcom/android/launcher3/LauncherAppState;Ljava/util/ArrayList;[III)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_4

    .line 163
    :cond_7
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Can\'t find space to add the item"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 167
    :cond_8
    :goto_4
    const/4 v5, 0x3

    new-array v5, v5, [I

    aput v0, v5, v14

    aget v6, v11, v14

    aput v6, v5, v15

    aget v6, v11, v15

    aput v6, v5, v4

    return-object v5

    .line 118
    .end local v0    # "screenId":I
    .end local v11    # "cordinates":[I
    .end local v12    # "found":Z
    .end local v13    # "screenCount":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
