.class public Lcom/sonymobile/launcher/XperiaAddHotseatOrWorkspaceItemsTask;
.super Lcom/android/launcher3/model/AddWorkspaceItemsTask;
.source "XperiaAddHotseatOrWorkspaceItemsTask.java"


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
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

    .line 61
    .local p1, "itemList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/Object;>;>;"
    invoke-direct {p0, p1}, Lcom/android/launcher3/model/AddWorkspaceItemsTask;-><init>(Ljava/util/List;)V

    .line 62
    return-void
.end method

.method private addItemInsideFolder(Lcom/android/launcher3/model/BgDataModel;Ljava/util/ArrayList;Lcom/android/launcher3/model/data/ItemInfo;Lcom/sonymobile/launcher/data/FolderItem;Lcom/android/launcher3/LauncherAppState;)V
    .locals 16
    .param p1, "dataModel"    # Lcom/android/launcher3/model/BgDataModel;
    .param p3, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p4, "custFolder"    # Lcom/sonymobile/launcher/data/FolderItem;
    .param p5, "app"    # Lcom/android/launcher3/LauncherAppState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/BgDataModel;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Lcom/sonymobile/launcher/data/FolderItem;",
            "Lcom/android/launcher3/LauncherAppState;",
            ")V"
        }
    .end annotation

    .line 189
    .local p2, "addedItemsFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    invoke-virtual/range {p4 .. p4}, Lcom/sonymobile/launcher/data/FolderItem;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, p1

    invoke-virtual {v0, v5, v4}, Lcom/sonymobile/launcher/XperiaAddHotseatOrWorkspaceItemsTask;->findModelFolder(Lcom/android/launcher3/model/BgDataModel;Ljava/lang/String;)Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v4

    .line 190
    .local v4, "info":Lcom/android/launcher3/model/data/FolderInfo;
    if-eqz v4, :cond_0

    .line 191
    invoke-direct {v0, v2, v3}, Lcom/sonymobile/launcher/XperiaAddHotseatOrWorkspaceItemsTask;->makeItemInfo(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/LauncherAppState;)Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v6

    .line 192
    .local v6, "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    iget-object v7, v4, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    iput v7, v6, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    .line 193
    const/4 v7, 0x0

    iput v7, v6, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    .line 194
    const/4 v7, -0x1

    iput v7, v6, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    .line 195
    iput v7, v6, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    .line 196
    iget v7, v4, Lcom/android/launcher3/model/data/FolderInfo;->id:I

    iput v7, v6, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    .line 197
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    .end local v6    # "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    goto :goto_0

    .line 200
    :cond_0
    invoke-virtual/range {p4 .. p4}, Lcom/sonymobile/launcher/data/FolderItem;->getLocation()Lcom/sonymobile/launcher/data/ItemLocation;

    move-result-object v6

    .line 201
    .local v6, "itemLocation":Lcom/sonymobile/launcher/data/ItemLocation;
    iget-object v7, v6, Lcom/sonymobile/launcher/data/ItemLocation;->grid:Lcom/sonymobile/launcher/grid/GridRect;

    .line 202
    .local v7, "gridRect":Lcom/sonymobile/launcher/grid/GridRect;
    iget v14, v6, Lcom/sonymobile/launcher/data/ItemLocation;->page:I

    .line 203
    .local v14, "screenId":I
    invoke-direct {v0, v2, v3}, Lcom/sonymobile/launcher/XperiaAddHotseatOrWorkspaceItemsTask;->makeItemInfo(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/LauncherAppState;)Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v15

    .line 206
    .local v15, "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/launcher/XperiaAddHotseatOrWorkspaceItemsTask;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v8

    const/16 v10, -0x64

    iget v12, v7, Lcom/sonymobile/launcher/grid/GridRect;->col:I

    iget v13, v7, Lcom/sonymobile/launcher/grid/GridRect;->row:I

    move-object v9, v15

    move v11, v14

    invoke-virtual/range {v8 .. v13}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    .line 211
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    .end local v6    # "itemLocation":Lcom/sonymobile/launcher/data/ItemLocation;
    .end local v7    # "gridRect":Lcom/sonymobile/launcher/grid/GridRect;
    .end local v14    # "screenId":I
    .end local v15    # "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    :goto_0
    return-void
.end method

.method private addItemOnStage(Ljava/util/ArrayList;Lcom/android/launcher3/model/data/ItemInfo;Lcom/sonymobile/launcher/data/Item;Lcom/android/launcher3/LauncherAppState;)V
    .locals 8
    .param p2, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p3, "custItem"    # Lcom/sonymobile/launcher/data/Item;
    .param p4, "app"    # Lcom/android/launcher3/LauncherAppState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Lcom/sonymobile/launcher/data/Item;",
            "Lcom/android/launcher3/LauncherAppState;",
            ")V"
        }
    .end annotation

    .line 232
    .local p1, "addedItemsFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    invoke-virtual {p3}, Lcom/sonymobile/launcher/data/Item;->getLocation()Lcom/sonymobile/launcher/data/ItemLocation;

    move-result-object v0

    .line 233
    .local v0, "itemLocation":Lcom/sonymobile/launcher/data/ItemLocation;
    invoke-direct {p0, p2, p4}, Lcom/sonymobile/launcher/XperiaAddHotseatOrWorkspaceItemsTask;->makeItemInfo(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/LauncherAppState;)Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v7

    .line 236
    .local v7, "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    invoke-virtual {p0}, Lcom/sonymobile/launcher/XperiaAddHotseatOrWorkspaceItemsTask;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v1

    iget v5, v0, Lcom/sonymobile/launcher/data/ItemLocation;->position:I

    iget v6, v0, Lcom/sonymobile/launcher/data/ItemLocation;->position:I

    const/16 v3, -0x65

    const/4 v4, 0x0

    move-object v2, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    .line 240
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    return-void
.end method

.method private addItemOnWorkspace(Ljava/util/ArrayList;Lcom/android/launcher3/model/data/ItemInfo;Lcom/sonymobile/launcher/data/Item;Lcom/android/launcher3/LauncherAppState;)V
    .locals 10
    .param p2, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p3, "custItem"    # Lcom/sonymobile/launcher/data/Item;
    .param p4, "app"    # Lcom/android/launcher3/LauncherAppState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Lcom/sonymobile/launcher/data/Item;",
            "Lcom/android/launcher3/LauncherAppState;",
            ")V"
        }
    .end annotation

    .line 217
    .local p1, "addedItemsFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    invoke-virtual {p3}, Lcom/sonymobile/launcher/data/Item;->getLocation()Lcom/sonymobile/launcher/data/ItemLocation;

    move-result-object v0

    .line 218
    .local v0, "itemLocation":Lcom/sonymobile/launcher/data/ItemLocation;
    iget-object v1, v0, Lcom/sonymobile/launcher/data/ItemLocation;->grid:Lcom/sonymobile/launcher/grid/GridRect;

    .line 219
    .local v1, "gridRect":Lcom/sonymobile/launcher/grid/GridRect;
    iget v8, v0, Lcom/sonymobile/launcher/data/ItemLocation;->page:I

    .line 220
    .local v8, "screenId":I
    invoke-direct {p0, p2, p4}, Lcom/sonymobile/launcher/XperiaAddHotseatOrWorkspaceItemsTask;->makeItemInfo(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/LauncherAppState;)Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v9

    .line 223
    .local v9, "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    invoke-virtual {p0}, Lcom/sonymobile/launcher/XperiaAddHotseatOrWorkspaceItemsTask;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v2

    iget v6, v1, Lcom/sonymobile/launcher/grid/GridRect;->col:I

    iget v7, v1, Lcom/sonymobile/launcher/grid/GridRect;->row:I

    const/16 v4, -0x64

    move-object v3, v9

    move v5, v8

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    .line 227
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    return-void
.end method

.method private findCustSpaceForItem(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/model/data/ItemInfo;)Ljava/util/List;
    .locals 14
    .param p1, "app"    # Lcom/android/launcher3/LauncherAppState;
    .param p2, "dataModel"    # Lcom/android/launcher3/model/BgDataModel;
    .param p3, "workspaceScreens"    # Lcom/android/launcher3/util/IntArray;
    .param p4, "addedWorkspaceScreensFinal"    # Lcom/android/launcher3/util/IntArray;
    .param p5, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/LauncherAppState;",
            "Lcom/android/launcher3/model/BgDataModel;",
            "Lcom/android/launcher3/util/IntArray;",
            "Lcom/android/launcher3/util/IntArray;",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/sonymobile/launcher/data/Item;",
            ">;"
        }
    .end annotation

    .line 289
    invoke-virtual/range {p5 .. p5}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "packageName":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 291
    return-object v1

    .line 293
    :cond_0
    new-instance v2, Lcom/sonymobile/launcher/customization/DesktopCustomization;

    .line 294
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/android/launcher3/widget/WidgetManagerHelper;

    .line 295
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/launcher3/widget/WidgetManagerHelper;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v3, v1, v4, v1}, Lcom/sonymobile/launcher/customization/DesktopCustomization;-><init>(Landroid/content/Context;Lcom/sonymobile/launcher/storage/Storage;Lcom/android/launcher3/widget/WidgetManagerHelper;Landroid/appwidget/AppWidgetHost;)V

    .line 296
    .local v2, "customization":Lcom/sonymobile/launcher/customization/DesktopCustomization;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sonymobile/launcher/customization/DesktopCustomization;->setCheckIfInstalled(Z)V

    .line 297
    invoke-virtual {v2}, Lcom/sonymobile/launcher/customization/DesktopCustomization;->applyCustomization()Z

    .line 298
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 299
    .local v4, "cutItemList":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/launcher/data/Item;>;"
    invoke-virtual {v2}, Lcom/sonymobile/launcher/customization/DesktopCustomization;->getItems()Ljava/util/List;

    move-result-object v5

    .line 300
    .local v5, "custItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/launcher/data/Item;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonymobile/launcher/data/Item;

    .line 301
    .local v7, "custItem":Lcom/sonymobile/launcher/data/Item;
    instance-of v8, v7, Lcom/sonymobile/launcher/data/FolderItem;

    if-eqz v8, :cond_3

    .line 302
    move-object v8, v7

    check-cast v8, Lcom/sonymobile/launcher/data/FolderItem;

    invoke-virtual {v8}, Lcom/sonymobile/launcher/data/FolderItem;->getItems()Ljava/util/List;

    move-result-object v8

    .line 303
    .local v8, "folderItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/launcher/data/Item;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sonymobile/launcher/data/Item;

    .line 304
    .local v10, "itemInFolder":Lcom/sonymobile/launcher/data/Item;
    invoke-virtual {v10}, Lcom/sonymobile/launcher/data/Item;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 305
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    .end local v10    # "itemInFolder":Lcom/sonymobile/launcher/data/Item;
    :cond_1
    goto :goto_1

    .line 303
    .end local v8    # "folderItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/launcher/data/Item;>;"
    :cond_2
    goto :goto_2

    .line 308
    :cond_3
    invoke-virtual {v7}, Lcom/sonymobile/launcher/data/Item;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 311
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 308
    :cond_4
    :goto_2
    nop

    .line 313
    .end local v7    # "custItem":Lcom/sonymobile/launcher/data/Item;
    :goto_3
    goto :goto_0

    .line 315
    :cond_5
    new-instance v6, Lcom/sonymobile/launcher/customization/StageCustomization;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Lcom/sonymobile/launcher/customization/StageCustomization;-><init>(Landroid/content/Context;Lcom/sonymobile/launcher/storage/Storage;)V

    .line 316
    .local v6, "stageCustomization":Lcom/sonymobile/launcher/customization/StageCustomization;
    invoke-virtual {v6, v3}, Lcom/sonymobile/launcher/customization/StageCustomization;->setCheckIfInstalled(Z)V

    .line 317
    invoke-virtual {v6}, Lcom/sonymobile/launcher/customization/StageCustomization;->applyCustomization()Z

    .line 318
    invoke-virtual {v6}, Lcom/sonymobile/launcher/customization/StageCustomization;->getItems()Ljava/util/List;

    move-result-object v3

    .line 319
    .local v3, "stageCustItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/launcher/data/Item;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonymobile/launcher/data/Item;

    .line 320
    .local v8, "custItem":Lcom/sonymobile/launcher/data/Item;
    instance-of v9, v8, Lcom/sonymobile/launcher/data/FolderItem;

    if-eqz v9, :cond_8

    .line 321
    move-object v9, v8

    check-cast v9, Lcom/sonymobile/launcher/data/FolderItem;

    invoke-virtual {v9}, Lcom/sonymobile/launcher/data/FolderItem;->getItems()Ljava/util/List;

    move-result-object v9

    .line 322
    .local v9, "folderItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/launcher/data/Item;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sonymobile/launcher/data/Item;

    .line 323
    .local v11, "itemInFolder":Lcom/sonymobile/launcher/data/Item;
    invoke-virtual {v11}, Lcom/sonymobile/launcher/data/Item;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 324
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    .end local v11    # "itemInFolder":Lcom/sonymobile/launcher/data/Item;
    :cond_6
    goto :goto_5

    .line 327
    .end local v9    # "folderItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/launcher/data/Item;>;"
    :cond_7
    move-object v10, p0

    move-object v11, p1

    move-object/from16 v12, p2

    goto :goto_6

    :cond_8
    invoke-virtual {v8}, Lcom/sonymobile/launcher/data/Item;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 330
    invoke-virtual {v8}, Lcom/sonymobile/launcher/data/Item;->getLocation()Lcom/sonymobile/launcher/data/ItemLocation;

    move-result-object v9

    iget v9, v9, Lcom/sonymobile/launcher/data/ItemLocation;->position:I

    move-object v10, p0

    move-object v11, p1

    move-object/from16 v12, p2

    invoke-virtual {p0, p1, v12, v9}, Lcom/sonymobile/launcher/XperiaAddHotseatOrWorkspaceItemsTask;->findStageSpaceForItem(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;I)I

    move-result v9

    .line 331
    .local v9, "newPosition":I
    if-ltz v9, :cond_b

    .line 332
    invoke-virtual {v8}, Lcom/sonymobile/launcher/data/Item;->getLocation()Lcom/sonymobile/launcher/data/ItemLocation;

    move-result-object v13

    iput v9, v13, Lcom/sonymobile/launcher/data/ItemLocation;->position:I

    .line 333
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 327
    .end local v9    # "newPosition":I
    :cond_9
    move-object v10, p0

    move-object v11, p1

    move-object/from16 v12, p2

    .line 339
    .end local v8    # "custItem":Lcom/sonymobile/launcher/data/Item;
    :goto_6
    goto :goto_4

    .line 319
    :cond_a
    move-object v10, p0

    move-object v11, p1

    move-object/from16 v12, p2

    .line 341
    :cond_b
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_c

    .line 342
    return-object v4

    .line 344
    :cond_c
    return-object v1
.end method

.method private makeItemInfo(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/LauncherAppState;)Lcom/android/launcher3/model/data/ItemInfo;
    .locals 7
    .param p1, "baseItem"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "app"    # Lcom/android/launcher3/LauncherAppState;

    .line 245
    instance-of v0, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v0, :cond_2

    .line 246
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 248
    .local v0, "packageName":Ljava/lang/String;
    :goto_0
    invoke-virtual {p2}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/content/pm/LauncherApps;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherApps;

    .line 249
    .local v1, "launcherApps":Landroid/content/pm/LauncherApps;
    iget-object v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    .line 250
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v2

    .line 251
    .local v2, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 253
    new-instance v3, Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {p2}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/LauncherActivityInfo;

    iget-object v6, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v3, v4, v5, v6}, Lcom/android/launcher3/model/data/AppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;)V

    .line 254
    invoke-virtual {p2}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/model/data/AppInfo;->makeWorkspaceItem(Landroid/content/Context;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v3

    .line 255
    .local v3, "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    move-object v4, v3

    check-cast v4, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 256
    .local v4, "wii":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    const-string v5, ""

    iput-object v5, v4, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->title:Ljava/lang/CharSequence;

    .line 257
    invoke-virtual {p2}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v5

    iget-object v6, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/icons/IconCache;->getDefaultIcon(Landroid/os/UserHandle;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v5

    iput-object v5, v4, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    .line 258
    invoke-virtual {p2}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v5

    move-object v6, v3

    check-cast v6, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 259
    invoke-virtual {v6}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->usingLowResIcon()Z

    move-result v6

    .line 258
    invoke-virtual {v5, v4, v6}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)V

    .line 260
    .end local v4    # "wii":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    goto :goto_1

    .line 261
    .end local v3    # "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    :cond_1
    new-instance v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-object v4, p1

    check-cast v4, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v3, v4}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    .line 262
    .local v3, "shortcutItem":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    move-object v4, v3

    .line 264
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "launcherApps":Landroid/content/pm/LauncherApps;
    .end local v2    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    .local v3, "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    :goto_1
    goto :goto_2

    .line 265
    .end local v3    # "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    :cond_2
    instance-of v0, p1, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v0, :cond_3

    .line 266
    new-instance v0, Lcom/android/launcher3/model/data/FolderInfo;

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/model/data/FolderInfo;

    invoke-direct {v0, v1}, Lcom/android/launcher3/model/data/FolderInfo;-><init>(Lcom/android/launcher3/model/data/FolderInfo;)V

    .line 267
    .local v0, "folderItem":Lcom/android/launcher3/model/data/FolderInfo;
    move-object v3, v0

    .line 268
    .end local v0    # "folderItem":Lcom/android/launcher3/model/data/FolderInfo;
    .restart local v3    # "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    goto :goto_2

    .line 269
    .end local v3    # "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    :cond_3
    instance-of v0, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v0, :cond_4

    .line 270
    new-instance v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-direct {v0, v1}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;-><init>(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    .line 272
    .local v0, "widgetItem":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    move-object v3, v0

    .line 273
    .end local v0    # "widgetItem":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    .restart local v3    # "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    goto :goto_2

    .end local v3    # "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    :cond_4
    instance-of v0, p1, Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v0, :cond_5

    .line 274
    new-instance v0, Lcom/android/launcher3/model/data/AppInfo;

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/model/data/AppInfo;

    invoke-direct {v0, v1}, Lcom/android/launcher3/model/data/AppInfo;-><init>(Lcom/android/launcher3/model/data/AppInfo;)V

    .line 275
    .local v0, "appItem":Lcom/android/launcher3/model/data/AppInfo;
    invoke-virtual {p2}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/data/AppInfo;->makeWorkspaceItem(Landroid/content/Context;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v3

    .line 276
    .end local v0    # "appItem":Lcom/android/launcher3/model/data/AppInfo;
    .restart local v3    # "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    nop

    .line 280
    :goto_2
    return-object v3

    .line 277
    .end local v3    # "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected info type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;)V
    .locals 20
    .param p1, "app"    # Lcom/android/launcher3/LauncherAppState;
    .param p2, "dataModel"    # Lcom/android/launcher3/model/BgDataModel;
    .param p3, "apps"    # Lcom/android/launcher3/model/AllAppsList;

    .line 67
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    iget-object v0, v11, Lcom/sonymobile/launcher/XperiaAddHotseatOrWorkspaceItemsTask;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    return-void

    .line 71
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v14

    .line 73
    .local v14, "context":Landroid/content/Context;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v0

    .line 74
    .local v15, "addedItemsFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    new-instance v0, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntArray;-><init>()V

    move-object v10, v0

    .line 79
    .local v10, "addedWorkspaceScreensFinal":Lcom/android/launcher3/util/IntArray;
    monitor-enter p2

    .line 80
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/model/BgDataModel;->collectWorkspaceScreens()Lcom/android/launcher3/util/IntArray;

    move-result-object v4

    .line 81
    .local v4, "workspaceScreens":Lcom/android/launcher3/util/IntArray;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v0, "handledItems":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/Object;>;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v1

    .line 84
    .local v9, "filteredItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    iget-object v1, v11, Lcom/sonymobile/launcher/XperiaAddHotseatOrWorkspaceItemsTask;->mItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_8

    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 85
    .local v2, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/Object;>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    .line 86
    .local v3, "item":Lcom/android/launcher3/model/data/ItemInfo;
    iget v5, v3, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-eqz v5, :cond_2

    iget v5, v3, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 99
    :cond_2
    invoke-direct {v11, v3, v12}, Lcom/sonymobile/launcher/XperiaAddHotseatOrWorkspaceItemsTask;->makeItemInfo(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/LauncherAppState;)Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v5

    .line 100
    .local v5, "item2":Lcom/android/launcher3/model/data/ItemInfo;
    invoke-virtual {v5}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v6

    iget-object v7, v5, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v11, v13, v6, v7}, Lcom/sonymobile/launcher/XperiaAddHotseatOrWorkspaceItemsTask;->shortcutExists(Lcom/android/launcher3/model/BgDataModel;Landroid/content/Intent;Landroid/os/UserHandle;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 101
    nop

    .line 102
    invoke-virtual {v3}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 101
    invoke-static {v14, v6}, Lcom/sonymobile/launcher/XperiaSessionCommitReceiver;->removeInstallReason(Landroid/content/Context;Ljava/lang/String;)V

    .line 103
    goto :goto_0

    .line 107
    .end local v5    # "item2":Lcom/android/launcher3/model/data/ItemInfo;
    :cond_3
    iget v5, v3, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-nez v5, :cond_4

    .line 108
    instance-of v5, v3, Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v5, :cond_4

    .line 109
    move-object v5, v3

    check-cast v5, Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {v5, v14}, Lcom/android/launcher3/model/data/AppInfo;->makeWorkspaceItem(Landroid/content/Context;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v5

    move-object v3, v5

    .line 113
    :cond_4
    invoke-virtual {v3}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 114
    nop

    .line 115
    invoke-virtual {v3}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 114
    invoke-static {v14, v5}, Lcom/sonymobile/launcher/XperiaSessionCommitReceiver;->getInstallReason(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .local v5, "installReason":Ljava/lang/Integer;
    goto :goto_1

    .line 117
    .end local v5    # "installReason":Ljava/lang/Integer;
    :cond_5
    const/4 v5, 0x0

    .line 121
    .restart local v5    # "installReason":Ljava/lang/Integer;
    :goto_1
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_6

    .line 123
    goto :goto_0

    .line 125
    :cond_6
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    if-eqz v3, :cond_7

    .line 129
    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    .end local v2    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/Object;>;"
    .end local v3    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v5    # "installReason":Ljava/lang/Integer;
    :cond_7
    goto :goto_0

    .line 158
    .end local v0    # "handledItems":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/Object;>;>;"
    .end local v4    # "workspaceScreens":Lcom/android/launcher3/util/IntArray;
    .end local v9    # "filteredItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    :catchall_0
    move-exception v0

    move-object v1, v10

    goto/16 :goto_5

    .line 134
    .restart local v0    # "handledItems":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/Object;>;>;"
    .restart local v4    # "workspaceScreens":Lcom/android/launcher3/util/IntArray;
    .restart local v9    # "filteredItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    :cond_8
    :try_start_2
    iget-object v1, v11, Lcom/sonymobile/launcher/XperiaAddHotseatOrWorkspaceItemsTask;->mItemList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 136
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    move-object v8, v1

    .line 137
    .local v8, "item":Lcom/android/launcher3/model/data/ItemInfo;
    nop

    .line 138
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v5, v10

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/sonymobile/launcher/XperiaAddHotseatOrWorkspaceItemsTask;->findCustSpaceForItem(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/model/data/ItemInfo;)Ljava/util/List;

    move-result-object v1

    .line 139
    .local v1, "custItemList":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/launcher/data/Item;>;"
    if-nez v1, :cond_9

    .line 140
    goto :goto_2

    .line 142
    :cond_9
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/launcher/data/Item;

    .line 143
    .local v3, "custItem":Lcom/sonymobile/launcher/data/Item;
    if-eqz v3, :cond_c

    .line 144
    instance-of v5, v3, Lcom/sonymobile/launcher/data/FolderItem;

    if-eqz v5, :cond_a

    .line 145
    move-object/from16 v17, v3

    check-cast v17, Lcom/sonymobile/launcher/data/FolderItem;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move-object v7, v15

    move-object/from16 v18, v8

    .end local v8    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    .local v18, "item":Lcom/android/launcher3/model/data/ItemInfo;
    move-object/from16 v19, v9

    .end local v9    # "filteredItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    .local v19, "filteredItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    move-object/from16 v9, v17

    move-object/from16 v17, v1

    move-object v1, v10

    .end local v10    # "addedWorkspaceScreensFinal":Lcom/android/launcher3/util/IntArray;
    .local v1, "addedWorkspaceScreensFinal":Lcom/android/launcher3/util/IntArray;
    .local v17, "custItemList":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/launcher/data/Item;>;"
    move-object/from16 v10, p1

    :try_start_3
    invoke-direct/range {v5 .. v10}, Lcom/sonymobile/launcher/XperiaAddHotseatOrWorkspaceItemsTask;->addItemInsideFolder(Lcom/android/launcher3/model/BgDataModel;Ljava/util/ArrayList;Lcom/android/launcher3/model/data/ItemInfo;Lcom/sonymobile/launcher/data/FolderItem;Lcom/android/launcher3/LauncherAppState;)V

    move-object/from16 v5, v18

    goto :goto_4

    .line 148
    .end local v17    # "custItemList":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/launcher/data/Item;>;"
    .end local v18    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v19    # "filteredItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    .local v1, "custItemList":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/launcher/data/Item;>;"
    .restart local v8    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    .restart local v9    # "filteredItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    .restart local v10    # "addedWorkspaceScreensFinal":Lcom/android/launcher3/util/IntArray;
    :cond_a
    move-object/from16 v17, v1

    move-object/from16 v18, v8

    move-object/from16 v19, v9

    move-object v1, v10

    .end local v8    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v9    # "filteredItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    .end local v10    # "addedWorkspaceScreensFinal":Lcom/android/launcher3/util/IntArray;
    .local v1, "addedWorkspaceScreensFinal":Lcom/android/launcher3/util/IntArray;
    .restart local v17    # "custItemList":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/launcher/data/Item;>;"
    .restart local v18    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    .restart local v19    # "filteredItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    invoke-virtual {v3}, Lcom/sonymobile/launcher/data/Item;->getContainerId()J

    move-result-wide v5

    const-wide/16 v7, -0x64

    cmp-long v5, v5, v7

    if-nez v5, :cond_b

    .line 150
    move-object/from16 v5, v18

    .end local v18    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    .local v5, "item":Lcom/android/launcher3/model/data/ItemInfo;
    invoke-direct {v11, v15, v5, v3, v12}, Lcom/sonymobile/launcher/XperiaAddHotseatOrWorkspaceItemsTask;->addItemOnWorkspace(Ljava/util/ArrayList;Lcom/android/launcher3/model/data/ItemInfo;Lcom/sonymobile/launcher/data/Item;Lcom/android/launcher3/LauncherAppState;)V

    goto :goto_4

    .line 152
    .end local v5    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    .restart local v18    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    :cond_b
    move-object/from16 v5, v18

    .end local v18    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    .restart local v5    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    invoke-direct {v11, v15, v5, v3, v12}, Lcom/sonymobile/launcher/XperiaAddHotseatOrWorkspaceItemsTask;->addItemOnStage(Ljava/util/ArrayList;Lcom/android/launcher3/model/data/ItemInfo;Lcom/sonymobile/launcher/data/Item;Lcom/android/launcher3/LauncherAppState;)V

    goto :goto_4

    .line 143
    .end local v5    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v17    # "custItemList":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/launcher/data/Item;>;"
    .end local v19    # "filteredItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    .local v1, "custItemList":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/launcher/data/Item;>;"
    .restart local v8    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    .restart local v9    # "filteredItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    .restart local v10    # "addedWorkspaceScreensFinal":Lcom/android/launcher3/util/IntArray;
    :cond_c
    move-object/from16 v17, v1

    move-object v5, v8

    move-object/from16 v19, v9

    move-object v1, v10

    .line 156
    .end local v3    # "custItem":Lcom/sonymobile/launcher/data/Item;
    .end local v8    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v9    # "filteredItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    .end local v10    # "addedWorkspaceScreensFinal":Lcom/android/launcher3/util/IntArray;
    .local v1, "addedWorkspaceScreensFinal":Lcom/android/launcher3/util/IntArray;
    .restart local v5    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    .restart local v17    # "custItemList":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/launcher/data/Item;>;"
    .restart local v19    # "filteredItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    :goto_4
    move-object v10, v1

    move-object v8, v5

    move-object/from16 v1, v17

    move-object/from16 v9, v19

    goto :goto_3

    .line 142
    .end local v5    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v17    # "custItemList":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/launcher/data/Item;>;"
    .end local v19    # "filteredItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    .local v1, "custItemList":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/launcher/data/Item;>;"
    .restart local v8    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    .restart local v9    # "filteredItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    .restart local v10    # "addedWorkspaceScreensFinal":Lcom/android/launcher3/util/IntArray;
    :cond_d
    move-object/from16 v17, v1

    move-object v5, v8

    move-object/from16 v19, v9

    move-object v1, v10

    .line 157
    .end local v8    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v9    # "filteredItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    .end local v10    # "addedWorkspaceScreensFinal":Lcom/android/launcher3/util/IntArray;
    .local v1, "addedWorkspaceScreensFinal":Lcom/android/launcher3/util/IntArray;
    .restart local v19    # "filteredItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    goto :goto_2

    .line 136
    .end local v1    # "addedWorkspaceScreensFinal":Lcom/android/launcher3/util/IntArray;
    .end local v19    # "filteredItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    .restart local v9    # "filteredItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    .restart local v10    # "addedWorkspaceScreensFinal":Lcom/android/launcher3/util/IntArray;
    :cond_e
    move-object/from16 v19, v9

    move-object v1, v10

    .line 158
    .end local v0    # "handledItems":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/Object;>;>;"
    .end local v4    # "workspaceScreens":Lcom/android/launcher3/util/IntArray;
    .end local v9    # "filteredItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    .end local v10    # "addedWorkspaceScreensFinal":Lcom/android/launcher3/util/IntArray;
    .restart local v1    # "addedWorkspaceScreensFinal":Lcom/android/launcher3/util/IntArray;
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 160
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 161
    new-instance v0, Lcom/sonymobile/launcher/XperiaAddHotseatOrWorkspaceItemsTask$1;

    invoke-direct {v0, v11, v15, v1}, Lcom/sonymobile/launcher/XperiaAddHotseatOrWorkspaceItemsTask$1;-><init>(Lcom/sonymobile/launcher/XperiaAddHotseatOrWorkspaceItemsTask;Ljava/util/ArrayList;Lcom/android/launcher3/util/IntArray;)V

    invoke-virtual {v11, v0}, Lcom/sonymobile/launcher/XperiaAddHotseatOrWorkspaceItemsTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    .line 183
    :cond_f
    invoke-super/range {p0 .. p3}, Lcom/android/launcher3/model/AddWorkspaceItemsTask;->execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;)V

    .line 184
    return-void

    .line 158
    .end local v1    # "addedWorkspaceScreensFinal":Lcom/android/launcher3/util/IntArray;
    .restart local v10    # "addedWorkspaceScreensFinal":Lcom/android/launcher3/util/IntArray;
    :catchall_1
    move-exception v0

    move-object v1, v10

    .end local v10    # "addedWorkspaceScreensFinal":Lcom/android/launcher3/util/IntArray;
    .restart local v1    # "addedWorkspaceScreensFinal":Lcom/android/launcher3/util/IntArray;
    :goto_5
    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_5
.end method

.method protected findModelFolder(Lcom/android/launcher3/model/BgDataModel;Ljava/lang/String;)Lcom/android/launcher3/model/data/FolderInfo;
    .locals 4
    .param p1, "dataModel"    # Lcom/android/launcher3/model/BgDataModel;
    .param p2, "custFolderName"    # Ljava/lang/String;

    .line 348
    monitor-enter p1

    .line 349
    :try_start_0
    iget-object v0, p1, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    .line 350
    .local v1, "item":Lcom/android/launcher3/model/data/ItemInfo;
    instance-of v2, v1, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v2, :cond_0

    .line 351
    move-object v2, v1

    check-cast v2, Lcom/android/launcher3/model/data/FolderInfo;

    .line 352
    .local v2, "info":Lcom/android/launcher3/model/data/FolderInfo;
    iget-object v3, v2, Lcom/android/launcher3/model/data/FolderInfo;->title:Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    .line 353
    iget-object v3, v2, Lcom/android/launcher3/model/data/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 354
    monitor-exit p1

    return-object v2

    .line 358
    .end local v1    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v2    # "info":Lcom/android/launcher3/model/data/FolderInfo;
    :cond_0
    goto :goto_0

    .line 359
    :cond_1
    monitor-exit p1

    .line 360
    const/4 v0, 0x0

    return-object v0

    .line 359
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected findStageSpaceForItem(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;I)I
    .locals 7
    .param p1, "app"    # Lcom/android/launcher3/LauncherAppState;
    .param p2, "dataModel"    # Lcom/android/launcher3/model/BgDataModel;
    .param p3, "custLocation"    # I

    .line 369
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 372
    .local v0, "stageItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    monitor-enter p2

    .line 373
    :try_start_0
    iget-object v1, p2, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v1}, Lcom/android/launcher3/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    .line 374
    .local v2, "info":Lcom/android/launcher3/model/data/ItemInfo;
    iget v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v4, -0x65

    if-ne v3, v4, :cond_0

    .line 375
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    .end local v2    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    :cond_0
    goto :goto_0

    .line 378
    :cond_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v1

    .line 382
    .local v1, "profile":Lcom/android/launcher3/InvariantDeviceProfile;
    iget v2, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numShownHotseatIcons:I

    new-array v2, v2, [Z

    .line 383
    .local v2, "stageOccupancy":[Z
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    .line 384
    .local v4, "info":Lcom/android/launcher3/model/data/ItemInfo;
    iget v5, v4, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    .line 385
    .local v5, "screenId":I
    if-ltz v5, :cond_2

    iget v6, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numShownHotseatIcons:I

    if-ge v5, v6, :cond_2

    .line 386
    const/4 v6, 0x1

    aput-boolean v6, v2, v5

    .line 388
    .end local v4    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v5    # "screenId":I
    :cond_2
    goto :goto_1

    .line 390
    :cond_3
    if-ltz p3, :cond_4

    iget v3, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numShownHotseatIcons:I

    if-ge p3, v3, :cond_4

    aget-boolean v3, v2, p3

    if-nez v3, :cond_4

    .line 393
    return p3

    .line 397
    :cond_4
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    iget v4, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numShownHotseatIcons:I

    if-ge v3, v4, :cond_6

    .line 398
    aget-boolean v4, v2, v3

    if-nez v4, :cond_5

    .line 400
    return v3

    .line 397
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 405
    .end local v3    # "i":I
    :cond_6
    const/4 v3, -0x1

    return v3

    .line 378
    .end local v1    # "profile":Lcom/android/launcher3/InvariantDeviceProfile;
    .end local v2    # "stageOccupancy":[Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
