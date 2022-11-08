.class public Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution;
.super Ljava/lang/Object;
.source "GridSizeMigrationTaskV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/model/GridSizeMigrationTaskV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "HotseatPlacementSolution"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution$HotseatOccupancy;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private final mDestReader:Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;

.field private final mItemsToPlace:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mOccupied:Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution$HotseatOccupancy;

.field private final mSrcReader:Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;Landroid/content/Context;ILjava/util/List;Ljava/util/List;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "srcReader"    # Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;
    .param p3, "destReader"    # Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "hotseatSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;",
            "Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;",
            ">;)V"
        }
    .end annotation

    .line 471
    .local p6, "placedHotseatItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;>;"
    .local p7, "itemsToPlace":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 472
    iput-object p1, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 473
    iput-object p2, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution;->mSrcReader:Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;

    .line 474
    iput-object p3, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution;->mDestReader:Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;

    .line 475
    iput-object p4, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution;->mContext:Landroid/content/Context;

    .line 476
    new-instance v0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution$HotseatOccupancy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p5, v1}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution$HotseatOccupancy;-><init>(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution;ILcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution$HotseatOccupancy-IA;)V

    iput-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution;->mOccupied:Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution$HotseatOccupancy;

    .line 477
    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;

    .line 478
    .local v1, "entry":Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;
    iget-object v2, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution;->mOccupied:Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution$HotseatOccupancy;

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution$HotseatOccupancy;->-$$Nest$mmarkCells(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution$HotseatOccupancy;Lcom/android/launcher3/model/data/ItemInfo;Z)V

    .line 479
    .end local v1    # "entry":Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;
    goto :goto_0

    .line 480
    :cond_0
    iput-object p7, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution;->mItemsToPlace:Ljava/util/List;

    .line 481
    return-void
.end method


# virtual methods
.method public find()V
    .locals 6

    .line 484
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution;->mOccupied:Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution$HotseatOccupancy;

    invoke-static {v1}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution$HotseatOccupancy;->-$$Nest$fgetmCells(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution$HotseatOccupancy;)[Z

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 485
    iget-object v1, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution;->mOccupied:Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution$HotseatOccupancy;

    invoke-static {v1}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution$HotseatOccupancy;->-$$Nest$fgetmCells(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution$HotseatOccupancy;)[Z

    move-result-object v1

    aget-boolean v1, v1, v0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution;->mItemsToPlace:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 486
    iget-object v1, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution;->mItemsToPlace:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;

    .line 487
    .local v1, "entry":Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;
    iput v0, v1, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->screenId:I

    .line 490
    iput v0, v1, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->cellX:I

    .line 491
    iput v2, v1, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->cellY:I

    .line 492
    iget-object v2, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v3, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution;->mSrcReader:Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;

    invoke-static {v4}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->-$$Nest$fgetmTableName(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution;->mDestReader:Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;

    invoke-static {v5}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->-$$Nest$fgetmTableName(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v1, v4, v5}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->-$$Nest$sminsertEntryInDb(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    iget-object v2, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution;->mOccupied:Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution$HotseatOccupancy;

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution$HotseatOccupancy;->-$$Nest$mmarkCells(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution$HotseatOccupancy;Lcom/android/launcher3/model/data/ItemInfo;Z)V

    .line 484
    .end local v1    # "entry":Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 497
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
