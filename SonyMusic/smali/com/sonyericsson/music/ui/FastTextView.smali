.class public Lcom/sonyericsson/music/ui/FastTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "FastTextView.java"


# instance fields
.field private mRefreshShader:Z

.field private mSuppressLeftEdge:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lcom/sonyericsson/music/ui/FastTextView;->mRefreshShader:Z

    .line 40
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/FastTextView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lcom/sonyericsson/music/ui/FastTextView;->mRefreshShader:Z

    .line 48
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/FastTextView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lcom/sonyericsson/music/ui/FastTextView;->mRefreshShader:Z

    .line 56
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/FastTextView;->init()V

    return-void
.end method

.method private checkSuppressLeftEdge(II)V
    .locals 2

    .line 99
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/4 v0, 0x0

    const/high16 v1, -0x80000000

    if-ne p2, v1, :cond_1

    .line 100
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 101
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p2

    if-ge p2, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/sonyericsson/music/ui/FastTextView;->mSuppressLeftEdge:Z

    goto :goto_0

    .line 103
    :cond_1
    iput-boolean v0, p0, Lcom/sonyericsson/music/ui/FastTextView;->mSuppressLeftEdge:Z

    :goto_0
    return-void
.end method

.method private getFadingEdgeLength()F
    .locals 2

    const/4 v0, 0x1

    .line 163
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 164
    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    .line 165
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    return v0
.end method

.method private init()V
    .locals 2

    .line 62
    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const v0, 0x80001

    goto :goto_0

    :cond_0
    const/high16 v0, 0x80000

    .line 66
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setInputType(I)V

    return-void
.end method

.method private refreshShader()V
    .locals 13

    .line 133
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 136
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    .line 137
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 139
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLeftFadingEdgeStrength()F

    move-result v1

    .line 140
    invoke-virtual {p0}, Landroid/widget/TextView;->getRightFadingEdgeStrength()F

    move-result v3

    .line 141
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v2, :cond_1

    const/4 v2, 0x0

    .line 142
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 145
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    const/16 v4, 0xff

    invoke-virtual {v2, v4}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    const v4, 0xffffff

    const/4 v5, 0x0

    cmpl-float v6, v1, v5

    if-lez v6, :cond_2

    .line 147
    iget-boolean v6, p0, Lcom/sonyericsson/music/ui/FastTextView;->mSuppressLeftEdge:Z

    if-nez v6, :cond_2

    .line 148
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/FastTextView;->getFadingEdgeLength()F

    move-result v3

    mul-float v3, v3, v1

    .line 149
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    move-result v1

    .line 150
    new-instance v12, Landroid/graphics/LinearGradient;

    add-int/lit8 v5, v1, 0x0

    int-to-float v5, v5

    const/4 v6, 0x0

    int-to-float v1, v1

    add-float v7, v3, v1

    const/4 v8, 0x0

    and-int v9, v2, v4

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v4, v12

    move v10, v2

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v12}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    :cond_2
    cmpl-float v1, v3, v5

    if-lez v1, :cond_3

    .line 152
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/FastTextView;->getFadingEdgeLength()F

    move-result v1

    mul-float v1, v1, v3

    .line 153
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    .line 154
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    .line 155
    new-instance v12, Landroid/graphics/LinearGradient;

    int-to-float v6, v3

    sub-float/2addr v6, v1

    int-to-float v1, v5

    add-float/2addr v1, v6

    const/4 v6, 0x0

    add-int/2addr v3, v5

    int-to-float v7, v3

    const/4 v8, 0x0

    and-int v10, v2, v4

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v4, v12

    move v5, v1

    move v9, v2

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v12}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 157
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :goto_0
    return-void
.end method


# virtual methods
.method public canScrollHorizontally(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 109
    iget-boolean v0, p0, Lcom/sonyericsson/music/ui/FastTextView;->mRefreshShader:Z

    if-eqz v0, :cond_0

    .line 110
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/FastTextView;->refreshShader()V

    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Lcom/sonyericsson/music/ui/FastTextView;->mRefreshShader:Z

    .line 113
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 89
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    .line 90
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/ui/FastTextView;->checkSuppressLeftEdge(II)V

    return-void
.end method

.method public onPreDraw()Z
    .locals 1

    .line 118
    invoke-super {p0}, Landroid/widget/TextView;->onPreDraw()Z

    move-result v0

    .line 119
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/FastTextView;->refreshShader()V

    return v0
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    .line 83
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    const/4 p1, 0x1

    .line 84
    iput-boolean p1, p0, Lcom/sonyericsson/music/ui/FastTextView;->mRefreshShader:Z

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 77
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p1, 0x1

    .line 78
    iput-boolean p1, p0, Lcom/sonyericsson/music/ui/FastTextView;->mRefreshShader:Z

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 71
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const/4 p1, 0x1

    .line 72
    iput-boolean p1, p0, Lcom/sonyericsson/music/ui/FastTextView;->mRefreshShader:Z

    return-void
.end method
