.class public Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;
.super Ljava/lang/Object;
.source "PipSurfaceTransactionHelper.java"


# instance fields
.field private final mCornerRadius:I

.field private final mShadowRadius:I

.field private final mTmpDestinationRect:Landroid/graphics/Rect;

.field private final mTmpDestinationRectF:Landroid/graphics/RectF;

.field private final mTmpFloat9:[F

.field private final mTmpSourceRectF:Landroid/graphics/RectF;

.field private final mTmpTransform:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "cornerRadius"    # I
    .param p2, "shadowRadius"    # I

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->mTmpTransform:Landroid/graphics/Matrix;

    .line 35
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->mTmpFloat9:[F

    .line 36
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->mTmpSourceRectF:Landroid/graphics/RectF;

    .line 37
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->mTmpDestinationRectF:Landroid/graphics/RectF;

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->mTmpDestinationRect:Landroid/graphics/Rect;

    .line 41
    iput p1, p0, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->mCornerRadius:I

    .line 42
    iput p2, p0, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->mShadowRadius:I

    .line 43
    return-void
.end method

.method private getScaledCornerRadius(Landroid/graphics/Rect;Landroid/graphics/Rect;)F
    .locals 6
    .param p1, "fromBounds"    # Landroid/graphics/Rect;
    .param p2, "toBounds"    # Landroid/graphics/Rect;

    .line 148
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    .line 149
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    .line 150
    .local v0, "scale":F
    iget v1, p0, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->mCornerRadius:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    return v1
.end method

.method private static newPipSurfaceTransaction(FF[FFFFLandroid/graphics/Rect;)Landroid/window/PictureInPictureSurfaceTransaction;
    .locals 1
    .param p0, "posX"    # F
    .param p1, "posY"    # F
    .param p2, "float9"    # [F
    .param p3, "rotation"    # F
    .param p4, "cornerRadius"    # F
    .param p5, "shadowRadius"    # F
    .param p6, "windowCrop"    # Landroid/graphics/Rect;

    .line 156
    new-instance v0, Landroid/window/PictureInPictureSurfaceTransaction$Builder;

    invoke-direct {v0}, Landroid/window/PictureInPictureSurfaceTransaction$Builder;-><init>()V

    .line 157
    invoke-virtual {v0, p0, p1}, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->setPosition(FF)Landroid/window/PictureInPictureSurfaceTransaction$Builder;

    move-result-object v0

    .line 158
    invoke-virtual {v0, p2, p3}, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->setTransform([FF)Landroid/window/PictureInPictureSurfaceTransaction$Builder;

    move-result-object v0

    .line 159
    invoke-virtual {v0, p4}, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->setCornerRadius(F)Landroid/window/PictureInPictureSurfaceTransaction$Builder;

    move-result-object v0

    .line 160
    invoke-virtual {v0, p5}, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->setShadowRadius(F)Landroid/window/PictureInPictureSurfaceTransaction$Builder;

    move-result-object v0

    .line 161
    invoke-virtual {v0, p6}, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->setWindowCrop(Landroid/graphics/Rect;)Landroid/window/PictureInPictureSurfaceTransaction$Builder;

    move-result-object v0

    .line 162
    invoke-virtual {v0}, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->build()Landroid/window/PictureInPictureSurfaceTransaction;

    move-result-object v0

    .line 156
    return-object v0
.end method

.method public static newSurfaceControlTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 3

    .line 167
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 168
    .local v0, "tx":Landroid/view/SurfaceControl$Transaction;
    invoke-static {}, Landroid/view/Choreographer;->getSfInstance()Landroid/view/Choreographer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Choreographer;->getVsyncId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;

    .line 169
    return-object v0
.end method


# virtual methods
.method public scale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/window/PictureInPictureSurfaceTransaction;
    .locals 10
    .param p1, "tx"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "leash"    # Landroid/view/SurfaceControl;
    .param p3, "sourceBounds"    # Landroid/graphics/Rect;
    .param p4, "destinationBounds"    # Landroid/graphics/Rect;

    .line 48
    iget v0, p4, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    .line 49
    .local v0, "positionX":F
    iget v1, p4, Landroid/graphics/Rect;->top:I

    int-to-float v8, v1

    .line 50
    .local v8, "positionY":F
    iget-object v1, p0, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->mTmpSourceRectF:Landroid/graphics/RectF;

    invoke-virtual {v1, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 51
    iget-object v1, p0, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->mTmpDestinationRectF:Landroid/graphics/RectF;

    invoke-virtual {v1, p4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 52
    iget-object v1, p0, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->mTmpDestinationRectF:Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 53
    iget-object v1, p0, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->mTmpTransform:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->mTmpSourceRectF:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->mTmpDestinationRectF:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 54
    invoke-direct {p0, p3, p4}, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->getScaledCornerRadius(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v9

    .line 55
    .local v9, "cornerRadius":F
    iget-object v1, p0, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->mTmpTransform:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->mTmpFloat9:[F

    invoke-virtual {p1, p2, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    .line 56
    invoke-virtual {v1, p2, v0, v8}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    .line 57
    invoke-virtual {v1, p2, v9}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->mShadowRadius:I

    int-to-float v2, v2

    .line 58
    invoke-virtual {v1, p2, v2}, Landroid/view/SurfaceControl$Transaction;->setShadowRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 59
    iget-object v3, p0, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->mTmpFloat9:[F

    iget v1, p0, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->mShadowRadius:I

    int-to-float v6, v1

    const/4 v4, 0x0

    move v1, v0

    move v2, v8

    move v5, v9

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->newPipSurfaceTransaction(FF[FFFFLandroid/graphics/Rect;)Landroid/window/PictureInPictureSurfaceTransaction;

    move-result-object v1

    return-object v1
.end method

.method public scale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;FFF)Landroid/window/PictureInPictureSurfaceTransaction;
    .locals 16
    .param p1, "tx"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "leash"    # Landroid/view/SurfaceControl;
    .param p3, "sourceBounds"    # Landroid/graphics/Rect;
    .param p4, "destinationBounds"    # Landroid/graphics/Rect;
    .param p5, "degree"    # F
    .param p6, "positionX"    # F
    .param p7, "positionY"    # F

    .line 67
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    iget-object v2, v0, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->mTmpSourceRectF:Landroid/graphics/RectF;

    invoke-virtual {v2, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 68
    iget-object v2, v0, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->mTmpDestinationRectF:Landroid/graphics/RectF;

    invoke-virtual {v2, v10}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 69
    iget-object v2, v0, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->mTmpDestinationRectF:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 70
    iget-object v2, v0, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->mTmpTransform:Landroid/graphics/Matrix;

    iget-object v4, v0, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->mTmpSourceRectF:Landroid/graphics/RectF;

    iget-object v5, v0, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->mTmpDestinationRectF:Landroid/graphics/RectF;

    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v2, v4, v5, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 71
    iget-object v2, v0, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->mTmpTransform:Landroid/graphics/Matrix;

    move/from16 v11, p5

    invoke-virtual {v2, v11, v3, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 72
    invoke-direct {v0, v9, v10}, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->getScaledCornerRadius(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v12

    .line 73
    .local v12, "cornerRadius":F
    iget-object v2, v0, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->mTmpTransform:Landroid/graphics/Matrix;

    iget-object v3, v0, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->mTmpFloat9:[F

    move-object/from16 v13, p1

    invoke-virtual {v13, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    .line 74
    move/from16 v14, p6

    move/from16 v15, p7

    invoke-virtual {v2, v1, v14, v15}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    .line 75
    invoke-virtual {v2, v1, v12}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget v3, v0, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->mShadowRadius:I

    int-to-float v3, v3

    .line 76
    invoke-virtual {v2, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setShadowRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 77
    iget-object v4, v0, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->mTmpFloat9:[F

    iget v2, v0, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->mShadowRadius:I

    int-to-float v7, v2

    move/from16 v2, p6

    move/from16 v3, p7

    move/from16 v5, p5

    move v6, v12

    move-object/from16 v8, p3

    invoke-static/range {v2 .. v8}, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->newPipSurfaceTransaction(FF[FFFFLandroid/graphics/Rect;)Landroid/window/PictureInPictureSurfaceTransaction;

    move-result-object v2

    return-object v2
.end method

.method public scaleAndCrop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/window/PictureInPictureSurfaceTransaction;
    .locals 17
    .param p1, "tx"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "leash"    # Landroid/view/SurfaceControl;
    .param p3, "sourceRectHint"    # Landroid/graphics/Rect;
    .param p4, "sourceBounds"    # Landroid/graphics/Rect;
    .param p5, "destinationBounds"    # Landroid/graphics/Rect;
    .param p6, "insets"    # Landroid/graphics/Rect;

    .line 84
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    iget-object v5, v0, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->mTmpSourceRectF:Landroid/graphics/RectF;

    invoke-virtual {v5, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 85
    iget-object v5, v0, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->mTmpDestinationRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 86
    iget-object v5, v0, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->mTmpDestinationRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v4}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 90
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-ne v5, v6, :cond_0

    goto :goto_1

    .line 96
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-gt v5, v6, :cond_1

    .line 97
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    goto :goto_0

    .line 98
    :cond_1
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    :goto_0
    nop

    .local v5, "scale":F
    goto :goto_3

    .line 91
    .end local v5    # "scale":F
    :cond_2
    :goto_1
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-gt v5, v6, :cond_3

    .line 92
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    goto :goto_2

    .line 93
    :cond_3
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    :goto_2
    nop

    .line 100
    .restart local v5    # "scale":F
    :goto_3
    iget v6, v3, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget v7, v4, Landroid/graphics/Rect;->left:I

    iget v8, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    mul-float/2addr v7, v5

    sub-float/2addr v6, v7

    .line 101
    .local v6, "left":F
    iget v7, v3, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    iget v8, v4, Landroid/graphics/Rect;->top:I

    iget v9, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    mul-float/2addr v8, v5

    sub-float/2addr v7, v8

    .line 102
    .local v7, "top":F
    iget-object v8, v0, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->mTmpTransform:Landroid/graphics/Matrix;

    invoke-virtual {v8, v5, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 103
    iget-object v8, v0, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->mTmpDestinationRect:Landroid/graphics/Rect;

    invoke-direct {v0, v8, v3}, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->getScaledCornerRadius(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v15

    .line 104
    .local v15, "cornerRadius":F
    iget-object v8, v0, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->mTmpTransform:Landroid/graphics/Matrix;

    iget-object v9, v0, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->mTmpFloat9:[F

    move-object/from16 v14, p1

    invoke-virtual {v14, v1, v8, v9}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v8

    iget-object v9, v0, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->mTmpDestinationRect:Landroid/graphics/Rect;

    .line 105
    invoke-virtual {v8, v1, v9}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v8

    .line 106
    invoke-virtual {v8, v1, v6, v7}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v8

    .line 107
    invoke-virtual {v8, v1, v15}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v8

    iget v9, v0, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->mShadowRadius:I

    int-to-float v9, v9

    .line 108
    invoke-virtual {v8, v1, v9}, Landroid/view/SurfaceControl$Transaction;->setShadowRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 109
    iget-object v10, v0, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->mTmpFloat9:[F

    const/4 v11, 0x0

    iget v8, v0, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->mShadowRadius:I

    int-to-float v13, v8

    iget-object v12, v0, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->mTmpDestinationRect:Landroid/graphics/Rect;

    move v8, v6

    move v9, v7

    move-object/from16 v16, v12

    move v12, v15

    move-object/from16 v14, v16

    invoke-static/range {v8 .. v14}, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->newPipSurfaceTransaction(FF[FFFFLandroid/graphics/Rect;)Landroid/window/PictureInPictureSurfaceTransaction;

    move-result-object v8

    return-object v8
.end method

.method public scaleAndRotate(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;FFF)Landroid/window/PictureInPictureSurfaceTransaction;
    .locals 18
    .param p1, "tx"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "leash"    # Landroid/view/SurfaceControl;
    .param p3, "sourceBounds"    # Landroid/graphics/Rect;
    .param p4, "destinationBounds"    # Landroid/graphics/Rect;
    .param p5, "insets"    # Landroid/graphics/Rect;
    .param p6, "degree"    # F
    .param p7, "positionX"    # F
    .param p8, "positionY"    # F

    .line 117
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move/from16 v11, p6

    iget-object v4, v0, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->mTmpSourceRectF:Landroid/graphics/RectF;

    invoke-virtual {v4, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 118
    iget-object v4, v0, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->mTmpDestinationRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 119
    iget-object v4, v0, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->mTmpDestinationRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 122
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-gt v4, v5, :cond_0

    .line 123
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    :goto_0
    move v12, v4

    .line 125
    .local v12, "scale":F
    iget-object v4, v0, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->mTmpTransform:Landroid/graphics/Matrix;

    const/4 v5, 0x0

    invoke-virtual {v4, v11, v5, v5}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 126
    iget-object v4, v0, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->mTmpTransform:Landroid/graphics/Matrix;

    invoke-virtual {v4, v12, v12}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 127
    iget-object v4, v0, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->mTmpDestinationRect:Landroid/graphics/Rect;

    move-object/from16 v13, p4

    invoke-direct {v0, v4, v13}, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->getScaledCornerRadius(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v14

    .line 130
    .local v14, "cornerRadius":F
    cmpg-float v4, v11, v5

    if-gez v4, :cond_1

    .line 131
    iget v4, v3, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    mul-float/2addr v4, v12

    add-float v4, p7, v4

    .line 132
    .local v4, "adjustedPositionX":F
    iget v5, v3, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    mul-float/2addr v5, v12

    add-float v5, p8, v5

    move v15, v4

    move v10, v5

    .local v5, "adjustedPositionY":F
    goto :goto_1

    .line 134
    .end local v4    # "adjustedPositionX":F
    .end local v5    # "adjustedPositionY":F
    :cond_1
    iget v4, v3, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    mul-float/2addr v4, v12

    sub-float v4, p7, v4

    .line 135
    .restart local v4    # "adjustedPositionX":F
    iget v5, v3, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    mul-float/2addr v5, v12

    sub-float v5, p8, v5

    move v15, v4

    move v10, v5

    .line 137
    .end local v4    # "adjustedPositionX":F
    .local v10, "adjustedPositionY":F
    .local v15, "adjustedPositionX":F
    :goto_1
    iget-object v4, v0, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->mTmpTransform:Landroid/graphics/Matrix;

    iget-object v5, v0, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->mTmpFloat9:[F

    move-object/from16 v9, p1

    invoke-virtual {v9, v1, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    iget-object v5, v0, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->mTmpDestinationRect:Landroid/graphics/Rect;

    .line 138
    invoke-virtual {v4, v1, v5}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    .line 139
    invoke-virtual {v4, v1, v15, v10}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    .line 140
    invoke-virtual {v4, v1, v14}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    iget v5, v0, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->mShadowRadius:I

    int-to-float v5, v5

    .line 141
    invoke-virtual {v4, v1, v5}, Landroid/view/SurfaceControl$Transaction;->setShadowRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 142
    iget-object v6, v0, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->mTmpFloat9:[F

    iget v4, v0, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->mShadowRadius:I

    int-to-float v8, v4

    iget-object v7, v0, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->mTmpDestinationRect:Landroid/graphics/Rect;

    move v4, v15

    move v5, v10

    move-object/from16 v16, v7

    move/from16 v7, p6

    move/from16 v17, v8

    move v8, v14

    move/from16 v9, v17

    move/from16 v17, v10

    .end local v10    # "adjustedPositionY":F
    .local v17, "adjustedPositionY":F
    move-object/from16 v10, v16

    invoke-static/range {v4 .. v10}, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->newPipSurfaceTransaction(FF[FFFFLandroid/graphics/Rect;)Landroid/window/PictureInPictureSurfaceTransaction;

    move-result-object v4

    return-object v4
.end method
