.class public Lcom/android/launcher3/widget/WidgetImageView;
.super Landroid/view/View;
.source "WidgetImageView.java"


# instance fields
.field private final mBadgeMargin:I

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private final mDstRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/widget/WidgetImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/widget/WidgetImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetImageView;->mDstRectF:Landroid/graphics/RectF;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->profile_badge_margin:I

    .line 52
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/widget/WidgetImageView;->mBadgeMargin:I

    .line 53
    return-void
.end method

.method private updateDstRectF()V
    .locals 9

    .line 83
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 84
    .local v0, "myWidth":F
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 85
    .local v1, "myHeight":F
    iget-object v2, p0, Lcom/android/launcher3/widget/WidgetImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    .line 87
    .local v2, "bitmapWidth":F
    cmpl-float v3, v2, v0

    if-lez v3, :cond_0

    div-float v3, v0, v2

    goto :goto_0

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    .line 88
    .local v3, "scale":F
    :goto_0
    mul-float v4, v2, v3

    .line 89
    .local v4, "scaledWidth":F
    iget-object v5, p0, Lcom/android/launcher3/widget/WidgetImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    .line 91
    .local v5, "scaledHeight":F
    iget-object v6, p0, Lcom/android/launcher3/widget/WidgetImageView;->mDstRectF:Landroid/graphics/RectF;

    sub-float v7, v0, v4

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    iput v7, v6, Landroid/graphics/RectF;->left:F

    .line 92
    iget-object v6, p0, Lcom/android/launcher3/widget/WidgetImageView;->mDstRectF:Landroid/graphics/RectF;

    add-float v7, v0, v4

    div-float/2addr v7, v8

    iput v7, v6, Landroid/graphics/RectF;->right:F

    .line 94
    cmpl-float v6, v5, v1

    if-lez v6, :cond_1

    .line 95
    iget-object v6, p0, Lcom/android/launcher3/widget/WidgetImageView;->mDstRectF:Landroid/graphics/RectF;

    const/4 v7, 0x0

    iput v7, v6, Landroid/graphics/RectF;->top:F

    .line 96
    iget-object v6, p0, Lcom/android/launcher3/widget/WidgetImageView;->mDstRectF:Landroid/graphics/RectF;

    iput v5, v6, Landroid/graphics/RectF;->bottom:F

    goto :goto_1

    .line 98
    :cond_1
    iget-object v6, p0, Lcom/android/launcher3/widget/WidgetImageView;->mDstRectF:Landroid/graphics/RectF;

    sub-float v7, v1, v5

    div-float/2addr v7, v8

    iput v7, v6, Landroid/graphics/RectF;->top:F

    .line 99
    iget-object v6, p0, Lcom/android/launcher3/widget/WidgetImageView;->mDstRectF:Landroid/graphics/RectF;

    add-float v7, v1, v5

    div-float/2addr v7, v8

    iput v7, v6, Landroid/graphics/RectF;->bottom:F

    .line 101
    :goto_1
    return-void
.end method


# virtual methods
.method public getBitmapBounds()Landroid/graphics/Rect;
    .locals 2

    .line 107
    invoke-direct {p0}, Lcom/android/launcher3/widget/WidgetImageView;->updateDstRectF()V

    .line 108
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 109
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetImageView;->mDstRectF:Landroid/graphics/RectF;

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 110
    return-object v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 67
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 68
    invoke-direct {p0}, Lcom/android/launcher3/widget/WidgetImageView;->updateDstRectF()V

    .line 69
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetImageView;->getBitmapBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 70
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 72
    :cond_0
    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 57
    iput-object p1, p0, Lcom/android/launcher3/widget/WidgetImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 58
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetImageView;->invalidate()V

    .line 59
    return-void
.end method
