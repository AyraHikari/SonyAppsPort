.class public Lcom/sonyericsson/music/ui/LoadingStateDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "LoadingStateDrawable.java"


# static fields
.field private static final STROKE_WIDTH_DP:I = 0x2


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private final mInset:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mProgress:F

.field private final mRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 35
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/music/ui/LoadingStateDrawable;->mPaint:Landroid/graphics/Paint;

    .line 28
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/ui/LoadingStateDrawable;->mRectF:Landroid/graphics/RectF;

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/sonyericsson/music/ui/LoadingStateDrawable;->mProgress:F

    .line 36
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 37
    iget-object v1, p0, Lcom/sonyericsson/music/ui/LoadingStateDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    iget-object v1, p0, Lcom/sonyericsson/music/ui/LoadingStateDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 39
    iget-object v1, p0, Lcom/sonyericsson/music/ui/LoadingStateDrawable;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v0, v0, v2

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 40
    iget-object v1, p0, Lcom/sonyericsson/music/ui/LoadingStateDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 41
    iget-object v1, p0, Lcom/sonyericsson/music/ui/LoadingStateDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sonyericsson/music/ui/LoadingStateDrawable;->mInset:F

    return-void
.end method

.method static synthetic access$002(Lcom/sonyericsson/music/ui/LoadingStateDrawable;F)F
    .locals 0

    .line 24
    iput p1, p0, Lcom/sonyericsson/music/ui/LoadingStateDrawable;->mProgress:F

    return p1
.end method

.method private cancelAnimator()V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/sonyericsson/music/ui/LoadingStateDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 84
    iget-object v0, p0, Lcom/sonyericsson/music/ui/LoadingStateDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 85
    iget-object v0, p0, Lcom/sonyericsson/music/ui/LoadingStateDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/sonyericsson/music/ui/LoadingStateDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 47
    iget-object v0, p0, Lcom/sonyericsson/music/ui/LoadingStateDrawable;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 49
    iget-object v0, p0, Lcom/sonyericsson/music/ui/LoadingStateDrawable;->mRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/sonyericsson/music/ui/LoadingStateDrawable;->mInset:F

    invoke-virtual {v0, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 51
    iget-object v3, p0, Lcom/sonyericsson/music/ui/LoadingStateDrawable;->mRectF:Landroid/graphics/RectF;

    iget v0, p0, Lcom/sonyericsson/music/ui/LoadingStateDrawable;->mProgress:F

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float v4, v0, v1

    iget-object v7, p0, Lcom/sonyericsson/music/ui/LoadingStateDrawable;->mPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x42b40000    # 90.0f

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/sonyericsson/music/ui/LoadingStateDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 93
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/sonyericsson/music/ui/LoadingStateDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 99
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public start()V
    .locals 3

    .line 58
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/LoadingStateDrawable;->cancelAnimator()V

    const/4 v0, 0x2

    .line 59
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/ui/LoadingStateDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    .line 60
    iget-object v0, p0, Lcom/sonyericsson/music/ui/LoadingStateDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sonyericsson/music/ui/LoadingStateDrawable$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/music/ui/LoadingStateDrawable$1;-><init>(Lcom/sonyericsson/music/ui/LoadingStateDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 67
    iget-object v0, p0, Lcom/sonyericsson/music/ui/LoadingStateDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 68
    iget-object v0, p0, Lcom/sonyericsson/music/ui/LoadingStateDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 69
    iget-object v0, p0, Lcom/sonyericsson/music/ui/LoadingStateDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 70
    iget-object v0, p0, Lcom/sonyericsson/music/ui/LoadingStateDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 71
    iget-object v0, p0, Lcom/sonyericsson/music/ui/LoadingStateDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public stop()V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/LoadingStateDrawable;->cancelAnimator()V

    return-void
.end method
