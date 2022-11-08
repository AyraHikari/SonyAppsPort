.class public Lcom/android/launcher3/icons/PlaceHolderIconDrawable;
.super Lcom/android/launcher3/icons/FastBitmapDrawable;
.source "PlaceHolderIconDrawable.java"


# instance fields
.field private final mProgressPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/icons/BitmapInfo;Landroid/content/Context;)V
    .locals 3
    .param p1, "info"    # Lcom/android/launcher3/icons/BitmapInfo;
    .param p2, "context"    # Landroid/content/Context;

    .line 41
    invoke-direct {p0, p1}, Lcom/android/launcher3/icons/FastBitmapDrawable;-><init>(Lcom/android/launcher3/icons/BitmapInfo;)V

    .line 43
    const/16 v0, 0x64

    invoke-static {v0}, Lcom/android/launcher3/icons/GraphicsUtils;->getShapePath(I)Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/icons/PlaceHolderIconDrawable;->mProgressPath:Landroid/graphics/Path;

    .line 44
    iget-object v0, p0, Lcom/android/launcher3/icons/PlaceHolderIconDrawable;->mPaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/launcher3/icons/R$attr;->loadingIconColor:I

    .line 45
    invoke-static {p2, v1}, Lcom/android/launcher3/icons/GraphicsUtils;->getAttrColor(Landroid/content/Context;I)I

    move-result v1

    iget v2, p1, Lcom/android/launcher3/icons/BitmapInfo;->color:I

    .line 44
    invoke-static {v1, v2}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    return-void
.end method

.method static synthetic lambda$animateIconUpdate$0(ILandroid/graphics/drawable/Drawable;Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p0, "placeholderColor"    # I
    .param p1, "newIcon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .line 65
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 66
    .local v0, "newAlpha":I
    invoke-static {p0, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    .line 68
    .local v1, "newColor":I
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v1, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 69
    return-void
.end method


# virtual methods
.method public animateIconUpdate(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "newIcon"    # Landroid/graphics/drawable/Drawable;

    .line 59
    iget-object v0, p0, Lcom/android/launcher3/icons/PlaceHolderIconDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    .line 60
    .local v0, "placeholderColor":I
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 62
    .local v1, "originalAlpha":I
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v4, 0x1

    aput v3, v2, v4

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 63
    .local v2, "iconUpdateAnimation":Landroid/animation/ValueAnimator;
    const-wide/16 v3, 0x177

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 64
    new-instance v3, Lcom/android/launcher3/icons/PlaceHolderIconDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, p1}, Lcom/android/launcher3/icons/PlaceHolderIconDrawable$$ExternalSyntheticLambda0;-><init>(ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 70
    new-instance v3, Lcom/android/launcher3/icons/PlaceHolderIconDrawable$1;

    invoke-direct {v3, p0, p1}, Lcom/android/launcher3/icons/PlaceHolderIconDrawable$1;-><init>(Lcom/android/launcher3/icons/PlaceHolderIconDrawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 76
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 77
    return-void
.end method

.method protected drawInternal(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 50
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 51
    .local v0, "saveCount":I
    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 52
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 53
    iget-object v1, p0, Lcom/android/launcher3/icons/PlaceHolderIconDrawable;->mProgressPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/launcher3/icons/PlaceHolderIconDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 54
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 55
    return-void
.end method
