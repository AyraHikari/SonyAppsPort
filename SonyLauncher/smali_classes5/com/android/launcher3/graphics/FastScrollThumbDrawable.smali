.class public Lcom/android/launcher3/graphics/FastScrollThumbDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "FastScrollThumbDrawable.java"


# static fields
.field private static final sMatrix:Landroid/graphics/Matrix;


# instance fields
.field private final mIsRtl:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPath:Landroid/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/android/launcher3/graphics/FastScrollThumbDrawable;->sMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Paint;Z)V
    .locals 1
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "isRtl"    # Z

    .line 37
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 33
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/graphics/FastScrollThumbDrawable;->mPath:Landroid/graphics/Path;

    .line 38
    iput-object p1, p0, Lcom/android/launcher3/graphics/FastScrollThumbDrawable;->mPaint:Landroid/graphics/Paint;

    .line 39
    iput-boolean p2, p0, Lcom/android/launcher3/graphics/FastScrollThumbDrawable;->mIsRtl:Z

    .line 40
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 72
    iget-object v0, p0, Lcom/android/launcher3/graphics/FastScrollThumbDrawable;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/launcher3/graphics/FastScrollThumbDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 73
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .line 87
    const/4 v0, -0x3

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1
    .param p1, "outline"    # Landroid/graphics/Outline;

    .line 44
    iget-object v0, p0, Lcom/android/launcher3/graphics/FastScrollThumbDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isConvex()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/android/launcher3/graphics/FastScrollThumbDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    .line 47
    :cond_0
    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 10
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 51
    iget-object v0, p0, Lcom/android/launcher3/graphics/FastScrollThumbDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 53
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    .line 56
    .local v0, "r":F
    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, v0

    .line 57
    .local v1, "diameter":F
    const/high16 v2, 0x40a00000    # 5.0f

    div-float v2, v0, v2

    .line 58
    .local v2, "r2":F
    iget-object v3, p0, Lcom/android/launcher3/graphics/FastScrollThumbDrawable;->mPath:Landroid/graphics/Path;

    iget v4, p1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, p1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget v6, p1, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    add-float/2addr v6, v1

    iget v7, p1, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    add-float/2addr v7, v1

    const/16 v8, 0x8

    new-array v8, v8, [F

    const/4 v9, 0x0

    aput v0, v8, v9

    const/4 v9, 0x1

    aput v0, v8, v9

    const/4 v9, 0x2

    aput v0, v8, v9

    const/4 v9, 0x3

    aput v0, v8, v9

    const/4 v9, 0x4

    aput v2, v8, v9

    const/4 v9, 0x5

    aput v2, v8, v9

    const/4 v9, 0x6

    aput v0, v8, v9

    const/4 v9, 0x7

    aput v0, v8, v9

    sget-object v9, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V

    .line 62
    sget-object v3, Lcom/android/launcher3/graphics/FastScrollThumbDrawable;->sMatrix:Landroid/graphics/Matrix;

    iget v4, p1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float/2addr v4, v0

    iget v5, p1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    add-float/2addr v5, v0

    const/high16 v6, -0x3dcc0000    # -45.0f

    invoke-virtual {v3, v6, v4, v5}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 63
    iget-boolean v4, p0, Lcom/android/launcher3/graphics/FastScrollThumbDrawable;->mIsRtl:Z

    if-eqz v4, :cond_0

    .line 64
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 65
    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v3, v4, v6, v7, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 67
    :cond_0
    iget-object v4, p0, Lcom/android/launcher3/graphics/FastScrollThumbDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4, v3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 68
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "i"    # I

    .line 78
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 83
    return-void
.end method
