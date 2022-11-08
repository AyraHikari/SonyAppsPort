.class public Lcom/android/quickstep/views/IconView;
.super Landroid/view/View;
.source "IconView.java"


# instance fields
.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawableHeight:I

.field private mDrawableWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method private setDrawableSizeInternal(II)V
    .locals 5
    .param p1, "selfWidth"    # I
    .param p2, "selfHeight"    # I

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 80
    .local v0, "selfRect":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 81
    .local v1, "drawableRect":Landroid/graphics/Rect;
    iget v2, p0, Lcom/android/quickstep/views/IconView;->mDrawableWidth:I

    iget v3, p0, Lcom/android/quickstep/views/IconView;->mDrawableHeight:I

    const/16 v4, 0x11

    invoke-static {v4, v2, v3, v0, v1}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 82
    iget-object v2, p0, Lcom/android/quickstep/views/IconView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 83
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .line 113
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 115
    iget-object v0, p0, Lcom/android/quickstep/views/IconView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 116
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/android/quickstep/views/IconView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/IconView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    :cond_0
    return-void
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/quickstep/views/IconView;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDrawableHeight()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/android/quickstep/views/IconView;->mDrawableHeight:I

    return v0
.end method

.method public getDrawableWidth()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/android/quickstep/views/IconView;->mDrawableWidth:I

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 124
    iget-object v0, p0, Lcom/android/quickstep/views/IconView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 127
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 100
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 101
    iget-object v0, p0, Lcom/android/quickstep/views/IconView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/views/IconView;->setDrawableSizeInternal(II)V

    .line 104
    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .line 136
    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 137
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 138
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/IconView;->setVisibility(I)V

    goto :goto_0

    .line 140
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/IconView;->setVisibility(I)V

    .line 142
    :goto_0
    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 56
    iget-object v0, p0, Lcom/android/quickstep/views/IconView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 57
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 59
    :cond_0
    iput-object p1, p0, Lcom/android/quickstep/views/IconView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 60
    if-eqz p1, :cond_1

    .line 61
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/quickstep/views/IconView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/quickstep/views/IconView;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/quickstep/views/IconView;->setDrawableSizeInternal(II)V

    .line 64
    :cond_1
    invoke-virtual {p0}, Lcom/android/quickstep/views/IconView;->invalidate()V

    .line 65
    return-void
.end method

.method public setDrawableSize(II)V
    .locals 2
    .param p1, "iconWidth"    # I
    .param p2, "iconHeight"    # I

    .line 71
    iput p1, p0, Lcom/android/quickstep/views/IconView;->mDrawableWidth:I

    .line 72
    iput p2, p0, Lcom/android/quickstep/views/IconView;->mDrawableHeight:I

    .line 73
    iget-object v0, p0, Lcom/android/quickstep/views/IconView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/android/quickstep/views/IconView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/quickstep/views/IconView;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/quickstep/views/IconView;->setDrawableSizeInternal(II)V

    .line 76
    :cond_0
    return-void
.end method

.method public setIconColorTint(IF)V
    .locals 2
    .param p1, "color"    # I
    .param p2, "amount"    # F

    .line 151
    iget-object v0, p0, Lcom/android/quickstep/views/IconView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 152
    invoke-static {p1, p2}, Lcom/android/launcher3/Utilities;->makeColorTintingColorFilter(IF)Landroid/graphics/ColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 154
    :cond_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 108
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/views/IconView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
