.class public Lcom/android/launcher3/util/Themes;
.super Ljava/lang/Object;
.source "Themes.java"


# static fields
.field public static final KEY_THEMED_ICONS:Ljava/lang/String; = "themed_icons"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createValueMap(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/launcher3/util/IntArray;)Landroid/util/SparseArray;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrSet"    # Landroid/util/AttributeSet;
    .param p2, "keysToIgnore"    # Lcom/android/launcher3/util/IntArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "Lcom/android/launcher3/util/IntArray;",
            ")",
            "Landroid/util/SparseArray<",
            "Landroid/util/TypedValue;",
            ">;"
        }
    .end annotation

    .line 182
    invoke-interface {p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v0

    .line 183
    .local v0, "count":I
    new-instance v1, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v1, v0}, Lcom/android/launcher3/util/IntArray;-><init>(I)V

    .line 184
    .local v1, "attrNameArray":Lcom/android/launcher3/util/IntArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 185
    invoke-interface {p1, v2}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/launcher3/util/IntArray;->add(I)V

    .line 184
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 187
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v1, p2}, Lcom/android/launcher3/util/IntArray;->removeAllValues(Lcom/android/launcher3/util/IntArray;)V

    .line 189
    invoke-virtual {v1}, Lcom/android/launcher3/util/IntArray;->toArray()[I

    move-result-object v2

    .line 190
    .local v2, "attrNames":[I
    new-instance v3, Landroid/util/SparseArray;

    array-length v4, v2

    invoke-direct {v3, v4}, Landroid/util/SparseArray;-><init>(I)V

    .line 191
    .local v3, "result":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/TypedValue;>;"
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 192
    .local v4, "ta":Landroid/content/res/TypedArray;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v6, v2

    if-ge v5, v6, :cond_1

    .line 193
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 194
    .local v6, "tv":Landroid/util/TypedValue;
    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 195
    aget v7, v2, v5

    invoke-virtual {v3, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 192
    .end local v6    # "tv":Landroid/util/TypedValue;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 198
    .end local v5    # "i":I
    :cond_1
    return-object v3
.end method

.method public static getActivityThemeRes(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 48
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_P:Z

    if-eqz v0, :cond_1

    .line 49
    const-class v0, Landroid/app/WallpaperManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    const/4 v1, 0x1

    .line 50
    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->getWallpaperColors(I)Landroid/app/WallpaperColors;

    move-result-object v0

    .line 51
    .local v0, "colors":Landroid/app/WallpaperColors;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result v1

    :goto_0
    move v0, v1

    .line 52
    .local v0, "colorHints":I
    goto :goto_1

    .line 53
    .end local v0    # "colorHints":I
    :cond_1
    const/4 v0, 0x0

    .line 55
    .restart local v0    # "colorHints":I
    :goto_1
    invoke-static {p0, v0}, Lcom/android/launcher3/util/Themes;->getActivityThemeRes(Landroid/content/Context;I)I

    move-result v1

    return v1
.end method

.method public static getActivityThemeRes(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wallpaperColorHints"    # I

    .line 59
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 61
    .local v0, "supportsDarkText":Z
    :goto_0
    sget-boolean v3, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz v3, :cond_1

    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_1

    move v1, v2

    .line 64
    .local v1, "isMainColorDark":Z
    :cond_1
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->isDarkTheme(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 65
    if-eqz v0, :cond_2

    sget v2, Lcom/android/launcher3/R$style;->AppTheme_Dark_DarkText:I

    goto :goto_1

    .line 66
    :cond_2
    if-eqz v1, :cond_3

    sget v2, Lcom/android/launcher3/R$style;->AppTheme_Dark_DarkMainColor:I

    goto :goto_1

    :cond_3
    sget v2, Lcom/android/launcher3/R$style;->AppTheme_Dark:I

    .line 65
    :goto_1
    return v2

    .line 68
    :cond_4
    if-eqz v0, :cond_5

    sget v2, Lcom/android/launcher3/R$style;->AppTheme_DarkText:I

    goto :goto_2

    .line 69
    :cond_5
    if-eqz v1, :cond_6

    sget v2, Lcom/android/launcher3/R$style;->AppTheme_DarkMainColor:I

    goto :goto_2

    :cond_6
    sget v2, Lcom/android/launcher3/R$style;->AppTheme:I

    .line 68
    :goto_2
    return v2
.end method

.method public static getAttrBoolean(Landroid/content/Context;I)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attr"    # I

    .line 120
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 121
    .local v0, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 122
    .local v1, "value":Z
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 123
    return v1
.end method

.method public static getAttrColor(Landroid/content/Context;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attr"    # I

    .line 116
    invoke-static {p0, p1}, Lcom/android/launcher3/icons/GraphicsUtils;->getAttrColor(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static getAttrDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attr"    # I

    .line 127
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 128
    .local v0, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 129
    .local v1, "value":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 130
    return-object v1
.end method

.method public static getAttrInteger(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attr"    # I

    .line 134
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 135
    .local v0, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    .line 136
    .local v1, "value":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 137
    return v1
.end method

.method public static getColorAccent(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 102
    const v0, 0x1010435

    invoke-static {p0, v0}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static getColorBackground(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 107
    const v0, 0x1010031

    invoke-static {p0, v0}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static getColorBackgroundFloating(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 112
    const v0, 0x10104e2

    invoke-static {p0, v0}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static getDefaultBodyFont(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 82
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10103ac

    const/4 v2, 0x0

    aput v1, v0, v2

    const v1, 0x10301ad

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 84
    .local v0, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    return-object v1
.end method

.method public static getDialogCornerRadius(Landroid/content/Context;)F
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 90
    nop

    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->default_dialog_corner_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 90
    const v1, 0x1010571

    invoke-static {p0, v1, v0}, Lcom/android/launcher3/util/Themes;->getDimension(Landroid/content/Context;IF)F

    move-result v0

    return v0
.end method

.method public static getDimension(Landroid/content/Context;IF)F
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attr"    # I
    .param p2, "defaultValue"    # F

    .line 95
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 96
    .local v0, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 97
    .local v1, "value":F
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 98
    return v1
.end method

.method public static isThemedIconEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 77
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_THEMED_ICONS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 78
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "themed_icons"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 77
    :goto_0
    return v1
.end method

.method public static setColorChangeOnMatrix(IILandroid/graphics/ColorMatrix;)V
    .locals 3
    .param p0, "srcColor"    # I
    .param p1, "dstColor"    # I
    .param p2, "target"    # Landroid/graphics/ColorMatrix;

    .line 169
    invoke-virtual {p2}, Landroid/graphics/ColorMatrix;->reset()V

    .line 170
    invoke-virtual {p2}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 171
    invoke-virtual {p2}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/16 v2, 0x9

    aput v1, v0, v2

    .line 172
    invoke-virtual {p2}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/16 v2, 0xe

    aput v1, v0, v2

    .line 173
    invoke-virtual {p2}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/16 v2, 0x13

    aput v1, v0, v2

    .line 174
    return-void
.end method

.method public static setColorScaleOnMatrix(ILandroid/graphics/ColorMatrix;)V
    .locals 5
    .param p0, "color"    # I
    .param p1, "target"    # Landroid/graphics/ColorMatrix;

    .line 153
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 154
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    .line 153
    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V

    .line 155
    return-void
.end method
