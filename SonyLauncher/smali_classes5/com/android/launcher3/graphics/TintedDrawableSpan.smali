.class public Lcom/android/launcher3/graphics/TintedDrawableSpan;
.super Landroid/text/style/DynamicDrawableSpan;
.source "TintedDrawableSpan.java"


# instance fields
.field private final mDrawable:Landroid/graphics/drawable/Drawable;

.field private mOldTint:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I

    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/text/style/DynamicDrawableSpan;-><init>(I)V

    .line 35
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/graphics/TintedDrawableSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 36
    iput v0, p0, Lcom/android/launcher3/graphics/TintedDrawableSpan;->mOldTint:I

    .line 37
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 38
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "x"    # F
    .param p6, "top"    # I
    .param p7, "y"    # I
    .param p8, "bottom"    # I
    .param p9, "paint"    # Landroid/graphics/Paint;

    .line 51
    invoke-virtual {p9}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    .line 52
    .local v0, "color":I
    iget v1, p0, Lcom/android/launcher3/graphics/TintedDrawableSpan;->mOldTint:I

    if-eq v1, v0, :cond_0

    .line 53
    iput v0, p0, Lcom/android/launcher3/graphics/TintedDrawableSpan;->mOldTint:I

    .line 54
    iget-object v1, p0, Lcom/android/launcher3/graphics/TintedDrawableSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 56
    :cond_0
    invoke-super/range {p0 .. p9}, Landroid/text/style/DynamicDrawableSpan;->draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V

    .line 57
    return-void
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/android/launcher3/graphics/TintedDrawableSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 7
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "fm"    # Landroid/graphics/Paint$FontMetricsInt;

    .line 42
    if-nez p5, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p5

    :goto_0
    move-object p5, v0

    .line 43
    iget v0, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v1, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v0, v1

    .line 44
    .local v0, "iconSize":I
    iget-object v1, p0, Lcom/android/launcher3/graphics/TintedDrawableSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 45
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-super/range {v1 .. v6}, Landroid/text/style/DynamicDrawableSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v1

    return v1
.end method
