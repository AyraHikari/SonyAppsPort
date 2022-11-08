.class public Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AllAppsBackgroundDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;
    }
.end annotation


# instance fields
.field private mBackgroundAnim:Landroid/animation/ObjectAnimator;

.field protected final mHand:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

.field private final mHeight:I

.field protected final mIcons:[Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

.field private final mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .line 101
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 103
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/android/launcher3/R$dimen;->all_apps_background_canvas_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mWidth:I

    .line 104
    sget v1, Lcom/android/launcher3/R$dimen;->all_apps_background_canvas_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mHeight:I

    .line 106
    new-instance v3, Landroid/view/ContextThemeWrapper;

    .line 107
    sget v1, Lcom/android/launcher3/R$attr;->isMainColorDark:I

    invoke-static {p1, v1}, Lcom/android/launcher3/util/Themes;->getAttrBoolean(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    sget v1, Lcom/android/launcher3/R$style;->AllAppsEmptySearchBackground_Dark:I

    goto :goto_0

    .line 109
    :cond_0
    sget v1, Lcom/android/launcher3/R$style;->AllAppsEmptySearchBackground:I

    :goto_0
    invoke-direct {v3, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 110
    .end local p1    # "context":Landroid/content/Context;
    .local v3, "context":Landroid/content/Context;
    new-instance p1, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    sget v4, Lcom/android/launcher3/R$drawable;->ic_all_apps_bg_hand:I

    const v5, 0x3f133333    # 0.575f

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;-><init>(Landroid/content/Context;IFFI)V

    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mHand:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    .line 112
    const/4 p1, 0x4

    new-array p1, p1, [Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mIcons:[Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    .line 113
    const/4 v1, 0x0

    new-instance v2, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    sget v6, Lcom/android/launcher3/R$drawable;->ic_all_apps_bg_icon_1:I

    const/high16 v7, 0x3ec00000    # 0.375f

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v4, v2

    move-object v5, v3

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;-><init>(Landroid/content/Context;IFFI)V

    aput-object v2, p1, v1

    .line 115
    const/4 v1, 0x1

    new-instance v2, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    sget v6, Lcom/android/launcher3/R$drawable;->ic_all_apps_bg_icon_2:I

    const/high16 v7, 0x3ea00000    # 0.3125f

    const v8, 0x3e4ccccd    # 0.2f

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;-><init>(Landroid/content/Context;IFFI)V

    aput-object v2, p1, v1

    .line 117
    const/4 v1, 0x2

    new-instance v2, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    sget v6, Lcom/android/launcher3/R$drawable;->ic_all_apps_bg_icon_3:I

    const v7, 0x3ef33333    # 0.475f

    const v8, 0x3e851eb8    # 0.26f

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;-><init>(Landroid/content/Context;IFFI)V

    aput-object v2, p1, v1

    .line 119
    const/4 v1, 0x3

    new-instance v2, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    sget v6, Lcom/android/launcher3/R$drawable;->ic_all_apps_bg_icon_4:I

    const v7, 0x3f333333    # 0.7f

    const/high16 v8, 0x3e000000    # 0.125f

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;-><init>(Landroid/content/Context;IFFI)V

    aput-object v2, p1, v1

    .line 121
    return-void
.end method

.method private cancelAnimator(Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p1, "animator"    # Landroid/animation/ObjectAnimator;

    .line 201
    if-eqz p1, :cond_0

    .line 202
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 204
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public animateBgAlpha(FI)V
    .locals 4
    .param p1, "finalAlpha"    # F
    .param p2, "duration"    # I

    .line 127
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 128
    .local v0, "finalAlphaI":I
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->getAlpha()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 129
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mBackgroundAnim:Landroid/animation/ObjectAnimator;

    invoke-direct {p0, v1}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->cancelAnimator(Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mBackgroundAnim:Landroid/animation/ObjectAnimator;

    .line 130
    sget-object v1, Lcom/android/launcher3/LauncherAnimUtils;->DRAWABLE_ALPHA:Landroid/util/IntProperty;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mBackgroundAnim:Landroid/animation/ObjectAnimator;

    .line 132
    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 133
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mBackgroundAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 135
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 160
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mHand:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 161
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mIcons:[Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 162
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mHand:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 155
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 150
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 197
    const/4 v0, -0x3

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 168
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 169
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mHand:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->updateBounds(Landroid/graphics/Rect;)V

    .line 170
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mIcons:[Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 171
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->updateBounds(Landroid/graphics/Rect;)V

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->invalidateSelf()V

    .line 174
    return-void
.end method

.method public setAlpha(I)V
    .locals 3
    .param p1, "alpha"    # I

    .line 178
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mHand:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->setAlpha(I)V

    .line 179
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mIcons:[Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 180
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->setAlpha(I)V

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->invalidateSelf()V

    .line 183
    return-void
.end method

.method public setBgAlpha(F)V
    .locals 2
    .param p1, "finalAlpha"    # F

    .line 141
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 142
    .local v0, "finalAlphaI":I
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->getAlpha()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 143
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mBackgroundAnim:Landroid/animation/ObjectAnimator;

    invoke-direct {p0, v1}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->cancelAnimator(Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mBackgroundAnim:Landroid/animation/ObjectAnimator;

    .line 144
    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->setAlpha(I)V

    .line 146
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 193
    return-void
.end method
