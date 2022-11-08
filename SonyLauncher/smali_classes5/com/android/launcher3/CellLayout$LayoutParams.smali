.class public Lcom/android/launcher3/CellLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public canReorder:Z

.field public cellHSpan:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellVSpan:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellX:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellY:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field dropped:Z

.field public isLockedToGrid:Z

.field public tmpCellX:I

.field public tmpCellY:I

.field public useTmpCoords:Z

.field public x:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public y:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIII)V
    .locals 1
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "cellHSpan"    # I
    .param p4, "cellVSpan"    # I

    .line 2869
    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 2831
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 2837
    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->canReorder:Z

    .line 2870
    iput p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 2871
    iput p2, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 2872
    iput p3, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    .line 2873
    iput p4, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    .line 2874
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 2849
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2831
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 2837
    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->canReorder:Z

    .line 2850
    iput v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    .line 2851
    iput v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    .line 2852
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .line 2855
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2831
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 2837
    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->canReorder:Z

    .line 2856
    iput v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    .line 2857
    iput v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    .line 2858
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/CellLayout$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 2861
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2831
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 2837
    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->canReorder:Z

    .line 2862
    iget v0, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iput v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 2863
    iget v0, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iput v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 2864
    iget v0, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iput v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    .line 2865
    iget v0, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    iput v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    .line 2866
    return-void
.end method


# virtual methods
.method public setCellXY(Landroid/graphics/Point;)V
    .locals 1
    .param p1, "point"    # Landroid/graphics/Point;

    .line 2926
    iget v0, p1, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 2927
    iget v0, p1, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 2928
    return-void
.end method

.method public setup(IIZIIFFLandroid/graphics/Point;Landroid/graphics/Rect;)V
    .locals 14
    .param p1, "cellWidth"    # I
    .param p2, "cellHeight"    # I
    .param p3, "invertHorizontally"    # Z
    .param p4, "colCount"    # I
    .param p5, "rowCount"    # I
    .param p6, "cellScaleX"    # F
    .param p7, "cellScaleY"    # F
    .param p8, "borderSpace"    # Landroid/graphics/Point;
    .param p9, "inset"    # Landroid/graphics/Rect;

    .line 2892
    move-object v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p9

    iget-boolean v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    if-eqz v3, :cond_3

    .line 2893
    iget v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    .line 2894
    .local v3, "myCellHSpan":I
    iget v4, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    .line 2895
    .local v4, "myCellVSpan":I
    iget-boolean v5, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v5, :cond_0

    iget v6, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    goto :goto_0

    :cond_0
    iget v6, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 2896
    .local v6, "myCellX":I
    :goto_0
    if-eqz v5, :cond_1

    iget v5, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    goto :goto_1

    :cond_1
    iget v5, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 2898
    .local v5, "myCellY":I
    :goto_1
    if-eqz p3, :cond_2

    .line 2899
    sub-int v7, p4, v6

    iget v8, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    sub-int v6, v7, v8

    .line 2902
    :cond_2
    add-int/lit8 v7, v3, -0x1

    iget v8, v1, Landroid/graphics/Point;->x:I

    mul-int/2addr v7, v8

    .line 2903
    .local v7, "hBorderSpacing":I
    add-int/lit8 v8, v4, -0x1

    iget v9, v1, Landroid/graphics/Point;->y:I

    mul-int/2addr v8, v9

    .line 2905
    .local v8, "vBorderSpacing":I
    mul-int v9, v3, p1

    add-int/2addr v9, v7

    int-to-float v9, v9

    div-float v9, v9, p6

    .line 2906
    .local v9, "myCellWidth":F
    mul-int v10, v4, p2

    add-int/2addr v10, v8

    int-to-float v10, v10

    div-float v10, v10, p7

    .line 2908
    .local v10, "myCellHeight":F
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v11

    iget v12, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v11, v12

    iget v12, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v11, v12

    iput v11, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->width:I

    .line 2909
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v11

    iget v12, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->topMargin:I

    sub-int/2addr v11, v12

    iget v12, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v11, v12

    iput v11, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->height:I

    .line 2910
    iget v11, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->leftMargin:I

    mul-int v12, v6, p1

    add-int/2addr v11, v12

    iget v12, v1, Landroid/graphics/Point;->x:I

    mul-int/2addr v12, v6

    add-int/2addr v11, v12

    iput v11, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    .line 2911
    iget v11, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->topMargin:I

    mul-int v12, v5, p2

    add-int/2addr v11, v12

    iget v12, v1, Landroid/graphics/Point;->y:I

    mul-int/2addr v12, v5

    add-int/2addr v11, v12

    iput v11, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    .line 2913
    if-eqz v2, :cond_3

    .line 2914
    iget v11, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    iget v12, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v12

    iput v11, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    .line 2915
    iget v11, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    iget v12, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    iput v11, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    .line 2916
    iget v11, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->width:I

    iget v12, v2, Landroid/graphics/Rect;->left:I

    iget v13, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v13

    add-int/2addr v11, v12

    iput v11, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->width:I

    .line 2917
    iget v11, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->height:I

    iget v12, v2, Landroid/graphics/Rect;->top:I

    iget v13, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v12, v13

    add-int/2addr v11, v12

    iput v11, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->height:I

    .line 2920
    .end local v3    # "myCellHSpan":I
    .end local v4    # "myCellVSpan":I
    .end local v5    # "myCellY":I
    .end local v6    # "myCellX":I
    .end local v7    # "hBorderSpacing":I
    .end local v8    # "vBorderSpacing":I
    .end local v9    # "myCellWidth":F
    .end local v10    # "myCellHeight":F
    :cond_3
    return-void
.end method

.method public setup(IIZIILandroid/graphics/Point;Landroid/graphics/Rect;)V
    .locals 10
    .param p1, "cellWidth"    # I
    .param p2, "cellHeight"    # I
    .param p3, "invertHorizontally"    # Z
    .param p4, "colCount"    # I
    .param p5, "rowCount"    # I
    .param p6, "borderSpace"    # Landroid/graphics/Point;
    .param p7, "inset"    # Landroid/graphics/Rect;

    .line 2878
    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher3/CellLayout$LayoutParams;->setup(IIZIIFFLandroid/graphics/Point;Landroid/graphics/Rect;)V

    .line 2880
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2931
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
