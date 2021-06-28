.class public Lcom/sonyericsson/music/landingpage/DrawableSourceView;
.super Landroid/view/View;
.source "DrawableSourceView.java"


# instance fields
.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawableChanged:Z

.field private final mScaleMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/DrawableSourceView;->mScaleMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/DrawableSourceView;->mScaleMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/DrawableSourceView;->mScaleMatrix:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 66
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/DrawableSourceView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 67
    iget-boolean v1, p0, Lcom/sonyericsson/music/landingpage/DrawableSourceView;->mDrawableChanged:Z

    if-eqz v1, :cond_1

    .line 68
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 69
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/DrawableSourceView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    mul-int v4, v0, v3

    mul-int v5, v1, v2

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x0

    if-le v4, v5, :cond_0

    int-to-float v3, v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    int-to-float v2, v2

    int-to-float v4, v0

    mul-float v4, v4, v3

    sub-float/2addr v2, v4

    mul-float v2, v2, v6

    move v7, v2

    move v2, v3

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    int-to-float v2, v2

    int-to-float v4, v0

    div-float/2addr v2, v4

    int-to-float v3, v3

    int-to-float v4, v1

    mul-float v4, v4, v2

    sub-float/2addr v3, v4

    mul-float v3, v3, v6

    .line 91
    :goto_0
    iget-object v4, p0, Lcom/sonyericsson/music/landingpage/DrawableSourceView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 92
    iget-object v2, p0, Lcom/sonyericsson/music/landingpage/DrawableSourceView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v7, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 95
    iget-object v2, p0, Lcom/sonyericsson/music/landingpage/DrawableSourceView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 96
    iput-boolean v3, p0, Lcom/sonyericsson/music/landingpage/DrawableSourceView;->mDrawableChanged:Z

    .line 98
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 99
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/DrawableSourceView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 100
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/DrawableSourceView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 101
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_2
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 48
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 49
    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/landingpage/DrawableSourceView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcom/sonyericsson/music/landingpage/DrawableSourceView;->mDrawableChanged:Z

    .line 60
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/DrawableSourceView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 61
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
