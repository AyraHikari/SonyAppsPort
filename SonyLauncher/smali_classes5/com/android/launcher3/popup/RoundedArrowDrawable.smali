.class public Lcom/android/launcher3/popup/RoundedArrowDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "RoundedArrowDrawable.java"


# instance fields
.field private final mPaint:Landroid/graphics/Paint;

.field private final mPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(FFFFFFFFZZI)V
    .locals 12
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "radius"    # F
    .param p4, "popupRadius"    # F
    .param p5, "popupWidth"    # F
    .param p6, "popupHeight"    # F
    .param p7, "arrowOffsetX"    # F
    .param p8, "arrowOffsetY"    # F
    .param p9, "isPointingUp"    # Z
    .param p10, "leftAligned"    # Z
    .param p11, "color"    # I

    .line 62
    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 63
    new-instance v9, Landroid/graphics/Path;

    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    iput-object v9, v0, Lcom/android/launcher3/popup/RoundedArrowDrawable;->mPath:Landroid/graphics/Path;

    .line 64
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v0, Lcom/android/launcher3/popup/RoundedArrowDrawable;->mPaint:Landroid/graphics/Paint;

    .line 65
    move/from16 v10, p11

    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 67
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 70
    move v11, p3

    invoke-static {p1, p2, p3, v9}, Lcom/android/launcher3/popup/RoundedArrowDrawable;->addDownPointingRoundedTriangleToPath(FFFLandroid/graphics/Path;)V

    .line 71
    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-object v8, v9

    invoke-static/range {v3 .. v8}, Lcom/android/launcher3/popup/RoundedArrowDrawable;->clipPopupBodyFromPath(FFFFFLandroid/graphics/Path;)V

    .line 75
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 76
    .local v3, "pathTransform":Landroid/graphics/Matrix;
    nop

    .line 77
    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, -0x40800000    # -1.0f

    if-eqz p10, :cond_0

    move v6, v4

    goto :goto_0

    :cond_0
    move v6, v5

    :goto_0
    if-eqz p9, :cond_1

    move v4, v5

    :cond_1
    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v7, v1, v5

    mul-float/2addr v5, v2

    .line 76
    invoke-virtual {v3, v6, v4, v7, v5}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 78
    invoke-virtual {v9, v3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 79
    return-void
.end method

.method public constructor <init>(FFFZI)V
    .locals 5
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "radius"    # F
    .param p4, "isPointingLeft"    # Z
    .param p5, "color"    # I

    .line 91
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 92
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/popup/RoundedArrowDrawable;->mPath:Landroid/graphics/Path;

    .line 93
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/popup/RoundedArrowDrawable;->mPaint:Landroid/graphics/Paint;

    .line 94
    invoke-virtual {v1, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 96
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 99
    invoke-static {p1, p2, p3, v0}, Lcom/android/launcher3/popup/RoundedArrowDrawable;->addDownPointingRoundedTriangleToPath(FFFLandroid/graphics/Path;)V

    .line 102
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 103
    .local v1, "pathTransform":Landroid/graphics/Matrix;
    if-eqz p4, :cond_0

    const/high16 v2, 0x42b40000    # 90.0f

    goto :goto_0

    :cond_0
    const/high16 v2, -0x3d4c0000    # -90.0f

    :goto_0
    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v4, p1, v3

    mul-float/2addr v3, p2

    invoke-virtual {v1, v2, v4, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 104
    invoke-virtual {v0, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 105
    return-void
.end method

.method private static addDownPointingRoundedTriangleToPath(FFFLandroid/graphics/Path;)V
    .locals 21
    .param p0, "width"    # F
    .param p1, "height"    # F
    .param p2, "radius"    # F
    .param p3, "path"    # Landroid/graphics/Path;

    .line 137
    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v11, p3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v4, v1, v3

    div-float v12, v0, v4

    .line 138
    .local v12, "tanTheta":F
    float-to-double v4, v12

    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    double-to-float v13, v4

    .line 141
    .local v13, "theta":F
    float-to-double v4, v1

    float-to-double v6, v2

    float-to-double v8, v13

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    div-double/2addr v6, v8

    sub-double/2addr v4, v6

    double-to-float v14, v4

    .line 144
    .local v14, "roundedPointCenterY":F
    div-float v15, v2, v12

    .line 145
    .local v15, "p":F
    float-to-double v4, v15

    float-to-double v6, v13

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v10, v4

    .line 146
    .local v10, "lineRoundPointIntersectFromCenter":F
    float-to-double v4, v1

    float-to-double v6, v15

    float-to-double v8, v13

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    double-to-float v9, v4

    .line 148
    .local v9, "lineRoundPointIntersectFromTop":F
    div-float v16, v0, v3

    .line 149
    .local v16, "centerX":F
    float-to-double v4, v13

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v8, v4

    .line 151
    .local v8, "thetaDeg":F
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Path;->reset()V

    .line 152
    const/4 v7, 0x0

    invoke-virtual {v11, v7, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 154
    invoke-virtual {v11, v0, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 156
    add-float v4, v16, v10

    invoke-virtual {v11, v4, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 160
    sub-float v4, v16, v2

    sub-float v5, v14, v2

    add-float v6, v16, v2

    add-float v17, v14, v2

    mul-float/2addr v3, v8

    const/high16 v18, 0x43340000    # 180.0f

    sub-float v18, v18, v3

    const/16 v19, 0x0

    move-object/from16 v3, p3

    move/from16 v7, v17

    move/from16 v17, v8

    .end local v8    # "thetaDeg":F
    .local v17, "thetaDeg":F
    move/from16 v20, v9

    .end local v9    # "lineRoundPointIntersectFromTop":F
    .local v20, "lineRoundPointIntersectFromTop":F
    move/from16 v9, v18

    move/from16 v18, v10

    .end local v10    # "lineRoundPointIntersectFromCenter":F
    .local v18, "lineRoundPointIntersectFromCenter":F
    move/from16 v10, v19

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 169
    const/4 v3, 0x0

    invoke-virtual {v11, v3, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 170
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Path;->close()V

    .line 171
    return-void
.end method

.method private static clipPopupBodyFromPath(FFFFFLandroid/graphics/Path;)V
    .locals 9
    .param p0, "popupRadius"    # F
    .param p1, "popupWidth"    # F
    .param p2, "popupHeight"    # F
    .param p3, "arrowOffsetX"    # F
    .param p4, "arrowOffsetY"    # F
    .param p5, "path"    # Landroid/graphics/Path;

    .line 176
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 177
    .local v0, "clipPiece":Landroid/graphics/Path;
    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, v0

    move v4, p1

    move v5, p2

    move v6, p0

    move v7, p0

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 184
    neg-float v1, p3

    neg-float v2, p2

    add-float/2addr v2, p4

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->offset(FF)V

    .line 185
    sget-object v1, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {p5, v0, v1}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 186
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 109
    iget-object v0, p0, Lcom/android/launcher3/popup/RoundedArrowDrawable;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/launcher3/popup/RoundedArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 110
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .line 119
    const/4 v0, -0x3

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1
    .param p1, "outline"    # Landroid/graphics/Outline;

    .line 114
    iget-object v0, p0, Lcom/android/launcher3/popup/RoundedArrowDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setPath(Landroid/graphics/Path;)V

    .line 115
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "i"    # I

    .line 124
    iget-object v0, p0, Lcom/android/launcher3/popup/RoundedArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 125
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 129
    iget-object v0, p0, Lcom/android/launcher3/popup/RoundedArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 130
    return-void
.end method
