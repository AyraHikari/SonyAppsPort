.class public Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;
.super Ljava/lang/Object;
.source "DoubleShadowBubbleTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/views/DoubleShadowBubbleTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShadowInfo"
.end annotation


# instance fields
.field public final ambientShadowBlur:F

.field public final ambientShadowColor:I

.field public final keyShadowBlur:F

.field public final keyShadowColor:I

.field public final keyShadowOffsetX:F

.field public final keyShadowOffsetY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    sget-object v0, Lcom/android/launcher3/R$styleable;->ShadowInfo:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 101
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/android/launcher3/R$styleable;->ShadowInfo_ambientShadowBlur:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;->ambientShadowBlur:F

    .line 103
    sget v2, Lcom/android/launcher3/R$styleable;->ShadowInfo_ambientShadowColor:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;->ambientShadowColor:I

    .line 105
    sget v2, Lcom/android/launcher3/R$styleable;->ShadowInfo_keyShadowBlur:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;->keyShadowBlur:F

    .line 106
    sget v2, Lcom/android/launcher3/R$styleable;->ShadowInfo_keyShadowOffsetX:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;->keyShadowOffsetX:F

    .line 107
    sget v2, Lcom/android/launcher3/R$styleable;->ShadowInfo_keyShadowOffsetY:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;->keyShadowOffsetY:F

    .line 108
    sget v2, Lcom/android/launcher3/R$styleable;->ShadowInfo_keyShadowColor:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;->keyShadowColor:I

    .line 109
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 110
    return-void
.end method


# virtual methods
.method public skipDoubleShadow(Landroid/widget/TextView;)Z
    .locals 9
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 113
    invoke-virtual {p1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 114
    .local v0, "textAlpha":I
    iget v1, p0, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;->keyShadowColor:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 115
    .local v1, "keyShadowAlpha":I
    iget v2, p0, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;->ambientShadowColor:I

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    .line 116
    .local v2, "ambientShadowAlpha":I
    const/4 v3, 0x1

    if-eqz v0, :cond_3

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    if-lez v2, :cond_1

    if-nez v1, :cond_1

    .line 120
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    iget v5, p0, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;->ambientShadowBlur:F

    iget v6, p0, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;->ambientShadowColor:I

    .line 121
    invoke-static {v6, v0}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->-$$Nest$smgetTextShadowColor(II)I

    move-result v6

    .line 120
    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v7, v6}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 122
    return v3

    .line 123
    :cond_1
    if-lez v1, :cond_2

    if-nez v2, :cond_2

    .line 124
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    iget v5, p0, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;->keyShadowBlur:F

    iget v6, p0, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;->keyShadowOffsetX:F

    iget v7, p0, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;->keyShadowOffsetY:F

    iget v8, p0, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;->keyShadowColor:I

    .line 128
    invoke-static {v8, v0}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->-$$Nest$smgetTextShadowColor(II)I

    move-result v8

    .line 124
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 129
    return v3

    .line 131
    :cond_2
    const/4 v3, 0x0

    return v3

    .line 117
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/TextPaint;->clearShadowLayer()V

    .line 118
    return v3
.end method
