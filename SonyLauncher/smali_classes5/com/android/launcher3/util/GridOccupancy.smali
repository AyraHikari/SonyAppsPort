.class public Lcom/android/launcher3/util/GridOccupancy;
.super Lcom/android/launcher3/util/AbsGridOccupancy;
.source "GridOccupancy.java"


# instance fields
.field public final cells:[[Z

.field private final mCountX:I

.field private final mCountY:I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "countX"    # I
    .param p2, "countY"    # I

    .line 17
    invoke-direct {p0}, Lcom/android/launcher3/util/AbsGridOccupancy;-><init>()V

    .line 18
    iput p1, p0, Lcom/android/launcher3/util/GridOccupancy;->mCountX:I

    .line 19
    iput p2, p0, Lcom/android/launcher3/util/GridOccupancy;->mCountY:I

    .line 20
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x0

    aput p1, v0, v1

    const-class v1, Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    .line 21
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 6

    .line 82
    iget v3, p0, Lcom/android/launcher3/util/GridOccupancy;->mCountX:I

    iget v4, p0, Lcom/android/launcher3/util/GridOccupancy;->mCountY:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    .line 83
    return-void
.end method

.method public copyTo(Lcom/android/launcher3/util/GridOccupancy;)V
    .locals 4
    .param p1, "dest"    # Lcom/android/launcher3/util/GridOccupancy;

    .line 37
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/launcher3/util/GridOccupancy;->mCountX:I

    if-ge v0, v1, :cond_1

    .line 38
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget v2, p0, Lcom/android/launcher3/util/GridOccupancy;->mCountY:I

    if-ge v1, v2, :cond_0

    .line 39
    iget-object v2, p1, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    aget-object v3, v3, v0

    aget-boolean v3, v3, v1

    aput-boolean v3, v2, v1

    .line 38
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 37
    .end local v1    # "j":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public findVacantCell([III)Z
    .locals 7
    .param p1, "vacantOut"    # [I
    .param p2, "spanX"    # I
    .param p3, "spanY"    # I

    .line 33
    iget-object v2, p0, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    iget v3, p0, Lcom/android/launcher3/util/GridOccupancy;->mCountX:I

    iget v4, p0, Lcom/android/launcher3/util/GridOccupancy;->mCountY:I

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    move v6, p3

    invoke-super/range {v0 .. v6}, Lcom/android/launcher3/util/AbsGridOccupancy;->findVacantCell([I[[ZIIII)Z

    move-result v0

    return v0
.end method

.method public isRegionVacant(IIII)Z
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I

    .line 45
    add-int v0, p1, p3

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 46
    .local v0, "x2":I
    add-int v2, p2, p4

    sub-int/2addr v2, v1

    .line 47
    .local v2, "y2":I
    const/4 v3, 0x0

    if-ltz p1, :cond_4

    if-ltz p2, :cond_4

    iget v4, p0, Lcom/android/launcher3/util/GridOccupancy;->mCountX:I

    if-ge v0, v4, :cond_4

    iget v4, p0, Lcom/android/launcher3/util/GridOccupancy;->mCountY:I

    if-lt v2, v4, :cond_0

    goto :goto_2

    .line 50
    :cond_0
    move v4, p1

    .local v4, "i":I
    :goto_0
    if-gt v4, v0, :cond_3

    .line 51
    move v5, p2

    .local v5, "j":I
    :goto_1
    if-gt v5, v2, :cond_2

    .line 52
    iget-object v6, p0, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    aget-object v6, v6, v4

    aget-boolean v6, v6, v5

    if-eqz v6, :cond_1

    .line 53
    return v3

    .line 51
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 50
    .end local v5    # "j":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 57
    .end local v4    # "i":I
    :cond_3
    return v1

    .line 48
    :cond_4
    :goto_2
    return v3
.end method

.method public markCells(IIIIZ)V
    .locals 3
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "value"    # Z

    .line 61
    if-ltz p1, :cond_3

    if-gez p2, :cond_0

    goto :goto_2

    .line 62
    :cond_0
    move v0, p1

    .local v0, "x":I
    :goto_0
    add-int v1, p1, p3

    if-ge v0, v1, :cond_2

    iget v1, p0, Lcom/android/launcher3/util/GridOccupancy;->mCountX:I

    if-ge v0, v1, :cond_2

    .line 63
    move v1, p2

    .local v1, "y":I
    :goto_1
    add-int v2, p2, p4

    if-ge v1, v2, :cond_1

    iget v2, p0, Lcom/android/launcher3/util/GridOccupancy;->mCountY:I

    if-ge v1, v2, :cond_1

    .line 64
    iget-object v2, p0, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    aget-object v2, v2, v0

    aput-boolean p5, v2, v1

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 62
    .end local v1    # "y":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    .end local v0    # "x":I
    :cond_2
    return-void

    .line 61
    :cond_3
    :goto_2
    return-void
.end method

.method public markCells(Landroid/graphics/Rect;Z)V
    .locals 6
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "value"    # Z

    .line 70
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    .line 71
    return-void
.end method

.method public markCells(Lcom/android/launcher3/model/data/ItemInfo;Z)V
    .locals 6
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "value"    # Z

    .line 78
    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v3, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v4, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    .line 79
    return-void
.end method

.method public markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V
    .locals 6
    .param p1, "cell"    # Lcom/android/launcher3/util/CellAndSpan;
    .param p2, "value"    # Z

    .line 74
    iget v1, p1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v2, p1, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v3, p1, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    iget v4, p1, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    .line 75
    return-void
.end method
