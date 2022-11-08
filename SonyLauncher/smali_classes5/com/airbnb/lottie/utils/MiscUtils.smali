.class public Lcom/airbnb/lottie/utils/MiscUtils;
.super Ljava/lang/Object;
.source "MiscUtils.java"


# static fields
.field private static pathFromDataCurrentPoint:Landroid/graphics/PointF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/utils/MiscUtils;->pathFromDataCurrentPoint:Landroid/graphics/PointF;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 4
    .param p0, "p1"    # Landroid/graphics/PointF;
    .param p1, "p2"    # Landroid/graphics/PointF;

    .line 18
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v2

    iget v2, p0, Landroid/graphics/PointF;->y:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public static clamp(FFF)F
    .locals 1
    .param p0, "number"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .line 85
    invoke-static {p2, p0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static clamp(III)I
    .locals 1
    .param p0, "number"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .line 81
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static contains(FFF)Z
    .locals 1
    .param p0, "number"    # F
    .param p1, "rangeMin"    # F
    .param p2, "rangeMax"    # F

    .line 89
    cmpl-float v0, p0, p1

    if-ltz v0, :cond_0

    cmpg-float v0, p0, p2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static floorDiv(II)I
    .locals 3
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 71
    div-int v0, p0, p1

    .line 72
    .local v0, "r":I
    xor-int v1, p0, p1

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 73
    .local v1, "sameSign":Z
    :goto_0
    rem-int v2, p0, p1

    .line 74
    .local v2, "mod":I
    if-nez v1, :cond_1

    if-eqz v2, :cond_1

    .line 75
    add-int/lit8 v0, v0, -0x1

    .line 77
    :cond_1
    return v0
.end method

.method static floorMod(FF)I
    .locals 2
    .param p0, "x"    # F
    .param p1, "y"    # F

    .line 63
    float-to-int v0, p0

    float-to-int v1, p1

    invoke-static {v0, v1}, Lcom/airbnb/lottie/utils/MiscUtils;->floorMod(II)I

    move-result v0

    return v0
.end method

.method private static floorMod(II)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 67
    invoke-static {p0, p1}, Lcom/airbnb/lottie/utils/MiscUtils;->floorDiv(II)I

    move-result v0

    mul-int/2addr v0, p1

    sub-int v0, p0, v0

    return v0
.end method

.method public static getPathFromData(Lcom/airbnb/lottie/model/content/ShapeData;Landroid/graphics/Path;)V
    .locals 13
    .param p0, "shapeData"    # Lcom/airbnb/lottie/model/content/ShapeData;
    .param p1, "outPath"    # Landroid/graphics/Path;

    .line 22
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 23
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/content/ShapeData;->getInitialPoint()Landroid/graphics/PointF;

    move-result-object v7

    .line 24
    .local v7, "initialPoint":Landroid/graphics/PointF;
    iget v0, v7, Landroid/graphics/PointF;->x:F

    iget v1, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 25
    sget-object v0, Lcom/airbnb/lottie/utils/MiscUtils;->pathFromDataCurrentPoint:Landroid/graphics/PointF;

    iget v1, v7, Landroid/graphics/PointF;->x:F

    iget v2, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 26
    const/4 v0, 0x0

    move v8, v0

    .local v8, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/content/ShapeData;->getCurves()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_1

    .line 27
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/content/ShapeData;->getCurves()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 28
    .local v9, "curveData":Lcom/airbnb/lottie/model/CubicCurveData;
    invoke-virtual {v9}, Lcom/airbnb/lottie/model/CubicCurveData;->getControlPoint1()Landroid/graphics/PointF;

    move-result-object v10

    .line 29
    .local v10, "cp1":Landroid/graphics/PointF;
    invoke-virtual {v9}, Lcom/airbnb/lottie/model/CubicCurveData;->getControlPoint2()Landroid/graphics/PointF;

    move-result-object v11

    .line 30
    .local v11, "cp2":Landroid/graphics/PointF;
    invoke-virtual {v9}, Lcom/airbnb/lottie/model/CubicCurveData;->getVertex()Landroid/graphics/PointF;

    move-result-object v12

    .line 32
    .local v12, "vertex":Landroid/graphics/PointF;
    sget-object v0, Lcom/airbnb/lottie/utils/MiscUtils;->pathFromDataCurrentPoint:Landroid/graphics/PointF;

    invoke-virtual {v10, v0}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v11, v12}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget v0, v12, Landroid/graphics/PointF;->x:F

    iget v1, v12, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    .line 41
    :cond_0
    iget v1, v10, Landroid/graphics/PointF;->x:F

    iget v2, v10, Landroid/graphics/PointF;->y:F

    iget v3, v11, Landroid/graphics/PointF;->x:F

    iget v4, v11, Landroid/graphics/PointF;->y:F

    iget v5, v12, Landroid/graphics/PointF;->x:F

    iget v6, v12, Landroid/graphics/PointF;->y:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 43
    :goto_1
    sget-object v0, Lcom/airbnb/lottie/utils/MiscUtils;->pathFromDataCurrentPoint:Landroid/graphics/PointF;

    iget v1, v12, Landroid/graphics/PointF;->x:F

    iget v2, v12, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 26
    .end local v9    # "curveData":Lcom/airbnb/lottie/model/CubicCurveData;
    .end local v10    # "cp1":Landroid/graphics/PointF;
    .end local v11    # "cp2":Landroid/graphics/PointF;
    .end local v12    # "vertex":Landroid/graphics/PointF;
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 45
    .end local v8    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/content/ShapeData;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 48
    :cond_2
    return-void
.end method

.method public static lerp(DDD)D
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "percentage"    # D

    .line 55
    sub-double v0, p2, p0

    mul-double/2addr v0, p4

    add-double/2addr v0, p0

    return-wide v0
.end method

.method public static lerp(FFF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "percentage"    # F

    .line 51
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method public static lerp(IIF)I
    .locals 2
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "percentage"    # F

    .line 59
    int-to-float v0, p0

    sub-int v1, p1, p0

    int-to-float v1, v1

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;Lcom/airbnb/lottie/animation/content/KeyPathElementContent;)V
    .locals 1
    .param p0, "keyPath"    # Lcom/airbnb/lottie/model/KeyPath;
    .param p1, "depth"    # I
    .param p3, "currentPartialKeyPath"    # Lcom/airbnb/lottie/model/KeyPath;
    .param p4, "content"    # Lcom/airbnb/lottie/animation/content/KeyPathElementContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/model/KeyPath;",
            "I",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/KeyPath;",
            ">;",
            "Lcom/airbnb/lottie/model/KeyPath;",
            "Lcom/airbnb/lottie/animation/content/KeyPathElementContent;",
            ")V"
        }
    .end annotation

    .line 102
    .local p2, "accumulator":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/KeyPath;>;"
    invoke-interface {p4}, Lcom/airbnb/lottie/animation/content/KeyPathElementContent;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/airbnb/lottie/model/KeyPath;->fullyResolvesTo(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-interface {p4}, Lcom/airbnb/lottie/animation/content/KeyPathElementContent;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/airbnb/lottie/model/KeyPath;->addKey(Ljava/lang/String;)Lcom/airbnb/lottie/model/KeyPath;

    move-result-object p3

    .line 104
    invoke-virtual {p3, p4}, Lcom/airbnb/lottie/model/KeyPath;->resolve(Lcom/airbnb/lottie/model/KeyPathElement;)Lcom/airbnb/lottie/model/KeyPath;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_0
    return-void
.end method
