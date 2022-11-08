.class public Lcom/android/launcher3/icons/IconNormalizer;
.super Ljava/lang/Object;
.source "IconNormalizer.java"


# static fields
.field private static final BOUND_RATIO_MARGIN:F = 0.05f

.field private static final CIRCLE_AREA_BY_RECT:F = 0.7853982f

.field private static final DEBUG:Z = false

.field public static final ICON_VISIBLE_AREA_FACTOR:F = 0.92f

.field private static final LINEAR_SCALE_SLOPE:F = 0.040449437f

.field private static final MAX_CIRCLE_AREA_FACTOR:F = 0.6597222f

.field private static final MAX_SQUARE_AREA_FACTOR:F = 0.6510417f

.field private static final MIN_VISIBLE_ALPHA:I = 0x28

.field private static final PIXEL_DIFF_PERCENTAGE_THRESHOLD:F = 0.005f

.field private static final SCALE_NOT_INITIALIZED:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "IconNormalizer"


# instance fields
.field private final mAdaptiveIconBounds:Landroid/graphics/RectF;

.field private mAdaptiveIconScale:F

.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mBounds:Landroid/graphics/Rect;

.field private final mCanvas:Landroid/graphics/Canvas;

.field private mEnableShapeDetection:Z

.field private final mLeftBorder:[F

.field private final mMatrix:Landroid/graphics/Matrix;

.field private final mMaxSize:I

.field private final mPaintMaskShape:Landroid/graphics/Paint;

.field private final mPaintMaskShapeOutline:Landroid/graphics/Paint;

.field private final mPixels:[B

.field private final mRightBorder:[F

.field private final mShapePath:Landroid/graphics/Path;


# direct methods
.method constructor <init>(Landroid/content/Context;IZ)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iconBitmapSize"    # I
    .param p3, "shapeDetection"    # Z

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    mul-int/lit8 v0, p2, 0x2

    iput v0, p0, Lcom/android/launcher3/icons/IconNormalizer;->mMaxSize:I

    .line 91
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/icons/IconNormalizer;->mBitmap:Landroid/graphics/Bitmap;

    .line 92
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/android/launcher3/icons/IconNormalizer;->mCanvas:Landroid/graphics/Canvas;

    .line 93
    mul-int v1, v0, v0

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/android/launcher3/icons/IconNormalizer;->mPixels:[B

    .line 94
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher3/icons/IconNormalizer;->mLeftBorder:[F

    .line 95
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/launcher3/icons/IconNormalizer;->mRightBorder:[F

    .line 96
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/icons/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    .line 97
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/icons/IconNormalizer;->mAdaptiveIconBounds:Landroid/graphics/RectF;

    .line 99
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/icons/IconNormalizer;->mPaintMaskShape:Landroid/graphics/Paint;

    .line 100
    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 102
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->XOR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 104
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/icons/IconNormalizer;->mPaintMaskShapeOutline:Landroid/graphics/Paint;

    .line 105
    nop

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    .line 105
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 107
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 108
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 111
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/icons/IconNormalizer;->mShapePath:Landroid/graphics/Path;

    .line 112
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/icons/IconNormalizer;->mMatrix:Landroid/graphics/Matrix;

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/icons/IconNormalizer;->mAdaptiveIconScale:F

    .line 114
    iput-boolean p3, p0, Lcom/android/launcher3/icons/IconNormalizer;->mEnableShapeDetection:Z

    .line 115
    return-void
.end method

.method private static convertToConvexArray([FIII)V
    .locals 12
    .param p0, "xCoordinates"    # [F
    .param p1, "direction"    # I
    .param p2, "topY"    # I
    .param p3, "bottomY"    # I

    .line 360
    array-length v0, p0

    .line 362
    .local v0, "total":I
    add-int/lit8 v1, v0, -0x1

    new-array v1, v1, [F

    .line 364
    .local v1, "angles":[F
    move v2, p2

    .line 365
    .local v2, "first":I
    const/4 v3, -0x1

    .line 367
    .local v3, "last":I
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    .line 369
    .local v4, "lastAngle":F
    add-int/lit8 v5, p2, 0x1

    .local v5, "i":I
    :goto_0
    if-gt v5, p3, :cond_6

    .line 370
    aget v6, p0, v5

    const/high16 v7, -0x40800000    # -1.0f

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_0

    .line 371
    goto :goto_3

    .line 375
    :cond_0
    const v6, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v6, v4, v6

    if-nez v6, :cond_1

    .line 376
    move v6, v2

    .local v6, "start":I
    goto :goto_1

    .line 378
    .end local v6    # "start":I
    :cond_1
    aget v6, p0, v5

    aget v7, p0, v3

    sub-float/2addr v6, v7

    sub-int v7, v5, v3

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 379
    .local v6, "currentAngle":F
    move v7, v3

    .line 382
    .local v7, "start":I
    sub-float v8, v6, v4

    int-to-float v9, p1

    mul-float/2addr v8, v9

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gez v8, :cond_3

    move v11, v7

    move v7, v6

    move v6, v11

    .line 383
    .local v6, "start":I
    .local v7, "currentAngle":F
    :cond_2
    if-le v6, v2, :cond_4

    .line 384
    add-int/lit8 v6, v6, -0x1

    .line 385
    aget v8, p0, v5

    aget v10, p0, v6

    sub-float/2addr v8, v10

    sub-int v10, v5, v6

    int-to-float v10, v10

    div-float v7, v8, v10

    .line 386
    aget v8, v1, v6

    sub-float v8, v7, v8

    int-to-float v10, p1

    mul-float/2addr v8, v10

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_2

    .line 387
    goto :goto_1

    .line 382
    .local v6, "currentAngle":F
    .local v7, "start":I
    :cond_3
    move v6, v7

    .line 394
    .end local v7    # "start":I
    .local v6, "start":I
    :cond_4
    :goto_1
    aget v7, p0, v5

    aget v8, p0, v6

    sub-float/2addr v7, v8

    sub-int v8, v5, v6

    int-to-float v8, v8

    div-float/2addr v7, v8

    .line 396
    .end local v4    # "lastAngle":F
    .local v7, "lastAngle":F
    move v4, v6

    .local v4, "j":I
    :goto_2
    if-ge v4, v5, :cond_5

    .line 397
    aput v7, v1, v4

    .line 398
    aget v8, p0, v6

    sub-int v9, v4, v6

    int-to-float v9, v9

    mul-float/2addr v9, v7

    add-float/2addr v8, v9

    aput v8, p0, v4

    .line 396
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 400
    .end local v4    # "j":I
    :cond_5
    move v3, v5

    move v4, v7

    .line 369
    .end local v6    # "start":I
    .end local v7    # "lastAngle":F
    .local v4, "lastAngle":F
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 402
    .end local v5    # "i":I
    :cond_6
    return-void
.end method

.method public static getNormalizedCircleSize(I)I
    .locals 5
    .param p0, "size"    # I

    .line 408
    mul-int v0, p0, p0

    int-to-float v0, v0

    const v1, 0x3f28e38e

    mul-float/2addr v0, v1

    .line 409
    .local v0, "area":F
    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-double v1, v1

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    return v1
.end method

.method private static getScale(FFF)F
    .locals 6
    .param p0, "hullArea"    # F
    .param p1, "boundingArea"    # F
    .param p2, "fullArea"    # F

    .line 118
    div-float v0, p0, p1

    .line 120
    .local v0, "hullByRect":F
    const v1, 0x3f490fdb

    cmpg-float v1, v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-gez v1, :cond_0

    .line 121
    const v1, 0x3f28e38e

    .local v1, "scaleRequired":F
    goto :goto_0

    .line 123
    .end local v1    # "scaleRequired":F
    :cond_0
    const v1, 0x3f26aaab

    const v3, 0x3d25ae4f

    sub-float v4, v2, v0

    mul-float/2addr v4, v3

    add-float/2addr v1, v4

    .line 126
    .restart local v1    # "scaleRequired":F
    :goto_0
    div-float v3, p0, p2

    .line 128
    .local v3, "areaScale":F
    cmpl-float v4, v3, v1

    if-lez v4, :cond_1

    div-float v2, v1, v3

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v2, v4

    :cond_1
    return v2
.end method

.method private isShape(Landroid/graphics/Path;)Z
    .locals 4
    .param p1, "maskPath"    # Landroid/graphics/Path;

    .line 167
    iget-object v0, p0, Lcom/android/launcher3/icons/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/icons/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 168
    .local v0, "iconRatio":F
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3d4ccccd    # 0.05f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 172
    const/4 v1, 0x0

    return v1

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/icons/IconNormalizer;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 181
    iget-object v1, p0, Lcom/android/launcher3/icons/IconNormalizer;->mMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/launcher3/icons/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/launcher3/icons/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 182
    iget-object v1, p0, Lcom/android/launcher3/icons/IconNormalizer;->mMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/launcher3/icons/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/launcher3/icons/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 183
    iget-object v1, p0, Lcom/android/launcher3/icons/IconNormalizer;->mMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/launcher3/icons/IconNormalizer;->mShapePath:Landroid/graphics/Path;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 186
    iget-object v1, p0, Lcom/android/launcher3/icons/IconNormalizer;->mCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/android/launcher3/icons/IconNormalizer;->mShapePath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/launcher3/icons/IconNormalizer;->mPaintMaskShape:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 189
    iget-object v1, p0, Lcom/android/launcher3/icons/IconNormalizer;->mCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/android/launcher3/icons/IconNormalizer;->mShapePath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/launcher3/icons/IconNormalizer;->mPaintMaskShapeOutline:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 192
    invoke-direct {p0}, Lcom/android/launcher3/icons/IconNormalizer;->isTransparentBitmap()Z

    move-result v1

    return v1
.end method

.method private isTransparentBitmap()Z
    .locals 8

    .line 199
    iget-object v0, p0, Lcom/android/launcher3/icons/IconNormalizer;->mPixels:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 200
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 201
    iget-object v1, p0, Lcom/android/launcher3/icons/IconNormalizer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 203
    iget-object v1, p0, Lcom/android/launcher3/icons/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 205
    .local v1, "y":I
    iget v2, p0, Lcom/android/launcher3/icons/IconNormalizer;->mMaxSize:I

    mul-int v3, v1, v2

    .line 207
    .local v3, "index":I
    iget-object v4, p0, Lcom/android/launcher3/icons/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v4

    .line 209
    .local v2, "rowSizeDiff":I
    const/4 v4, 0x0

    .line 210
    .local v4, "sum":I
    :goto_0
    iget-object v5, p0, Lcom/android/launcher3/icons/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    if-ge v1, v5, :cond_2

    .line 211
    iget-object v5, p0, Lcom/android/launcher3/icons/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v5

    .line 212
    iget-object v5, p0, Lcom/android/launcher3/icons/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    .local v5, "x":I
    :goto_1
    iget-object v6, p0, Lcom/android/launcher3/icons/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    if-ge v5, v6, :cond_1

    .line 213
    iget-object v6, p0, Lcom/android/launcher3/icons/IconNormalizer;->mPixels:[B

    aget-byte v6, v6, v3

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x28

    if-le v6, v7, :cond_0

    .line 214
    add-int/lit8 v4, v4, 0x1

    .line 216
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 212
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 218
    .end local v5    # "x":I
    :cond_1
    add-int/2addr v3, v2

    .line 210
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 221
    :cond_2
    int-to-float v5, v4

    iget-object v6, p0, Lcom/android/launcher3/icons/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v7, p0, Lcom/android/launcher3/icons/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    mul-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 222
    .local v5, "percentageDiffPixels":F
    const v6, 0x3ba3d70a    # 0.005f

    cmpg-float v6, v5, v6

    if-gez v6, :cond_3

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    return v6
.end method

.method public static normalizeAdaptiveIcon(Landroid/graphics/drawable/Drawable;ILandroid/graphics/RectF;)F
    .locals 11
    .param p0, "d"    # Landroid/graphics/drawable/Drawable;
    .param p1, "size"    # I
    .param p2, "outBounds"    # Landroid/graphics/RectF;

    .line 137
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 138
    .local v0, "tmpBounds":Landroid/graphics/Rect;
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, p1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 140
    move-object v2, p0

    check-cast v2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIconMask()Landroid/graphics/Path;

    move-result-object v2

    .line 141
    .local v2, "path":Landroid/graphics/Path;
    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    .line 142
    .local v3, "region":Landroid/graphics/Region;
    new-instance v4, Landroid/graphics/Region;

    invoke-direct {v4, v1, v1, p1, p1}, Landroid/graphics/Region;-><init>(IIII)V

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 144
    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 145
    .local v1, "hullBounds":Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/android/launcher3/icons/GraphicsUtils;->getArea(Landroid/graphics/Region;)I

    move-result v4

    .line 147
    .local v4, "hullArea":I
    if-eqz p2, :cond_0

    .line 148
    int-to-float v5, p1

    .line 149
    .local v5, "sizeF":F
    iget v6, v1, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    div-float/2addr v6, v5

    iget v7, v1, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    div-float/2addr v7, v5

    iget v8, v1, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    div-float/2addr v8, v5

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v8, v9, v8

    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    div-float/2addr v10, v5

    sub-float/2addr v9, v10

    invoke-virtual {p2, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 155
    .end local v5    # "sizeF":F
    :cond_0
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 156
    int-to-float v5, v4

    int-to-float v6, v4

    mul-int v7, p1, p1

    int-to-float v7, v7

    invoke-static {v5, v6, v7}, Lcom/android/launcher3/icons/IconNormalizer;->getScale(FFF)F

    move-result v5

    return v5
.end method


# virtual methods
.method public declared-synchronized getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/Path;[Z)F
    .locals 19
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "outBounds"    # Landroid/graphics/RectF;
    .param p3, "path"    # Landroid/graphics/Path;
    .param p4, "outMaskShape"    # [Z

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    monitor-enter p0

    .line 241
    :try_start_0
    instance-of v4, v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v4, :cond_2

    .line 242
    iget v4, v1, Lcom/android/launcher3/icons/IconNormalizer;->mAdaptiveIconScale:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 243
    iget v4, v1, Lcom/android/launcher3/icons/IconNormalizer;->mMaxSize:I

    iget-object v5, v1, Lcom/android/launcher3/icons/IconNormalizer;->mAdaptiveIconBounds:Landroid/graphics/RectF;

    invoke-static {v0, v4, v5}, Lcom/android/launcher3/icons/IconNormalizer;->normalizeAdaptiveIcon(Landroid/graphics/drawable/Drawable;ILandroid/graphics/RectF;)F

    move-result v4

    iput v4, v1, Lcom/android/launcher3/icons/IconNormalizer;->mAdaptiveIconScale:F

    .line 245
    .end local p0    # "this":Lcom/android/launcher3/icons/IconNormalizer;
    :cond_0
    if-eqz v2, :cond_1

    .line 246
    iget-object v4, v1, Lcom/android/launcher3/icons/IconNormalizer;->mAdaptiveIconBounds:Landroid/graphics/RectF;

    invoke-virtual {v2, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 248
    :cond_1
    iget v4, v1, Lcom/android/launcher3/icons/IconNormalizer;->mAdaptiveIconScale:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v4

    .line 250
    :cond_2
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 251
    .local v4, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 252
    .local v5, "height":I
    if-lez v4, :cond_5

    if-gtz v5, :cond_3

    goto :goto_0

    .line 255
    :cond_3
    iget v6, v1, Lcom/android/launcher3/icons/IconNormalizer;->mMaxSize:I

    if-gt v4, v6, :cond_4

    if-le v5, v6, :cond_a

    .line 256
    :cond_4
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 257
    .local v6, "max":I
    iget v7, v1, Lcom/android/launcher3/icons/IconNormalizer;->mMaxSize:I

    mul-int v8, v7, v4

    div-int/2addr v8, v6

    move v4, v8

    .line 258
    mul-int/2addr v7, v5

    div-int/2addr v7, v6

    move v5, v7

    goto :goto_5

    .line 253
    .end local v6    # "max":I
    :cond_5
    :goto_0
    if-lez v4, :cond_7

    iget v6, v1, Lcom/android/launcher3/icons/IconNormalizer;->mMaxSize:I

    if-le v4, v6, :cond_6

    goto :goto_1

    :cond_6
    move v6, v4

    goto :goto_2

    :cond_7
    :goto_1
    iget v6, v1, Lcom/android/launcher3/icons/IconNormalizer;->mMaxSize:I

    :goto_2
    move v4, v6

    .line 254
    if-lez v5, :cond_9

    iget v6, v1, Lcom/android/launcher3/icons/IconNormalizer;->mMaxSize:I

    if-le v5, v6, :cond_8

    goto :goto_3

    :cond_8
    move v6, v5

    goto :goto_4

    :cond_9
    :goto_3
    iget v6, v1, Lcom/android/launcher3/icons/IconNormalizer;->mMaxSize:I

    :goto_4
    move v5, v6

    .line 261
    :cond_a
    :goto_5
    iget-object v6, v1, Lcom/android/launcher3/icons/IconNormalizer;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 262
    invoke-virtual {v0, v7, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 263
    iget-object v6, v1, Lcom/android/launcher3/icons/IconNormalizer;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 265
    iget-object v6, v1, Lcom/android/launcher3/icons/IconNormalizer;->mPixels:[B

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 266
    .local v6, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 267
    iget-object v8, v1, Lcom/android/launcher3/icons/IconNormalizer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v6}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 270
    const/4 v8, -0x1

    .line 271
    .local v8, "topY":I
    const/4 v9, -0x1

    .line 272
    .local v9, "bottomY":I
    iget v10, v1, Lcom/android/launcher3/icons/IconNormalizer;->mMaxSize:I

    add-int/lit8 v11, v10, 0x1

    .line 273
    .local v11, "leftX":I
    const/4 v12, -0x1

    .line 280
    .local v12, "rightX":I
    const/4 v13, 0x0

    .line 282
    .local v13, "index":I
    sub-int/2addr v10, v4

    .line 286
    .local v10, "rowSizeDiff":I
    const/4 v14, 0x0

    .local v14, "y":I
    :goto_6
    const/4 v15, -0x1

    if-ge v14, v5, :cond_10

    .line 287
    move/from16 v16, v15

    .local v16, "lastX":I
    move/from16 v17, v15

    .line 288
    .local v17, "firstX":I
    const/16 v18, 0x0

    move/from16 v7, v16

    move/from16 v0, v17

    move/from16 v15, v18

    .end local v16    # "lastX":I
    .end local v17    # "firstX":I
    .local v0, "firstX":I
    .local v7, "lastX":I
    .local v15, "x":I
    :goto_7
    if-ge v15, v4, :cond_d

    .line 289
    move-object/from16 v18, v6

    .end local v6    # "buffer":Ljava/nio/ByteBuffer;
    .local v18, "buffer":Ljava/nio/ByteBuffer;
    iget-object v6, v1, Lcom/android/launcher3/icons/IconNormalizer;->mPixels:[B

    aget-byte v6, v6, v13

    and-int/lit16 v6, v6, 0xff

    const/16 v3, 0x28

    if-le v6, v3, :cond_c

    .line 290
    const/4 v3, -0x1

    if-ne v0, v3, :cond_b

    .line 291
    move v0, v15

    .line 293
    :cond_b
    move v3, v15

    move v7, v3

    .line 295
    :cond_c
    add-int/lit8 v13, v13, 0x1

    .line 288
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v3, p4

    move-object/from16 v6, v18

    goto :goto_7

    .end local v18    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v6    # "buffer":Ljava/nio/ByteBuffer;
    :cond_d
    move-object/from16 v18, v6

    .line 297
    .end local v6    # "buffer":Ljava/nio/ByteBuffer;
    .end local v15    # "x":I
    .restart local v18    # "buffer":Ljava/nio/ByteBuffer;
    add-int/2addr v13, v10

    .line 299
    iget-object v3, v1, Lcom/android/launcher3/icons/IconNormalizer;->mLeftBorder:[F

    int-to-float v6, v0

    aput v6, v3, v14

    .line 300
    iget-object v3, v1, Lcom/android/launcher3/icons/IconNormalizer;->mRightBorder:[F

    int-to-float v6, v7

    aput v6, v3, v14

    .line 303
    const/4 v3, -0x1

    if-eq v0, v3, :cond_f

    .line 304
    move v6, v14

    .line 305
    .end local v9    # "bottomY":I
    .local v6, "bottomY":I
    if-ne v8, v3, :cond_e

    .line 306
    move v8, v14

    .line 309
    :cond_e
    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 310
    .end local v11    # "leftX":I
    .local v3, "leftX":I
    invoke-static {v12, v7}, Ljava/lang/Math;->max(II)I

    move-result v9

    move v11, v3

    move v12, v9

    move v9, v6

    .line 286
    .end local v3    # "leftX":I
    .end local v6    # "bottomY":I
    .restart local v9    # "bottomY":I
    .restart local v11    # "leftX":I
    :cond_f
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p1

    move-object/from16 v3, p4

    move-object/from16 v6, v18

    const/4 v7, 0x0

    goto :goto_6

    .end local v0    # "firstX":I
    .end local v7    # "lastX":I
    .end local v18    # "buffer":Ljava/nio/ByteBuffer;
    .local v6, "buffer":Ljava/nio/ByteBuffer;
    :cond_10
    move-object/from16 v18, v6

    .line 314
    .end local v6    # "buffer":Ljava/nio/ByteBuffer;
    .end local v14    # "y":I
    .restart local v18    # "buffer":Ljava/nio/ByteBuffer;
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v3, -0x1

    if-eq v8, v3, :cond_16

    if-ne v12, v3, :cond_11

    move-object/from16 v7, p3

    move-object/from16 v6, p4

    move/from16 v17, v10

    goto/16 :goto_c

    .line 319
    :cond_11
    iget-object v3, v1, Lcom/android/launcher3/icons/IconNormalizer;->mLeftBorder:[F

    const/4 v6, 0x1

    invoke-static {v3, v6, v8, v9}, Lcom/android/launcher3/icons/IconNormalizer;->convertToConvexArray([FIII)V

    .line 320
    iget-object v3, v1, Lcom/android/launcher3/icons/IconNormalizer;->mRightBorder:[F

    const/4 v6, -0x1

    invoke-static {v3, v6, v8, v9}, Lcom/android/launcher3/icons/IconNormalizer;->convertToConvexArray([FIII)V

    .line 323
    const/4 v3, 0x0

    .line 324
    .local v3, "area":F
    const/4 v6, 0x0

    .local v6, "y":I
    :goto_8
    if-ge v6, v5, :cond_13

    .line 325
    iget-object v7, v1, Lcom/android/launcher3/icons/IconNormalizer;->mLeftBorder:[F

    aget v7, v7, v6

    const/high16 v14, -0x40800000    # -1.0f

    cmpg-float v14, v7, v14

    if-gtz v14, :cond_12

    .line 326
    goto :goto_9

    .line 328
    :cond_12
    iget-object v14, v1, Lcom/android/launcher3/icons/IconNormalizer;->mRightBorder:[F

    aget v14, v14, v6

    sub-float/2addr v14, v7

    add-float/2addr v14, v0

    add-float/2addr v3, v14

    .line 324
    :goto_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 331
    .end local v6    # "y":I
    :cond_13
    iget-object v6, v1, Lcom/android/launcher3/icons/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    iput v11, v6, Landroid/graphics/Rect;->left:I

    .line 332
    iget-object v6, v1, Lcom/android/launcher3/icons/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    iput v12, v6, Landroid/graphics/Rect;->right:I

    .line 334
    iget-object v6, v1, Lcom/android/launcher3/icons/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    iput v8, v6, Landroid/graphics/Rect;->top:I

    .line 335
    iget-object v6, v1, Lcom/android/launcher3/icons/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    iput v9, v6, Landroid/graphics/Rect;->bottom:I

    .line 337
    if-eqz v2, :cond_14

    .line 338
    iget-object v6, v1, Lcom/android/launcher3/icons/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    int-to-float v7, v4

    div-float/2addr v6, v7

    iget-object v7, v1, Lcom/android/launcher3/icons/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    int-to-float v14, v5

    div-float/2addr v7, v14

    iget-object v14, v1, Lcom/android/launcher3/icons/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    int-to-float v14, v14

    int-to-float v15, v4

    div-float/2addr v14, v15

    sub-float v14, v0, v14

    iget-object v15, v1, Lcom/android/launcher3/icons/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    int-to-float v15, v15

    move/from16 v17, v10

    .end local v10    # "rowSizeDiff":I
    .local v17, "rowSizeDiff":I
    int-to-float v10, v5

    div-float/2addr v15, v10

    sub-float/2addr v0, v15

    invoke-virtual {v2, v6, v7, v14, v0}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_a

    .line 337
    .end local v17    # "rowSizeDiff":I
    .restart local v10    # "rowSizeDiff":I
    :cond_14
    move/from16 v17, v10

    .line 342
    .end local v10    # "rowSizeDiff":I
    .restart local v17    # "rowSizeDiff":I
    :goto_a
    move-object/from16 v6, p4

    if-eqz v6, :cond_15

    iget-boolean v0, v1, Lcom/android/launcher3/icons/IconNormalizer;->mEnableShapeDetection:Z

    if-eqz v0, :cond_15

    array-length v0, v6

    if-lez v0, :cond_15

    .line 343
    move-object/from16 v7, p3

    invoke-direct {v1, v7}, Lcom/android/launcher3/icons/IconNormalizer;->isShape(Landroid/graphics/Path;)Z

    move-result v0

    const/4 v10, 0x0

    aput-boolean v0, v6, v10

    goto :goto_b

    .line 342
    :cond_15
    move-object/from16 v7, p3

    .line 346
    :goto_b
    add-int/lit8 v0, v9, 0x1

    sub-int/2addr v0, v8

    add-int/lit8 v10, v12, 0x1

    sub-int/2addr v10, v11

    mul-int/2addr v0, v10

    int-to-float v0, v0

    .line 347
    .local v0, "rectArea":F
    mul-int v10, v4, v5

    int-to-float v10, v10

    invoke-static {v3, v0, v10}, Lcom/android/launcher3/icons/IconNormalizer;->getScale(FFF)F

    move-result v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v10

    .line 314
    .end local v0    # "rectArea":F
    .end local v3    # "area":F
    .end local v17    # "rowSizeDiff":I
    .restart local v10    # "rowSizeDiff":I
    :cond_16
    move-object/from16 v7, p3

    move-object/from16 v6, p4

    move/from16 v17, v10

    .line 316
    .end local v10    # "rowSizeDiff":I
    .restart local v17    # "rowSizeDiff":I
    :goto_c
    monitor-exit p0

    return v0

    .line 240
    .end local v4    # "width":I
    .end local v5    # "height":I
    .end local v8    # "topY":I
    .end local v9    # "bottomY":I
    .end local v11    # "leftX":I
    .end local v12    # "rightX":I
    .end local v13    # "index":I
    .end local v17    # "rowSizeDiff":I
    .end local v18    # "buffer":Ljava/nio/ByteBuffer;
    .end local p1    # "d":Landroid/graphics/drawable/Drawable;
    .end local p2    # "outBounds":Landroid/graphics/RectF;
    .end local p3    # "path":Landroid/graphics/Path;
    .end local p4    # "outMaskShape":[Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
