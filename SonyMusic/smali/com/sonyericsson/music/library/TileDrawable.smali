.class public Lcom/sonyericsson/music/library/TileDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "TileDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/library/TileDrawable$TileState;
    }
.end annotation


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mCornerRadius:F

.field private mEdgeCrop:I

.field private final mEdgePaint:Landroid/graphics/Paint;

.field private final mMatrix:Landroid/graphics/Matrix;

.field private final mPaint:Landroid/graphics/Paint;

.field private mPressedColor:I

.field private final mRect:Landroid/graphics/RectF;

.field private final mStatePaint:Landroid/graphics/Paint;

.field private final mTileState:Lcom/sonyericsson/music/library/TileDrawable$TileState;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;FFIII)V
    .locals 2

    .line 59
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 36
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/library/TileDrawable;->mRect:Landroid/graphics/RectF;

    .line 37
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/library/TileDrawable;->mMatrix:Landroid/graphics/Matrix;

    .line 61
    iput p2, p0, Lcom/sonyericsson/music/library/TileDrawable;->mCornerRadius:F

    .line 63
    iput-object p1, p0, Lcom/sonyericsson/music/library/TileDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 65
    new-instance p2, Landroid/graphics/BitmapShader;

    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p2, p1, v0, v0}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 68
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/music/library/TileDrawable;->mPaint:Landroid/graphics/Paint;

    .line 69
    iget-object p1, p0, Lcom/sonyericsson/music/library/TileDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 70
    iget-object p1, p0, Lcom/sonyericsson/music/library/TileDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 p1, -0x1

    const/4 p2, 0x0

    if-eq p4, p1, :cond_0

    .line 74
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/music/library/TileDrawable;->mEdgePaint:Landroid/graphics/Paint;

    .line 75
    iget-object v1, p0, Lcom/sonyericsson/music/library/TileDrawable;->mEdgePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    iget-object p4, p0, Lcom/sonyericsson/music/library/TileDrawable;->mEdgePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p4, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 77
    iget-object p4, p0, Lcom/sonyericsson/music/library/TileDrawable;->mEdgePaint:Landroid/graphics/Paint;

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 78
    iget-object p4, p0, Lcom/sonyericsson/music/library/TileDrawable;->mEdgePaint:Landroid/graphics/Paint;

    invoke-virtual {p4, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_0

    .line 80
    :cond_0
    iput-object p2, p0, Lcom/sonyericsson/music/library/TileDrawable;->mEdgePaint:Landroid/graphics/Paint;

    .line 84
    :goto_0
    new-instance p3, Lcom/sonyericsson/music/library/TileDrawable$TileState;

    invoke-direct {p3, p2}, Lcom/sonyericsson/music/library/TileDrawable$TileState;-><init>(Lcom/sonyericsson/music/library/TileDrawable$1;)V

    iput-object p3, p0, Lcom/sonyericsson/music/library/TileDrawable;->mTileState:Lcom/sonyericsson/music/library/TileDrawable$TileState;

    .line 85
    iget-object p3, p0, Lcom/sonyericsson/music/library/TileDrawable;->mTileState:Lcom/sonyericsson/music/library/TileDrawable$TileState;

    const/4 p4, 0x0

    iput-boolean p4, p3, Lcom/sonyericsson/music/library/TileDrawable$TileState;->mFocused:Z

    .line 86
    iput-boolean p4, p3, Lcom/sonyericsson/music/library/TileDrawable$TileState;->mPressed:Z

    if-eq p6, p1, :cond_1

    .line 89
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/music/library/TileDrawable;->mStatePaint:Landroid/graphics/Paint;

    .line 90
    iget-object p1, p0, Lcom/sonyericsson/music/library/TileDrawable;->mStatePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 91
    iget-object p1, p0, Lcom/sonyericsson/music/library/TileDrawable;->mStatePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 93
    :cond_1
    iput-object p2, p0, Lcom/sonyericsson/music/library/TileDrawable;->mStatePaint:Landroid/graphics/Paint;

    .line 100
    :goto_1
    iput p5, p0, Lcom/sonyericsson/music/library/TileDrawable;->mEdgeCrop:I

    .line 102
    iput p6, p0, Lcom/sonyericsson/music/library/TileDrawable;->mPressedColor:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;FI)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    .line 55
    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/music/library/TileDrawable;-><init>(Landroid/graphics/Bitmap;FFIII)V

    return-void
.end method

.method private contains([II)Z
    .locals 4

    .line 142
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    if-ne v3, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 152
    iget-object v0, p0, Lcom/sonyericsson/music/library/TileDrawable;->mRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/sonyericsson/music/library/TileDrawable;->mCornerRadius:F

    iget-object v2, p0, Lcom/sonyericsson/music/library/TileDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 153
    iget-object v0, p0, Lcom/sonyericsson/music/library/TileDrawable;->mStatePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/music/library/TileDrawable;->mTileState:Lcom/sonyericsson/music/library/TileDrawable$TileState;

    iget-boolean v1, v1, Lcom/sonyericsson/music/library/TileDrawable$TileState;->mPressed:Z

    if-eqz v1, :cond_0

    .line 154
    iget v1, p0, Lcom/sonyericsson/music/library/TileDrawable;->mPressedColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 155
    iget-object v0, p0, Lcom/sonyericsson/music/library/TileDrawable;->mRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/sonyericsson/music/library/TileDrawable;->mCornerRadius:F

    iget-object v2, p0, Lcom/sonyericsson/music/library/TileDrawable;->mStatePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/library/TileDrawable;->mEdgePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/music/library/TileDrawable;->mTileState:Lcom/sonyericsson/music/library/TileDrawable$TileState;

    iget-boolean v1, v1, Lcom/sonyericsson/music/library/TileDrawable$TileState;->mFocused:Z

    if-eqz v1, :cond_1

    .line 157
    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 158
    iget-object v1, p0, Lcom/sonyericsson/music/library/TileDrawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 159
    iget-object v1, p0, Lcom/sonyericsson/music/library/TileDrawable;->mRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/sonyericsson/music/library/TileDrawable;->mCornerRadius:F

    iget-object v3, p0, Lcom/sonyericsson/music/library/TileDrawable;->mEdgePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 160
    iget-object p1, p0, Lcom/sonyericsson/music/library/TileDrawable;->mRect:Landroid/graphics/RectF;

    neg-float v0, v0

    invoke-virtual {p1, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4

    .line 107
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 109
    iget-object v0, p0, Lcom/sonyericsson/music/library/TileDrawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 111
    iget-object v0, p0, Lcom/sonyericsson/music/library/TileDrawable;->mMatrix:Landroid/graphics/Matrix;

    .line 113
    iget v1, p0, Lcom/sonyericsson/music/library/TileDrawable;->mEdgeCrop:I

    neg-int v2, v1

    int-to-float v2, v2

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 115
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/sonyericsson/music/library/TileDrawable;->mEdgeCrop:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sonyericsson/music/library/TileDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 116
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    iget v2, p0, Lcom/sonyericsson/music/library/TileDrawable;->mEdgeCrop:I

    int-to-float v2, v2

    mul-float v2, v2, v3

    add-float/2addr p1, v2

    iget-object v2, p0, Lcom/sonyericsson/music/library/TileDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p1, v2

    .line 117
    invoke-virtual {v0, v1, p1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 118
    iget-object p1, p0, Lcom/sonyericsson/music/library/TileDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method protected onStateChange([I)Z
    .locals 4

    .line 128
    iget-object v0, p0, Lcom/sonyericsson/music/library/TileDrawable;->mTileState:Lcom/sonyericsson/music/library/TileDrawable$TileState;

    iget-boolean v1, v0, Lcom/sonyericsson/music/library/TileDrawable$TileState;->mPressed:Z

    .line 129
    iget-boolean v2, v0, Lcom/sonyericsson/music/library/TileDrawable$TileState;->mFocused:Z

    const v3, 0x10100a7

    .line 130
    invoke-direct {p0, p1, v3}, Lcom/sonyericsson/music/library/TileDrawable;->contains([II)Z

    move-result v3

    iput-boolean v3, v0, Lcom/sonyericsson/music/library/TileDrawable$TileState;->mPressed:Z

    .line 131
    iget-object v0, p0, Lcom/sonyericsson/music/library/TileDrawable;->mTileState:Lcom/sonyericsson/music/library/TileDrawable$TileState;

    const v3, 0x101009c

    invoke-direct {p0, p1, v3}, Lcom/sonyericsson/music/library/TileDrawable;->contains([II)Z

    move-result v3

    iput-boolean v3, v0, Lcom/sonyericsson/music/library/TileDrawable$TileState;->mFocused:Z

    .line 132
    iget-object v0, p0, Lcom/sonyericsson/music/library/TileDrawable;->mTileState:Lcom/sonyericsson/music/library/TileDrawable$TileState;

    iget-boolean v3, v0, Lcom/sonyericsson/music/library/TileDrawable$TileState;->mPressed:Z

    if-ne v1, v3, :cond_1

    iget-boolean v0, v0, Lcom/sonyericsson/music/library/TileDrawable$TileState;->mFocused:Z

    if-ne v2, v0, :cond_1

    .line 134
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    .line 136
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_2
    return p1
.end method

.method public setAlpha(I)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/sonyericsson/music/library/TileDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/sonyericsson/music/library/TileDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
