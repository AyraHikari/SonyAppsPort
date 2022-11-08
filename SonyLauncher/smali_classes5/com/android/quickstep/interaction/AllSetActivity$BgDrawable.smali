.class Lcom/android/quickstep/interaction/AllSetActivity$BgDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AllSetActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/interaction/AllSetActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BgDrawable"
.end annotation


# static fields
.field private static final END_SIZE_FACTOR:F = 2.0f

.field private static final GRADIENT_END_PROGRESS:F = 0.5f

.field private static final START_SIZE_FACTOR:F = 0.5f


# instance fields
.field private final mColor:I

.field private final mColorFilter:Landroid/graphics/ColorMatrixColorFilter;

.field private final mColorMatrix:Landroid/graphics/ColorMatrix;

.field private final mMaskGrad:Landroid/graphics/RadialGradient;

.field private final mMatrix:Landroid/graphics/Matrix;

.field private final mPaint:Landroid/graphics/Paint;

.field private mProgress:F


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .line 312
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 301
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/interaction/AllSetActivity$BgDrawable;->mPaint:Landroid/graphics/Paint;

    .line 303
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/quickstep/interaction/AllSetActivity$BgDrawable;->mMatrix:Landroid/graphics/Matrix;

    .line 305
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v1, p0, Lcom/android/quickstep/interaction/AllSetActivity$BgDrawable;->mColorMatrix:Landroid/graphics/ColorMatrix;

    .line 306
    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v2, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    iput-object v2, p0, Lcom/android/quickstep/interaction/AllSetActivity$BgDrawable;->mColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    .line 310
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/quickstep/interaction/AllSetActivity$BgDrawable;->mProgress:F

    .line 313
    sget v1, Lcom/android/launcher3/R$color;->all_set_page_background:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/quickstep/interaction/AllSetActivity$BgDrawable;->mColor:I

    .line 314
    new-instance v10, Landroid/graphics/RadialGradient;

    const/4 v3, 0x2

    new-array v7, v3, [I

    .line 315
    const/4 v4, 0x0

    invoke-static {v1, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v5

    aput v5, v7, v4

    const/4 v4, 0x1

    aput v1, v7, v4

    new-array v8, v3, [F

    fill-array-data v8, :array_0

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v10, p0, Lcom/android/quickstep/interaction/AllSetActivity$BgDrawable;->mMaskGrad:Landroid/graphics/RadialGradient;

    .line 318
    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 319
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 320
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 324
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcom/android/quickstep/interaction/AllSetActivity$BgDrawable;->mProgress:F

    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_0

    .line 325
    iget v2, v0, Lcom/android/quickstep/interaction/AllSetActivity$BgDrawable;->mColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 326
    return-void

    .line 330
    :cond_0
    const/4 v3, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    sget-object v7, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-static/range {v2 .. v7}, Lcom/android/launcher3/Utilities;->mapBoundToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v2

    .line 332
    .local v2, "progress":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/interaction/AllSetActivity$BgDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 333
    .local v3, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v4

    .line 334
    .local v4, "x":F
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    .line 336
    .local v5, "height":F
    invoke-static {v4, v5}, Landroid/graphics/PointF;->length(FF)F

    move-result v6

    .line 337
    .local v6, "size":F
    const/high16 v7, 0x3f000000    # 0.5f

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v2, v7, v8}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v7

    mul-float/2addr v7, v6

    .line 338
    .local v7, "radius":F
    add-float v9, v5, v7

    div-float v8, v5, v8

    invoke-static {v2, v9, v8}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v8

    .line 339
    .local v8, "y":F
    iget-object v9, v0, Lcom/android/quickstep/interaction/AllSetActivity$BgDrawable;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v4, v8}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 340
    iget-object v9, v0, Lcom/android/quickstep/interaction/AllSetActivity$BgDrawable;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v7, v7, v4, v8}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 341
    iget-object v9, v0, Lcom/android/quickstep/interaction/AllSetActivity$BgDrawable;->mMaskGrad:Landroid/graphics/RadialGradient;

    iget-object v10, v0, Lcom/android/quickstep/interaction/AllSetActivity$BgDrawable;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v10}, Landroid/graphics/RadialGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 345
    iget-object v9, v0, Lcom/android/quickstep/interaction/AllSetActivity$BgDrawable;->mColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v9}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v9

    const/16 v10, 0x13

    iget v11, v0, Lcom/android/quickstep/interaction/AllSetActivity$BgDrawable;->mProgress:F

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/high16 v15, -0x3c810000    # -255.0f

    sget-object v16, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-static/range {v11 .. v16}, Lcom/android/launcher3/Utilities;->mapBoundToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v11

    aput v11, v9, v10

    .line 346
    iget-object v9, v0, Lcom/android/quickstep/interaction/AllSetActivity$BgDrawable;->mColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    iget-object v10, v0, Lcom/android/quickstep/interaction/AllSetActivity$BgDrawable;->mColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v9, v10}, Landroid/graphics/ColorMatrixColorFilter;->setColorMatrix(Landroid/graphics/ColorMatrix;)V

    .line 348
    iget-object v9, v0, Lcom/android/quickstep/interaction/AllSetActivity$BgDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 349
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .line 360
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "i"    # I

    .line 364
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 367
    return-void
.end method

.method public setProgress(F)V
    .locals 1
    .param p1, "progress"    # F

    .line 352
    iget v0, p0, Lcom/android/quickstep/interaction/AllSetActivity$BgDrawable;->mProgress:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 353
    iput p1, p0, Lcom/android/quickstep/interaction/AllSetActivity$BgDrawable;->mProgress:F

    .line 354
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/AllSetActivity$BgDrawable;->invalidateSelf()V

    .line 356
    :cond_0
    return-void
.end method
