.class public Lcom/sonyericsson/music/ui/MiniPlayerImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "MiniPlayerImageView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# static fields
.field private static final DURATION:J = 0xc8L

.field private static final SCALE:F = 0.5f

.field private static final TRANSLATE:F = 1.0f


# instance fields
.field private final mAnimator:Landroid/animation/ValueAnimator;

.field private mDirection:Lcom/sonyericsson/music/player/PlayerState$SkipDirection;

.field private final mLayerPaint:Landroid/graphics/Paint;

.field private mPosition:F

.field private mSnapshot:Landroid/graphics/Bitmap;

.field private final mSnapshotPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/ui/MiniPlayerImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/music/ui/MiniPlayerImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/music/ui/MiniPlayerImageView;->mLayerPaint:Landroid/graphics/Paint;

    .line 48
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/music/ui/MiniPlayerImageView;->mSnapshotPaint:Landroid/graphics/Paint;

    const/4 p1, 0x2

    .line 64
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/ui/MiniPlayerImageView;->mAnimator:Landroid/animation/ValueAnimator;

    .line 65
    iget-object p1, p0, Lcom/sonyericsson/music/ui/MiniPlayerImageView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 66
    iget-object p1, p0, Lcom/sonyericsson/music/ui/MiniPlayerImageView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 67
    iget-object p1, p0, Lcom/sonyericsson/music/ui/MiniPlayerImageView;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0xc8

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 68
    sget-object p1, Lcom/sonyericsson/music/player/PlayerState$SkipDirection;->NONE:Lcom/sonyericsson/music/player/PlayerState$SkipDirection;

    iput-object p1, p0, Lcom/sonyericsson/music/ui/MiniPlayerImageView;->mDirection:Lcom/sonyericsson/music/player/PlayerState$SkipDirection;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 69
    iput p1, p0, Lcom/sonyericsson/music/ui/MiniPlayerImageView;->mPosition:F

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private appear(Landroid/graphics/Canvas;F)I
    .locals 3

    const/high16 v0, 0x3f000000    # 0.5f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 203
    invoke-static {v0, v1, p2}, Lcom/sonyericsson/music/ui/MiniPlayerImageView;->lerp(FFF)F

    move-result v0

    .line 204
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, p2}, Lcom/sonyericsson/music/ui/MiniPlayerImageView;->appearScalePivot(F)F

    move-result p2

    mul-float v1, v1, p2

    .line 205
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result p2

    int-to-float p2, p2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p2, v2

    .line 206
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 207
    invoke-virtual {p1, v0, v0, v1, p2}, Landroid/graphics/Canvas;->scale(FFFF)V

    return v2
.end method

.method private appearScalePivot(F)F
    .locals 6

    .line 197
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    float-to-double v2, p1

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    .line 198
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double v2, v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float p1, v2

    if-eqz v1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p1, v0, p1

    :cond_1
    return p1
.end method

.method private cancelAnimation()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/sonyericsson/music/ui/MiniPlayerImageView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 112
    iput-object v0, p0, Lcom/sonyericsson/music/ui/MiniPlayerImageView;->mSnapshot:Landroid/graphics/Bitmap;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 113
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/ui/MiniPlayerImageView;->setPosition(F)V

    return-void
.end method

.method private createSnapshot()V
    .locals 3

    .line 100
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/ui/MiniPlayerImageView;->mSnapshot:Landroid/graphics/Bitmap;

    .line 101
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sonyericsson/music/ui/MiniPlayerImageView;->mSnapshot:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 102
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawSnapshot(Landroid/graphics/Canvas;)V
    .locals 3

    .line 218
    iget-object v0, p0, Lcom/sonyericsson/music/ui/MiniPlayerImageView;->mSnapshot:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 219
    iget-object v1, p0, Lcom/sonyericsson/music/ui/MiniPlayerImageView;->mSnapshotPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private invalidateDrawingArea()V
    .locals 4

    .line 134
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/MiniPlayerImageView;->translationLength()F

    move-result v0

    float-to-int v0, v0

    .line 135
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 136
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    invoke-virtual {p0, v0, v2, v1, v3}, Landroid/widget/ImageView;->invalidate(IIII)V

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    invoke-virtual {p0, v2, v2, v1, v0}, Landroid/widget/ImageView;->invalidate(IIII)V

    :goto_0
    return-void
.end method

.method private static final lerp(FFF)F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    mul-float p0, p0, v0

    mul-float p1, p1, p2

    add-float/2addr p0, p1

    return p0
.end method

.method private setPosition(F)V
    .locals 3

    .line 122
    iput p1, p0, Lcom/sonyericsson/music/ui/MiniPlayerImageView;->mPosition:F

    .line 123
    iget-object p1, p0, Lcom/sonyericsson/music/ui/MiniPlayerImageView;->mDirection:Lcom/sonyericsson/music/player/PlayerState$SkipDirection;

    sget-object v0, Lcom/sonyericsson/music/player/PlayerState$SkipDirection;->NONE:Lcom/sonyericsson/music/player/PlayerState$SkipDirection;

    if-ne p1, v0, :cond_0

    .line 124
    iget-object p1, p0, Lcom/sonyericsson/music/ui/MiniPlayerImageView;->mLayerPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/sonyericsson/music/ui/MiniPlayerImageView;->mPosition:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 125
    iget-object p1, p0, Lcom/sonyericsson/music/ui/MiniPlayerImageView;->mSnapshotPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/sonyericsson/music/ui/MiniPlayerImageView;->mPosition:F

    sub-float/2addr v0, v2

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    .line 127
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/ui/MiniPlayerImageView;->mLayerPaint:Landroid/graphics/Paint;

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 128
    iget-object p1, p0, Lcom/sonyericsson/music/ui/MiniPlayerImageView;->mSnapshotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 130
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/MiniPlayerImageView;->invalidateDrawingArea()V

    return-void
.end method

.method private startAnimation(Lcom/sonyericsson/music/player/PlayerState$SkipDirection;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/sonyericsson/music/ui/MiniPlayerImageView;->mDirection:Lcom/sonyericsson/music/player/PlayerState$SkipDirection;

    .line 107
    iget-object p1, p0, Lcom/sonyericsson/music/ui/MiniPlayerImageView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private translate(Landroid/graphics/Canvas;F)I
    .locals 2

    .line 212
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 213
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/MiniPlayerImageView;->translationLength()F

    move-result v1

    mul-float v1, v1, p2

    const/4 p2, 0x0

    invoke-virtual {p1, v1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    return v0
.end method

.method private translationLength()F
    .locals 2

    .line 143
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 144
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    mul-int v0, v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    return v0
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 118
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/ui/MiniPlayerImageView;->setPosition(F)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 149
    iget v0, p0, Lcom/sonyericsson/music/ui/MiniPlayerImageView;->mPosition:F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 152
    sget-object v0, Lcom/sonyericsson/music/ui/MiniPlayerImageView$1;->$SwitchMap$com$sonyericsson$music$player$PlayerState$SkipDirection:[I

    iget-object v3, p0, Lcom/sonyericsson/music/ui/MiniPlayerImageView;->mDirection:Lcom/sonyericsson/music/player/PlayerState$SkipDirection;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 171
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/ui/MiniPlayerImageView;->drawSnapshot(Landroid/graphics/Canvas;)V

    .line 175
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    .line 176
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    .line 177
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_1

    int-to-float v7, v1

    int-to-float v8, v0

    int-to-float v9, v2

    .line 178
    iget-object v10, p0, Lcom/sonyericsson/music/ui/MiniPlayerImageView;->mLayerPaint:Landroid/graphics/Paint;

    move-object v5, p1

    move v6, v7

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result v0

    goto :goto_1

    .line 162
    :pswitch_0
    iget v0, p0, Lcom/sonyericsson/music/ui/MiniPlayerImageView;->mPosition:F

    sub-float v0, v2, v0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/ui/MiniPlayerImageView;->appear(Landroid/graphics/Canvas;F)I

    move-result v0

    .line 163
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/ui/MiniPlayerImageView;->drawSnapshot(Landroid/graphics/Canvas;)V

    .line 164
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 165
    iget v0, p0, Lcom/sonyericsson/music/ui/MiniPlayerImageView;->mPosition:F

    sub-float/2addr v2, v0

    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/music/ui/MiniPlayerImageView;->translate(Landroid/graphics/Canvas;F)I

    move-result v0

    .line 166
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 167
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_2

    .line 154
    :pswitch_1
    iget v0, p0, Lcom/sonyericsson/music/ui/MiniPlayerImageView;->mPosition:F

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/ui/MiniPlayerImageView;->appear(Landroid/graphics/Canvas;F)I

    move-result v0

    .line 155
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 156
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 157
    iget v0, p0, Lcom/sonyericsson/music/ui/MiniPlayerImageView;->mPosition:F

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/ui/MiniPlayerImageView;->translate(Landroid/graphics/Canvas;F)I

    move-result v0

    .line 158
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/ui/MiniPlayerImageView;->drawSnapshot(Landroid/graphics/Canvas;)V

    .line 159
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_2

    :cond_1
    int-to-float v3, v1

    int-to-float v4, v0

    int-to-float v5, v2

    .line 180
    iget-object v6, p0, Lcom/sonyericsson/music/ui/MiniPlayerImageView;->mLayerPaint:Landroid/graphics/Paint;

    const/16 v7, 0x1f

    move-object v1, p1

    move v2, v3

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v0

    .line 183
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 184
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_2

    .line 188
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 91
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 86
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageDrawableWithAnimation(Landroid/graphics/drawable/Drawable;Lcom/sonyericsson/music/player/PlayerState$SkipDirection;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/MiniPlayerImageView;->cancelAnimation()V

    .line 74
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 76
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/MiniPlayerImageView;->createSnapshot()V

    .line 78
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/ui/MiniPlayerImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v0, :cond_2

    .line 80
    invoke-direct {p0, p2}, Lcom/sonyericsson/music/ui/MiniPlayerImageView;->startAnimation(Lcom/sonyericsson/music/player/PlayerState$SkipDirection;)V

    :cond_2
    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 96
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    return-void
.end method
