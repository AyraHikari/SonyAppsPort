.class public Lcom/android/launcher3/icons/FixedScaleDrawable;
.super Landroid/graphics/drawable/DrawableWrapper;
.source "FixedScaleDrawable.java"


# static fields
.field private static final LEGACY_ICON_SCALE:F = 0.46669f


# instance fields
.field private mScaleX:F

.field private mScaleY:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-direct {p0, v0}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 23
    const v0, 0x3eeef1fe    # 0.46669f

    iput v0, p0, Lcom/android/launcher3/icons/FixedScaleDrawable;->mScaleX:F

    .line 24
    iput v0, p0, Lcom/android/launcher3/icons/FixedScaleDrawable;->mScaleY:F

    .line 25
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 29
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 30
    .local v0, "saveCount":I
    iget v1, p0, Lcom/android/launcher3/icons/FixedScaleDrawable;->mScaleX:F

    iget v2, p0, Lcom/android/launcher3/icons/FixedScaleDrawable;->mScaleY:F

    .line 31
    invoke-virtual {p0}, Lcom/android/launcher3/icons/FixedScaleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher3/icons/FixedScaleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    .line 30
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 32
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->draw(Landroid/graphics/Canvas;)V

    .line 33
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 34
    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .line 37
    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 0
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;

    .line 40
    return-void
.end method

.method public setScale(F)V
    .locals 6
    .param p1, "scale"    # F

    .line 43
    invoke-virtual {p0}, Lcom/android/launcher3/icons/FixedScaleDrawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    .line 44
    .local v0, "h":F
    invoke-virtual {p0}, Lcom/android/launcher3/icons/FixedScaleDrawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    .line 45
    .local v1, "w":F
    const v2, 0x3eeef1fe    # 0.46669f

    mul-float v3, p1, v2

    iput v3, p0, Lcom/android/launcher3/icons/FixedScaleDrawable;->mScaleX:F

    .line 46
    mul-float/2addr v2, p1

    iput v2, p0, Lcom/android/launcher3/icons/FixedScaleDrawable;->mScaleY:F

    .line 47
    cmpl-float v4, v0, v1

    const/4 v5, 0x0

    if-lez v4, :cond_0

    cmpl-float v4, v1, v5

    if-lez v4, :cond_0

    .line 48
    div-float v2, v1, v0

    mul-float/2addr v3, v2

    iput v3, p0, Lcom/android/launcher3/icons/FixedScaleDrawable;->mScaleX:F

    goto :goto_0

    .line 49
    :cond_0
    cmpl-float v3, v1, v0

    if-lez v3, :cond_1

    cmpl-float v3, v0, v5

    if-lez v3, :cond_1

    .line 50
    div-float v3, v0, v1

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/android/launcher3/icons/FixedScaleDrawable;->mScaleY:F

    .line 52
    :cond_1
    :goto_0
    return-void
.end method
