.class public Lcom/android/launcher3/graphics/IconPalette;
.super Ljava/lang/Object;
.source "IconPalette.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final MIN_PRELOAD_COLOR_LIGHTNESS:F = 0.6f

.field private static final MIN_PRELOAD_COLOR_SATURATION:F = 0.2f

.field private static final TAG:Ljava/lang/String; = "IconPalette"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static contrastChange(III)Ljava/lang/String;
    .locals 3
    .param p0, "colorOld"    # I
    .param p1, "colorNew"    # I
    .param p2, "bg"    # I

    .line 98
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 99
    invoke-static {p0, p2}, Landroidx/core/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 100
    invoke-static {p1, p2}, Landroidx/core/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 98
    const-string v1, "from %.2f:1 to %.2f:1"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static ensureTextContrast(II)I
    .locals 2
    .param p0, "color"    # I
    .param p1, "bg"    # I

    .line 110
    const-wide/high16 v0, 0x4012000000000000L    # 4.5

    invoke-static {p0, p1, v0, v1}, Lcom/android/launcher3/graphics/IconPalette;->findContrastColor(IID)I

    move-result v0

    return v0
.end method

.method private static findContrastColor(IID)I
    .locals 25
    .param p0, "fg"    # I
    .param p1, "bg"    # I
    .param p2, "minRatio"    # D

    .line 124
    move/from16 v0, p0

    move/from16 v1, p1

    invoke-static/range {p0 .. p1}, Landroidx/core/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v2

    cmpl-double v2, v2, p2

    if-ltz v2, :cond_0

    .line 125
    return v0

    .line 128
    :cond_0
    const/4 v2, 0x3

    new-array v2, v2, [D

    .line 129
    .local v2, "lab":[D
    invoke-static {v1, v2}, Landroidx/core/graphics/ColorUtils;->colorToLAB(I[D)V

    .line 130
    const/4 v3, 0x0

    aget-wide v4, v2, v3

    .line 131
    .local v4, "bgL":D
    invoke-static {v0, v2}, Landroidx/core/graphics/ColorUtils;->colorToLAB(I[D)V

    .line 132
    aget-wide v6, v2, v3

    .line 133
    .local v6, "fgL":D
    const-wide/high16 v8, 0x4049000000000000L    # 50.0

    cmpg-double v8, v4, v8

    const/4 v9, 0x1

    if-gez v8, :cond_1

    move v3, v9

    .line 135
    .local v3, "isBgDark":Z
    :cond_1
    if-eqz v3, :cond_2

    move-wide v10, v6

    goto :goto_0

    :cond_2
    const-wide/16 v10, 0x0

    .local v10, "low":D
    :goto_0
    if-eqz v3, :cond_3

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    goto :goto_1

    :cond_3
    move-wide v12, v6

    .line 136
    .local v12, "high":D
    :goto_1
    aget-wide v8, v2, v9

    .local v8, "a":D
    const/4 v14, 0x2

    aget-wide v20, v2, v14

    .line 137
    .local v20, "b":D
    const/4 v14, 0x0

    .end local p0    # "fg":I
    .local v0, "fg":I
    .local v14, "i":I
    :goto_2
    const/16 v15, 0xf

    if-ge v14, v15, :cond_7

    sub-double v15, v12, v10

    const-wide v17, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v15, v15, v17

    if-lez v15, :cond_7

    .line 138
    add-double v15, v10, v12

    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    div-double v22, v15, v17

    .line 139
    .local v22, "l":D
    move/from16 v24, v14

    .end local v14    # "i":I
    .local v24, "i":I
    move-wide/from16 v14, v22

    move-wide/from16 v16, v8

    move-wide/from16 v18, v20

    invoke-static/range {v14 .. v19}, Landroidx/core/graphics/ColorUtils;->LABToColor(DDD)I

    move-result v0

    .line 140
    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v14

    cmpl-double v14, v14, p2

    if-lez v14, :cond_5

    .line 141
    if-eqz v3, :cond_4

    move-wide/from16 v12, v22

    goto :goto_3

    :cond_4
    move-wide/from16 v10, v22

    goto :goto_3

    .line 143
    :cond_5
    if-eqz v3, :cond_6

    move-wide/from16 v10, v22

    goto :goto_3

    :cond_6
    move-wide/from16 v12, v22

    .line 137
    .end local v22    # "l":D
    :goto_3
    add-int/lit8 v14, v24, 0x1

    .end local v24    # "i":I
    .restart local v14    # "i":I
    goto :goto_2

    :cond_7
    move/from16 v24, v14

    .line 146
    .end local v14    # "i":I
    move-wide v14, v10

    move-wide/from16 v16, v8

    move-wide/from16 v18, v20

    invoke-static/range {v14 .. v19}, Landroidx/core/graphics/ColorUtils;->LABToColor(DDD)I

    move-result v14

    return v14
.end method

.method public static getPreloadProgressColor(Landroid/content/Context;I)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dominantColor"    # I

    .line 44
    move v0, p1

    .line 47
    .local v0, "result":I
    const/4 v1, 0x3

    new-array v1, v1, [F

    .line 48
    .local v1, "hsv":[F
    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 49
    const/4 v2, 0x1

    aget v2, v1, v2

    const v3, 0x3e4ccccd    # 0.2f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 50
    invoke-static {p0}, Lcom/android/launcher3/util/Themes;->getColorAccent(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    .line 52
    :cond_0
    const v2, 0x3f19999a    # 0.6f

    const/4 v3, 0x2

    aget v4, v1, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aput v2, v1, v3

    .line 53
    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    .line 55
    :goto_0
    return v0
.end method

.method private static resolveColor(Landroid/content/Context;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "color"    # I

    .line 90
    if-nez p1, :cond_0

    .line 91
    sget v0, Lcom/android/launcher3/R$color;->notification_icon_default_color:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    return v0

    .line 93
    :cond_0
    return p1
.end method

.method public static resolveContrastColor(Landroid/content/Context;II)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "color"    # I
    .param p2, "background"    # I

    .line 67
    invoke-static {p0, p1}, Lcom/android/launcher3/graphics/IconPalette;->resolveColor(Landroid/content/Context;I)I

    move-result v0

    .line 69
    .local v0, "resolvedColor":I
    invoke-static {v0, p2}, Lcom/android/launcher3/graphics/IconPalette;->ensureTextContrast(II)I

    move-result v1

    .line 71
    .local v1, "contrastingColor":I
    nop

    .line 81
    return v1
.end method
