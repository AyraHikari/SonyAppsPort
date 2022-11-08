.class public Lcom/android/launcher3/graphics/IconShape$Squircle;
.super Lcom/android/launcher3/graphics/IconShape$PathShape;
.source "IconShape.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/graphics/IconShape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Squircle"
.end annotation


# instance fields
.field private final mRadiusRatio:F


# direct methods
.method public constructor <init>(F)V
    .locals 1
    .param p1, "radiusRatio"    # F

    .line 299
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/graphics/IconShape$PathShape;-><init>(Lcom/android/launcher3/graphics/IconShape$PathShape-IA;)V

    .line 300
    iput p1, p0, Lcom/android/launcher3/graphics/IconShape$Squircle;->mRadiusRatio:F

    .line 301
    return-void
.end method

.method private addLeftCurve(FFFFLandroid/graphics/Path;)V
    .locals 7
    .param p1, "cx"    # F
    .param p2, "cy"    # F
    .param p3, "r"    # F
    .param p4, "control"    # F
    .param p5, "path"    # Landroid/graphics/Path;

    .line 318
    sub-float v1, p1, p4

    sub-float v2, p2, p3

    sub-float v3, p1, p3

    sub-float v4, p2, p4

    sub-float v5, p1, p3

    move-object v0, p5

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 322
    return-void
.end method

.method private addRightCurve(FFFFLandroid/graphics/Path;)V
    .locals 7
    .param p1, "cx"    # F
    .param p2, "cy"    # F
    .param p3, "r"    # F
    .param p4, "control"    # F
    .param p5, "path"    # Landroid/graphics/Path;

    .line 325
    sub-float v1, p1, p3

    add-float v2, p2, p4

    sub-float v3, p1, p4

    add-float v4, p2, p3

    add-float v6, p2, p3

    move-object v0, p5

    move v5, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 329
    return-void
.end method


# virtual methods
.method public addToPath(Landroid/graphics/Path;FFF)V
    .locals 9
    .param p1, "p"    # Landroid/graphics/Path;
    .param p2, "offsetX"    # F
    .param p3, "offsetY"    # F
    .param p4, "r"    # F

    .line 305
    add-float v6, p4, p2

    .line 306
    .local v6, "cx":F
    add-float v7, p4, p3

    .line 307
    .local v7, "cy":F
    iget v0, p0, Lcom/android/launcher3/graphics/IconShape$Squircle;->mRadiusRatio:F

    mul-float/2addr v0, p4

    sub-float v8, p4, v0

    .line 309
    .local v8, "control":F
    sub-float v0, v7, p4

    invoke-virtual {p1, v6, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 310
    move-object v0, p0

    move v1, v6

    move v2, v7

    move v3, p4

    move v4, v8

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/graphics/IconShape$Squircle;->addLeftCurve(FFFFLandroid/graphics/Path;)V

    .line 311
    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/graphics/IconShape$Squircle;->addRightCurve(FFFFLandroid/graphics/Path;)V

    .line 312
    neg-float v3, p4

    neg-float v4, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/graphics/IconShape$Squircle;->addLeftCurve(FFFFLandroid/graphics/Path;)V

    .line 313
    neg-float v3, p4

    neg-float v4, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/graphics/IconShape$Squircle;->addRightCurve(FFFFLandroid/graphics/Path;)V

    .line 314
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 315
    return-void
.end method

.method synthetic lambda$newUpdateListener$0$com-android-launcher3-graphics-IconShape$Squircle(FFFFFFFFFFFFLandroid/graphics/Path;Landroid/animation/ValueAnimator;)V
    .locals 15
    .param p1, "startCX"    # F
    .param p2, "endCX"    # F
    .param p3, "startCY"    # F
    .param p4, "endCY"    # F
    .param p5, "startR"    # F
    .param p6, "endR"    # F
    .param p7, "startControl"    # F
    .param p8, "endControl"    # F
    .param p9, "startHShift"    # F
    .param p10, "endHShift"    # F
    .param p11, "startVShift"    # F
    .param p12, "endVShift"    # F
    .param p13, "outPath"    # Landroid/graphics/Path;
    .param p14, "anim"    # Landroid/animation/ValueAnimator;

    .line 351
    move-object/from16 v6, p13

    invoke-virtual/range {p14 .. p14}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 353
    .local v7, "progress":F
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, v7

    mul-float v1, v1, p1

    mul-float v2, v7, p2

    add-float v8, v1, v2

    .line 354
    .local v8, "cx":F
    sub-float v1, v0, v7

    mul-float v1, v1, p3

    mul-float v2, v7, p4

    add-float v9, v1, v2

    .line 355
    .local v9, "cy":F
    sub-float v1, v0, v7

    mul-float v1, v1, p5

    mul-float v2, v7, p6

    add-float v10, v1, v2

    .line 356
    .local v10, "r":F
    sub-float v1, v0, v7

    mul-float v1, v1, p7

    mul-float v2, v7, p8

    add-float v11, v1, v2

    .line 357
    .local v11, "control":F
    sub-float v1, v0, v7

    mul-float v1, v1, p9

    mul-float v2, v7, p10

    add-float v12, v1, v2

    .line 358
    .local v12, "hShift":F
    sub-float/2addr v0, v7

    mul-float v0, v0, p11

    mul-float v1, v7, p12

    add-float v13, v0, v1

    .line 360
    .local v13, "vShift":F
    sub-float v0, v9, v13

    sub-float/2addr v0, v10

    invoke-virtual {v6, v8, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 361
    neg-float v0, v12

    const/4 v14, 0x0

    invoke-virtual {v6, v0, v14}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 363
    sub-float v1, v8, v12

    sub-float v2, v9, v13

    move-object v0, p0

    move v3, v10

    move v4, v11

    move-object/from16 v5, p13

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/graphics/IconShape$Squircle;->addLeftCurve(FFFFLandroid/graphics/Path;)V

    .line 364
    add-float v0, v13, v13

    invoke-virtual {v6, v14, v0}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 366
    sub-float v1, v8, v12

    add-float v2, v9, v13

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/graphics/IconShape$Squircle;->addRightCurve(FFFFLandroid/graphics/Path;)V

    .line 367
    add-float v0, v12, v12

    invoke-virtual {v6, v0, v14}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 369
    add-float v1, v8, v12

    add-float v2, v9, v13

    neg-float v3, v10

    neg-float v4, v11

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/graphics/IconShape$Squircle;->addLeftCurve(FFFFLandroid/graphics/Path;)V

    .line 370
    neg-float v0, v13

    sub-float/2addr v0, v13

    invoke-virtual {v6, v14, v0}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 372
    add-float v1, v8, v12

    sub-float v2, v9, v13

    neg-float v3, v10

    neg-float v4, v11

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/graphics/IconShape$Squircle;->addRightCurve(FFFFLandroid/graphics/Path;)V

    .line 373
    invoke-virtual/range {p13 .. p13}, Landroid/graphics/Path;->close()V

    .line 374
    return-void
.end method

.method protected newUpdateListener(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Path;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 27
    .param p1, "startRect"    # Landroid/graphics/Rect;
    .param p2, "endRect"    # Landroid/graphics/Rect;
    .param p3, "endR"    # F
    .param p4, "outPath"    # Landroid/graphics/Path;

    .line 335
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v15

    .line 336
    .local v15, "startCX":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v16

    .line 337
    .local v16, "startCY":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v17, v0, v1

    .line 338
    .local v17, "startR":F
    move-object/from16 v14, p0

    iget v0, v14, Lcom/android/launcher3/graphics/IconShape$Squircle;->mRadiusRatio:F

    mul-float v0, v0, v17

    sub-float v18, v17, v0

    .line 339
    .local v18, "startControl":F
    const/16 v19, 0x0

    .line 340
    .local v19, "startHShift":F
    const/16 v20, 0x0

    .line 342
    .local v20, "startVShift":F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v21

    .line 343
    .local v21, "endCX":F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v22

    .line 346
    .local v22, "endCY":F
    const v0, 0x3f0d4a4e

    mul-float v23, p3, v0

    .line 347
    .local v23, "endControl":F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    sub-float v24, v0, p3

    .line 348
    .local v24, "endHShift":F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    sub-float v25, v0, p3

    .line 350
    .local v25, "endVShift":F
    new-instance v26, Lcom/android/launcher3/graphics/IconShape$Squircle$$ExternalSyntheticLambda0;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move v2, v15

    move/from16 v3, v21

    move/from16 v4, v16

    move/from16 v5, v22

    move/from16 v6, v17

    move/from16 v7, p3

    move/from16 v8, v18

    move/from16 v9, v23

    move/from16 v10, v19

    move/from16 v11, v24

    move/from16 v12, v20

    move/from16 v13, v25

    move-object/from16 v14, p4

    invoke-direct/range {v0 .. v14}, Lcom/android/launcher3/graphics/IconShape$Squircle$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/graphics/IconShape$Squircle;FFFFFFFFFFFFLandroid/graphics/Path;)V

    return-object v26
.end method
