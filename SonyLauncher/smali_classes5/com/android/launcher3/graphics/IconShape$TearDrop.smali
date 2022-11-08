.class public Lcom/android/launcher3/graphics/IconShape$TearDrop;
.super Lcom/android/launcher3/graphics/IconShape$PathShape;
.source "IconShape.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/graphics/IconShape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TearDrop"
.end annotation


# instance fields
.field private final mRadiusRatio:F

.field private final mTempRadii:[F


# direct methods
.method public constructor <init>(F)V
    .locals 1
    .param p1, "radiusRatio"    # F

    .line 248
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/graphics/IconShape$PathShape;-><init>(Lcom/android/launcher3/graphics/IconShape$PathShape-IA;)V

    .line 246
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/launcher3/graphics/IconShape$TearDrop;->mTempRadii:[F

    .line 249
    iput p1, p0, Lcom/android/launcher3/graphics/IconShape$TearDrop;->mRadiusRatio:F

    .line 250
    return-void
.end method

.method private getRadiiArray(FF)[F
    .locals 2
    .param p1, "r1"    # F
    .param p2, "r2"    # F

    .line 263
    iget-object v0, p0, Lcom/android/launcher3/graphics/IconShape$TearDrop;->mTempRadii:[F

    const/4 v1, 0x7

    aput p1, v0, v1

    const/4 v1, 0x6

    aput p1, v0, v1

    const/4 v1, 0x3

    aput p1, v0, v1

    const/4 v1, 0x2

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 265
    const/4 v1, 0x5

    aput p2, v0, v1

    const/4 v1, 0x4

    aput p2, v0, v1

    .line 266
    return-object v0
.end method


# virtual methods
.method public addToPath(Landroid/graphics/Path;FFF)V
    .locals 10
    .param p1, "p"    # Landroid/graphics/Path;
    .param p2, "offsetX"    # F
    .param p3, "offsetY"    # F
    .param p4, "r1"    # F

    .line 254
    iget v0, p0, Lcom/android/launcher3/graphics/IconShape$TearDrop;->mRadiusRatio:F

    mul-float/2addr v0, p4

    .line 255
    .local v0, "r2":F
    add-float v1, p4, p2

    .line 256
    .local v1, "cx":F
    add-float v2, p4, p3

    .line 258
    .local v2, "cy":F
    sub-float v4, v1, p4

    sub-float v5, v2, p4

    add-float v6, v1, p4

    add-float v7, v2, p4

    invoke-direct {p0, p4, v0}, Lcom/android/launcher3/graphics/IconShape$TearDrop;->getRadiiArray(FF)[F

    move-result-object v8

    sget-object v9, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V

    .line 260
    return-void
.end method

.method synthetic lambda$newUpdateListener$0$com-android-launcher3-graphics-IconShape$TearDrop(Landroid/animation/FloatArrayEvaluator;[F[FLandroid/graphics/Path;Landroid/animation/ValueAnimator;)V
    .locals 10
    .param p1, "evaluator"    # Landroid/animation/FloatArrayEvaluator;
    .param p2, "startValues"    # [F
    .param p3, "endValues"    # [F
    .param p4, "outPath"    # Landroid/graphics/Path;
    .param p5, "anim"    # Landroid/animation/ValueAnimator;

    .line 283
    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 284
    .local v0, "progress":F
    invoke-virtual {p1, v0, p2, p3}, Landroid/animation/FloatArrayEvaluator;->evaluate(F[F[F)[F

    move-result-object v1

    .line 285
    .local v1, "values":[F
    const/4 v2, 0x0

    aget v4, v1, v2

    const/4 v2, 0x1

    aget v5, v1, v2

    const/4 v2, 0x2

    aget v6, v1, v2

    const/4 v2, 0x3

    aget v7, v1, v2

    const/4 v2, 0x4

    aget v2, v1, v2

    const/4 v3, 0x5

    aget v3, v1, v3

    .line 287
    invoke-direct {p0, v2, v3}, Lcom/android/launcher3/graphics/IconShape$TearDrop;->getRadiiArray(FF)[F

    move-result-object v8

    sget-object v9, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 285
    move-object v3, p4

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V

    .line 288
    return-void
.end method

.method protected newUpdateListener(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Path;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 15
    .param p1, "startRect"    # Landroid/graphics/Rect;
    .param p2, "endRect"    # Landroid/graphics/Rect;
    .param p3, "endRadius"    # F
    .param p4, "outPath"    # Landroid/graphics/Path;

    .line 272
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 273
    .local v2, "r1":F
    move-object v9, p0

    iget v3, v9, Lcom/android/launcher3/graphics/IconShape$TearDrop;->mRadiusRatio:F

    mul-float v10, v2, v3

    .line 275
    .local v10, "r2":F
    const/4 v3, 0x6

    new-array v6, v3, [F

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    const/4 v5, 0x0

    aput v4, v6, v5

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    const/4 v7, 0x1

    aput v4, v6, v7

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    const/4 v8, 0x2

    aput v4, v6, v8

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    const/4 v11, 0x3

    aput v4, v6, v11

    const/4 v4, 0x4

    aput v2, v6, v4

    const/4 v12, 0x5

    aput v10, v6, v12

    .line 277
    .local v6, "startValues":[F
    new-array v13, v3, [F

    iget v14, v1, Landroid/graphics/Rect;->left:I

    int-to-float v14, v14

    aput v14, v13, v5

    iget v5, v1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    aput v5, v13, v7

    iget v5, v1, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    aput v5, v13, v8

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    aput v5, v13, v11

    aput p3, v13, v4

    aput p3, v13, v12

    move-object v7, v13

    .line 280
    .local v7, "endValues":[F
    new-instance v5, Landroid/animation/FloatArrayEvaluator;

    new-array v3, v3, [F

    invoke-direct {v5, v3}, Landroid/animation/FloatArrayEvaluator;-><init>([F)V

    .line 282
    .local v5, "evaluator":Landroid/animation/FloatArrayEvaluator;
    new-instance v11, Lcom/android/launcher3/graphics/IconShape$TearDrop$$ExternalSyntheticLambda0;

    move-object v3, v11

    move-object v4, p0

    move-object/from16 v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/launcher3/graphics/IconShape$TearDrop$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/graphics/IconShape$TearDrop;Landroid/animation/FloatArrayEvaluator;[F[FLandroid/graphics/Path;)V

    return-object v11
.end method
