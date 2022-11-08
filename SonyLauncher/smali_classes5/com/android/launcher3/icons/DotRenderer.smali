.class public Lcom/android/launcher3/icons/DotRenderer;
.super Ljava/lang/Object;
.source "DotRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/icons/DotRenderer$DrawParams;
    }
.end annotation


# static fields
.field private static final MIN_DOT_SIZE:I = 0x1

.field private static final SIZE_PERCENTAGE:F = 0.228f

.field private static final TAG:Ljava/lang/String; = "DotRenderer"


# instance fields
.field private final mBackgroundWithShadow:Landroid/graphics/Bitmap;

.field private final mBitmapOffset:F

.field private final mCirclePaint:Landroid/graphics/Paint;

.field private final mCircleRadius:F

.field private final mLeftDotPosition:[F

.field private final mRightDotPosition:[F


# direct methods
.method public constructor <init>(ILandroid/graphics/Path;I)V
    .locals 4
    .param p1, "iconSizePx"    # I
    .param p2, "iconShapePath"    # Landroid/graphics/Path;
    .param p3, "pathSize"    # I

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/icons/DotRenderer;->mCirclePaint:Landroid/graphics/Paint;

    .line 55
    int-to-float v0, p1

    const v1, 0x3e6978d5    # 0.228f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 56
    .local v0, "size":I
    if-gtz v0, :cond_0

    .line 57
    const/4 v0, 0x1

    .line 59
    :cond_0
    new-instance v1, Lcom/android/launcher3/icons/ShadowGenerator$Builder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/launcher3/icons/ShadowGenerator$Builder;-><init>(I)V

    .line 60
    .local v1, "builder":Lcom/android/launcher3/icons/ShadowGenerator$Builder;
    const/16 v2, 0x58

    iput v2, v1, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->ambientShadowAlpha:I

    .line 61
    invoke-virtual {v1, v0}, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->setupBlurForSize(I)Lcom/android/launcher3/icons/ShadowGenerator$Builder;

    move-result-object v2

    invoke-virtual {v2, v0, v0}, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->createPill(II)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/icons/DotRenderer;->mBackgroundWithShadow:Landroid/graphics/Bitmap;

    .line 62
    iget v3, v1, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->radius:F

    iput v3, p0, Lcom/android/launcher3/icons/DotRenderer;->mCircleRadius:F

    .line 64
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/android/launcher3/icons/DotRenderer;->mBitmapOffset:F

    .line 67
    int-to-float v2, p3

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {p2, v2, v3}, Lcom/android/launcher3/icons/DotRenderer;->getPathPoint(Landroid/graphics/Path;FF)[F

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/icons/DotRenderer;->mLeftDotPosition:[F

    .line 68
    int-to-float v2, p3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p2, v2, v3}, Lcom/android/launcher3/icons/DotRenderer;->getPathPoint(Landroid/graphics/Path;FF)[F

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/icons/DotRenderer;->mRightDotPosition:[F

    .line 69
    return-void
.end method

.method private static getPathPoint(Landroid/graphics/Path;FF)[F
    .locals 9
    .param p0, "path"    # Landroid/graphics/Path;
    .param p1, "size"    # F
    .param p2, "direction"    # F

    .line 72
    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p1, v0

    .line 74
    .local v0, "halfSize":F
    const/high16 v1, 0x3f800000    # 1.0f

    .line 76
    .local v1, "delta":F
    mul-float v2, p2, v0

    add-float/2addr v2, v0

    .line 77
    .local v2, "x":F
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 78
    .local v3, "trianglePath":Landroid/graphics/Path;
    invoke-virtual {v3, v0, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 79
    mul-float v4, v1, p2

    add-float/2addr v4, v2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 80
    neg-float v4, v1

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 81
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 83
    sget-object v4, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {v3, p0, v4}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 84
    const/4 v4, 0x2

    new-array v4, v4, [F

    .line 85
    .local v4, "pos":[F
    new-instance v6, Landroid/graphics/PathMeasure;

    const/4 v7, 0x0

    invoke-direct {v6, v3, v7}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v4, v8}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 87
    aget v5, v4, v7

    div-float/2addr v5, p1

    aput v5, v4, v7

    .line 88
    const/4 v5, 0x1

    aget v6, v4, v5

    div-float/2addr v6, p1

    aput v6, v4, v5

    .line 89
    return-object v4
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lcom/android/launcher3/icons/DotRenderer$DrawParams;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "params"    # Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    .line 104
    if-nez p2, :cond_0

    .line 105
    const-string v0, "DotRenderer"

    const-string v1, "Invalid null argument(s) passed in call to draw."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-void

    .line 108
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 110
    iget-object v0, p2, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->iconBounds:Landroid/graphics/Rect;

    .line 111
    .local v0, "iconBounds":Landroid/graphics/Rect;
    iget-boolean v1, p2, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->leftAlign:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/icons/DotRenderer;->mLeftDotPosition:[F

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/icons/DotRenderer;->mRightDotPosition:[F

    .line 112
    .local v1, "dotPosition":[F
    :goto_0
    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    aget v4, v1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 113
    .local v2, "dotCenterX":F
    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x1

    aget v5, v1, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 116
    .local v3, "dotCenterY":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 117
    .local v4, "canvasBounds":Landroid/graphics/Rect;
    iget-boolean v5, p2, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->leftAlign:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 118
    iget v5, v4, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget v7, p0, Lcom/android/launcher3/icons/DotRenderer;->mBitmapOffset:F

    add-float/2addr v7, v2

    sub-float/2addr v5, v7

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    goto :goto_1

    .line 119
    :cond_2
    iget v5, v4, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    iget v7, p0, Lcom/android/launcher3/icons/DotRenderer;->mBitmapOffset:F

    sub-float v7, v2, v7

    sub-float/2addr v5, v7

    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    :goto_1
    nop

    .line 120
    .local v5, "offsetX":F
    iget v7, v4, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    iget v8, p0, Lcom/android/launcher3/icons/DotRenderer;->mBitmapOffset:F

    add-float/2addr v8, v3

    sub-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 123
    .local v7, "offsetY":F
    add-float v8, v2, v5

    add-float v9, v3, v7

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 124
    iget v8, p2, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->scale:F

    iget v9, p2, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->scale:F

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->scale(FF)V

    .line 126
    iget-object v8, p0, Lcom/android/launcher3/icons/DotRenderer;->mCirclePaint:Landroid/graphics/Paint;

    const/high16 v9, -0x1000000

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 127
    iget-object v8, p0, Lcom/android/launcher3/icons/DotRenderer;->mBackgroundWithShadow:Landroid/graphics/Bitmap;

    iget v9, p0, Lcom/android/launcher3/icons/DotRenderer;->mBitmapOffset:F

    iget-object v10, p0, Lcom/android/launcher3/icons/DotRenderer;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 128
    iget-object v8, p0, Lcom/android/launcher3/icons/DotRenderer;->mCirclePaint:Landroid/graphics/Paint;

    iget v9, p2, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->dotColor:I

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 129
    iget v8, p0, Lcom/android/launcher3/icons/DotRenderer;->mCircleRadius:F

    iget-object v9, p0, Lcom/android/launcher3/icons/DotRenderer;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v6, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 130
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 131
    return-void
.end method

.method public getLeftDotPosition()[F
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/android/launcher3/icons/DotRenderer;->mLeftDotPosition:[F

    return-object v0
.end method

.method public getRightDotPosition()[F
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/android/launcher3/icons/DotRenderer;->mRightDotPosition:[F

    return-object v0
.end method
