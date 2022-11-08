.class public Lcom/airbnb/lottie/model/content/ShapeData;
.super Ljava/lang/Object;
.source "ShapeData.java"


# instance fields
.field private closed:Z

.field private final curves:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/CubicCurveData;",
            ">;"
        }
    .end annotation
.end field

.field private initialPoint:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;ZLjava/util/List;)V
    .locals 1
    .param p1, "initialPoint"    # Landroid/graphics/PointF;
    .param p2, "closed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/PointF;",
            "Z",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/CubicCurveData;",
            ">;)V"
        }
    .end annotation

    .line 18
    .local p3, "curves":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/CubicCurveData;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    .line 20
    iput-boolean p2, p0, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 22
    return-void
.end method

.method private setInitialPoint(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 29
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 33
    return-void
.end method


# virtual methods
.method public getCurves()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/CubicCurveData;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    return-object v0
.end method

.method public getInitialPoint()Landroid/graphics/PointF;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method public interpolateBetween(Lcom/airbnb/lottie/model/content/ShapeData;Lcom/airbnb/lottie/model/content/ShapeData;F)V
    .locals 18
    .param p1, "shapeData1"    # Lcom/airbnb/lottie/model/content/ShapeData;
    .param p2, "shapeData2"    # Lcom/airbnb/lottie/model/content/ShapeData;
    .param p3, "percentage"    # F

    .line 49
    move-object/from16 v0, p0

    move/from16 v1, p3

    iget-object v2, v0, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    if-nez v2, :cond_0

    .line 50
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    iput-object v2, v0, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    .line 52
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/model/content/ShapeData;->isClosed()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/airbnb/lottie/model/content/ShapeData;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v3

    :goto_1
    iput-boolean v2, v0, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    .line 55
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/model/content/ShapeData;->getCurves()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Lcom/airbnb/lottie/model/content/ShapeData;->getCurves()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v2, v4, :cond_3

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Curves must have the same number of control points. Shape 1: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 57
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/model/content/ShapeData;->getCurves()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\tShape 2: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/airbnb/lottie/model/content/ShapeData;->getCurves()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-static {v2}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 60
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/model/content/ShapeData;->getCurves()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Lcom/airbnb/lottie/model/content/ShapeData;->getCurves()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 61
    .local v2, "points":I
    iget-object v4, v0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, v2, :cond_5

    .line 62
    iget-object v4, v0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "i":I
    :goto_2
    if-ge v4, v2, :cond_4

    .line 63
    iget-object v5, v0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    new-instance v6, Lcom/airbnb/lottie/model/CubicCurveData;

    invoke-direct {v6}, Lcom/airbnb/lottie/model/CubicCurveData;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v4    # "i":I
    :cond_4
    goto :goto_4

    .line 65
    :cond_5
    iget-object v4, v0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v2, :cond_6

    .line 66
    iget-object v4, v0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    .restart local v4    # "i":I
    :goto_3
    if-lt v4, v2, :cond_6

    .line 67
    iget-object v5, v0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 66
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 71
    .end local v4    # "i":I
    :cond_6
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/model/content/ShapeData;->getInitialPoint()Landroid/graphics/PointF;

    move-result-object v4

    .line 72
    .local v4, "initialPoint1":Landroid/graphics/PointF;
    invoke-virtual/range {p2 .. p2}, Lcom/airbnb/lottie/model/content/ShapeData;->getInitialPoint()Landroid/graphics/PointF;

    move-result-object v5

    .line 74
    .local v5, "initialPoint2":Landroid/graphics/PointF;
    iget v6, v4, Landroid/graphics/PointF;->x:F

    iget v7, v5, Landroid/graphics/PointF;->x:F

    invoke-static {v6, v7, v1}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v6

    iget v7, v4, Landroid/graphics/PointF;->y:F

    iget v8, v5, Landroid/graphics/PointF;->y:F

    .line 75
    invoke-static {v7, v8, v1}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v7

    .line 74
    invoke-direct {v0, v6, v7}, Lcom/airbnb/lottie/model/content/ShapeData;->setInitialPoint(FF)V

    .line 77
    iget-object v6, v0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v3

    .local v6, "i":I
    :goto_5
    if-ltz v6, :cond_7

    .line 78
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/model/content/ShapeData;->getCurves()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 79
    .local v3, "curve1":Lcom/airbnb/lottie/model/CubicCurveData;
    invoke-virtual/range {p2 .. p2}, Lcom/airbnb/lottie/model/content/ShapeData;->getCurves()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 81
    .local v7, "curve2":Lcom/airbnb/lottie/model/CubicCurveData;
    invoke-virtual {v3}, Lcom/airbnb/lottie/model/CubicCurveData;->getControlPoint1()Landroid/graphics/PointF;

    move-result-object v8

    .line 82
    .local v8, "cp11":Landroid/graphics/PointF;
    invoke-virtual {v3}, Lcom/airbnb/lottie/model/CubicCurveData;->getControlPoint2()Landroid/graphics/PointF;

    move-result-object v9

    .line 83
    .local v9, "cp21":Landroid/graphics/PointF;
    invoke-virtual {v3}, Lcom/airbnb/lottie/model/CubicCurveData;->getVertex()Landroid/graphics/PointF;

    move-result-object v10

    .line 85
    .local v10, "vertex1":Landroid/graphics/PointF;
    invoke-virtual {v7}, Lcom/airbnb/lottie/model/CubicCurveData;->getControlPoint1()Landroid/graphics/PointF;

    move-result-object v11

    .line 86
    .local v11, "cp12":Landroid/graphics/PointF;
    invoke-virtual {v7}, Lcom/airbnb/lottie/model/CubicCurveData;->getControlPoint2()Landroid/graphics/PointF;

    move-result-object v12

    .line 87
    .local v12, "cp22":Landroid/graphics/PointF;
    invoke-virtual {v7}, Lcom/airbnb/lottie/model/CubicCurveData;->getVertex()Landroid/graphics/PointF;

    move-result-object v13

    .line 89
    .local v13, "vertex2":Landroid/graphics/PointF;
    iget-object v14, v0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/airbnb/lottie/model/CubicCurveData;

    iget v15, v8, Landroid/graphics/PointF;->x:F

    move/from16 v16, v2

    .end local v2    # "points":I
    .local v16, "points":I
    iget v2, v11, Landroid/graphics/PointF;->x:F

    .line 90
    invoke-static {v15, v2, v1}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v2

    iget v15, v8, Landroid/graphics/PointF;->y:F

    move-object/from16 v17, v3

    .end local v3    # "curve1":Lcom/airbnb/lottie/model/CubicCurveData;
    .local v17, "curve1":Lcom/airbnb/lottie/model/CubicCurveData;
    iget v3, v11, Landroid/graphics/PointF;->y:F

    invoke-static {v15, v3, v1}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v3

    .line 89
    invoke-virtual {v14, v2, v3}, Lcom/airbnb/lottie/model/CubicCurveData;->setControlPoint1(FF)V

    .line 92
    iget-object v2, v0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/model/CubicCurveData;

    iget v3, v9, Landroid/graphics/PointF;->x:F

    iget v14, v12, Landroid/graphics/PointF;->x:F

    .line 93
    invoke-static {v3, v14, v1}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v3

    iget v14, v9, Landroid/graphics/PointF;->y:F

    iget v15, v12, Landroid/graphics/PointF;->y:F

    invoke-static {v14, v15, v1}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v14

    .line 92
    invoke-virtual {v2, v3, v14}, Lcom/airbnb/lottie/model/CubicCurveData;->setControlPoint2(FF)V

    .line 95
    iget-object v2, v0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/model/CubicCurveData;

    iget v3, v10, Landroid/graphics/PointF;->x:F

    iget v14, v13, Landroid/graphics/PointF;->x:F

    .line 96
    invoke-static {v3, v14, v1}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v3

    iget v14, v10, Landroid/graphics/PointF;->y:F

    iget v15, v13, Landroid/graphics/PointF;->y:F

    invoke-static {v14, v15, v1}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v14

    .line 95
    invoke-virtual {v2, v3, v14}, Lcom/airbnb/lottie/model/CubicCurveData;->setVertex(FF)V

    .line 77
    .end local v7    # "curve2":Lcom/airbnb/lottie/model/CubicCurveData;
    .end local v8    # "cp11":Landroid/graphics/PointF;
    .end local v9    # "cp21":Landroid/graphics/PointF;
    .end local v10    # "vertex1":Landroid/graphics/PointF;
    .end local v11    # "cp12":Landroid/graphics/PointF;
    .end local v12    # "cp22":Landroid/graphics/PointF;
    .end local v13    # "vertex2":Landroid/graphics/PointF;
    .end local v17    # "curve1":Lcom/airbnb/lottie/model/CubicCurveData;
    add-int/lit8 v6, v6, -0x1

    move/from16 v2, v16

    goto/16 :goto_5

    .line 99
    .end local v6    # "i":I
    .end local v16    # "points":I
    .restart local v2    # "points":I
    :cond_7
    return-void
.end method

.method public isClosed()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShapeData{numCurves="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "closed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
