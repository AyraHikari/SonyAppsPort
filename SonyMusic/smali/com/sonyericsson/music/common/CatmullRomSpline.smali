.class public final Lcom/sonyericsson/music/common/CatmullRomSpline;
.super Ljava/lang/Object;
.source "CatmullRomSpline.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clamp(III)I
    .locals 0

    .line 53
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static getInterpolatedValue(F[F)F
    .locals 6

    if-eqz p1, :cond_1

    .line 22
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    float-to-int v0, p0

    int-to-float v1, v0

    sub-float/2addr p0, v1

    .line 28
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x0

    .line 30
    invoke-static {v2, v3, v1}, Lcom/sonyericsson/music/common/CatmullRomSpline;->clamp(III)I

    move-result v2

    aget v2, p1, v2

    add-int/lit8 v4, v0, 0x0

    .line 31
    invoke-static {v4, v3, v1}, Lcom/sonyericsson/music/common/CatmullRomSpline;->clamp(III)I

    move-result v4

    aget v4, p1, v4

    add-int/lit8 v5, v0, 0x1

    .line 32
    invoke-static {v5, v3, v1}, Lcom/sonyericsson/music/common/CatmullRomSpline;->clamp(III)I

    move-result v5

    aget v5, p1, v5

    add-int/lit8 v0, v0, 0x2

    .line 33
    invoke-static {v0, v3, v1}, Lcom/sonyericsson/music/common/CatmullRomSpline;->clamp(III)I

    move-result v0

    aget p1, p1, v0

    .line 30
    invoke-static {p0, v2, v4, v5, p1}, Lcom/sonyericsson/music/common/CatmullRomSpline;->interpolate(FFFFF)F

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static interpolate(FFFFF)F
    .locals 6

    mul-float v0, p0, p0

    mul-float v1, v0, p0

    sub-float p1, p3, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p1, v2

    sub-float/2addr p4, p2

    div-float/2addr p4, v2

    mul-float v3, v1, v2

    const/high16 v4, 0x40400000    # 3.0f

    mul-float v4, v4, v0

    sub-float/2addr v3, v4

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v3, v5

    mul-float v3, v3, p2

    mul-float v2, v2, v0

    sub-float p2, v1, v2

    add-float/2addr p2, p0

    mul-float p2, p2, p1

    const/high16 p0, -0x40000000    # -2.0f

    mul-float p0, p0, v1

    add-float/2addr p0, v4

    mul-float p0, p0, p3

    sub-float/2addr v1, v0

    mul-float v1, v1, p4

    add-float/2addr v3, p2

    add-float/2addr v3, p0

    add-float/2addr v3, v1

    return v3
.end method
