.class public Lcom/sonyericsson/music/ui/MiniPlayerInfoLayout;
.super Landroid/widget/RelativeLayout;
.source "MiniPlayerInfoLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# static fields
.field private static final DURATION:J = 0xc8L

.field private static final TRANSLATE:F = 0.2f


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

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/ui/MiniPlayerInfoLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/music/ui/MiniPlayerInfoLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/music/ui/MiniPlayerInfoLayout;->mLayerPaint:Landroid/graphics/Paint;

    .line 42
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/music/ui/MiniPlayerInfoLayout;->mSnapshotPaint:Landroid/graphics/Paint;

    const/4 p1, 0x2

    .line 58
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/ui/MiniPlayerInfoLayout;->mAnimator:Landroid/animation/ValueAnimator;

    .line 59
    iget-object p1, p0, Lcom/sonyericsson/music/ui/MiniPlayerInfoLayout;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 60
    iget-object p1, p0, Lcom/sonyericsson/music/ui/MiniPlayerInfoLayout;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 61
    iget-object p1, p0, Lcom/sonyericsson/music/ui/MiniPlayerInfoLayout;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0xc8

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 62
    sget-object p1, Lcom/sonyericsson/music/player/PlayerState$SkipDirection;->NONE:Lcom/sonyericsson/music/player/PlayerState$SkipDirection;

    iput-object p1, p0, Lcom/sonyericsson/music/ui/MiniPlayerInfoLayout;->mDirection:Lcom/sonyericsson/music/player/PlayerState$SkipDirection;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 63
    iput p1, p0, Lcom/sonyericsson/music/ui/MiniPlayerInfoLayout;->mPosition:F

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private cancelAnimation()V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/sonyericsson/music/ui/MiniPlayerInfoLayout;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/sonyericsson/music/ui/MiniPlayerInfoLayout;->mSnapshot:Landroid/graphics/Bitmap;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 89
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/ui/MiniPlayerInfoLayout;->setPosition(F)V

    return-void
.end method

.method private createSnapshot()V
    .locals 3

    .line 76
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/ui/MiniPlayerInfoLayout;->mSnapshot:Landroid/graphics/Bitmap;

    .line 77
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sonyericsson/music/ui/MiniPlayerInfoLayout;->mSnapshot:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 78
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawSnapshot(Landroid/graphics/Canvas;F)V
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/sonyericsson/music/ui/MiniPlayerInfoLayout;->mSnapshot:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 164
    iget-object v2, p0, Lcom/sonyericsson/music/ui/MiniPlayerInfoLayout;->mSnapshotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawWithLayer(Landroid/graphics/Canvas;F)V
    .locals 8

    .line 142
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    const/4 v0, 0x0

    .line 143
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 147
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    .line 148
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    .line 149
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x0

    const/16 v4, 0x15

    if-lt v2, v4, :cond_0

    int-to-float v2, v3

    int-to-float v3, v0

    int-to-float v4, v1

    .line 150
    iget-object v5, p0, Lcom/sonyericsson/music/ui/MiniPlayerInfoLayout;->mLayerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    goto :goto_0

    :cond_0
    int-to-float v2, v3

    int-to-float v3, v0

    int-to-float v4, v1

    .line 152
    iget-object v5, p0, Lcom/sonyericsson/music/ui/MiniPlayerInfoLayout;->mLayerPaint:Landroid/graphics/Paint;

    const/16 v6, 0x1f

    move-object v0, p1

    move v1, v2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 156
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 157
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private invalidateDrawingArea()V
    .locals 4

    .line 105
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/MiniPlayerInfoLayout;->translationLength()F

    move-result v0

    float-to-int v0, v0

    .line 106
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 107
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    invoke-virtual {p0, v2, v2, v1, v0}, Landroid/widget/RelativeLayout;->invalidate(IIII)V

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0, v0, v2, v1, v3}, Landroid/widget/RelativeLayout;->invalidate(IIII)V

    :goto_0
    return-void
.end method

.method private setPosition(F)V
    .locals 3

    .line 98
    iput p1, p0, Lcom/sonyericsson/music/ui/MiniPlayerInfoLayout;->mPosition:F

    .line 99
    iget-object p1, p0, Lcom/sonyericsson/music/ui/MiniPlayerInfoLayout;->mLayerPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/sonyericsson/music/ui/MiniPlayerInfoLayout;->mPosition:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 100
    iget-object p1, p0, Lcom/sonyericsson/music/ui/MiniPlayerInfoLayout;->mSnapshotPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/sonyericsson/music/ui/MiniPlayerInfoLayout;->mPosition:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    mul-float v2, v2, v1

    float-to-int v0, v2

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 101
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/MiniPlayerInfoLayout;->invalidateDrawingArea()V

    return-void
.end method

.method private startAnimation(Lcom/sonyericsson/music/player/PlayerState$SkipDirection;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/sonyericsson/music/ui/MiniPlayerInfoLayout;->mDirection:Lcom/sonyericsson/music/player/PlayerState$SkipDirection;

    .line 83
    iget-object p1, p0, Lcom/sonyericsson/music/ui/MiniPlayerInfoLayout;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private translationLength()F
    .locals 2

    .line 114
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 115
    :goto_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    mul-int v0, v0, v1

    int-to-float v0, v0

    const v1, 0x3e4ccccd    # 0.2f

    mul-float v0, v0, v1

    return v0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 120
    iget v0, p0, Lcom/sonyericsson/music/ui/MiniPlayerInfoLayout;->mPosition:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 122
    sget-object v0, Lcom/sonyericsson/music/ui/MiniPlayerInfoLayout$1;->$SwitchMap$com$sonyericsson$music$player$PlayerState$SkipDirection:[I

    iget-object v2, p0, Lcom/sonyericsson/music/ui/MiniPlayerInfoLayout;->mDirection:Lcom/sonyericsson/music/player/PlayerState$SkipDirection;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 132
    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/music/ui/MiniPlayerInfoLayout;->drawWithLayer(Landroid/graphics/Canvas;F)V

    .line 133
    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/music/ui/MiniPlayerInfoLayout;->drawSnapshot(Landroid/graphics/Canvas;F)V

    goto :goto_1

    .line 128
    :pswitch_0
    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/music/ui/MiniPlayerInfoLayout;->drawWithLayer(Landroid/graphics/Canvas;F)V

    .line 129
    iget v0, p0, Lcom/sonyericsson/music/ui/MiniPlayerInfoLayout;->mPosition:F

    invoke-direct {p0}, Lcom/sonyericsson/music/ui/MiniPlayerInfoLayout;->translationLength()F

    move-result v1

    mul-float v0, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/ui/MiniPlayerInfoLayout;->drawSnapshot(Landroid/graphics/Canvas;F)V

    goto :goto_1

    .line 124
    :pswitch_1
    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/music/ui/MiniPlayerInfoLayout;->drawSnapshot(Landroid/graphics/Canvas;F)V

    .line 125
    iget v0, p0, Lcom/sonyericsson/music/ui/MiniPlayerInfoLayout;->mPosition:F

    sub-float/2addr v1, v0

    invoke-direct {p0}, Lcom/sonyericsson/music/ui/MiniPlayerInfoLayout;->translationLength()F

    move-result v0

    mul-float v1, v1, v0

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/music/ui/MiniPlayerInfoLayout;->drawWithLayer(Landroid/graphics/Canvas;F)V

    goto :goto_1

    .line 137
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 94
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/ui/MiniPlayerInfoLayout;->setPosition(F)V

    return-void
.end method

.method public startTransition(Lcom/sonyericsson/music/player/PlayerState$SkipDirection;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/MiniPlayerInfoLayout;->cancelAnimation()V

    .line 68
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 70
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/MiniPlayerInfoLayout;->createSnapshot()V

    .line 71
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/ui/MiniPlayerInfoLayout;->startAnimation(Lcom/sonyericsson/music/player/PlayerState$SkipDirection;)V

    :cond_1
    return-void
.end method
