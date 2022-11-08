.class public Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;
.super Ljava/lang/Object;
.source "AllAppsBackgroundDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "TransformedImageDrawable"
.end annotation


# instance fields
.field private mAlpha:I

.field private mGravity:I

.field private mImage:Landroid/graphics/drawable/Drawable;

.field private mXPercent:F

.field private mYPercent:F


# direct methods
.method public constructor <init>(Landroid/content/Context;IFFI)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I
    .param p3, "xPct"    # F
    .param p4, "yPct"    # F
    .param p5, "gravity"    # I

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->mImage:Landroid/graphics/drawable/Drawable;

    .line 57
    iput p3, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->mXPercent:F

    .line 58
    iput p4, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->mYPercent:F

    .line 59
    iput p5, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->mGravity:I

    .line 60
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 86
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 87
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->mAlpha:I

    return v0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .line 63
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 64
    iput p1, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->mAlpha:I

    .line 65
    return-void
.end method

.method public updateBounds(Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 72
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 73
    .local v0, "width":I
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 74
    .local v1, "height":I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->mXPercent:F

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v2, v3

    .line 75
    .local v2, "left":I
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->mYPercent:F

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v3, v4

    .line 76
    .local v3, "top":I
    iget v4, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->mGravity:I

    and-int/lit8 v5, v4, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 77
    div-int/lit8 v5, v0, 0x2

    sub-int/2addr v2, v5

    .line 79
    :cond_0
    const/16 v5, 0x10

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_1

    .line 80
    div-int/lit8 v4, v1, 0x2

    sub-int/2addr v3, v4

    .line 82
    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->mImage:Landroid/graphics/drawable/Drawable;

    add-int v5, v2, v0

    add-int v6, v3, v1

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 83
    return-void
.end method
