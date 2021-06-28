.class public Lcom/sonyericsson/music/ui/DotMenuDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "DotMenuDrawable.java"


# static fields
.field private static final SPACING:F = 2.0f


# instance fields
.field private final mPaint:Landroid/graphics/Paint;

.field private final mRadius:I

.field private final mSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;I)V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 20
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/ui/DotMenuDrawable;->mPaint:Landroid/graphics/Paint;

    const v0, 0x7f07005a

    .line 25
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/ui/DotMenuDrawable;->mRadius:I

    .line 26
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/sonyericsson/music/ui/DotMenuDrawable;->mSpacing:I

    .line 27
    iget-object p1, p0, Lcom/sonyericsson/music/ui/DotMenuDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 28
    iget-object p1, p0, Lcom/sonyericsson/music/ui/DotMenuDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 43
    iget v0, p0, Lcom/sonyericsson/music/ui/DotMenuDrawable;->mRadius:I

    int-to-float v1, v0

    int-to-float v2, v0

    int-to-float v3, v0

    .line 45
    iget-object v4, p0, Lcom/sonyericsson/music/ui/DotMenuDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 46
    iget v2, p0, Lcom/sonyericsson/music/ui/DotMenuDrawable;->mRadius:I

    mul-int/lit8 v3, v2, 0x2

    iget v4, p0, Lcom/sonyericsson/music/ui/DotMenuDrawable;->mSpacing:I

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    int-to-float v3, v0

    int-to-float v2, v2

    .line 47
    iget-object v4, p0, Lcom/sonyericsson/music/ui/DotMenuDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 48
    iget v2, p0, Lcom/sonyericsson/music/ui/DotMenuDrawable;->mRadius:I

    mul-int/lit8 v3, v2, 0x2

    iget v4, p0, Lcom/sonyericsson/music/ui/DotMenuDrawable;->mSpacing:I

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    int-to-float v0, v0

    int-to-float v2, v2

    .line 49
    iget-object v3, p0, Lcom/sonyericsson/music/ui/DotMenuDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .line 38
    iget v0, p0, Lcom/sonyericsson/music/ui/DotMenuDrawable;->mRadius:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/sonyericsson/music/ui/DotMenuDrawable;->mSpacing:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    sub-int/2addr v0, v1

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/sonyericsson/music/ui/DotMenuDrawable;->mRadius:I

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/sonyericsson/music/ui/DotMenuDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/sonyericsson/music/ui/DotMenuDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
