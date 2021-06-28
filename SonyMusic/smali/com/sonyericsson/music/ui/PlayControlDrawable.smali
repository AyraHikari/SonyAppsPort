.class public abstract Lcom/sonyericsson/music/ui/PlayControlDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "PlayControlDrawable.java"


# static fields
.field private static final CIRCLE_COLOR_FOCUSED:I = -0xd04516

.field private static final CIRCLE_COLOR_PRESSED:I = 0x73888888

.field private static final CIRCLE_STROKE_DEFAULT:F = 1.5f

.field private static final CIRCLE_STROKE_FOCUSED:F = 1.33f


# instance fields
.field private final mCirclePaint:Landroid/graphics/Paint;

.field private mDensity:F

.field protected final mForegroundColor:I

.field private mStateful:Z

.field private mStrokeWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/ui/PlayControlDrawable;->mCirclePaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/sonyericsson/music/ui/PlayControlDrawable;->mStateful:Z

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/ui/PlayControlDrawable;->resolveThemeForegroundColor(Landroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/music/ui/PlayControlDrawable;->mForegroundColor:I

    .line 41
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/sonyericsson/music/ui/PlayControlDrawable;->mDensity:F

    .line 42
    iget-object p1, p0, Lcom/sonyericsson/music/ui/PlayControlDrawable;->mCirclePaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/ui/PlayControlDrawable;->setupCircle(Landroid/graphics/Paint;)V

    const/high16 p1, 0x3fc00000    # 1.5f

    .line 43
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/ui/PlayControlDrawable;->setStrokeWidth(F)V

    return-void
.end method

.method private drawCircle(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V
    .locals 9

    .line 79
    iget-boolean v0, p0, Lcom/sonyericsson/music/ui/PlayControlDrawable;->mStateful:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 80
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    .line 81
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget v6, v0, v3

    const v7, 0x10100a7

    const/4 v8, 0x1

    if-ne v6, v7, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    :goto_1
    or-int/2addr v4, v7

    const v7, 0x101009c

    if-ne v6, v7, :cond_1

    goto :goto_2

    :cond_1
    const/4 v8, 0x0

    :goto_2
    or-int/2addr v5, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v1, v5

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    .line 86
    :goto_3
    invoke-direct {p0, v1}, Lcom/sonyericsson/music/ui/PlayControlDrawable;->getStrokeWidth(Z)F

    move-result v0

    .line 87
    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v2, 0x3f000000    # 0.5f

    if-eqz v4, :cond_4

    .line 89
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p5, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v3, 0x73888888

    .line 90
    invoke-virtual {p5, v3}, Landroid/graphics/Paint;->setColor(I)V

    mul-float v3, v0, v2

    sub-float v3, p4, v3

    .line 91
    invoke-virtual {p1, p2, p3, v3, p5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 93
    :cond_4
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p5, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    if-eqz v1, :cond_5

    const v1, -0xd04516

    goto :goto_4

    .line 94
    :cond_5
    iget v1, p0, Lcom/sonyericsson/music/ui/PlayControlDrawable;->mForegroundColor:I

    :goto_4
    invoke-virtual {p5, v1}, Landroid/graphics/Paint;->setColor(I)V

    mul-float v0, v0, v2

    sub-float/2addr p4, v0

    .line 95
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private getStrokeWidth(Z)F
    .locals 3

    .line 100
    iget v0, p0, Lcom/sonyericsson/music/ui/PlayControlDrawable;->mStrokeWidth:F

    iget v1, p0, Lcom/sonyericsson/music/ui/PlayControlDrawable;->mDensity:F

    const/high16 v2, 0x40200000    # 2.5f

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float v0, v0, v1

    if-eqz p1, :cond_0

    const p1, 0x3faa3d71    # 1.33f

    mul-float v0, v0, p1

    :cond_0
    return v0
.end method

.method private resolveThemeForegroundColor(Landroid/content/res/Resources$Theme;)I
    .locals 3

    .line 47
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    const v1, 0x1010030

    const/4 v2, 0x1

    .line 48
    invoke-virtual {p1, v1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 49
    iget p1, v0, Landroid/util/TypedValue;->data:I

    return p1
.end method

.method private setupCircle(Landroid/graphics/Paint;)V
    .locals 1

    const/4 v0, 0x1

    .line 73
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 62
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 63
    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    .line 64
    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v3

    add-float/2addr v2, v4

    .line 65
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v3

    .line 66
    iget-object v9, p0, Lcom/sonyericsson/music/ui/PlayControlDrawable;->mCirclePaint:Landroid/graphics/Paint;

    move-object v4, p0

    move-object v5, p1

    move v6, v1

    move v7, v2

    move v8, v0

    invoke-direct/range {v4 .. v9}, Lcom/sonyericsson/music/ui/PlayControlDrawable;->drawCircle(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V

    .line 67
    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/sonyericsson/music/ui/PlayControlDrawable;->drawContent(Landroid/graphics/Canvas;FFF)V

    return-void
.end method

.method protected abstract drawContent(Landroid/graphics/Canvas;FFF)V
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .line 128
    iget-boolean v0, p0, Lcom/sonyericsson/music/ui/PlayControlDrawable;->mStateful:Z

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 0

    .line 134
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    const/4 p1, 0x1

    return p1
.end method

.method public setAlpha(I)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/sonyericsson/music/ui/PlayControlDrawable;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/sonyericsson/music/ui/PlayControlDrawable;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setStateful(Z)V
    .locals 0

    .line 123
    iput-boolean p1, p0, Lcom/sonyericsson/music/ui/PlayControlDrawable;->mStateful:Z

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/sonyericsson/music/ui/PlayControlDrawable;->mStrokeWidth:F

    return-void
.end method
