.class public Lcom/sonyericsson/music/common/PaletteUtils;
.super Ljava/lang/Object;
.source "PaletteUtils.java"


# static fields
.field private static final CARD_SATURATION_CLAMP:[F

.field private static final CARD_VALUE_CLAMP:[F

.field private static final CARD_VALUE_CLAMP_DARK:[F

.field private static final MAX_SIZE:I = 0xc8

.field private static final SATURATION_CLAMP:[F

.field private static final VALUE_CLAMP:[F

.field private static final VALUE_CLAMP_DARK:[F

.field private static final sColorPickCache:Landroidx/collection/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LruCache<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sUseDarkTheme:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    .line 20
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/sonyericsson/music/common/PaletteUtils;->VALUE_CLAMP:[F

    .line 21
    new-array v1, v0, [F

    fill-array-data v1, :array_1

    sput-object v1, Lcom/sonyericsson/music/common/PaletteUtils;->VALUE_CLAMP_DARK:[F

    .line 23
    new-array v1, v0, [F

    fill-array-data v1, :array_2

    sput-object v1, Lcom/sonyericsson/music/common/PaletteUtils;->SATURATION_CLAMP:[F

    .line 25
    new-array v1, v0, [F

    fill-array-data v1, :array_3

    sput-object v1, Lcom/sonyericsson/music/common/PaletteUtils;->CARD_VALUE_CLAMP:[F

    .line 26
    new-array v1, v0, [F

    fill-array-data v1, :array_4

    sput-object v1, Lcom/sonyericsson/music/common/PaletteUtils;->CARD_VALUE_CLAMP_DARK:[F

    .line 28
    new-array v0, v0, [F

    fill-array-data v0, :array_5

    sput-object v0, Lcom/sonyericsson/music/common/PaletteUtils;->CARD_SATURATION_CLAMP:[F

    .line 35
    new-instance v0, Landroidx/collection/LruCache;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Landroidx/collection/LruCache;-><init>(I)V

    sput-object v0, Lcom/sonyericsson/music/common/PaletteUtils;->sColorPickCache:Landroidx/collection/LruCache;

    const/4 v0, 0x0

    .line 37
    sput-boolean v0, Lcom/sonyericsson/music/common/PaletteUtils;->sUseDarkTheme:Z

    return-void

    :array_0
    .array-data 4
        0x3eb33333    # 0.35f
        0x3f0ccccd    # 0.55f
    .end array-data

    :array_1
    .array-data 4
        0x3eb33333    # 0.35f
        0x3f0ccccd    # 0.55f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f19999a    # 0.6f
    .end array-data

    :array_3
    .array-data 4
        0x3eb33333    # 0.35f
        0x3f000000    # 0.5f
    .end array-data

    :array_4
    .array-data 4
        0x3e800000    # 0.25f
        0x3ecccccd    # 0.4f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3f19999a    # 0.6f
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addColorPick(Landroid/net/Uri;II)V
    .locals 0

    if-eqz p0, :cond_0

    .line 44
    invoke-virtual {p0}, Landroid/net/Uri;->hashCode()I

    move-result p0

    mul-int/lit8 p1, p1, 0x1f

    add-int/2addr p0, p1

    .line 45
    sget-object p1, Lcom/sonyericsson/music/common/PaletteUtils;->sColorPickCache:Landroidx/collection/LruCache;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static clamp(FFF)F
    .locals 0

    .line 159
    invoke-static {p2, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public static clearColorPickCache()V
    .locals 1

    .line 58
    sget-object v0, Lcom/sonyericsson/music/common/PaletteUtils;->sColorPickCache:Landroidx/collection/LruCache;

    invoke-virtual {v0}, Landroidx/collection/LruCache;->evictAll()V

    return-void
.end method

.method public static getBackgroundColor(Landroid/graphics/Bitmap;Landroid/content/Context;)I
    .locals 3

    .line 69
    new-instance v0, Landroidx/palette/graphics/Palette$Builder;

    invoke-direct {v0, p0}, Landroidx/palette/graphics/Palette$Builder;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroidx/palette/graphics/Palette$Builder;->generate()Landroidx/palette/graphics/Palette;

    move-result-object p0

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p0, v0}, Landroidx/palette/graphics/Palette;->getDarkVibrantColor(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 72
    invoke-virtual {p0, v0}, Landroidx/palette/graphics/Palette;->getDarkMutedColor(I)I

    move-result v1

    :cond_0
    if-nez v1, :cond_1

    .line 75
    invoke-virtual {p0}, Landroidx/palette/graphics/Palette;->getSwatches()Ljava/util/List;

    move-result-object p0

    .line 76
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 77
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/palette/graphics/Palette$Swatch;

    invoke-virtual {p0}, Landroidx/palette/graphics/Palette$Swatch;->getRgb()I

    move-result v1

    :cond_1
    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    .line 81
    invoke-static {p1}, Lcom/sonyericsson/music/common/ThemeColor;->primary(Landroid/content/Context;)I

    move-result v1

    :cond_2
    return v1
.end method

.method public static getColorPick(Landroid/net/Uri;I)Ljava/lang/Integer;
    .locals 0

    if-eqz p0, :cond_0

    .line 51
    invoke-virtual {p0}, Landroid/net/Uri;->hashCode()I

    move-result p0

    mul-int/lit8 p1, p1, 0x1f

    add-int/2addr p0, p1

    .line 52
    sget-object p1, Lcom/sonyericsson/music/common/PaletteUtils;->sColorPickCache:Landroidx/collection/LruCache;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static normalize(I)I
    .locals 6

    const/4 v0, 0x3

    .line 91
    new-array v0, v0, [F

    .line 92
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 93
    sget-object v1, Lcom/sonyericsson/music/common/PaletteUtils;->SATURATION_CLAMP:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v1, v1, v4

    aget v5, v0, v4

    invoke-static {v3, v1, v5}, Lcom/sonyericsson/music/common/PaletteUtils;->clamp(FFF)F

    move-result v1

    aput v1, v0, v4

    .line 94
    sget-boolean v1, Lcom/sonyericsson/music/common/PaletteUtils;->sUseDarkTheme:Z

    const/4 v3, 0x2

    if-eqz v1, :cond_0

    .line 95
    sget-object v1, Lcom/sonyericsson/music/common/PaletteUtils;->VALUE_CLAMP_DARK:[F

    aget v2, v1, v2

    aget v1, v1, v4

    aget v4, v0, v3

    invoke-static {v2, v1, v4}, Lcom/sonyericsson/music/common/PaletteUtils;->clamp(FFF)F

    move-result v1

    aput v1, v0, v3

    .line 96
    aget v1, v0, v3

    float-to-double v1, v1

    const-wide v4, 0x3fb999999999999aL    # 0.1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v1, v4

    double-to-float v1, v1

    aput v1, v0, v3

    goto :goto_0

    .line 98
    :cond_0
    sget-object v1, Lcom/sonyericsson/music/common/PaletteUtils;->VALUE_CLAMP:[F

    aget v2, v1, v2

    aget v1, v1, v4

    aget v4, v0, v3

    invoke-static {v2, v1, v4}, Lcom/sonyericsson/music/common/PaletteUtils;->clamp(FFF)F

    move-result v1

    aput v1, v0, v3

    .line 100
    :goto_0
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    invoke-static {p0, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p0

    return p0
.end method

.method public static normalizeCardViewColor(I)I
    .locals 6

    const/4 v0, 0x3

    .line 108
    new-array v0, v0, [F

    .line 109
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 110
    sget-object v1, Lcom/sonyericsson/music/common/PaletteUtils;->CARD_SATURATION_CLAMP:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v1, v1, v4

    aget v5, v0, v4

    invoke-static {v3, v1, v5}, Lcom/sonyericsson/music/common/PaletteUtils;->clamp(FFF)F

    move-result v1

    aput v1, v0, v4

    .line 111
    sget-boolean v1, Lcom/sonyericsson/music/common/PaletteUtils;->sUseDarkTheme:Z

    const/4 v3, 0x2

    if-eqz v1, :cond_0

    .line 112
    sget-object v1, Lcom/sonyericsson/music/common/PaletteUtils;->CARD_VALUE_CLAMP_DARK:[F

    aget v2, v1, v2

    aget v1, v1, v4

    aget v4, v0, v3

    invoke-static {v2, v1, v4}, Lcom/sonyericsson/music/common/PaletteUtils;->clamp(FFF)F

    move-result v1

    aput v1, v0, v3

    goto :goto_0

    .line 114
    :cond_0
    sget-object v1, Lcom/sonyericsson/music/common/PaletteUtils;->CARD_VALUE_CLAMP:[F

    aget v2, v1, v2

    aget v1, v1, v4

    aget v4, v0, v3

    invoke-static {v2, v1, v4}, Lcom/sonyericsson/music/common/PaletteUtils;->clamp(FFF)F

    move-result v1

    aput v1, v0, v3

    .line 116
    :goto_0
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    invoke-static {p0, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p0

    return p0
.end method

.method public static normalizeHeaderViewColor(I)I
    .locals 6

    const/4 v0, 0x3

    .line 132
    new-array v0, v0, [F

    .line 133
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 134
    sget-object v1, Lcom/sonyericsson/music/common/PaletteUtils;->SATURATION_CLAMP:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v1, v1, v4

    aget v5, v0, v4

    invoke-static {v3, v1, v5}, Lcom/sonyericsson/music/common/PaletteUtils;->clamp(FFF)F

    move-result v1

    aput v1, v0, v4

    .line 135
    sget-boolean v1, Lcom/sonyericsson/music/common/PaletteUtils;->sUseDarkTheme:Z

    const/4 v3, 0x2

    if-eqz v1, :cond_0

    .line 136
    sget-object v1, Lcom/sonyericsson/music/common/PaletteUtils;->VALUE_CLAMP_DARK:[F

    aget v2, v1, v2

    aget v1, v1, v4

    aget v4, v0, v3

    invoke-static {v2, v1, v4}, Lcom/sonyericsson/music/common/PaletteUtils;->clamp(FFF)F

    move-result v1

    aput v1, v0, v3

    goto :goto_0

    .line 138
    :cond_0
    sget-object v1, Lcom/sonyericsson/music/common/PaletteUtils;->VALUE_CLAMP:[F

    aget v2, v1, v2

    aget v1, v1, v4

    aget v4, v0, v3

    invoke-static {v2, v1, v4}, Lcom/sonyericsson/music/common/PaletteUtils;->clamp(FFF)F

    move-result v1

    aput v1, v0, v3

    .line 140
    :goto_0
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    invoke-static {p0, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p0

    return p0
.end method

.method public static normalizeHighlightTextColor(I)I
    .locals 6

    const/4 v0, 0x3

    .line 144
    new-array v0, v0, [F

    .line 145
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 146
    sget-object v1, Lcom/sonyericsson/music/common/PaletteUtils;->SATURATION_CLAMP:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v1, v1, v4

    aget v5, v0, v4

    invoke-static {v3, v1, v5}, Lcom/sonyericsson/music/common/PaletteUtils;->clamp(FFF)F

    move-result v1

    aput v1, v0, v4

    .line 147
    sget-boolean v1, Lcom/sonyericsson/music/common/PaletteUtils;->sUseDarkTheme:Z

    const/4 v3, 0x2

    if-eqz v1, :cond_0

    .line 148
    sget-object v1, Lcom/sonyericsson/music/common/PaletteUtils;->VALUE_CLAMP_DARK:[F

    aget v2, v1, v2

    aget v1, v1, v4

    aget v4, v0, v3

    invoke-static {v2, v1, v4}, Lcom/sonyericsson/music/common/PaletteUtils;->clamp(FFF)F

    move-result v1

    aput v1, v0, v3

    .line 149
    aget v1, v0, v3

    float-to-double v1, v1

    const-wide v4, 0x3fc3333333333333L    # 0.15

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v1, v4

    double-to-float v1, v1

    aput v1, v0, v3

    goto :goto_0

    .line 151
    :cond_0
    sget-object v1, Lcom/sonyericsson/music/common/PaletteUtils;->VALUE_CLAMP:[F

    aget v2, v1, v2

    aget v1, v1, v4

    aget v4, v0, v3

    invoke-static {v2, v1, v4}, Lcom/sonyericsson/music/common/PaletteUtils;->clamp(FFF)F

    move-result v1

    aput v1, v0, v3

    .line 152
    aget v1, v0, v3

    float-to-double v1, v1

    const-wide v4, 0x3fa999999999999aL    # 0.05

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v1, v4

    double-to-float v1, v1

    aput v1, v0, v3

    .line 155
    :goto_0
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    invoke-static {p0, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p0

    return p0
.end method

.method public static normalizeStatusBarColor(I)I
    .locals 6

    const/4 v0, 0x3

    .line 120
    new-array v0, v0, [F

    .line 121
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 122
    sget-object v1, Lcom/sonyericsson/music/common/PaletteUtils;->SATURATION_CLAMP:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v1, v1, v4

    aget v5, v0, v4

    invoke-static {v3, v1, v5}, Lcom/sonyericsson/music/common/PaletteUtils;->clamp(FFF)F

    move-result v1

    aput v1, v0, v4

    .line 123
    sget-boolean v1, Lcom/sonyericsson/music/common/PaletteUtils;->sUseDarkTheme:Z

    const v3, 0x3da3d70a    # 0.08f

    const/4 v5, 0x2

    if-eqz v1, :cond_0

    .line 124
    sget-object v1, Lcom/sonyericsson/music/common/PaletteUtils;->VALUE_CLAMP_DARK:[F

    aget v2, v1, v2

    aget v1, v1, v4

    aget v4, v0, v5

    invoke-static {v2, v1, v4}, Lcom/sonyericsson/music/common/PaletteUtils;->clamp(FFF)F

    move-result v1

    sub-float/2addr v1, v3

    aput v1, v0, v5

    goto :goto_0

    .line 126
    :cond_0
    sget-object v1, Lcom/sonyericsson/music/common/PaletteUtils;->VALUE_CLAMP:[F

    aget v2, v1, v2

    aget v1, v1, v4

    aget v4, v0, v5

    invoke-static {v2, v1, v4}, Lcom/sonyericsson/music/common/PaletteUtils;->clamp(FFF)F

    move-result v1

    sub-float/2addr v1, v3

    aput v1, v0, v5

    .line 128
    :goto_0
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    invoke-static {p0, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p0

    return p0
.end method

.method public static setDarkTheme(Z)V
    .locals 0

    .line 163
    sput-boolean p0, Lcom/sonyericsson/music/common/PaletteUtils;->sUseDarkTheme:Z

    return-void
.end method
