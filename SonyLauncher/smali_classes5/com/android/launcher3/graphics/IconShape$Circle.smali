.class public final Lcom/android/launcher3/graphics/IconShape$Circle;
.super Lcom/android/launcher3/graphics/IconShape$PathShape;
.source "IconShape.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/graphics/IconShape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Circle"
.end annotation


# instance fields
.field private final mTempRadii:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 159
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/graphics/IconShape$PathShape;-><init>(Lcom/android/launcher3/graphics/IconShape$PathShape-IA;)V

    .line 161
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/launcher3/graphics/IconShape$Circle;->mTempRadii:[F

    return-void
.end method

.method private getRadiiArray(FF)[F
    .locals 2
    .param p1, "r1"    # F
    .param p2, "r2"    # F

    .line 184
    iget-object v0, p0, Lcom/android/launcher3/graphics/IconShape$Circle;->mTempRadii:[F

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

    .line 186
    const/4 v1, 0x5

    aput p2, v0, v1

    const/4 v1, 0x4

    aput p2, v0, v1

    .line 187
    return-object v0
.end method


# virtual methods
.method public addToPath(Landroid/graphics/Path;FFF)V
    .locals 3
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "offsetX"    # F
    .param p3, "offsetY"    # F
    .param p4, "radius"    # F

    .line 193
    add-float v0, p4, p2

    add-float v1, p4, p3

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v0, v1, p4, v2}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 194
    return-void
.end method

.method public enableShapeDetection()Z
    .locals 1

    .line 202
    const/4 v0, 0x1

    return v0
.end method

.method protected getStartRadius(Landroid/graphics/Rect;)F
    .locals 2
    .param p1, "startRect"    # Landroid/graphics/Rect;

    .line 197
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method synthetic lambda$newUpdateListener$0$com-android-launcher3-graphics-IconShape$Circle(Landroid/animation/FloatArrayEvaluator;[F[FLandroid/graphics/Path;Landroid/animation/ValueAnimator;)V
    .locals 10
    .param p1, "evaluator"    # Landroid/animation/FloatArrayEvaluator;
    .param p2, "startValues"    # [F
    .param p3, "endValues"    # [F
    .param p4, "outPath"    # Landroid/graphics/Path;
    .param p5, "anim"    # Landroid/animation/ValueAnimator;

    .line 175
    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 176
    .local v0, "progress":F
    invoke-virtual {p1, v0, p2, p3}, Landroid/animation/FloatArrayEvaluator;->evaluate(F[F[F)[F

    move-result-object v1

    .line 177
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

    .line 179
    invoke-direct {p0, v2, v3}, Lcom/android/launcher3/graphics/IconShape$Circle;->getRadiiArray(FF)[F

    move-result-object v8

    sget-object v9, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 177
    move-object v3, p4

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V

    .line 180
    return-void
.end method

.method protected newUpdateListener(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Path;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 11
    .param p1, "startRect"    # Landroid/graphics/Rect;
    .param p2, "endRect"    # Landroid/graphics/Rect;
    .param p3, "endRadius"    # F
    .param p4, "outPath"    # Landroid/graphics/Path;

    .line 165
    invoke-virtual {p0, p1}, Lcom/android/launcher3/graphics/IconShape$Circle;->getStartRadius(Landroid/graphics/Rect;)F

    move-result v0

    .line 167
    .local v0, "r1":F
    const/4 v1, 0x6

    new-array v5, v1, [F

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    const/4 v3, 0x0

    aput v2, v5, v3

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    const/4 v4, 0x1

    aput v2, v5, v4

    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    const/4 v6, 0x2

    aput v2, v5, v6

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    const/4 v7, 0x3

    aput v2, v5, v7

    const/4 v2, 0x4

    aput v0, v5, v2

    const/4 v8, 0x5

    aput v0, v5, v8

    .line 169
    .local v5, "startValues":[F
    new-array v9, v1, [F

    iget v10, p2, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    aput v10, v9, v3

    iget v3, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    aput v3, v9, v4

    iget v3, p2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    aput v3, v9, v6

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    aput v3, v9, v7

    aput p3, v9, v2

    aput p3, v9, v8

    move-object v6, v9

    .line 172
    .local v6, "endValues":[F
    new-instance v4, Landroid/animation/FloatArrayEvaluator;

    new-array v1, v1, [F

    invoke-direct {v4, v1}, Landroid/animation/FloatArrayEvaluator;-><init>([F)V

    .line 174
    .local v4, "evaluator":Landroid/animation/FloatArrayEvaluator;
    new-instance v1, Lcom/android/launcher3/graphics/IconShape$Circle$$ExternalSyntheticLambda0;

    move-object v2, v1

    move-object v3, p0

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/graphics/IconShape$Circle$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/graphics/IconShape$Circle;Landroid/animation/FloatArrayEvaluator;[F[FLandroid/graphics/Path;)V

    return-object v1
.end method
