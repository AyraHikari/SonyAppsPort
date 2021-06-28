.class public Lcom/sonyericsson/music/fullplayer/ArtPagerItemView;
.super Landroid/view/View;
.source "ArtPagerItemView.java"


# instance fields
.field private mDrawable:Lcom/sonyericsson/music/fullplayer/CenterCropDrawable;

.field private mHdAudio:Z

.field private final mHdAudioDrawable:Landroid/graphics/drawable/Drawable;

.field private final mHdAudioMargin:I

.field private mUpdateBounds:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/fullplayer/ArtPagerItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/music/fullplayer/ArtPagerItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700ab

    .line 42
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/sonyericsson/music/fullplayer/ArtPagerItemView;->mHdAudioMargin:I

    const p2, 0x7f0800a0

    .line 43
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/fullplayer/ArtPagerItemView;->mHdAudioDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private positionHdIcon(Landroid/graphics/drawable/Drawable;III)V
    .locals 1

    .line 82
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    .line 83
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sub-int/2addr p3, p4

    sub-int v0, p3, v0

    add-int/2addr p2, p4

    .line 84
    invoke-virtual {p1, p4, v0, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 89
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/ArtPagerItemView;->mDrawable:Lcom/sonyericsson/music/fullplayer/CenterCropDrawable;

    if-eqz v0, :cond_1

    .line 90
    iget-boolean v1, p0, Lcom/sonyericsson/music/fullplayer/ArtPagerItemView;->mUpdateBounds:Z

    if-eqz v1, :cond_0

    .line 91
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 92
    iput-boolean v3, p0, Lcom/sonyericsson/music/fullplayer/ArtPagerItemView;->mUpdateBounds:Z

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/ArtPagerItemView;->mDrawable:Lcom/sonyericsson/music/fullplayer/CenterCropDrawable;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/fullplayer/CenterCropDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 96
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/music/fullplayer/ArtPagerItemView;->mHdAudio:Z

    if-eqz v0, :cond_2

    .line 97
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/ArtPagerItemView;->mHdAudioDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method protected onSetAlpha(I)Z
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/ArtPagerItemView;->mDrawable:Lcom/sonyericsson/music/fullplayer/CenterCropDrawable;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/fullplayer/CenterCropDrawable;->setAlpha(I)V

    .line 71
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 62
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 63
    iget-object p3, p0, Lcom/sonyericsson/music/fullplayer/ArtPagerItemView;->mHdAudioDrawable:Landroid/graphics/drawable/Drawable;

    iget p4, p0, Lcom/sonyericsson/music/fullplayer/ArtPagerItemView;->mHdAudioMargin:I

    invoke-direct {p0, p3, p1, p2, p4}, Lcom/sonyericsson/music/fullplayer/ArtPagerItemView;->positionHdIcon(Landroid/graphics/drawable/Drawable;III)V

    const/4 p1, 0x1

    .line 64
    iput-boolean p1, p0, Lcom/sonyericsson/music/fullplayer/ArtPagerItemView;->mUpdateBounds:Z

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 54
    new-instance v0, Lcom/sonyericsson/music/fullplayer/CenterCropDrawable;

    invoke-direct {v0, p1}, Lcom/sonyericsson/music/fullplayer/CenterCropDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sonyericsson/music/fullplayer/ArtPagerItemView;->mDrawable:Lcom/sonyericsson/music/fullplayer/CenterCropDrawable;

    .line 55
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/ArtPagerItemView;->mDrawable:Lcom/sonyericsson/music/fullplayer/CenterCropDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/fullplayer/CenterCropDrawable;->setAlpha(I)V

    const/4 p1, 0x1

    .line 56
    iput-boolean p1, p0, Lcom/sonyericsson/music/fullplayer/ArtPagerItemView;->mUpdateBounds:Z

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setHdAudio(Z)V
    .locals 1

    .line 47
    iget-boolean v0, p0, Lcom/sonyericsson/music/fullplayer/ArtPagerItemView;->mHdAudio:Z

    if-eq v0, p1, :cond_0

    .line 48
    iput-boolean p1, p0, Lcom/sonyericsson/music/fullplayer/ArtPagerItemView;->mHdAudio:Z

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
