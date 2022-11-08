.class public Lcom/android/launcher3/model/LoaderCursor;
.super Landroid/database/CursorWrapper;
.source "LoaderCursor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LoaderCursor"


# instance fields
.field private final allUsers:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final cellXIndex:I

.field private final cellYIndex:I

.field public container:I

.field private final containerIndex:I

.field private final iconIndex:I

.field private final iconPackageIndex:I

.field private final iconResourceIndex:I

.field public id:I

.field private final idIndex:I

.field private final intentIndex:I

.field public itemType:I

.field private final itemTypeIndex:I

.field private final itemsToRemove:Lcom/android/launcher3/util/IntArray;

.field private mActivityInfo:Landroid/content/pm/LauncherActivityInfo;

.field private final mContentUri:Landroid/net/Uri;

.field private final mContext:Landroid/content/Context;

.field private final mIDP:Lcom/android/launcher3/InvariantDeviceProfile;

.field private final mIconCache:Lcom/android/launcher3/icons/IconCache;

.field private final mPM:Landroid/content/pm/PackageManager;

.field private final occupied:Lcom/android/launcher3/util/IntSparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/IntSparseArrayMap<",
            "Lcom/android/launcher3/util/GridOccupancy;",
            ">;"
        }
    .end annotation
.end field

.field private final profileIdIndex:I

.field public restoreFlag:I

.field private final restoredIndex:I

.field private final restoredRows:Lcom/android/launcher3/util/IntArray;

.field private final screenIndex:I

.field public serialNumber:J

.field public final titleIndex:I

.field public user:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Landroid/net/Uri;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/UserManagerState;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "app"    # Lcom/android/launcher3/LauncherAppState;
    .param p4, "userManagerState"    # Lcom/android/launcher3/model/UserManagerState;

    .line 113
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 81
    new-instance v0, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->itemsToRemove:Lcom/android/launcher3/util/IntArray;

    .line 82
    new-instance v0, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->restoredRows:Lcom/android/launcher3/util/IntArray;

    .line 83
    new-instance v0, Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntSparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->occupied:Lcom/android/launcher3/util/IntSparseArrayMap;

    .line 115
    iget-object v0, p4, Lcom/android/launcher3/model/UserManagerState;->allUsers:Landroid/util/LongSparseArray;

    iput-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->allUsers:Landroid/util/LongSparseArray;

    .line 116
    iput-object p2, p0, Lcom/android/launcher3/model/LoaderCursor;->mContentUri:Landroid/net/Uri;

    .line 117
    invoke-virtual {p3}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mContext:Landroid/content/Context;

    .line 118
    invoke-virtual {p3}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/model/LoaderCursor;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    .line 119
    invoke-virtual {p3}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/model/LoaderCursor;->mIDP:Lcom/android/launcher3/InvariantDeviceProfile;

    .line 120
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mPM:Landroid/content/pm/PackageManager;

    .line 123
    const-string v0, "icon"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/LoaderCursor;->iconIndex:I

    .line 124
    const-string v0, "iconPackage"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/LoaderCursor;->iconPackageIndex:I

    .line 125
    const-string v0, "iconResource"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/LoaderCursor;->iconResourceIndex:I

    .line 126
    const-string v0, "title"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/LoaderCursor;->titleIndex:I

    .line 128
    const-string v0, "_id"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/LoaderCursor;->idIndex:I

    .line 129
    const-string v0, "container"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/LoaderCursor;->containerIndex:I

    .line 130
    const-string v0, "itemType"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/LoaderCursor;->itemTypeIndex:I

    .line 131
    const-string v0, "screen"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/LoaderCursor;->screenIndex:I

    .line 132
    const-string v0, "cellX"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/LoaderCursor;->cellXIndex:I

    .line 133
    const-string v0, "cellY"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/LoaderCursor;->cellYIndex:I

    .line 134
    const-string v0, "profileId"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/LoaderCursor;->profileIdIndex:I

    .line 135
    const-string v0, "restored"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/LoaderCursor;->restoredIndex:I

    .line 136
    const-string v0, "intent"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/LoaderCursor;->intentIndex:I

    .line 137
    return-void
.end method

.method private getTitle()Ljava/lang/String;
    .locals 1

    .line 211
    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->titleIndex:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public applyCommonProperties(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 474
    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->id:I

    iput v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    .line 475
    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->container:I

    iput v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    .line 476
    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->screenIndex:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    .line 477
    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->cellXIndex:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    .line 478
    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->cellYIndex:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    .line 479
    return-void
.end method

.method public checkAndAddItem(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/BgDataModel;)V
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "dataModel"    # Lcom/android/launcher3/model/BgDataModel;

    .line 482
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/model/LoaderCursor;->checkAndAddItem(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/LoaderMemoryLogger;)V

    .line 483
    return-void
.end method

.method public checkAndAddItem(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/LoaderMemoryLogger;)V
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "dataModel"    # Lcom/android/launcher3/model/BgDataModel;
    .param p3, "logger"    # Lcom/android/launcher3/model/LoaderMemoryLogger;

    .line 491
    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 494
    invoke-static {p1}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    .line 496
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/LoaderCursor;->checkItemPlacement(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 497
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1, p3}, Lcom/android/launcher3/model/BgDataModel;->addItem(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;ZLcom/android/launcher3/model/LoaderMemoryLogger;)V

    goto :goto_0

    .line 499
    :cond_1
    const-string v0, "Item position overlap"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    .line 501
    :goto_0
    return-void
.end method

.method protected checkItemPlacement(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 22
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 507
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    .line 508
    .local v2, "containerIndex":I
    iget v3, v1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const-string v4, ") already occupied"

    const-string v5, ")"

    const-string v6, ":"

    const-string v7, "Error loading shortcut "

    const/16 v8, -0x65

    const-string v9, "LoaderCursor"

    const-string v10, ","

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-ne v3, v8, :cond_3

    .line 509
    iget-object v3, v0, Lcom/android/launcher3/model/LoaderCursor;->occupied:Lcom/android/launcher3/util/IntSparseArrayMap;

    .line 510
    invoke-virtual {v3, v8}, Lcom/android/launcher3/util/IntSparseArrayMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/util/GridOccupancy;

    .line 512
    .local v3, "hotseatOccupancy":Lcom/android/launcher3/util/GridOccupancy;
    iget v13, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget-object v14, v0, Lcom/android/launcher3/model/LoaderCursor;->mIDP:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v14, v14, Lcom/android/launcher3/InvariantDeviceProfile;->numDatabaseHotseatIcons:I

    if-lt v13, v14, :cond_0

    .line 513
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " into hotseat position "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", position out of bounds: (0 to "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v0, Lcom/android/launcher3/model/LoaderCursor;->mIDP:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v6, v6, Lcom/android/launcher3/InvariantDeviceProfile;->numDatabaseHotseatIcons:I

    sub-int/2addr v6, v12

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    return v11

    .line 520
    :cond_0
    if-eqz v3, :cond_2

    .line 521
    iget-object v5, v3, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    iget v7, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    aget-object v5, v5, v7

    aget-boolean v5, v5, v11

    if-eqz v5, :cond_1

    .line 522
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error loading shortcut into hotseat "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " into position ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    return v11

    .line 527
    :cond_1
    iget-object v4, v3, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    iget v5, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    aget-object v4, v4, v5

    aput-boolean v12, v4, v11

    .line 528
    return v12

    .line 531
    :cond_2
    new-instance v4, Lcom/android/launcher3/util/GridOccupancy;

    iget-object v5, v0, Lcom/android/launcher3/model/LoaderCursor;->mIDP:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v5, v5, Lcom/android/launcher3/InvariantDeviceProfile;->numDatabaseHotseatIcons:I

    invoke-direct {v4, v5, v12}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    .line 532
    .local v4, "occupancy":Lcom/android/launcher3/util/GridOccupancy;
    iget-object v5, v4, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    iget v6, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    aget-object v5, v5, v6

    aput-boolean v12, v5, v11

    .line 533
    iget-object v5, v0, Lcom/android/launcher3/model/LoaderCursor;->occupied:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v5, v8, v4}, Lcom/android/launcher3/util/IntSparseArrayMap;->put(ILjava/lang/Object;)V

    .line 534
    return v12

    .line 536
    .end local v3    # "hotseatOccupancy":Lcom/android/launcher3/util/GridOccupancy;
    .end local v4    # "occupancy":Lcom/android/launcher3/util/GridOccupancy;
    :cond_3
    iget v3, v1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v8, -0x64

    if-eq v3, v8, :cond_4

    .line 538
    return v12

    .line 541
    :cond_4
    iget-object v3, v0, Lcom/android/launcher3/model/LoaderCursor;->mIDP:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v3, v3, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    .line 542
    .local v3, "countX":I
    iget-object v13, v0, Lcom/android/launcher3/model/LoaderCursor;->mIDP:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v13, v13, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    .line 543
    .local v13, "countY":I
    iget v14, v1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const-string v15, "-"

    const-string v11, " into cell ("

    if-ne v14, v8, :cond_5

    iget v8, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    if-ltz v8, :cond_b

    :cond_5
    iget v8, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    if-ltz v8, :cond_b

    iget v8, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v14, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    add-int/2addr v8, v14

    if-gt v8, v3, :cond_b

    iget v8, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v14, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    add-int/2addr v8, v14

    if-le v8, v13, :cond_6

    goto/16 :goto_1

    .line 553
    :cond_6
    iget-object v5, v0, Lcom/android/launcher3/model/LoaderCursor;->occupied:Lcom/android/launcher3/util/IntSparseArrayMap;

    iget v8, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v5, v8}, Lcom/android/launcher3/util/IntSparseArrayMap;->containsKey(I)Z

    move-result v5

    if-nez v5, :cond_9

    .line 554
    new-instance v5, Lcom/android/launcher3/util/GridOccupancy;

    add-int/lit8 v8, v3, 0x1

    add-int/lit8 v14, v13, 0x1

    invoke-direct {v5, v8, v14}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    .line 555
    .local v5, "screen":Lcom/android/launcher3/util/GridOccupancy;
    iget v8, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    if-nez v8, :cond_8

    .line 558
    sget-object v8, Lcom/android/launcher3/config/FeatureFlags;->EXPANDED_SMARTSPACE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v8}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v8, 0x2

    move/from16 v20, v8

    goto :goto_0

    :cond_7
    move/from16 v20, v12

    .line 559
    .local v20, "spanY":I
    :goto_0
    const/16 v17, 0x0

    const/16 v18, 0x0

    add-int/lit8 v19, v3, 0x1

    const/16 v21, 0x0

    move-object/from16 v16, v5

    invoke-virtual/range {v16 .. v21}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    .line 561
    .end local v20    # "spanY":I
    :cond_8
    iget-object v8, v0, Lcom/android/launcher3/model/LoaderCursor;->occupied:Lcom/android/launcher3/util/IntSparseArrayMap;

    iget v14, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v8, v14, v5}, Lcom/android/launcher3/util/IntSparseArrayMap;->put(ILjava/lang/Object;)V

    .line 563
    .end local v5    # "screen":Lcom/android/launcher3/util/GridOccupancy;
    :cond_9
    iget-object v5, v0, Lcom/android/launcher3/model/LoaderCursor;->occupied:Lcom/android/launcher3/util/IntSparseArrayMap;

    iget v8, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v5, v8}, Lcom/android/launcher3/util/IntSparseArrayMap;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/util/GridOccupancy;

    .line 566
    .local v5, "occupancy":Lcom/android/launcher3/util/GridOccupancy;
    iget v8, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v14, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v12, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v0, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {v5, v8, v14, v12, v0}, Lcom/android/launcher3/util/GridOccupancy;->isRegionVacant(IIII)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 567
    const/4 v0, 0x1

    invoke-virtual {v5, v1, v0}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    .line 568
    return v0

    .line 570
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    const/4 v0, 0x0

    return v0

    .line 546
    .end local v5    # "occupancy":Lcom/android/launcher3/util/GridOccupancy;
    :cond_b
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ") out of screen bounds ( "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const/4 v0, 0x0

    return v0
.end method

.method public commitDeleted()Z
    .locals 4

    .line 423
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->itemsToRemove:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderCursor;->mContentUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/launcher3/model/LoaderCursor;->itemsToRemove:Lcom/android/launcher3/util/IntArray;

    const-string v3, "_id"

    invoke-static {v3, v2}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Lcom/android/launcher3/util/IntArray;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 427
    const/4 v0, 0x1

    return v0

    .line 429
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public commitRestoredItems()V
    .locals 5

    .line 447
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->restoredRows:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 449
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 450
    .local v0, "values":Landroid/content/ContentValues;
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "restored"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 451
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderCursor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/model/LoaderCursor;->mContentUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/launcher3/model/LoaderCursor;->restoredRows:Lcom/android/launcher3/util/IntArray;

    .line 452
    const-string v4, "_id"

    invoke-static {v4, v3}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Lcom/android/launcher3/util/IntArray;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 451
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 455
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method public createIconRequestInfo(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)Lcom/android/launcher3/model/data/IconRequestInfo;
    .locals 10
    .param p1, "wai"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .param p2, "useLowResIcon"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            "Z)",
            "Lcom/android/launcher3/model/data/IconRequestInfo<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;"
        }
    .end annotation

    .line 194
    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 195
    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->iconPackageIndex:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    :cond_0
    move-object v6, v1

    .line 196
    .local v6, "packageName":Ljava/lang/String;
    :goto_0
    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    if-ne v0, v2, :cond_1

    .line 197
    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->iconResourceIndex:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_1

    :cond_1
    move-object v7, v1

    .line 200
    .local v7, "resourceName":Ljava/lang/String;
    :goto_1
    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    if-eq v0, v2, :cond_3

    const/4 v2, 0x6

    if-eq v0, v2, :cond_3

    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    if-eqz v0, :cond_2

    goto :goto_2

    .line 201
    :cond_2
    goto :goto_3

    :cond_3
    :goto_2
    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->iconIndex:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getBlob(I)[B

    move-result-object v1

    :goto_3
    move-object v8, v1

    .line 203
    .local v8, "iconBlob":[B
    new-instance v0, Lcom/android/launcher3/model/data/IconRequestInfo;

    iget-object v5, p0, Lcom/android/launcher3/model/LoaderCursor;->mActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    move-object v3, v0

    move-object v4, p1

    move v9, p2

    invoke-direct/range {v3 .. v9}, Lcom/android/launcher3/model/data/IconRequestInfo;-><init>(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/LauncherActivityInfo;Ljava/lang/String;Ljava/lang/String;[BZ)V

    return-object v0
.end method

.method public getAppInfo(Landroid/content/Intent;ZZZ)Lcom/android/launcher3/model/data/AppInfo;
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "allowMissingTarget"    # Z
    .param p3, "useLowResIcon"    # Z
    .param p4, "quietModeEnabled"    # Z

    .line 321
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    const-string v1, "LoaderCursor"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 322
    const-string v0, "Null user found in getAppInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    return-object v2

    .line 326
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 327
    .local v0, "componentName":Landroid/content/ComponentName;
    if-nez v0, :cond_1

    .line 328
    const-string v3, "Missing component found in getAppInfo"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    return-object v2

    .line 332
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 333
    .local v3, "newIntent":Landroid/content/Intent;
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 335
    iget-object v4, p0, Lcom/android/launcher3/model/LoaderCursor;->mContext:Landroid/content/Context;

    const-class v5, Landroid/content/pm/LauncherApps;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/LauncherApps;

    iget-object v5, p0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    .line 336
    invoke-virtual {v4, v3, v5}, Landroid/content/pm/LauncherApps;->resolveActivity(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object v4

    .line 337
    .local v4, "lai":Landroid/content/pm/LauncherActivityInfo;
    if-nez v4, :cond_2

    if-nez p2, :cond_2

    .line 338
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing activity found in getAppInfo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    return-object v2

    .line 343
    :cond_2
    if-eqz v4, :cond_5

    .line 344
    new-instance v1, Lcom/android/launcher3/model/data/AppInfo;

    iget-object v2, p0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-direct {v1, v4, v2, p4}, Lcom/android/launcher3/model/data/AppInfo;-><init>(Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;Z)V

    .line 349
    .local v1, "info":Lcom/android/launcher3/model/data/AppInfo;
    iget-object v2, p0, Lcom/android/launcher3/model/LoaderCursor;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    invoke-virtual {v2, v1, v4, p3}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/LauncherActivityInfo;Z)V

    .line 352
    iget-object v2, v1, Lcom/android/launcher3/model/data/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 353
    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderCursor;->getTitle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/launcher3/model/data/AppInfo;->title:Ljava/lang/CharSequence;

    .line 357
    :cond_3
    iget-object v2, v1, Lcom/android/launcher3/model/data/AppInfo;->title:Ljava/lang/CharSequence;

    if-nez v2, :cond_4

    .line 358
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/launcher3/model/data/AppInfo;->title:Ljava/lang/CharSequence;

    .line 361
    :cond_4
    iget-object v2, p0, Lcom/android/launcher3/model/LoaderCursor;->mPM:Landroid/content/pm/PackageManager;

    iget-object v5, v1, Lcom/android/launcher3/model/data/AppInfo;->title:Ljava/lang/CharSequence;

    iget-object v6, v1, Lcom/android/launcher3/model/data/AppInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Lcom/android/launcher3/model/data/AppInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 362
    return-object v1

    .line 346
    .end local v1    # "info":Lcom/android/launcher3/model/data/AppInfo;
    :cond_5
    return-object v2
.end method

.method public getAppShortcutInfo(Landroid/content/Intent;ZZ)Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "allowMissingTarget"    # Z
    .param p3, "useLowResIcon"    # Z

    .line 256
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/launcher3/model/LoaderCursor;->getAppShortcutInfo(Landroid/content/Intent;ZZZ)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v0

    return-object v0
.end method

.method public getAppShortcutInfo(Landroid/content/Intent;ZZZ)Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "allowMissingTarget"    # Z
    .param p3, "useLowResIcon"    # Z
    .param p4, "loadIcon"    # Z

    .line 261
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    const-string v1, "LoaderCursor"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 262
    const-string v0, "Null user found in getShortcutInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return-object v2

    .line 266
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 267
    .local v0, "componentName":Landroid/content/ComponentName;
    if-nez v0, :cond_1

    .line 268
    const-string v3, "Missing component found in getShortcutInfo"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    return-object v2

    .line 272
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 273
    .local v3, "newIntent":Landroid/content/Intent;
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 275
    iget-object v4, p0, Lcom/android/launcher3/model/LoaderCursor;->mContext:Landroid/content/Context;

    const-class v5, Landroid/content/pm/LauncherApps;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/LauncherApps;

    iget-object v5, p0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    .line 276
    invoke-virtual {v4, v3, v5}, Landroid/content/pm/LauncherApps;->resolveActivity(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/model/LoaderCursor;->mActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    .line 277
    if-nez v4, :cond_2

    if-nez p2, :cond_2

    .line 278
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing activity found in getShortcutInfo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    return-object v2

    .line 282
    :cond_2
    new-instance v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>()V

    .line 283
    .local v1, "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    const/4 v2, 0x0

    iput v2, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->itemType:I

    .line 284
    iget-object v2, p0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    iput-object v2, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->user:Landroid/os/UserHandle;

    .line 285
    iput-object v3, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    .line 287
    if-eqz p4, :cond_3

    .line 288
    iget-object v2, p0, Lcom/android/launcher3/model/LoaderCursor;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    iget-object v4, p0, Lcom/android/launcher3/model/LoaderCursor;->mActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v2, v1, v4, p3}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/LauncherActivityInfo;Z)V

    .line 289
    iget-object v2, p0, Lcom/android/launcher3/model/LoaderCursor;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    iget-object v4, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v5, p0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/icons/IconCache;->isDefaultIcon(Lcom/android/launcher3/icons/BitmapInfo;Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 290
    invoke-virtual {p0, v1}, Lcom/android/launcher3/model/LoaderCursor;->loadIcon(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z

    .line 294
    :cond_3
    iget-object v2, p0, Lcom/android/launcher3/model/LoaderCursor;->mActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    if-eqz v2, :cond_4

    .line 295
    invoke-static {v1, v2}, Lcom/android/launcher3/model/data/AppInfo;->updateRuntimeFlagsForActivityTarget(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/LauncherActivityInfo;)V

    .line 299
    :cond_4
    iget-object v2, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 300
    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderCursor;->getTitle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->title:Ljava/lang/CharSequence;

    .line 304
    :cond_5
    iget-object v2, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->title:Ljava/lang/CharSequence;

    if-nez v2, :cond_6

    .line 305
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->title:Ljava/lang/CharSequence;

    .line 308
    :cond_6
    iget-object v2, p0, Lcom/android/launcher3/model/LoaderCursor;->mPM:Landroid/content/pm/PackageManager;

    iget-object v4, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->title:Ljava/lang/CharSequence;

    iget-object v5, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 309
    return-object v1
.end method

.method public getLauncherActivityInfo()Landroid/content/pm/LauncherActivityInfo;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    return-object v0
.end method

.method public getRestoredAppInfo(Landroid/content/Intent;)Lcom/android/launcher3/model/data/AppInfo;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 372
    new-instance v0, Lcom/android/launcher3/model/data/AppInfo;

    invoke-direct {v0}, Lcom/android/launcher3/model/data/AppInfo;-><init>()V

    .line 373
    .local v0, "info":Lcom/android/launcher3/model/data/AppInfo;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    .line 374
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 375
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 376
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 377
    const/high16 v2, 0x10200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/model/data/AppInfo;->intent:Landroid/content/Intent;

    .line 379
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/model/data/AppInfo;->setProgressLevel(II)V

    .line 380
    iget-object v3, p0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    iput-object v3, v0, Lcom/android/launcher3/model/data/AppInfo;->user:Landroid/os/UserHandle;

    .line 382
    iget-object v3, p0, Lcom/android/launcher3/model/LoaderCursor;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    invoke-virtual {v3, v0, v1}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)V

    .line 384
    invoke-virtual {p0, v2}, Lcom/android/launcher3/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 385
    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderCursor;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 386
    .local v1, "title":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 387
    invoke-static {v1}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/launcher3/model/data/AppInfo;->title:Ljava/lang/CharSequence;

    .line 389
    .end local v1    # "title":Ljava/lang/String;
    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/launcher3/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 390
    iget-object v1, v0, Lcom/android/launcher3/model/data/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 391
    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderCursor;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/model/data/AppInfo;->title:Ljava/lang/CharSequence;

    .line 397
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderCursor;->mPM:Landroid/content/pm/PackageManager;

    iget-object v2, v0, Lcom/android/launcher3/model/data/AppInfo;->title:Ljava/lang/CharSequence;

    iget-object v3, v0, Lcom/android/launcher3/model/data/AppInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/model/data/AppInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 398
    iget v1, p0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    iput v1, v0, Lcom/android/launcher3/model/data/AppInfo;->status:I

    .line 399
    return-object v0

    .line 394
    :cond_3
    new-instance v1, Ljava/security/InvalidParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid restoreType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getRestoredItemInfo(Landroid/content/Intent;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 219
    new-instance v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>()V

    .line 220
    .local v0, "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    iput-object v1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->user:Landroid/os/UserHandle;

    .line 221
    iput-object p1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    .line 224
    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->loadIcon(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderCursor;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)V

    .line 228
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 229
    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderCursor;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, "title":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 231
    invoke-static {v1}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->title:Ljava/lang/CharSequence;

    .line 233
    .end local v1    # "title":Ljava/lang/String;
    :cond_1
    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/launcher3/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 234
    iget-object v1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 235
    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderCursor;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->title:Ljava/lang/CharSequence;

    .line 241
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderCursor;->mPM:Landroid/content/pm/PackageManager;

    iget-object v2, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->title:Ljava/lang/CharSequence;

    iget-object v3, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 242
    iget v1, p0, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    iput v1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->itemType:I

    .line 243
    iget v1, p0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    iput v1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->status:I

    .line 244
    return-object v0

    .line 238
    :cond_4
    new-instance v1, Ljava/security/InvalidParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid restoreType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public hasRestoreFlag(I)Z
    .locals 1
    .param p1, "flagMask"    # I

    .line 443
    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOnWorkspaceOrHotseat()Z
    .locals 2

    .line 461
    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->container:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_1

    const/16 v1, -0x65

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected loadIcon(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 189
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/model/LoaderCursor;->createIconRequestInfo(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)Lcom/android/launcher3/model/data/IconRequestInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderCursor;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/data/IconRequestInfo;->loadWorkspaceIcon(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public loadSimpleWorkspaceItem()Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .locals 3

    .line 169
    new-instance v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>()V

    .line 170
    .local v0, "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    .line 172
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    iput-object v1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->user:Landroid/os/UserHandle;

    .line 173
    iget v1, p0, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    iput v1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->itemType:I

    .line 174
    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderCursor;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->title:Ljava/lang/CharSequence;

    .line 176
    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->loadIcon(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderCursor;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    iget-object v2, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/icons/IconCache;->getDefaultIcon(Landroid/os/UserHandle;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    .line 182
    :cond_0
    return-object v0
.end method

.method public markDeleted(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 414
    const-string v0, "LoaderCursor"

    invoke-static {v0, p1}, Lcom/android/launcher3/logging/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->itemsToRemove:Lcom/android/launcher3/util/IntArray;

    iget v1, p0, Lcom/android/launcher3/model/LoaderCursor;->id:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntArray;->add(I)V

    .line 416
    return-void
.end method

.method public markRestored()V
    .locals 2

    .line 436
    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->restoredRows:Lcom/android/launcher3/util/IntArray;

    iget v1, p0, Lcom/android/launcher3/model/LoaderCursor;->id:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntArray;->add(I)V

    .line 438
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    .line 440
    :cond_0
    return-void
.end method

.method public moveToNext()Z
    .locals 4

    .line 141
    invoke-super {p0}, Landroid/database/CursorWrapper;->moveToNext()Z

    move-result v0

    .line 142
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 143
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/model/LoaderCursor;->mActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    .line 146
    iget v1, p0, Lcom/android/launcher3/model/LoaderCursor;->itemTypeIndex:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    .line 147
    iget v1, p0, Lcom/android/launcher3/model/LoaderCursor;->containerIndex:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/model/LoaderCursor;->container:I

    .line 148
    iget v1, p0, Lcom/android/launcher3/model/LoaderCursor;->idIndex:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/model/LoaderCursor;->id:I

    .line 149
    iget v1, p0, Lcom/android/launcher3/model/LoaderCursor;->profileIdIndex:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/launcher3/model/LoaderCursor;->serialNumber:J

    .line 150
    iget-object v3, p0, Lcom/android/launcher3/model/LoaderCursor;->allUsers:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    iput-object v1, p0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    .line 151
    iget v1, p0, Lcom/android/launcher3/model/LoaderCursor;->restoredIndex:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    .line 153
    :cond_0
    return v0
.end method

.method public parseIntent()Landroid/content/Intent;
    .locals 5

    .line 157
    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->intentIndex:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "intentDescription":Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_0
    return-object v1

    .line 161
    :catch_0
    move-exception v2

    .line 162
    .local v2, "e":Ljava/net/URISyntaxException;
    const-string v3, "LoaderCursor"

    const-string v4, "Error parsing Intent"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return-object v1
.end method

.method public updater()Lcom/android/launcher3/util/ContentWriter;
    .locals 6

    .line 406
    new-instance v0, Lcom/android/launcher3/util/ContentWriter;

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderCursor;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/launcher3/util/ContentWriter$CommitParams;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget v4, p0, Lcom/android/launcher3/model/LoaderCursor;->id:I

    .line 407
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "_id= ?"

    invoke-direct {v2, v4, v3}, Lcom/android/launcher3/util/ContentWriter$CommitParams;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/ContentWriter;-><init>(Landroid/content/Context;Lcom/android/launcher3/util/ContentWriter$CommitParams;)V

    .line 406
    return-object v0
.end method
