.class public final Lcom/airbnb/lottie/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final INV_SQRT_2:F

.field public static final SECOND_IN_NANOS:I = 0x3b9aca00

.field private static dpScale:F

.field private static final pathMeasure:Landroid/graphics/PathMeasure;

.field private static final points:[F

.field private static final tempPath:Landroid/graphics/Path;

.field private static final tempPath2:Landroid/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 37
    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/utils/Utils;->pathMeasure:Landroid/graphics/PathMeasure;

    .line 38
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/utils/Utils;->tempPath:Landroid/graphics/Path;

    .line 39
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/utils/Utils;->tempPath2:Landroid/graphics/Path;

    .line 40
    const/4 v0, 0x4

    new-array v0, v0, [F

    sput-object v0, Lcom/airbnb/lottie/utils/Utils;->points:[F

    .line 41
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v2, v0

    double-to-float v0, v2

    sput v0, Lcom/airbnb/lottie/utils/Utils;->INV_SQRT_2:F

    .line 42
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/airbnb/lottie/utils/Utils;->dpScale:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static applyTrimPathIfNeeded(Landroid/graphics/Path;FFF)V
    .locals 14
    .param p0, "path"    # Landroid/graphics/Path;
    .param p1, "startValue"    # F
    .param p2, "endValue"    # F
    .param p3, "offsetValue"    # F

    .line 111
    move-object v0, p0

    const-string v1, "applyTrimPathIfNeeded"

    invoke-static {v1}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 112
    sget-object v2, Lcom/airbnb/lottie/utils/Utils;->pathMeasure:Landroid/graphics/PathMeasure;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 114
    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v3

    .line 115
    .local v3, "length":F
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v5, p1, v4

    const/4 v6, 0x0

    if-nez v5, :cond_0

    cmpl-float v5, p2, v6

    if-nez v5, :cond_0

    .line 116
    invoke-static {v1}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 117
    return-void

    .line 119
    :cond_0
    cmpg-float v5, v3, v4

    if-ltz v5, :cond_9

    sub-float v5, p2, p1

    sub-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    const-wide v7, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v4, v4, v7

    if-gez v4, :cond_1

    goto/16 :goto_1

    .line 123
    :cond_1
    mul-float v4, v3, p1

    .line 124
    .local v4, "start":F
    mul-float v5, v3, p2

    .line 125
    .local v5, "end":F
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 126
    .local v7, "newStart":F
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 128
    .local v8, "newEnd":F
    mul-float v9, p3, v3

    .line 129
    .local v9, "offset":F
    add-float/2addr v7, v9

    .line 130
    add-float/2addr v8, v9

    .line 133
    cmpl-float v10, v7, v3

    if-ltz v10, :cond_2

    cmpl-float v10, v8, v3

    if-ltz v10, :cond_2

    .line 134
    invoke-static {v7, v3}, Lcom/airbnb/lottie/utils/MiscUtils;->floorMod(FF)I

    move-result v10

    int-to-float v7, v10

    .line 135
    invoke-static {v8, v3}, Lcom/airbnb/lottie/utils/MiscUtils;->floorMod(FF)I

    move-result v10

    int-to-float v8, v10

    .line 138
    :cond_2
    cmpg-float v10, v7, v6

    if-gez v10, :cond_3

    .line 139
    invoke-static {v7, v3}, Lcom/airbnb/lottie/utils/MiscUtils;->floorMod(FF)I

    move-result v10

    int-to-float v7, v10

    .line 141
    :cond_3
    cmpg-float v10, v8, v6

    if-gez v10, :cond_4

    .line 142
    invoke-static {v8, v3}, Lcom/airbnb/lottie/utils/MiscUtils;->floorMod(FF)I

    move-result v10

    int-to-float v8, v10

    .line 146
    :cond_4
    cmpl-float v10, v7, v8

    if-nez v10, :cond_5

    .line 147
    invoke-virtual {p0}, Landroid/graphics/Path;->reset()V

    .line 148
    invoke-static {v1}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 149
    return-void

    .line 152
    :cond_5
    cmpl-float v10, v7, v8

    if-ltz v10, :cond_6

    .line 153
    sub-float/2addr v7, v3

    .line 156
    :cond_6
    sget-object v10, Lcom/airbnb/lottie/utils/Utils;->tempPath:Landroid/graphics/Path;

    invoke-virtual {v10}, Landroid/graphics/Path;->reset()V

    .line 157
    const/4 v11, 0x1

    invoke-virtual {v2, v7, v8, v10, v11}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 163
    cmpl-float v12, v8, v3

    if-lez v12, :cond_7

    .line 164
    sget-object v12, Lcom/airbnb/lottie/utils/Utils;->tempPath2:Landroid/graphics/Path;

    invoke-virtual {v12}, Landroid/graphics/Path;->reset()V

    .line 165
    rem-float v13, v8, v3

    invoke-virtual {v2, v6, v13, v12, v11}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 170
    invoke-virtual {v10, v12}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    goto :goto_0

    .line 171
    :cond_7
    cmpg-float v6, v7, v6

    if-gez v6, :cond_8

    .line 172
    sget-object v6, Lcom/airbnb/lottie/utils/Utils;->tempPath2:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 173
    add-float v12, v3, v7

    invoke-virtual {v2, v12, v3, v6, v11}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 178
    invoke-virtual {v10, v6}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 180
    :cond_8
    :goto_0
    invoke-virtual {p0, v10}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 181
    invoke-static {v1}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 182
    return-void

    .line 120
    .end local v4    # "start":F
    .end local v5    # "end":F
    .end local v7    # "newStart":F
    .end local v8    # "newEnd":F
    .end local v9    # "offset":F
    :cond_9
    :goto_1
    invoke-static {v1}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 121
    return-void
.end method

.method public static applyTrimPathIfNeeded(Landroid/graphics/Path;Lcom/airbnb/lottie/animation/content/TrimPathContent;)V
    .locals 6
    .param p0, "path"    # Landroid/graphics/Path;
    .param p1, "trimPath"    # Lcom/airbnb/lottie/animation/content/TrimPathContent;

    .line 100
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p1}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getStart()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    move-result v0

    .line 104
    .local v0, "start":F
    invoke-virtual {p1}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getEnd()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    move-result v1

    .line 105
    .local v1, "end":F
    invoke-virtual {p1}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getOffset()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    move-result v2

    .line 106
    .local v2, "offset":F
    const/high16 v3, 0x42c80000    # 100.0f

    div-float v4, v0, v3

    div-float v3, v1, v3

    const/high16 v5, 0x43b40000    # 360.0f

    div-float v5, v2, v5

    invoke-static {p0, v4, v3, v5}, Lcom/airbnb/lottie/utils/Utils;->applyTrimPathIfNeeded(Landroid/graphics/Path;FFF)V

    .line 107
    return-void

    .line 101
    .end local v0    # "start":F
    .end local v1    # "end":F
    .end local v2    # "offset":F
    :cond_1
    :goto_0
    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "closeable"    # Ljava/io/Closeable;

    .line 63
    if-eqz p0, :cond_0

    .line 65
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    goto :goto_0

    .line 66
    :catch_1
    move-exception v0

    .line 67
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 71
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public static createPath(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/Path;
    .locals 8
    .param p0, "startPoint"    # Landroid/graphics/PointF;
    .param p1, "endPoint"    # Landroid/graphics/PointF;
    .param p2, "cp1"    # Landroid/graphics/PointF;
    .param p3, "cp2"    # Landroid/graphics/PointF;

    .line 48
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 49
    .local v0, "path":Landroid/graphics/Path;
    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget v2, p0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 51
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Landroid/graphics/PointF;->length()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    invoke-virtual {p3}, Landroid/graphics/PointF;->length()F

    move-result v1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 52
    :cond_0
    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget v2, p2, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v1

    iget v1, p0, Landroid/graphics/PointF;->y:F

    iget v3, p2, Landroid/graphics/PointF;->y:F

    add-float/2addr v3, v1

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v4, p3, Landroid/graphics/PointF;->x:F

    add-float/2addr v4, v1

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget v5, p3, Landroid/graphics/PointF;->y:F

    add-float/2addr v5, v1

    iget v6, p1, Landroid/graphics/PointF;->x:F

    iget v7, p1, Landroid/graphics/PointF;->y:F

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_0

    .line 57
    :cond_1
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 59
    :goto_0
    return-object v0
.end method

.method public static dpScale()F
    .locals 2

    .line 220
    sget v0, Lcom/airbnb/lottie/utils/Utils;->dpScale:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 221
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/airbnb/lottie/utils/Utils;->dpScale:F

    .line 223
    :cond_0
    sget v0, Lcom/airbnb/lottie/utils/Utils;->dpScale:F

    return v0
.end method

.method public static getAnimationScale(Landroid/content/Context;)F
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 227
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "animator_duration_scale"

    const/16 v3, 0x11

    if-lt v0, v3, :cond_0

    .line 228
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    return v0

    .line 232
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static getScale(Landroid/graphics/Matrix;)F
    .locals 7
    .param p0, "matrix"    # Landroid/graphics/Matrix;

    .line 74
    sget-object v0, Lcom/airbnb/lottie/utils/Utils;->points:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 75
    const/4 v3, 0x1

    aput v2, v0, v3

    .line 77
    sget v2, Lcom/airbnb/lottie/utils/Utils;->INV_SQRT_2:F

    const/4 v4, 0x2

    aput v2, v0, v4

    .line 78
    const/4 v5, 0x3

    aput v2, v0, v5

    .line 79
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 80
    aget v2, v0, v4

    aget v1, v0, v1

    sub-float/2addr v2, v1

    .line 81
    .local v2, "dx":F
    aget v1, v0, v5

    aget v0, v0, v3

    sub-float/2addr v1, v0

    .line 83
    .local v1, "dy":F
    float-to-double v3, v2

    float-to-double v5, v1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v0, v3

    return v0
.end method

.method public static hasZeroScaleAxis(Landroid/graphics/Matrix;)Z
    .locals 6
    .param p0, "matrix"    # Landroid/graphics/Matrix;

    .line 87
    sget-object v0, Lcom/airbnb/lottie/utils/Utils;->points:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 88
    const/4 v3, 0x1

    aput v2, v0, v3

    .line 90
    const v2, 0x471212bb

    const/4 v4, 0x2

    aput v2, v0, v4

    .line 91
    const v2, 0x471a973c

    const/4 v5, 0x3

    aput v2, v0, v5

    .line 92
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 93
    aget v2, v0, v1

    aget v4, v0, v4

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_1

    aget v2, v0, v3

    aget v0, v0, v5

    cmpl-float v0, v2, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    return v1

    .line 94
    :cond_1
    :goto_0
    return v3
.end method

.method public static hashFor(FFFF)I
    .locals 3
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F
    .param p3, "d"    # F

    .line 203
    const/16 v0, 0x11

    .line 204
    .local v0, "result":I
    const/4 v1, 0x0

    cmpl-float v2, p0, v1

    if-eqz v2, :cond_0

    .line 205
    mul-int/lit8 v2, v0, 0x1f

    int-to-float v2, v2

    mul-float/2addr v2, p0

    float-to-int v0, v2

    .line 207
    :cond_0
    cmpl-float v2, p1, v1

    if-eqz v2, :cond_1

    .line 208
    mul-int/lit8 v2, v0, 0x1f

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v0, v2

    .line 210
    :cond_1
    cmpl-float v2, p2, v1

    if-eqz v2, :cond_2

    .line 211
    mul-int/lit8 v2, v0, 0x1f

    int-to-float v2, v2

    mul-float/2addr v2, p2

    float-to-int v0, v2

    .line 213
    :cond_2
    cmpl-float v1, p3, v1

    if-eqz v1, :cond_3

    .line 214
    mul-int/lit8 v1, v0, 0x1f

    int-to-float v1, v1

    mul-float/2addr v1, p3

    float-to-int v0, v1

    .line 216
    :cond_3
    return v0
.end method

.method public static isAtLeastVersion(IIIIII)Z
    .locals 2
    .param p0, "major"    # I
    .param p1, "minor"    # I
    .param p2, "patch"    # I
    .param p3, "minMajor"    # I
    .param p4, "minMinor"    # I
    .param p5, "minPatch"    # I

    .line 187
    const/4 v0, 0x0

    if-ge p0, p3, :cond_0

    .line 188
    return v0

    .line 189
    :cond_0
    const/4 v1, 0x1

    if-le p0, p3, :cond_1

    .line 190
    return v1

    .line 193
    :cond_1
    if-ge p1, p4, :cond_2

    .line 194
    return v0

    .line 195
    :cond_2
    if-le p1, p4, :cond_3

    .line 196
    return v1

    .line 199
    :cond_3
    if-lt p2, p5, :cond_4

    move v0, v1

    :cond_4
    return v0
.end method

.method public static isNetworkException(Ljava/lang/Throwable;)Z
    .locals 1
    .param p0, "e"    # Ljava/lang/Throwable;

    .line 254
    instance-of v0, p0, Ljava/net/SocketException;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/nio/channels/ClosedChannelException;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/io/InterruptedIOException;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/net/ProtocolException;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljavax/net/ssl/SSLException;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/net/UnknownHostException;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/net/UnknownServiceException;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static renderPath(Landroid/graphics/Path;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "path"    # Landroid/graphics/Path;

    .line 280
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 281
    .local v0, "bounds":Landroid/graphics/RectF;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 282
    iget v1, v0, Landroid/graphics/RectF;->right:F

    float-to-int v1, v1

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 283
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 284
    .local v2, "canvas":Landroid/graphics/Canvas;
    new-instance v3, Lcom/airbnb/lottie/animation/LPaint;

    invoke-direct {v3}, Lcom/airbnb/lottie/animation/LPaint;-><init>()V

    .line 285
    .local v3, "paint":Landroid/graphics/Paint;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 286
    const v4, -0xffff01

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 287
    invoke-virtual {v2, p0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 288
    return-object v1
.end method

.method public static resizeBitmapIfNeeded(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 242
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 243
    return-object p0

    .line 245
    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 246
    .local v0, "resizedBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 247
    return-object v0
.end method

.method public static saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 1
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 261
    const/16 v0, 0x1f

    invoke-static {p0, p1, p2, v0}, Lcom/airbnb/lottie/utils/Utils;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V

    .line 262
    return-void
.end method

.method public static saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V
    .locals 3
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "flag"    # I

    .line 265
    const-string v0, "Utils#saveLayer"

    invoke-static {v0}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 266
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_0

    .line 269
    invoke-virtual {p0, p1, p2, p3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    goto :goto_0

    .line 271
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 273
    :goto_0
    invoke-static {v0}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 274
    return-void
.end method
