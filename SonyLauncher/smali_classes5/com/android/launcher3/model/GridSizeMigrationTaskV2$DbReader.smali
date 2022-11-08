.class public Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;
.super Ljava/lang/Object;
.source "GridSizeMigrationTaskV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/model/GridSizeMigrationTaskV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DbReader"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private final mHotseatEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mLastScreenId:I

.field private final mTableName:Ljava/lang/String;

.field private final mValidPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mWorkspaceEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mWorkspaceEntriesByScreenId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmLastScreenId(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->mLastScreenId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTableName(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->mTableName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWorkspaceEntriesByScreenId(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->mWorkspaceEntriesByScreenId:Ljava/util/Map;

    return-object p0
.end method

.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/Context;Ljava/util/Set;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tableName"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 527
    .local p4, "validPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 519
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->mLastScreenId:I

    .line 521
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->mHotseatEntries:Ljava/util/ArrayList;

    .line 522
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->mWorkspaceEntries:Ljava/util/ArrayList;

    .line 523
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->mWorkspaceEntriesByScreenId:Ljava/util/Map;

    .line 528
    iput-object p1, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 529
    iput-object p2, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->mTableName:Ljava/lang/String;

    .line 530
    iput-object p3, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->mContext:Landroid/content/Context;

    .line 531
    iput-object p4, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->mValidPackages:Ljava/util/Set;

    .line 532
    return-void
.end method

.method private getFolderItemsCount(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;)I
    .locals 8
    .param p1, "entry"    # Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;

    .line 696
    const-string v0, "_id"

    const-string v1, "intent"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "container = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->queryWorkspace([Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 700
    .local v0, "c":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 701
    .local v1, "total":I
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 703
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 704
    .local v4, "id":I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 705
    .local v5, "intent":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->verifyIntent(Ljava/lang/String;)V

    .line 706
    add-int/lit8 v1, v1, 0x1

    .line 707
    invoke-static {p1}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->-$$Nest$fgetmFolderItems(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 708
    invoke-static {p1}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->-$$Nest$fgetmFolderItems(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;)Ljava/util/Map;

    move-result-object v6

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    :cond_0
    invoke-static {p1}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->-$$Nest$fgetmFolderItems(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 713
    nop

    .end local v4    # "id":I
    .end local v5    # "intent":Ljava/lang/String;
    goto :goto_0

    .line 711
    :catch_0
    move-exception v4

    .line 712
    .local v4, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v6, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->mTableName:Ljava/lang/String;

    new-array v2, v2, [I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    aput v7, v2, v3

    invoke-static {v2}, Lcom/android/launcher3/util/IntArray;->wrap([I)Lcom/android/launcher3/util/IntArray;

    move-result-object v2

    invoke-static {v5, v6, v2}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->-$$Nest$smremoveEntryFromDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/launcher3/util/IntArray;)V

    .line 713
    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 715
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 716
    return v1
.end method

.method private loadWorkspaceEntries(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 20
    .param p1, "c"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;",
            ">;"
        }
    .end annotation

    .line 609
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 610
    .local v3, "indexId":I
    const-string v0, "itemType"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 611
    .local v4, "indexItemType":I
    const-string v0, "screen"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 612
    .local v5, "indexScreen":I
    const-string v0, "cellX"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 613
    .local v6, "indexCellX":I
    const-string v0, "cellY"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 614
    .local v7, "indexCellY":I
    const-string v0, "spanX"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 615
    .local v8, "indexSpanX":I
    const-string v0, "spanY"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 616
    .local v9, "indexSpanY":I
    const-string v0, "intent"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 617
    .local v10, "indexIntent":I
    const-string v0, "appWidgetProvider"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 619
    .local v11, "indexAppWidgetProvider":I
    const-string v0, "appWidgetId"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 622
    .local v12, "indexAppWidgetId":I
    new-instance v0, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntArray;-><init>()V

    move-object v13, v0

    .line 623
    .local v13, "entriesToRemove":Lcom/android/launcher3/util/IntArray;
    new-instance v0, Lcom/android/launcher3/widget/WidgetManagerHelper;

    iget-object v14, v1, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->mContext:Landroid/content/Context;

    invoke-direct {v0, v14}, Lcom/android/launcher3/widget/WidgetManagerHelper;-><init>(Landroid/content/Context;)V

    move-object v14, v0

    .line 624
    .local v14, "widgetManagerHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 625
    new-instance v0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;

    invoke-direct {v0}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;-><init>()V

    move-object v15, v0

    .line 626
    .local v15, "entry":Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v15, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->id:I

    .line 627
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v15, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->itemType:I

    .line 628
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v15, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->screenId:I

    .line 629
    iget v0, v1, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->mLastScreenId:I

    move/from16 v16, v3

    .end local v3    # "indexId":I
    .local v16, "indexId":I
    iget v3, v15, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->screenId:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->mLastScreenId:I

    .line 630
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v15, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->cellX:I

    .line 631
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v15, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->cellY:I

    .line 632
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v15, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->spanX:I

    .line 633
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v15, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->spanY:I

    .line 637
    :try_start_0
    iget v0, v15, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->itemType:I

    packed-switch v0, :pswitch_data_0

    .line 675
    :pswitch_0
    new-instance v0, Ljava/lang/Exception;

    goto/16 :goto_5

    .line 646
    :pswitch_1
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->-$$Nest$fputmProvider(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;Ljava/lang/String;)V

    .line 647
    invoke-static {v15}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->-$$Nest$fgetmProvider(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 648
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->verifyPackage(Ljava/lang/String;)V

    .line 650
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 651
    .local v3, "widgetId":I
    nop

    .line 652
    invoke-virtual {v14, v3}, Lcom/android/launcher3/widget/WidgetManagerHelper;->getLauncherAppWidgetInfo(I)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v17

    .line 653
    .local v17, "pInfo":Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    const/16 v18, 0x0

    .line 654
    .local v18, "spans":Landroid/graphics/Point;
    if-eqz v17, :cond_0

    .line 655
    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getMinSpans()Landroid/graphics/Point;

    move-result-object v19

    move-object/from16 v18, v19

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    goto :goto_1

    .line 654
    :cond_0
    move-object/from16 v19, v0

    move-object/from16 v0, v18

    .line 657
    .end local v18    # "spans":Landroid/graphics/Point;
    .local v0, "spans":Landroid/graphics/Point;
    .local v19, "cn":Landroid/content/ComponentName;
    :goto_1
    if-eqz v0, :cond_3

    .line 658
    move/from16 v18, v3

    .end local v3    # "widgetId":I
    .local v18, "widgetId":I
    iget v3, v0, Landroid/graphics/Point;->x:I

    if-lez v3, :cond_1

    iget v3, v0, Landroid/graphics/Point;->x:I

    goto :goto_2

    :cond_1
    iget v3, v15, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->spanX:I

    :goto_2
    iput v3, v15, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->minSpanX:I

    .line 659
    iget v3, v0, Landroid/graphics/Point;->y:I

    if-lez v3, :cond_2

    iget v3, v0, Landroid/graphics/Point;->y:I

    goto :goto_3

    :cond_2
    iget v3, v15, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->spanY:I

    :goto_3
    iput v3, v15, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->minSpanY:I

    goto :goto_4

    .line 662
    .end local v18    # "widgetId":I
    .restart local v3    # "widgetId":I
    :cond_3
    move/from16 v18, v3

    .end local v3    # "widgetId":I
    .restart local v18    # "widgetId":I
    const/4 v3, 0x2

    iput v3, v15, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->minSpanY:I

    iput v3, v15, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->minSpanX:I

    .line 665
    goto :goto_4

    .line 668
    .end local v0    # "spans":Landroid/graphics/Point;
    .end local v17    # "pInfo":Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    .end local v18    # "widgetId":I
    .end local v19    # "cn":Landroid/content/ComponentName;
    :pswitch_2
    invoke-direct {v1, v15}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->getFolderItemsCount(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;)I

    move-result v0

    .line 669
    .local v0, "total":I
    if-eqz v0, :cond_4

    goto :goto_4

    .line 670
    :cond_4
    new-instance v3, Ljava/lang/Exception;

    move/from16 v17, v0

    .end local v0    # "total":I
    .local v17, "total":I
    const-string v0, "Folder is empty"

    invoke-direct {v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v4    # "indexItemType":I
    .end local v5    # "indexScreen":I
    .end local v6    # "indexCellX":I
    .end local v7    # "indexCellY":I
    .end local v8    # "indexSpanX":I
    .end local v9    # "indexSpanY":I
    .end local v10    # "indexIntent":I
    .end local v11    # "indexAppWidgetProvider":I
    .end local v12    # "indexAppWidgetId":I
    .end local v13    # "entriesToRemove":Lcom/android/launcher3/util/IntArray;
    .end local v14    # "widgetManagerHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .end local v15    # "entry":Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;
    .end local v16    # "indexId":I
    .end local p0    # "this":Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;
    .end local p1    # "c":Landroid/database/Cursor;
    throw v3

    .line 641
    .end local v17    # "total":I
    .restart local v4    # "indexItemType":I
    .restart local v5    # "indexScreen":I
    .restart local v6    # "indexCellX":I
    .restart local v7    # "indexCellY":I
    .restart local v8    # "indexSpanX":I
    .restart local v9    # "indexSpanY":I
    .restart local v10    # "indexIntent":I
    .restart local v11    # "indexAppWidgetProvider":I
    .restart local v12    # "indexAppWidgetId":I
    .restart local v13    # "entriesToRemove":Lcom/android/launcher3/util/IntArray;
    .restart local v14    # "widgetManagerHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .restart local v15    # "entry":Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;
    .restart local v16    # "indexId":I
    .restart local p0    # "this":Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;
    .restart local p1    # "c":Landroid/database/Cursor;
    :pswitch_3
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->-$$Nest$fputmIntent(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;Ljava/lang/String;)V

    .line 642
    invoke-static {v15}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->-$$Nest$fgetmIntent(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->verifyIntent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 643
    nop

    .line 683
    :goto_4
    nop

    .line 684
    iget-object v0, v1, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->mWorkspaceEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 685
    iget-object v0, v1, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->mWorkspaceEntriesByScreenId:Ljava/util/Map;

    iget v3, v15, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->screenId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 686
    iget-object v0, v1, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->mWorkspaceEntriesByScreenId:Ljava/util/Map;

    iget v3, v15, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->screenId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    :cond_5
    iget-object v0, v1, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->mWorkspaceEntriesByScreenId:Ljava/util/Map;

    iget v2, v15, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->screenId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 689
    .end local v15    # "entry":Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;
    move-object/from16 v2, p1

    move/from16 v3, v16

    goto/16 :goto_0

    .line 675
    .restart local v15    # "entry":Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;
    :goto_5
    :try_start_1
    const-string v2, "Invalid item type"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v4    # "indexItemType":I
    .end local v5    # "indexScreen":I
    .end local v6    # "indexCellX":I
    .end local v7    # "indexCellY":I
    .end local v8    # "indexSpanX":I
    .end local v9    # "indexSpanY":I
    .end local v10    # "indexIntent":I
    .end local v11    # "indexAppWidgetProvider":I
    .end local v12    # "indexAppWidgetId":I
    .end local v13    # "entriesToRemove":Lcom/android/launcher3/util/IntArray;
    .end local v14    # "widgetManagerHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .end local v15    # "entry":Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;
    .end local v16    # "indexId":I
    .end local p0    # "this":Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;
    .end local p1    # "c":Landroid/database/Cursor;
    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 677
    .restart local v4    # "indexItemType":I
    .restart local v5    # "indexScreen":I
    .restart local v6    # "indexCellX":I
    .restart local v7    # "indexCellY":I
    .restart local v8    # "indexSpanX":I
    .restart local v9    # "indexSpanY":I
    .restart local v10    # "indexIntent":I
    .restart local v11    # "indexAppWidgetProvider":I
    .restart local v12    # "indexAppWidgetId":I
    .restart local v13    # "entriesToRemove":Lcom/android/launcher3/util/IntArray;
    .restart local v14    # "widgetManagerHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .restart local v15    # "entry":Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;
    .restart local v16    # "indexId":I
    .restart local p0    # "this":Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;
    .restart local p1    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v0

    .line 681
    .local v0, "e":Ljava/lang/Exception;
    iget v2, v15, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->id:I

    invoke-virtual {v13, v2}, Lcom/android/launcher3/util/IntArray;->add(I)V

    .line 682
    move-object/from16 v2, p1

    move/from16 v3, v16

    goto/16 :goto_0

    .line 690
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v15    # "entry":Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;
    .end local v16    # "indexId":I
    .local v3, "indexId":I
    :cond_6
    iget-object v0, v1, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, v1, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->mTableName:Ljava/lang/String;

    invoke-static {v0, v2, v13}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->-$$Nest$smremoveEntryFromDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/launcher3/util/IntArray;)V

    .line 691
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 692
    iget-object v0, v1, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->mWorkspaceEntries:Ljava/util/ArrayList;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private queryWorkspace([Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "columns"    # [Ljava/lang/String;
    .param p2, "where"    # Ljava/lang/String;

    .line 720
    iget-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->mTableName:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private verifyIntent(Ljava/lang/String;)V
    .locals 2
    .param p1, "intentStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 726
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 727
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 728
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->verifyPackage(Ljava/lang/String;)V

    goto :goto_0

    .line 729
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 731
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->verifyPackage(Ljava/lang/String;)V

    .line 733
    :cond_1
    :goto_0
    return-void
.end method

.method private verifyPackage(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 738
    iget-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->mValidPackages:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 742
    return-void

    .line 740
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Package not available"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected loadAllWorkspaceEntries()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;",
            ">;"
        }
    .end annotation

    .line 591
    const-string v0, "_id"

    const-string v1, "itemType"

    const-string v2, "screen"

    const-string v3, "cellX"

    const-string v4, "cellY"

    const-string v5, "spanX"

    const-string v6, "spanY"

    const-string v7, "intent"

    const-string v8, "appWidgetProvider"

    const-string v9, "appWidgetId"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "container = -100"

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->queryWorkspace([Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 605
    .local v0, "c":Landroid/database/Cursor;
    invoke-direct {p0, v0}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->loadWorkspaceEntries(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method protected loadHotseatEntries()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;",
            ">;"
        }
    .end annotation

    .line 535
    const-string v0, "_id"

    const-string v1, "itemType"

    const-string v2, "intent"

    const-string v3, "screen"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "container = -101"

    invoke-direct {p0, v4, v5}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->queryWorkspace([Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 544
    .local v4, "c":Landroid/database/Cursor;
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 545
    .local v0, "indexId":I
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 546
    .local v1, "indexItemType":I
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 547
    .local v2, "indexIntent":I
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 549
    .local v3, "indexScreen":I
    new-instance v5, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v5}, Lcom/android/launcher3/util/IntArray;-><init>()V

    .line 550
    .local v5, "entriesToRemove":Lcom/android/launcher3/util/IntArray;
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 551
    new-instance v6, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;

    invoke-direct {v6}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;-><init>()V

    .line 552
    .local v6, "entry":Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v6, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->id:I

    .line 553
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v6, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->itemType:I

    .line 554
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v6, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->screenId:I

    .line 558
    :try_start_0
    iget v7, v6, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->itemType:I

    packed-switch v7, :pswitch_data_0

    .line 574
    :pswitch_0
    new-instance v7, Ljava/lang/Exception;

    goto :goto_2

    .line 567
    :pswitch_1
    invoke-direct {p0, v6}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->getFolderItemsCount(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;)I

    move-result v7

    .line 568
    .local v7, "total":I
    if-eqz v7, :cond_0

    goto :goto_1

    .line 569
    :cond_0
    new-instance v8, Ljava/lang/Exception;

    const-string v9, "Folder is empty"

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v0    # "indexId":I
    .end local v1    # "indexItemType":I
    .end local v2    # "indexIntent":I
    .end local v3    # "indexScreen":I
    .end local v4    # "c":Landroid/database/Cursor;
    .end local v5    # "entriesToRemove":Lcom/android/launcher3/util/IntArray;
    .end local v6    # "entry":Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;
    .end local p0    # "this":Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;
    throw v8

    .line 562
    .end local v7    # "total":I
    .restart local v0    # "indexId":I
    .restart local v1    # "indexItemType":I
    .restart local v2    # "indexIntent":I
    .restart local v3    # "indexScreen":I
    .restart local v4    # "c":Landroid/database/Cursor;
    .restart local v5    # "entriesToRemove":Lcom/android/launcher3/util/IntArray;
    .restart local v6    # "entry":Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;
    .restart local p0    # "this":Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;
    :pswitch_2
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->-$$Nest$fputmIntent(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;Ljava/lang/String;)V

    .line 563
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->verifyIntent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    nop

    .line 582
    :goto_1
    nop

    .line 583
    iget-object v7, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->mHotseatEntries:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    .end local v6    # "entry":Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;
    goto :goto_0

    .line 574
    .restart local v6    # "entry":Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;
    :goto_2
    :try_start_1
    const-string v8, "Invalid item type"

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v0    # "indexId":I
    .end local v1    # "indexItemType":I
    .end local v2    # "indexIntent":I
    .end local v3    # "indexScreen":I
    .end local v4    # "c":Landroid/database/Cursor;
    .end local v5    # "entriesToRemove":Lcom/android/launcher3/util/IntArray;
    .end local v6    # "entry":Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;
    .end local p0    # "this":Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;
    throw v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 576
    .restart local v0    # "indexId":I
    .restart local v1    # "indexItemType":I
    .restart local v2    # "indexIntent":I
    .restart local v3    # "indexScreen":I
    .restart local v4    # "c":Landroid/database/Cursor;
    .restart local v5    # "entriesToRemove":Lcom/android/launcher3/util/IntArray;
    .restart local v6    # "entry":Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;
    .restart local p0    # "this":Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;
    :catch_0
    move-exception v7

    .line 580
    .local v7, "e":Ljava/lang/Exception;
    iget v8, v6, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->id:I

    invoke-virtual {v5, v8}, Lcom/android/launcher3/util/IntArray;->add(I)V

    .line 581
    goto :goto_0

    .line 585
    .end local v6    # "entry":Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v6, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v7, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->mTableName:Ljava/lang/String;

    invoke-static {v6, v7, v5}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->-$$Nest$smremoveEntryFromDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/launcher3/util/IntArray;)V

    .line 586
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 587
    iget-object v6, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->mHotseatEntries:Ljava/util/ArrayList;

    return-object v6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
