.class Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution$HotseatOccupancy;
.super Ljava/lang/Object;
.source "GridSizeMigrationTaskV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HotseatOccupancy"
.end annotation


# instance fields
.field private final mCells:[Z

.field final synthetic this$0:Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCells(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution$HotseatOccupancy;)[Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution$HotseatOccupancy;->mCells:[Z

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mmarkCells(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution$HotseatOccupancy;Lcom/android/launcher3/model/data/ItemInfo;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution$HotseatOccupancy;->markCells(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    return-void
.end method

.method private constructor <init>(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution;I)V
    .locals 0
    .param p2, "hotseatSize"    # I

    .line 503
    iput-object p1, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution$HotseatOccupancy;->this$0:Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 504
    new-array p1, p2, [Z

    iput-object p1, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution$HotseatOccupancy;->mCells:[Z

    .line 505
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution;ILcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution$HotseatOccupancy-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution$HotseatOccupancy;-><init>(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution;I)V

    return-void
.end method

.method private markCells(Lcom/android/launcher3/model/data/ItemInfo;Z)V
    .locals 2
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "value"    # Z

    .line 508
    iget-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution$HotseatOccupancy;->mCells:[Z

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    aput-boolean p2, v0, v1

    .line 509
    return-void
.end method
