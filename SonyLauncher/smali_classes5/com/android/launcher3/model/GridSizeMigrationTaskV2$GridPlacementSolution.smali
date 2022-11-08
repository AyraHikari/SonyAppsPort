.class public Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;
.super Ljava/lang/Object;
.source "GridSizeMigrationTaskV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/model/GridSizeMigrationTaskV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "GridPlacementSolution"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private final mDestReader:Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;

.field private final mMatchingScreenIdOnly:Z

.field private mNextStartX:I

.field private mNextStartY:I

.field private final mOccupied:Lcom/android/launcher3/util/GridOccupancy;

.field private final mScreenId:I

.field private final mSortedItemsToPlace:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mSrcReader:Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;

.field private final mTrgX:I

.field private final mTrgY:I


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;Landroid/content/Context;IIILjava/util/List;Z)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "srcReader"    # Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;
    .param p3, "destReader"    # Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "screenId"    # I
    .param p6, "trgX"    # I
    .param p7, "trgY"    # I
    .param p9, "matchingScreenIdOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;",
            "Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;",
            "Landroid/content/Context;",
            "III",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;",
            ">;Z)V"
        }
    .end annotation

    .line 389
    .local p8, "sortedItemsToPlace":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    iput-object p1, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 391
    iput-object p2, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mSrcReader:Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;

    .line 392
    iput-object p3, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mDestReader:Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;

    .line 393
    iput-object p4, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mContext:Landroid/content/Context;

    .line 394
    new-instance v0, Lcom/android/launcher3/util/GridOccupancy;

    invoke-direct {v0, p6, p7}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    iput-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    .line 395
    iput p5, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mScreenId:I

    .line 396
    iput p6, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mTrgX:I

    .line 397
    iput p7, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mTrgY:I

    .line 398
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mNextStartX:I

    .line 399
    nop

    .line 400
    iput v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mNextStartY:I

    .line 401
    invoke-static {p3}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->-$$Nest$fgetmWorkspaceEntriesByScreenId(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 402
    .local v0, "existedEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;>;"
    if-eqz v0, :cond_0

    .line 403
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;

    .line 404
    .local v2, "entry":Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;
    iget-object v3, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    .line 405
    .end local v2    # "entry":Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;
    goto :goto_0

    .line 407
    :cond_0
    iput-object p8, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mSortedItemsToPlace:Ljava/util/List;

    .line 408
    iput-boolean p9, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mMatchingScreenIdOnly:Z

    .line 409
    return-void
.end method

.method private findPlacement(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;)Z
    .locals 7
    .param p1, "entry"    # Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;

    .line 435
    iget v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mNextStartY:I

    .local v0, "y":I
    :goto_0
    iget v1, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mTrgY:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_4

    .line 436
    iget v1, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mNextStartX:I

    .local v1, "x":I
    :goto_1
    iget v3, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mTrgX:I

    if-ge v1, v3, :cond_3

    .line 437
    iget-object v3, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget v4, p1, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->spanX:I

    iget v5, p1, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->spanY:I

    invoke-virtual {v3, v1, v0, v4, v5}, Lcom/android/launcher3/util/GridOccupancy;->isRegionVacant(IIII)Z

    move-result v3

    .line 438
    .local v3, "fits":Z
    iget-object v4, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget v5, p1, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->minSpanX:I

    iget v6, p1, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->minSpanY:I

    invoke-virtual {v4, v1, v0, v5, v6}, Lcom/android/launcher3/util/GridOccupancy;->isRegionVacant(IIII)Z

    move-result v4

    .line 440
    .local v4, "minFits":Z
    if-eqz v4, :cond_0

    .line 441
    iget v5, p1, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->minSpanX:I

    iput v5, p1, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->spanX:I

    .line 442
    iget v5, p1, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->minSpanY:I

    iput v5, p1, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->spanY:I

    .line 444
    :cond_0
    if-nez v3, :cond_2

    if-eqz v4, :cond_1

    goto :goto_2

    .line 436
    .end local v3    # "fits":Z
    .end local v4    # "minFits":Z
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 445
    .restart local v3    # "fits":Z
    .restart local v4    # "minFits":Z
    :cond_2
    :goto_2
    iget v2, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mScreenId:I

    iput v2, p1, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->screenId:I

    .line 446
    iput v1, p1, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->cellX:I

    .line 447
    iput v0, p1, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->cellY:I

    .line 448
    iget-object v2, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    const/4 v5, 0x1

    invoke-virtual {v2, p1, v5}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    .line 449
    iget v2, p1, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->spanX:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mNextStartX:I

    .line 450
    iput v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mNextStartY:I

    .line 451
    return v5

    .line 454
    .end local v1    # "x":I
    .end local v3    # "fits":Z
    .end local v4    # "minFits":Z
    :cond_3
    iput v2, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mNextStartX:I

    .line 435
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 456
    .end local v0    # "y":I
    :cond_4
    return v2
.end method


# virtual methods
.method public find()V
    .locals 6

    .line 412
    iget-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mSortedItemsToPlace:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 413
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 414
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;

    .line 415
    .local v1, "entry":Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;
    iget-boolean v2, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mMatchingScreenIdOnly:Z

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->screenId:I

    iget v3, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mScreenId:I

    if-ge v2, v3, :cond_0

    goto :goto_0

    .line 416
    :cond_0
    iget-boolean v2, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mMatchingScreenIdOnly:Z

    if-eqz v2, :cond_1

    iget v2, v1, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->screenId:I

    iget v3, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mScreenId:I

    if-le v2, v3, :cond_1

    goto :goto_2

    .line 417
    :cond_1
    iget v2, v1, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->minSpanX:I

    iget v3, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mTrgX:I

    if-gt v2, v3, :cond_4

    iget v2, v1, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->minSpanY:I

    iget v3, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mTrgY:I

    if-le v2, v3, :cond_2

    goto :goto_1

    .line 421
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->findPlacement(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 422
    iget-object v2, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v3, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mSrcReader:Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;

    invoke-static {v4}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->-$$Nest$fgetmTableName(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mDestReader:Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;

    invoke-static {v5}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->-$$Nest$fgetmTableName(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v1, v4, v5}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->-$$Nest$sminsertEntryInDb(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 426
    .end local v1    # "entry":Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;
    :cond_3
    goto :goto_0

    .line 418
    .restart local v1    # "entry":Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;
    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 419
    goto :goto_0

    .line 427
    .end local v1    # "entry":Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;
    :cond_5
    :goto_2
    return-void
.end method
