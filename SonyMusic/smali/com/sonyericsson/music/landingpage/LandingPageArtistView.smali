.class public Lcom/sonyericsson/music/landingpage/LandingPageArtistView;
.super Lcom/sonyericsson/music/ui/LandingPageHeaderImageView;
.source "LandingPageArtistView.java"


# static fields
.field private static final BOTTOM_GRADIENT_SAMPLES:I = 0x1e

.field private static final DEFAULT_IMAGE_HASH:I = -0x1

.field private static final DEFAULT_SCALE_FACTOR:F = 1.0f

.field private static final FADE_DURATION_MS:I = 0x5dc

.field private static final MIDDLE_GRADIENT_SAMPLES:I = 0xa

.field private static final OVERSCROLL_SCALE_FACTOR:F = 0.3f

.field private static final TOP_GRADIENT_SAMPLES:I = 0x14

.field private static final ZOOM_DURATION_MS:J = 0xbb8L

.field private static final ZOOM_FACTOR:F = 0.1f


# instance fields
.field private final mAlphaPaint:Landroid/graphics/Paint;

.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapScaleX:F

.field private mBitmapScaleY:F

.field private mCanvasSize:Landroid/graphics/Rect;

.field private final mCompositeMatrix:Landroid/graphics/Matrix;

.field private mFadeAlpha:F

.field private final mGradientPaint:Landroid/graphics/Paint;

.field private final mImageBackgroundColor:I

.field private final mImageFilterPaint:Landroid/graphics/Paint;

.field private final mImageTopColors:I

.field private mIncreasingSize:F

.field private mPreviousHash:I

.field private final mScaleCropMatrix:Landroid/graphics/Matrix;

.field private mViewAlpha:F

.field private mZoomAnimator:Landroid/animation/ValueAnimator;

.field private final mZoomEffectMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/music/ui/LandingPageHeaderImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mGradientPaint:Landroid/graphics/Paint;

    .line 49
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mAlphaPaint:Landroid/graphics/Paint;

    .line 50
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mImageFilterPaint:Landroid/graphics/Paint;

    .line 51
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mScaleCropMatrix:Landroid/graphics/Matrix;

    .line 52
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mZoomEffectMatrix:Landroid/graphics/Matrix;

    .line 53
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mCompositeMatrix:Landroid/graphics/Matrix;

    const/4 p2, -0x1

    .line 70
    iput p2, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mPreviousHash:I

    .line 72
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mCanvasSize:Landroid/graphics/Rect;

    const/high16 p2, 0x3f800000    # 1.0f

    .line 88
    iput p2, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mFadeAlpha:F

    .line 89
    iput p2, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mViewAlpha:F

    .line 91
    invoke-static {p1}, Lcom/sonyericsson/music/common/ThemeColor;->window(Landroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mImageBackgroundColor:I

    .line 93
    invoke-static {p1}, Lcom/sonyericsson/music/common/ThemeColor;->landingpageArtistViewTopColor(Landroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mImageTopColors:I

    .line 96
    iget-object p2, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mImageFilterPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f06006e

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mAlphaPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/music/landingpage/LandingPageArtistView;F)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->setZoomedMatrix(F)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/music/landingpage/LandingPageArtistView;Landroid/graphics/Bitmap;Z)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->setDrawable(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method static synthetic access$202(Lcom/sonyericsson/music/landingpage/LandingPageArtistView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mZoomAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sonyericsson/music/landingpage/LandingPageArtistView;F)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->setFadeAlpha(F)V

    return-void
.end method

.method private computeScale(II)V
    .locals 3

    .line 162
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mCanvasSize:Landroid/graphics/Rect;

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float p1, p1, v0

    .line 164
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    int-to-float p2, p2

    mul-float p2, p2, v0

    .line 165
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    .line 166
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mBitmapScaleX:F

    .line 167
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mBitmapScaleY:F

    .line 169
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mScaleCropMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mBitmapScaleX:F

    iget v2, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mBitmapScaleY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    const/4 v0, 0x0

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v2, p1, p2

    if-lez v2, :cond_0

    sub-float/2addr p2, p1

    .line 174
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mScaleCropMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float p2, p2, v2

    div-float/2addr p2, v1

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :cond_0
    sub-float/2addr p1, p2

    .line 178
    iget-object p2, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mScaleCropMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float p1, p1, v2

    div-float/2addr p1, v1

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :goto_0
    return-void
.end method

.method private createBottomColorArray(I)[I
    .locals 1

    const/16 v0, 0x1e

    .line 276
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->createColorArray(II)[I

    move-result-object p1

    return-object p1
.end method

.method private createColorArray(II)[I
    .locals 9

    .line 263
    new-array v0, p2, [I

    .line 264
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 265
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 266
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 267
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, p2, :cond_0

    .line 269
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v5

    add-int/lit8 v8, p2, -0x1

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-interface {v1, v7}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v7

    mul-float v6, v6, v7

    float-to-int v6, v6

    .line 270
    invoke-static {v6, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    aput v6, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private createTopColorArray(I)[I
    .locals 4

    const/16 v0, 0x14

    .line 280
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->createColorArray(II)[I

    move-result-object p1

    .line 281
    array-length v0, p1

    new-array v0, v0, [I

    .line 282
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ltz v1, :cond_0

    .line 283
    aget v3, p1, v1

    aput v3, v0, v2

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private prepareGradientPaint(I)V
    .locals 13

    .line 234
    iget v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mImageTopColors:I

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->createTopColorArray(I)[I

    move-result-object v0

    .line 235
    iget v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mImageBackgroundColor:I

    invoke-direct {p0, v1}, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->createBottomColorArray(I)[I

    move-result-object v1

    const/16 v2, 0xa

    .line 238
    new-array v3, v2, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_0

    const/16 v6, 0xff

    .line 240
    invoke-static {v4, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    aput v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 245
    :cond_0
    array-length v2, v0

    array-length v5, v3

    add-int/2addr v2, v5

    array-length v5, v1

    add-int/2addr v2, v5

    new-array v10, v2, [I

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 247
    :goto_1
    array-length v6, v0

    if-ge v2, v6, :cond_1

    .line 248
    aget v6, v0, v2

    aput v6, v10, v5

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 250
    :goto_2
    array-length v2, v3

    if-ge v0, v2, :cond_2

    .line 251
    aget v2, v3, v0

    aput v2, v10, v5

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 253
    :cond_2
    :goto_3
    array-length v0, v1

    if-ge v4, v0, :cond_3

    .line 254
    aget v0, v1, v4

    aput v0, v10, v5

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 257
    :cond_3
    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    int-to-float v9, p1

    const/4 v11, 0x0

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v5, v0

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 259
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method private setDrawable(Landroid/graphics/Bitmap;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p2, -0x1

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p2

    :goto_0
    iput p2, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mPreviousHash:I

    .line 105
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mBitmap:Landroid/graphics/Bitmap;

    .line 106
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    if-lez p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    if-lez p1, :cond_1

    .line 107
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->computeScale(II)V

    .line 109
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private setFadeAlpha(F)V
    .locals 0

    .line 311
    iput p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mFadeAlpha:F

    .line 312
    invoke-direct {p0}, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->updateAlpha()V

    return-void
.end method

.method private setZoomedMatrix(F)V
    .locals 4

    .line 113
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mZoomEffectMatrix:Landroid/graphics/Matrix;

    const v1, 0x3dcccccd    # 0.1f

    mul-float p1, p1, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr p1, v1

    .line 114
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    .line 113
    invoke-virtual {v0, p1, p1, v1, v3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 115
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private startFadeInAnimation()V
    .locals 3

    const/4 v0, 0x2

    .line 289
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mAnimator:Landroid/animation/ValueAnimator;

    .line 290
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sonyericsson/music/landingpage/LandingPageArtistView$3;

    invoke-direct {v1, p0}, Lcom/sonyericsson/music/landingpage/LandingPageArtistView$3;-><init>(Lcom/sonyericsson/music/landingpage/LandingPageArtistView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 296
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startZoomOutAnimation(Landroid/graphics/Bitmap;Z)V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mZoomAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 122
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mZoomAnimator:Landroid/animation/ValueAnimator;

    .line 123
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mZoomAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sonyericsson/music/landingpage/LandingPageArtistView$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/music/landingpage/LandingPageArtistView$1;-><init>(Lcom/sonyericsson/music/landingpage/LandingPageArtistView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 130
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mZoomAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sonyericsson/music/landingpage/LandingPageArtistView$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/sonyericsson/music/landingpage/LandingPageArtistView$2;-><init>(Lcom/sonyericsson/music/landingpage/LandingPageArtistView;Landroid/graphics/Bitmap;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 141
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mZoomAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 142
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mZoomAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 143
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mZoomAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private updateAlpha()V
    .locals 3

    .line 317
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mAlphaPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mViewAlpha:F

    iget v2, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mFadeAlpha:F

    mul-float v1, v1, v2

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method


# virtual methods
.method public getAlpha()F
    .locals 1

    .line 301
    iget v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mViewAlpha:F

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBehaviorScaleScrolling(FI)V
    .locals 2

    .line 321
    iget v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mIncreasingSize:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mIncreasingSize:F

    .line 322
    iget p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mIncreasingSize:F

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mIncreasingSize:F

    .line 324
    iget p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mIncreasingSize:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const v0, 0x3e99999a    # 0.3f

    mul-float p1, p1, v0

    int-to-float p2, p2

    div-float/2addr p1, p2

    sub-float/2addr v1, p1

    .line 327
    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 328
    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public onBitmapLoaded(Landroid/graphics/Bitmap;Z)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 190
    iget v2, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mPreviousHash:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 192
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    iget v3, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mPreviousHash:I

    if-ne v2, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 195
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mZoomAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_3

    .line 196
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    :cond_3
    if-nez v0, :cond_4

    .line 200
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mZoomAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_5

    .line 201
    invoke-direct {p0}, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->startFadeInAnimation()V

    .line 202
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->startZoomOutAnimation(Landroid/graphics/Bitmap;Z)V

    goto :goto_1

    .line 209
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->setDrawable(Landroid/graphics/Bitmap;Z)V

    :cond_5
    :goto_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 217
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mCompositeMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mScaleCropMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 219
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mCompositeMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mZoomEffectMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 221
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 222
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mCanvasSize:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 223
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mCompositeMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mAlphaPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 224
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mCanvasSize:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mImageFilterPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 225
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mCanvasSize:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 226
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 148
    iget-object p3, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p3, :cond_0

    .line 149
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->computeScale(II)V

    :cond_0
    int-to-float p1, p1

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p1, p3

    .line 154
    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotX(F)V

    const/4 p1, 0x0

    .line 155
    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotY(F)V

    .line 158
    invoke-direct {p0, p2}, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->prepareGradientPaint(I)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    .line 306
    iput p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->mViewAlpha:F

    .line 307
    invoke-direct {p0}, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->updateAlpha()V

    return-void
.end method
