.class public Lcom/android/launcher3/views/DoubleShadowBubbleTextView;
.super Lcom/android/launcher3/BubbleTextView;
.source "DoubleShadowBubbleTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;
    }
.end annotation


# instance fields
.field private final mShadowInfo:Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;


# direct methods
.method static bridge synthetic -$$Nest$smgetTextShadowColor(II)I
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->getTextShadowColor(II)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/BubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    new-instance v0, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->mShadowInfo:Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;

    .line 53
    iget v1, v0, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;->ambientShadowBlur:F

    iget v0, v0, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;->ambientShadowColor:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2, v0}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->setShadowLayer(FFFI)V

    .line 54
    return-void
.end method

.method private static getTextShadowColor(II)I
    .locals 2
    .param p0, "shadowColor"    # I
    .param p1, "textAlpha"    # I

    .line 138
    nop

    .line 139
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    mul-int/2addr v0, p1

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 138
    invoke-static {p0, v0}, Lcom/android/launcher3/icons/GraphicsUtils;->setColorAlphaBound(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 59
    iget-object v0, p0, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->mShadowInfo:Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;->skipDoubleShadow(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-super {p0, p1}, Lcom/android/launcher3/BubbleTextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 61
    return-void

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->getCurrentTextColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 66
    .local v0, "alpha":I
    invoke-virtual {p0}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->mShadowInfo:Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;

    iget v2, v2, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;->ambientShadowBlur:F

    iget-object v3, p0, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->mShadowInfo:Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;

    iget v3, v3, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;->ambientShadowColor:I

    .line 67
    invoke-static {v3, v0}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->getTextShadowColor(II)I

    move-result v3

    .line 66
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->drawWithoutDot(Landroid/graphics/Canvas;)V

    .line 70
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 71
    invoke-virtual {p0}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->getExtendedPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    .line 72
    invoke-virtual {p0}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    .line 73
    invoke-virtual {p0}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->getScrollY()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 71
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 75
    invoke-virtual {p0}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->mShadowInfo:Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;

    iget v2, v2, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;->keyShadowBlur:F

    iget-object v3, p0, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->mShadowInfo:Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;

    iget v3, v3, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;->keyShadowOffsetX:F

    iget-object v4, p0, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->mShadowInfo:Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;

    iget v4, v4, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;->keyShadowOffsetY:F

    iget-object v5, p0, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->mShadowInfo:Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;

    iget v5, v5, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;->keyShadowColor:I

    .line 79
    invoke-static {v5, v0}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->getTextShadowColor(II)I

    move-result v5

    .line 75
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 80
    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->drawWithoutDot(Landroid/graphics/Canvas;)V

    .line 81
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 83
    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->drawDotIfNecessary(Landroid/graphics/Canvas;)V

    .line 84
    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->drawBadgeIfNecessary(Landroid/graphics/Canvas;)V

    .line 85
    return-void
.end method
