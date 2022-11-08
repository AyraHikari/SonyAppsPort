.class public Lcom/google/android/material/color/HarmonizedColors;
.super Ljava/lang/Object;
.source "HarmonizedColors.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lcom/google/android/material/color/HarmonizedColors;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/color/HarmonizedColors;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addHarmonizedColorAttributesToReplacementMap(Ljava/util/Map;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;I)V
    .locals 6
    .param p1, "themeAttributesTypedArray"    # Landroid/content/res/TypedArray;
    .param p2, "themeOverlayAttributesTypedArray"    # Landroid/content/res/TypedArray;
    .param p3, "colorToHarmonizeWith"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/content/res/TypedArray;",
            "Landroid/content/res/TypedArray;",
            "I)V"
        }
    .end annotation

    .line 148
    .local p0, "colorReplacementMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz p2, :cond_0

    .line 149
    move-object v0, p2

    goto :goto_0

    .line 150
    :cond_0
    move-object v0, p1

    :goto_0
    nop

    .line 152
    .local v0, "resourceIdTypedArray":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 153
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 154
    .local v3, "resourceId":I
    if-eqz v3, :cond_1

    .line 155
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 156
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v4

    invoke-static {v4}, Lcom/google/android/material/color/HarmonizedColors;->isColorResource(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 157
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 158
    .local v2, "colorToHarmonize":I
    nop

    .line 159
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, p3}, Lcom/google/android/material/color/MaterialColors;->harmonize(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 158
    invoke-interface {p0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .end local v2    # "colorToHarmonize":I
    .end local v3    # "resourceId":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 162
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private static addResourcesLoaderToContext(Landroid/content/Context;Lcom/google/android/material/color/HarmonizedColorsOptions;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "options"    # Lcom/google/android/material/color/HarmonizedColorsOptions;

    .line 87
    nop

    .line 88
    invoke-static {p1}, Lcom/google/android/material/color/HarmonizedColors;->createHarmonizedColorReplacementMap(Lcom/google/android/material/color/HarmonizedColorsOptions;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/material/color/ColorResourcesLoaderCreator;->create(Landroid/content/Context;Ljava/util/Map;)Landroid/content/res/loader/ResourcesLoader;

    move-result-object v0

    .line 89
    .local v0, "resourcesLoader":Landroid/content/res/loader/ResourcesLoader;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Landroid/content/res/loader/ResourcesLoader;

    aput-object v0, v4, v1

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->addLoaders([Landroid/content/res/loader/ResourcesLoader;)V

    .line 91
    return v3

    .line 93
    :cond_0
    return v1
.end method

.method public static applyIfAvailable(Lcom/google/android/material/color/HarmonizedColorsOptions;)V
    .locals 3
    .param p0, "options"    # Lcom/google/android/material/color/HarmonizedColorsOptions;

    .line 46
    invoke-static {}, Lcom/google/android/material/color/HarmonizedColors;->isHarmonizedColorAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    return-void

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/color/HarmonizedColorsOptions;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 50
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/google/android/material/color/HarmonizedColorsOptions;->getThemeOverlayResourceId()I

    move-result v1

    .line 52
    .local v1, "themeOverlay":I
    invoke-static {v0, p0}, Lcom/google/android/material/color/HarmonizedColors;->addResourcesLoaderToContext(Landroid/content/Context;Lcom/google/android/material/color/HarmonizedColorsOptions;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 53
    invoke-static {v0, v1}, Lcom/google/android/material/color/ThemeUtils;->applyThemeOverlay(Landroid/content/Context;I)V

    .line 55
    :cond_1
    return-void
.end method

.method private static createHarmonizedColorReplacementMap(Lcom/google/android/material/color/HarmonizedColorsOptions;)Ljava/util/Map;
    .locals 10
    .param p0, "options"    # Lcom/google/android/material/color/HarmonizedColorsOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/color/HarmonizedColorsOptions;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 99
    invoke-virtual {p0}, Lcom/google/android/material/color/HarmonizedColorsOptions;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 100
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 101
    .local v1, "colorReplacementMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    nop

    .line 102
    invoke-virtual {p0}, Lcom/google/android/material/color/HarmonizedColorsOptions;->getColorAttributeToHarmonizeWith()I

    move-result v2

    sget-object v3, Lcom/google/android/material/color/HarmonizedColors;->TAG:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;ILjava/lang/String;)I

    move-result v2

    .line 105
    .local v2, "colorToHarmonizeWith":I
    invoke-virtual {p0}, Lcom/google/android/material/color/HarmonizedColorsOptions;->getColorResourcesIds()[I

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget v6, v3, v5

    .line 106
    .local v6, "colorResourceId":I
    nop

    .line 108
    invoke-static {v0, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    .line 107
    invoke-static {v7, v2}, Lcom/google/android/material/color/MaterialColors;->harmonize(II)I

    move-result v7

    .line 109
    .local v7, "harmonizedColor":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .end local v6    # "colorResourceId":I
    .end local v7    # "harmonizedColor":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/color/HarmonizedColorsOptions;->getColorAttributes()Lcom/google/android/material/color/HarmonizedColorAttributes;

    move-result-object v3

    .line 113
    .local v3, "colorAttributes":Lcom/google/android/material/color/HarmonizedColorAttributes;
    if-eqz v3, :cond_2

    .line 114
    invoke-virtual {v3}, Lcom/google/android/material/color/HarmonizedColorAttributes;->getAttributes()[I

    move-result-object v4

    .line 115
    .local v4, "attributes":[I
    array-length v5, v4

    if-lez v5, :cond_2

    .line 119
    invoke-virtual {v3}, Lcom/google/android/material/color/HarmonizedColorAttributes;->getThemeOverlay()I

    move-result v5

    .line 120
    .local v5, "themeOverlay":I
    invoke-virtual {v0, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 122
    .local v6, "themeAttributesTypedArray":Landroid/content/res/TypedArray;
    if-eqz v5, :cond_1

    .line 123
    new-instance v7, Landroid/view/ContextThemeWrapper;

    invoke-direct {v7, v0, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v7, v4}, Landroid/view/ContextThemeWrapper;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v7

    goto :goto_1

    .line 124
    :cond_1
    const/4 v7, 0x0

    :goto_1
    nop

    .line 125
    .local v7, "themeOverlayAttributesTypedArray":Landroid/content/res/TypedArray;
    invoke-static {v1, v6, v7, v2}, Lcom/google/android/material/color/HarmonizedColors;->addHarmonizedColorAttributesToReplacementMap(Ljava/util/Map;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;I)V

    .line 131
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 132
    if-eqz v7, :cond_2

    .line 133
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 137
    .end local v4    # "attributes":[I
    .end local v5    # "themeOverlay":I
    .end local v6    # "themeAttributesTypedArray":Landroid/content/res/TypedArray;
    .end local v7    # "themeOverlayAttributesTypedArray":Landroid/content/res/TypedArray;
    :cond_2
    return-object v1
.end method

.method private static isColorResource(I)Z
    .locals 1
    .param p0, "attrType"    # I

    .line 165
    const/16 v0, 0x1c

    if-gt v0, p0, :cond_0

    const/16 v0, 0x1f

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isHarmonizedColorAvailable()Z
    .locals 2

    .line 81
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static wrapContextIfAvailable(Lcom/google/android/material/color/HarmonizedColorsOptions;)Landroid/content/Context;
    .locals 4
    .param p0, "options"    # Lcom/google/android/material/color/HarmonizedColorsOptions;

    .line 65
    invoke-virtual {p0}, Lcom/google/android/material/color/HarmonizedColorsOptions;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 66
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lcom/google/android/material/color/HarmonizedColors;->isHarmonizedColorAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    return-object v0

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/color/HarmonizedColorsOptions;->getThemeOverlayResourceId()I

    move-result v1

    .line 71
    .local v1, "themeOverlay":I
    if-nez v1, :cond_1

    .line 72
    new-instance v2, Landroid/content/ContextWrapper;

    invoke-direct {v2, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 73
    :cond_1
    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-direct {v2, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    :goto_0
    nop

    .line 75
    .local v2, "newContext":Landroid/content/Context;
    invoke-static {v2, p0}, Lcom/google/android/material/color/HarmonizedColors;->addResourcesLoaderToContext(Landroid/content/Context;Lcom/google/android/material/color/HarmonizedColorsOptions;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v2

    goto :goto_1

    :cond_2
    move-object v3, v0

    :goto_1
    return-object v3
.end method
