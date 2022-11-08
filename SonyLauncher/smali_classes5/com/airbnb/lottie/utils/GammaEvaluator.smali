.class public Lcom/airbnb/lottie/utils/GammaEvaluator;
.super Ljava/lang/Object;
.source "GammaEvaluator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static EOCF_sRGB(F)F
    .locals 4
    .param p0, "srgb"    # F

    .line 24
    const v0, 0x3d25aee6    # 0.04045f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    const v0, 0x414eb852    # 12.92f

    div-float v0, p0, v0

    goto :goto_0

    :cond_0
    const v0, 0x3d6147ae    # 0.055f

    add-float/2addr v0, p0

    const v1, 0x3f870a3d    # 1.055f

    div-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x4003333340000000L    # 2.4000000953674316

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    :goto_0
    return v0
.end method

.method private static OECF_sRGB(F)F
    .locals 4
    .param p0, "linear"    # F

    .line 16
    const v0, 0x3b4d2e1c    # 0.0031308f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    .line 17
    const v0, 0x414eb852    # 12.92f

    mul-float/2addr v0, p0

    goto :goto_0

    :cond_0
    float-to-double v0, p0

    const-wide v2, 0x3fdaaaaaa0000000L    # 0.4166666567325592

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide v2, 0x3ff0e147a0000000L    # 1.0549999475479126

    mul-double/2addr v0, v2

    const-wide v2, 0x3fac28f5c0000000L    # 0.054999999701976776

    sub-double/2addr v0, v2

    double-to-float v0, v0

    .line 16
    :goto_0
    return v0
.end method

.method public static evaluate(FII)I
    .locals 16
    .param p0, "fraction"    # F
    .param p1, "startInt"    # I
    .param p2, "endInt"    # I

    .line 28
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_0

    .line 29
    return v0

    .line 31
    :cond_0
    shr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    .line 32
    .local v2, "startA":F
    shr-int/lit8 v4, v0, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    div-float/2addr v4, v3

    .line 33
    .local v4, "startR":F
    shr-int/lit8 v5, v0, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-float v5, v5

    div-float/2addr v5, v3

    .line 34
    .local v5, "startG":F
    and-int/lit16 v6, v0, 0xff

    int-to-float v6, v6

    div-float/2addr v6, v3

    .line 36
    .local v6, "startB":F
    shr-int/lit8 v7, v1, 0x18

    and-int/lit16 v7, v7, 0xff

    int-to-float v7, v7

    div-float/2addr v7, v3

    .line 37
    .local v7, "endA":F
    shr-int/lit8 v8, v1, 0x10

    and-int/lit16 v8, v8, 0xff

    int-to-float v8, v8

    div-float/2addr v8, v3

    .line 38
    .local v8, "endR":F
    shr-int/lit8 v9, v1, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-float v9, v9

    div-float/2addr v9, v3

    .line 39
    .local v9, "endG":F
    and-int/lit16 v10, v1, 0xff

    int-to-float v10, v10

    div-float/2addr v10, v3

    .line 42
    .local v10, "endB":F
    invoke-static {v4}, Lcom/airbnb/lottie/utils/GammaEvaluator;->EOCF_sRGB(F)F

    move-result v4

    .line 43
    invoke-static {v5}, Lcom/airbnb/lottie/utils/GammaEvaluator;->EOCF_sRGB(F)F

    move-result v5

    .line 44
    invoke-static {v6}, Lcom/airbnb/lottie/utils/GammaEvaluator;->EOCF_sRGB(F)F

    move-result v6

    .line 46
    invoke-static {v8}, Lcom/airbnb/lottie/utils/GammaEvaluator;->EOCF_sRGB(F)F

    move-result v8

    .line 47
    invoke-static {v9}, Lcom/airbnb/lottie/utils/GammaEvaluator;->EOCF_sRGB(F)F

    move-result v9

    .line 48
    invoke-static {v10}, Lcom/airbnb/lottie/utils/GammaEvaluator;->EOCF_sRGB(F)F

    move-result v10

    .line 51
    sub-float v11, v7, v2

    mul-float v11, v11, p0

    add-float/2addr v11, v2

    .line 52
    .local v11, "a":F
    sub-float v12, v8, v4

    mul-float v12, v12, p0

    add-float/2addr v12, v4

    .line 53
    .local v12, "r":F
    sub-float v13, v9, v5

    mul-float v13, v13, p0

    add-float/2addr v13, v5

    .line 54
    .local v13, "g":F
    sub-float v14, v10, v6

    mul-float v14, v14, p0

    add-float/2addr v14, v6

    .line 57
    .local v14, "b":F
    mul-float/2addr v11, v3

    .line 58
    invoke-static {v12}, Lcom/airbnb/lottie/utils/GammaEvaluator;->OECF_sRGB(F)F

    move-result v15

    mul-float/2addr v15, v3

    .line 59
    .end local v12    # "r":F
    .local v15, "r":F
    invoke-static {v13}, Lcom/airbnb/lottie/utils/GammaEvaluator;->OECF_sRGB(F)F

    move-result v12

    mul-float/2addr v12, v3

    .line 60
    .end local v13    # "g":F
    .local v12, "g":F
    invoke-static {v14}, Lcom/airbnb/lottie/utils/GammaEvaluator;->OECF_sRGB(F)F

    move-result v13

    mul-float/2addr v13, v3

    .line 62
    .end local v14    # "b":F
    .local v13, "b":F
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v3

    shl-int/lit8 v3, v3, 0x18

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v14

    shl-int/lit8 v14, v14, 0x10

    or-int/2addr v3, v14

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v14

    shl-int/lit8 v14, v14, 0x8

    or-int/2addr v3, v14

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v14

    or-int/2addr v3, v14

    return v3
.end method
