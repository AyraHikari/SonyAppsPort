.class public Landroidx/transition/ArcMotion;
.super Landroidx/transition/PathMotion;
.source "ArcMotion.java"


# static fields
.field private static final DEFAULT_MAX_TANGENT:F


# instance fields
.field private mMaximumAngle:F

.field private mMaximumTangent:F

.field private mMinimumHorizontalAngle:F

.field private mMinimumHorizontalTangent:F

.field private mMinimumVerticalAngle:F

.field private mMinimumVerticalTangent:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0x4041800000000000L    # 35.0

    .line 55
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Landroidx/transition/ArcMotion;->DEFAULT_MAX_TANGENT:F

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 64
    invoke-direct {p0}, Landroidx/transition/PathMotion;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Landroidx/transition/ArcMotion;->mMinimumHorizontalAngle:F

    .line 58
    iput v0, p0, Landroidx/transition/ArcMotion;->mMinimumVerticalAngle:F

    const/high16 v1, 0x428c0000    # 70.0f

    .line 59
    iput v1, p0, Landroidx/transition/ArcMotion;->mMaximumAngle:F

    .line 60
    iput v0, p0, Landroidx/transition/ArcMotion;->mMinimumHorizontalTangent:F

    .line 61
    iput v0, p0, Landroidx/transition/ArcMotion;->mMinimumVerticalTangent:F

    .line 62
    sget v0, Landroidx/transition/ArcMotion;->DEFAULT_MAX_TANGENT:F

    iput v0, p0, Landroidx/transition/ArcMotion;->mMaximumTangent:F

    return-void
.end method


# virtual methods
.method public getPath(FFFF)Landroid/graphics/Path;
    .locals 11

    .line 198
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 199
    invoke-virtual {v7, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    sub-float v0, p3, p1

    sub-float v1, p4, p2

    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    add-float v3, p1, p3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float v5, p2, p4

    div-float/2addr v5, v4

    const/high16 v6, 0x3e800000    # 0.25f

    mul-float v6, v6, v2

    cmpl-float v8, p2, p4

    if-lez v8, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 220
    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v9

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_2

    mul-float v1, v1, v4

    div-float/2addr v2, v1

    .line 226
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    if-eqz v8, :cond_1

    add-float/2addr v0, p4

    move v1, v0

    move v0, p3

    goto :goto_1

    :cond_1
    add-float/2addr v0, p2

    move v1, v0

    move v0, p1

    .line 235
    :goto_1
    iget v2, p0, Landroidx/transition/ArcMotion;->mMinimumVerticalTangent:F

    mul-float v8, v6, v2

    mul-float v8, v8, v2

    goto :goto_3

    :cond_2
    mul-float v0, v0, v4

    div-float/2addr v2, v0

    if-eqz v8, :cond_3

    add-float/2addr v2, p1

    move v1, p2

    move v0, v2

    goto :goto_2

    :cond_3
    sub-float v0, p3, v2

    move v1, p4

    .line 248
    :goto_2
    iget v2, p0, Landroidx/transition/ArcMotion;->mMinimumHorizontalTangent:F

    mul-float v8, v6, v2

    mul-float v8, v8, v2

    :goto_3
    sub-float v2, v3, v0

    sub-float v9, v5, v1

    mul-float v2, v2, v2

    mul-float v9, v9, v9

    add-float/2addr v2, v9

    .line 255
    iget v9, p0, Landroidx/transition/ArcMotion;->mMaximumTangent:F

    mul-float v6, v6, v9

    mul-float v6, v6, v9

    const/4 v9, 0x0

    cmpg-float v10, v2, v8

    if-gez v10, :cond_4

    move v6, v8

    goto :goto_4

    :cond_4
    cmpl-float v8, v2, v6

    if-lez v8, :cond_5

    goto :goto_4

    :cond_5
    const/4 v6, 0x0

    :goto_4
    cmpl-float v8, v6, v9

    if-eqz v8, :cond_6

    div-float/2addr v6, v2

    float-to-double v8, v6

    .line 265
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v2, v8

    sub-float/2addr v0, v3

    mul-float v0, v0, v2

    add-float/2addr v0, v3

    sub-float/2addr v1, v5

    mul-float v2, v2, v1

    add-float v1, v5, v2

    :cond_6
    add-float/2addr p1, v0

    div-float/2addr p1, v4

    add-float/2addr p2, v1

    div-float v2, p2, v4

    add-float/2addr v0, p3

    div-float v3, v0, v4

    add-float/2addr v1, p4

    div-float v4, v1, v4

    move-object v0, v7

    move v1, p1

    move v5, p3

    move v6, p4

    .line 273
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    return-object v7
.end method
