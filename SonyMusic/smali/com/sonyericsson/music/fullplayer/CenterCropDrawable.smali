.class public Lcom/sonyericsson/music/fullplayer/CenterCropDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CenterCropDrawable.java"


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mMatrix:Landroid/graphics/Matrix;

.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 19
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/fullplayer/CenterCropDrawable;->mPaint:Landroid/graphics/Paint;

    .line 20
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/fullplayer/CenterCropDrawable;->mMatrix:Landroid/graphics/Matrix;

    .line 23
    iput-object p1, p0, Lcom/sonyericsson/music/fullplayer/CenterCropDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 24
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/CenterCropDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    return-void
.end method

.method private computeCenterCrop(Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V
    .locals 5

    .line 38
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 39
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v2, v1

    .line 41
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 42
    invoke-virtual {p3, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    const/4 v1, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    cmpl-float v4, v0, v2

    if-lez v4, :cond_0

    sub-float/2addr v2, v0

    .line 47
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    int-to-float p2, p2

    mul-float v2, v2, p2

    div-float/2addr v2, v3

    invoke-virtual {p3, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :cond_0
    sub-float/2addr v0, v2

    .line 51
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    int-to-float p2, p2

    mul-float v0, v0, p2

    div-float/2addr v0, v3

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 53
    :goto_0
    iget p2, p1, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    invoke-virtual {p3, p2, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 58
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 59
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 60
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/CenterCropDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/sonyericsson/music/fullplayer/CenterCropDrawable;->mMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/sonyericsson/music/fullplayer/CenterCropDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 61
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/CenterCropDrawable;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getOpacity()I
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/CenterCropDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/CenterCropDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    const/16 v1, 0xff

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    const/4 v0, -0x3

    goto :goto_2

    :cond_2
    const/4 v0, -0x1

    :goto_2
    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 2

    .line 33
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 34
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/CenterCropDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/sonyericsson/music/fullplayer/CenterCropDrawable;->mMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/music/fullplayer/CenterCropDrawable;->computeCenterCrop(Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/CenterCropDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/CenterCropDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
