.class public Lcom/android/launcher3/icons/ShadowGenerator;
.super Ljava/lang/Object;
.source "ShadowGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/icons/ShadowGenerator$Builder;
    }
.end annotation


# static fields
.field private static final AMBIENT_SHADOW_ALPHA:I = 0x19

.field public static final BLUR_FACTOR:F = 0.035f

.field public static final ENABLE_SHADOWS:Z = true

.field private static final HALF_DISTANCE:F = 0.5f

.field private static final KEY_SHADOW_ALPHA:I = 0x7

.field public static final KEY_SHADOW_DISTANCE:F = 0.020833334f


# instance fields
.field private final mBlurPaint:Landroid/graphics/Paint;

.field private final mDefaultBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private final mDrawPaint:Landroid/graphics/Paint;

.field private final mIconSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "iconSize"    # I

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lcom/android/launcher3/icons/ShadowGenerator;->mIconSize:I

    .line 55
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/icons/ShadowGenerator;->mBlurPaint:Landroid/graphics/Paint;

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/icons/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    .line 57
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    int-to-float v1, p1

    const v2, 0x3d0f5c29    # 0.035f

    mul-float/2addr v1, v2

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v0, p0, Lcom/android/launcher3/icons/ShadowGenerator;->mDefaultBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 58
    return-void
.end method

.method public static getScaleForBounds(Landroid/graphics/RectF;)F
    .locals 6
    .param p0, "bounds"    # Landroid/graphics/RectF;

    .line 91
    const/high16 v0, 0x3f800000    # 1.0f

    .line 95
    .local v0, "scale":F
    iget v1, p0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Landroid/graphics/RectF;->right:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v2, p0, Landroid/graphics/RectF;->top:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 96
    .local v1, "minSide":F
    const v2, 0x3d0f5c29    # 0.035f

    cmpg-float v2, v1, v2

    const/high16 v3, 0x3f000000    # 0.5f

    if-gez v2, :cond_0

    .line 97
    const v2, 0x3eee147b    # 0.465f

    sub-float v4, v3, v1

    div-float v0, v2, v4

    .line 100
    :cond_0
    const v2, 0x3d64b17e

    .line 101
    .local v2, "bottomSpace":F
    iget v4, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v4, v4, v2

    if-gez v4, :cond_1

    .line 102
    sub-float v4, v3, v2

    iget v5, p0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v5

    div-float/2addr v4, v3

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 106
    .end local v1    # "minSide":F
    .end local v2    # "bottomSpace":F
    :cond_1
    return v0
.end method


# virtual methods
.method public declared-synchronized recreateIcon(Landroid/graphics/Bitmap;Landroid/graphics/BlurMaskFilter;IILandroid/graphics/Canvas;)V
    .locals 7
    .param p1, "icon"    # Landroid/graphics/Bitmap;
    .param p2, "blurMaskFilter"    # Landroid/graphics/BlurMaskFilter;
    .param p3, "ambientAlpha"    # I
    .param p4, "keyAlpha"    # I
    .param p5, "out"    # Landroid/graphics/Canvas;

    monitor-enter p0

    .line 67
    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [I

    .line 68
    .local v0, "offset":[I
    iget-object v1, p0, Lcom/android/launcher3/icons/ShadowGenerator;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 69
    iget-object v1, p0, Lcom/android/launcher3/icons/ShadowGenerator;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 72
    .local v1, "shadow":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/launcher3/icons/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 73
    const/4 v2, 0x0

    aget v3, v0, v2

    int-to-float v3, v3

    const/4 v4, 0x1

    aget v5, v0, v4

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/launcher3/icons/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p5, v1, v3, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 76
    iget-object v3, p0, Lcom/android/launcher3/icons/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 77
    aget v2, v0, v2

    int-to-float v2, v2

    aget v3, v0, v4

    int-to-float v3, v3

    const v4, 0x3caaaaab

    iget v5, p0, Lcom/android/launcher3/icons/ShadowGenerator;->mIconSize:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    add-float/2addr v3, v5

    iget-object v4, p0, Lcom/android/launcher3/icons/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p5, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 82
    .end local v0    # "offset":[I
    .end local v1    # "shadow":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/android/launcher3/icons/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 83
    iget-object v0, p0, Lcom/android/launcher3/icons/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p5, p1, v1, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit p0

    return-void

    .line 66
    .end local p0    # "this":Lcom/android/launcher3/icons/ShadowGenerator;
    .end local p1    # "icon":Landroid/graphics/Bitmap;
    .end local p2    # "blurMaskFilter":Landroid/graphics/BlurMaskFilter;
    .end local p3    # "ambientAlpha":I
    .end local p4    # "keyAlpha":I
    .end local p5    # "out":Landroid/graphics/Canvas;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized recreateIcon(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "icon"    # Landroid/graphics/Bitmap;
    .param p2, "out"    # Landroid/graphics/Canvas;

    monitor-enter p0

    .line 61
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher3/icons/ShadowGenerator;->mDefaultBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    const/16 v3, 0x19

    const/4 v4, 0x7

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/icons/ShadowGenerator;->recreateIcon(Landroid/graphics/Bitmap;Landroid/graphics/BlurMaskFilter;IILandroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit p0

    return-void

    .line 60
    .end local p0    # "this":Lcom/android/launcher3/icons/ShadowGenerator;
    .end local p1    # "icon":Landroid/graphics/Bitmap;
    .end local p2    # "out":Landroid/graphics/Canvas;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
