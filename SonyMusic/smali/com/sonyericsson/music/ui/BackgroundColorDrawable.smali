.class public Lcom/sonyericsson/music/ui/BackgroundColorDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BackgroundColorDrawable.java"


# static fields
.field private static final ANIMATION_DURATION:J = 0x1f4L


# instance fields
.field private mAnimationTargetColor:I

.field private mAnimator:Landroid/animation/ObjectAnimator;

.field private final mColorEvaluator:Lcom/sonyericsson/music/ui/ColorEvaluator;

.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 25
    new-instance v0, Lcom/sonyericsson/music/ui/ColorEvaluator;

    invoke-direct {v0}, Lcom/sonyericsson/music/ui/ColorEvaluator;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/ui/BackgroundColorDrawable;->mColorEvaluator:Lcom/sonyericsson/music/ui/ColorEvaluator;

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/ui/BackgroundColorDrawable;->mPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/sonyericsson/music/ui/BackgroundColorDrawable;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/sonyericsson/music/ui/BackgroundColorDrawable;->mAnimator:Landroid/animation/ObjectAnimator;

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 87
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/ui/BackgroundColorDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getColor()I
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/sonyericsson/music/ui/BackgroundColorDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/sonyericsson/music/ui/BackgroundColorDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x3

    :goto_0
    return v0
.end method

.method public getTargetColor()I
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/sonyericsson/music/ui/BackgroundColorDrawable;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sonyericsson/music/ui/BackgroundColorDrawable;->mAnimationTargetColor:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/music/ui/BackgroundColorDrawable;->getColor()I

    move-result v0

    :goto_0
    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    .line 92
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setColor(I)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/sonyericsson/music/ui/BackgroundColorDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 72
    iget-object v0, p0, Lcom/sonyericsson/music/ui/BackgroundColorDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 97
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setColorWithAnimation(I)V
    .locals 2

    const-wide/16 v0, 0x1f4

    .line 34
    invoke-virtual {p0, p1, v0, v1}, Lcom/sonyericsson/music/ui/BackgroundColorDrawable;->setColorWithAnimation(IJ)V

    return-void
.end method

.method public setColorWithAnimation(IJ)V
    .locals 6

    .line 38
    invoke-virtual {p0}, Lcom/sonyericsson/music/ui/BackgroundColorDrawable;->getTargetColor()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/ui/BackgroundColorDrawable;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 42
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/sonyericsson/music/ui/BackgroundColorDrawable;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/music/ui/BackgroundColorDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    const v1, 0xffffff

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    and-int v0, p1, v1

    :goto_0
    if-eqz p1, :cond_3

    move v1, p1

    goto :goto_1

    :cond_3
    and-int/2addr v1, v0

    :goto_1
    const-string v2, "color"

    .line 57
    iget-object v3, p0, Lcom/sonyericsson/music/ui/BackgroundColorDrawable;->mColorEvaluator:Lcom/sonyericsson/music/ui/ColorEvaluator;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {p0, v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/ui/BackgroundColorDrawable;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 58
    iget-object v0, p0, Lcom/sonyericsson/music/ui/BackgroundColorDrawable;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 59
    iget-object p2, p0, Lcom/sonyericsson/music/ui/BackgroundColorDrawable;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->start()V

    .line 60
    iput p1, p0, Lcom/sonyericsson/music/ui/BackgroundColorDrawable;->mAnimationTargetColor:I

    return-void
.end method
