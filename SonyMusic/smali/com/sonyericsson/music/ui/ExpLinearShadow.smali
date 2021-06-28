.class public Lcom/sonyericsson/music/ui/ExpLinearShadow;
.super Landroid/graphics/drawable/Drawable;
.source "ExpLinearShadow.java"


# static fields
.field public static final BASE_COLOR:I = 0x40000000

.field public static final GRADIENT_DIRECTION_BOTTOM_TO_TOP:I = 0x2

.field public static final GRADIENT_DIRECTION_TOP_TO_BOTTOM:I = 0x1

.field private static final SAMPLES:I = 0xa


# instance fields
.field private final mBaseColor:I

.field private final mGradientDirection:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mShaderDirty:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 49
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/ui/ExpLinearShadow;->mPaint:Landroid/graphics/Paint;

    .line 51
    iput p1, p0, Lcom/sonyericsson/music/ui/ExpLinearShadow;->mGradientDirection:I

    const/high16 p1, 0x40000000    # 2.0f

    .line 52
    iput p1, p0, Lcom/sonyericsson/music/ui/ExpLinearShadow;->mBaseColor:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/ui/ExpLinearShadow;->mPaint:Landroid/graphics/Paint;

    .line 45
    iput p2, p0, Lcom/sonyericsson/music/ui/ExpLinearShadow;->mGradientDirection:I

    .line 46
    iput p1, p0, Lcom/sonyericsson/music/ui/ExpLinearShadow;->mBaseColor:I

    return-void
.end method

.method private createShader(Landroid/graphics/Rect;)Landroid/graphics/Shader;
    .locals 9

    const/16 v0, 0xa

    .line 69
    new-array v6, v0, [I

    .line 70
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 72
    iget v4, p0, Lcom/sonyericsson/music/ui/ExpLinearShadow;->mBaseColor:I

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, v3

    const/high16 v7, 0x41100000    # 9.0f

    div-float/2addr v5, v7

    invoke-interface {v1, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    mul-float v4, v4, v5

    float-to-int v4, v4

    .line 73
    invoke-static {v4, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    aput v4, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 77
    :cond_0
    iget v0, p0, Lcom/sonyericsson/music/ui/ExpLinearShadow;->mGradientDirection:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 78
    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v2, 0x0

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v1

    const/4 v4, 0x0

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v5, p1

    const/4 v7, 0x0

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    goto :goto_1

    .line 81
    :cond_1
    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v2, 0x0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v1

    const/4 v4, 0x0

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, p1

    const/4 v7, 0x0

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    :goto_1
    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 62
    iget-boolean v0, p0, Lcom/sonyericsson/music/ui/ExpLinearShadow;->mShaderDirty:Z

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/sonyericsson/music/ui/ExpLinearShadow;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/music/ui/ExpLinearShadow;->createShader(Landroid/graphics/Rect;)Landroid/graphics/Shader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 65
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/ui/ExpLinearShadow;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/sonyericsson/music/ui/ExpLinearShadow;->mPaint:Landroid/graphics/Paint;

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

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    const/4 p1, 0x1

    .line 57
    iput-boolean p1, p0, Lcom/sonyericsson/music/ui/ExpLinearShadow;->mShaderDirty:Z

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/sonyericsson/music/ui/ExpLinearShadow;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/sonyericsson/music/ui/ExpLinearShadow;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 96
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
