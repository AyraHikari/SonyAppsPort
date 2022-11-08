.class Lcom/airbnb/lottie/parser/KeyframeParser;
.super Ljava/lang/Object;
.source "KeyframeParser.java"


# static fields
.field private static final LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final MAX_CP_VALUE:F = 100.0f

.field static NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field private static pathInterpolatorCache:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/animation/Interpolator;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 26
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/parser/KeyframeParser;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 29
    const-string v1, "t"

    const-string v2, "s"

    const-string v3, "e"

    const-string v4, "o"

    const-string v5, "i"

    const-string v6, "h"

    const-string v7, "to"

    const-string v8, "ti"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/KeyframeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getInterpolator(I)Ljava/lang/ref/WeakReference;
    .locals 2
    .param p0, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/animation/Interpolator;",
            ">;"
        }
    .end annotation

    .line 51
    const-class v0, Lcom/airbnb/lottie/parser/KeyframeParser;

    monitor-enter v0

    .line 52
    :try_start_0
    invoke-static {}, Lcom/airbnb/lottie/parser/KeyframeParser;->pathInterpolatorCache()Landroidx/collection/SparseArrayCompat;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    monitor-exit v0

    return-object v1

    .line 53
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;Z)Lcom/airbnb/lottie/value/Keyframe;
    .locals 1
    .param p0, "reader"    # Lcom/airbnb/lottie/parser/moshi/JsonReader;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;
    .param p2, "scale"    # F
    .param p4, "animated"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/lottie/parser/moshi/JsonReader;",
            "Lcom/airbnb/lottie/LottieComposition;",
            "F",
            "Lcom/airbnb/lottie/parser/ValueParser<",
            "TT;>;Z)",
            "Lcom/airbnb/lottie/value/Keyframe<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    .local p3, "valueParser":Lcom/airbnb/lottie/parser/ValueParser;, "Lcom/airbnb/lottie/parser/ValueParser<TT;>;"
    if-eqz p4, :cond_0

    .line 68
    invoke-static {p1, p0, p2, p3}, Lcom/airbnb/lottie/parser/KeyframeParser;->parseKeyframe(Lcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/parser/moshi/JsonReader;FLcom/airbnb/lottie/parser/ValueParser;)Lcom/airbnb/lottie/value/Keyframe;

    move-result-object v0

    return-object v0

    .line 70
    :cond_0
    invoke-static {p0, p2, p3}, Lcom/airbnb/lottie/parser/KeyframeParser;->parseStaticValue(Lcom/airbnb/lottie/parser/moshi/JsonReader;FLcom/airbnb/lottie/parser/ValueParser;)Lcom/airbnb/lottie/value/Keyframe;

    move-result-object v0

    return-object v0
.end method

.method private static parseKeyframe(Lcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/parser/moshi/JsonReader;FLcom/airbnb/lottie/parser/ValueParser;)Lcom/airbnb/lottie/value/Keyframe;
    .locals 18
    .param p0, "composition"    # Lcom/airbnb/lottie/LottieComposition;
    .param p1, "reader"    # Lcom/airbnb/lottie/parser/moshi/JsonReader;
    .param p2, "scale"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/lottie/LottieComposition;",
            "Lcom/airbnb/lottie/parser/moshi/JsonReader;",
            "F",
            "Lcom/airbnb/lottie/parser/ValueParser<",
            "TT;>;)",
            "Lcom/airbnb/lottie/value/Keyframe<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    .local p3, "valueParser":Lcom/airbnb/lottie/parser/ValueParser;, "Lcom/airbnb/lottie/parser/ValueParser<TT;>;"
    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v0, 0x0

    .line 81
    .local v0, "cp1":Landroid/graphics/PointF;
    const/4 v4, 0x0

    .line 82
    .local v4, "cp2":Landroid/graphics/PointF;
    const/4 v5, 0x0

    .line 83
    .local v5, "startFrame":F
    const/4 v6, 0x0

    .line 84
    .local v6, "startValue":Ljava/lang/Object;, "TT;"
    const/4 v7, 0x0

    .line 85
    .local v7, "endValue":Ljava/lang/Object;, "TT;"
    const/4 v8, 0x0

    .line 86
    .local v8, "hold":Z
    const/4 v9, 0x0

    .line 89
    .local v9, "interpolator":Landroid/view/animation/Interpolator;
    const/4 v10, 0x0

    .line 90
    .local v10, "pathCp1":Landroid/graphics/PointF;
    const/4 v11, 0x0

    .line 92
    .local v11, "pathCp2":Landroid/graphics/PointF;
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    move/from16 v17, v8

    move-object v15, v10

    move-object v14, v11

    move-object v8, v7

    move-object v7, v6

    move v6, v5

    move-object v5, v4

    move-object v4, v0

    .line 93
    .end local v0    # "cp1":Landroid/graphics/PointF;
    .end local v10    # "pathCp1":Landroid/graphics/PointF;
    .end local v11    # "pathCp2":Landroid/graphics/PointF;
    .local v4, "cp1":Landroid/graphics/PointF;
    .local v5, "cp2":Landroid/graphics/PointF;
    .local v6, "startFrame":F
    .local v7, "startValue":Ljava/lang/Object;, "TT;"
    .local v8, "endValue":Ljava/lang/Object;, "TT;"
    .local v14, "pathCp2":Landroid/graphics/PointF;
    .local v15, "pathCp1":Landroid/graphics/PointF;
    .local v17, "hold":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    sget-object v0, Lcom/airbnb/lottie/parser/KeyframeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 120
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_0

    .line 117
    :pswitch_0
    invoke-static/range {p1 .. p2}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v14

    .line 118
    goto :goto_0

    .line 114
    :pswitch_1
    invoke-static/range {p1 .. p2}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v15

    .line 115
    goto :goto_0

    .line 111
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v0

    const/4 v10, 0x1

    if-ne v0, v10, :cond_0

    goto :goto_1

    :cond_0
    const/4 v10, 0x0

    :goto_1
    move/from16 v17, v10

    .line 112
    goto :goto_0

    .line 108
    :pswitch_3
    invoke-static/range {p1 .. p2}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v5

    .line 109
    goto :goto_0

    .line 105
    :pswitch_4
    invoke-static/range {p1 .. p2}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v4

    .line 106
    goto :goto_0

    .line 102
    :pswitch_5
    invoke-interface {v3, v1, v2}, Lcom/airbnb/lottie/parser/ValueParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Object;

    move-result-object v8

    .line 103
    goto :goto_0

    .line 99
    :pswitch_6
    invoke-interface {v3, v1, v2}, Lcom/airbnb/lottie/parser/ValueParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Object;

    move-result-object v7

    .line 100
    goto :goto_0

    .line 96
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v10

    double-to-float v6, v10

    .line 97
    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 125
    if-eqz v17, :cond_2

    .line 126
    move-object v8, v7

    .line 128
    sget-object v0, Lcom/airbnb/lottie/parser/KeyframeParser;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .end local v9    # "interpolator":Landroid/view/animation/Interpolator;
    .local v0, "interpolator":Landroid/view/animation/Interpolator;
    goto/16 :goto_6

    .line 129
    .end local v0    # "interpolator":Landroid/view/animation/Interpolator;
    .restart local v9    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_2
    if-eqz v4, :cond_7

    if-eqz v5, :cond_7

    .line 130
    iget v0, v4, Landroid/graphics/PointF;->x:F

    neg-float v10, v2

    invoke-static {v0, v10, v2}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result v0

    iput v0, v4, Landroid/graphics/PointF;->x:F

    .line 131
    iget v0, v4, Landroid/graphics/PointF;->y:F

    const/high16 v10, -0x3d380000    # -100.0f

    const/high16 v11, 0x42c80000    # 100.0f

    invoke-static {v0, v10, v11}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result v0

    iput v0, v4, Landroid/graphics/PointF;->y:F

    .line 132
    iget v0, v5, Landroid/graphics/PointF;->x:F

    neg-float v12, v2

    invoke-static {v0, v12, v2}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result v0

    iput v0, v5, Landroid/graphics/PointF;->x:F

    .line 133
    iget v0, v5, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v10, v11}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result v0

    iput v0, v5, Landroid/graphics/PointF;->y:F

    .line 134
    iget v0, v4, Landroid/graphics/PointF;->x:F

    iget v10, v4, Landroid/graphics/PointF;->y:F

    iget v11, v5, Landroid/graphics/PointF;->x:F

    iget v12, v5, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v10, v11, v12}, Lcom/airbnb/lottie/utils/Utils;->hashFor(FFFF)I

    move-result v10

    .line 135
    .local v10, "hash":I
    invoke-static {v10}, Lcom/airbnb/lottie/parser/KeyframeParser;->getInterpolator(I)Ljava/lang/ref/WeakReference;

    move-result-object v11

    .line 136
    .local v11, "interpolatorRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/animation/Interpolator;>;"
    if-eqz v11, :cond_3

    .line 137
    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/view/animation/Interpolator;

    .line 139
    :cond_3
    if-eqz v11, :cond_5

    if-nez v9, :cond_4

    goto :goto_2

    :cond_4
    move-object v0, v9

    goto :goto_5

    .line 140
    :cond_5
    :goto_2
    iget v0, v4, Landroid/graphics/PointF;->x:F

    div-float/2addr v0, v2

    iput v0, v4, Landroid/graphics/PointF;->x:F

    .line 141
    iget v0, v4, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, v2

    iput v0, v4, Landroid/graphics/PointF;->y:F

    .line 142
    iget v0, v5, Landroid/graphics/PointF;->x:F

    div-float/2addr v0, v2

    iput v0, v5, Landroid/graphics/PointF;->x:F

    .line 143
    iget v0, v5, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, v2

    iput v0, v5, Landroid/graphics/PointF;->y:F

    .line 145
    :try_start_0
    iget v0, v4, Landroid/graphics/PointF;->x:F

    iget v12, v4, Landroid/graphics/PointF;->y:F

    iget v13, v5, Landroid/graphics/PointF;->x:F

    iget v1, v5, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v12, v13, v1}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .end local v9    # "interpolator":Landroid/view/animation/Interpolator;
    .restart local v0    # "interpolator":Landroid/view/animation/Interpolator;
    move-object v1, v0

    goto :goto_3

    .line 146
    .end local v0    # "interpolator":Landroid/view/animation/Interpolator;
    .restart local v9    # "interpolator":Landroid/view/animation/Interpolator;
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v12, "The Path cannot loop back on itself."

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 154
    iget v1, v4, Landroid/graphics/PointF;->x:F

    const/high16 v12, 0x3f800000    # 1.0f

    .line 155
    invoke-static {v1, v12}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v12, v4, Landroid/graphics/PointF;->y:F

    iget v13, v5, Landroid/graphics/PointF;->x:F

    move-object/from16 v16, v0

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .local v16, "e":Ljava/lang/IllegalArgumentException;
    const/4 v0, 0x0

    invoke-static {v13, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v13, v5, Landroid/graphics/PointF;->y:F

    .line 154
    invoke-static {v1, v12, v0, v13}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    move-object v1, v0

    .end local v9    # "interpolator":Landroid/view/animation/Interpolator;
    .local v0, "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_3

    .line 158
    .end local v16    # "e":Ljava/lang/IllegalArgumentException;
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    .restart local v9    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_6
    move-object/from16 v16, v0

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v16    # "e":Ljava/lang/IllegalArgumentException;
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move-object v1, v0

    .line 162
    .end local v9    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v16    # "e":Ljava/lang/IllegalArgumentException;
    .local v1, "interpolator":Landroid/view/animation/Interpolator;
    :goto_3
    :try_start_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v10, v0}, Lcom/airbnb/lottie/parser/KeyframeParser;->putInterpolator(ILjava/lang/ref/WeakReference;)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 168
    goto :goto_4

    .line 163
    :catch_1
    move-exception v0

    .line 171
    .end local v10    # "hash":I
    .end local v11    # "interpolatorRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/animation/Interpolator;>;"
    :goto_4
    move-object v0, v1

    .end local v1    # "interpolator":Landroid/view/animation/Interpolator;
    .local v0, "interpolator":Landroid/view/animation/Interpolator;
    :goto_5
    goto :goto_6

    .line 172
    .end local v0    # "interpolator":Landroid/view/animation/Interpolator;
    .restart local v9    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_7
    sget-object v0, Lcom/airbnb/lottie/parser/KeyframeParser;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 175
    .end local v9    # "interpolator":Landroid/view/animation/Interpolator;
    .restart local v0    # "interpolator":Landroid/view/animation/Interpolator;
    :goto_6
    new-instance v1, Lcom/airbnb/lottie/value/Keyframe;

    const/16 v16, 0x0

    move-object v10, v1

    move-object/from16 v11, p0

    move-object v12, v7

    move-object v13, v8

    move-object v9, v14

    .end local v14    # "pathCp2":Landroid/graphics/PointF;
    .local v9, "pathCp2":Landroid/graphics/PointF;
    move-object v14, v0

    move-object v2, v15

    .end local v15    # "pathCp1":Landroid/graphics/PointF;
    .local v2, "pathCp1":Landroid/graphics/PointF;
    move v15, v6

    invoke-direct/range {v10 .. v16}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 177
    .local v1, "keyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<TT;>;"
    iput-object v2, v1, Lcom/airbnb/lottie/value/Keyframe;->pathCp1:Landroid/graphics/PointF;

    .line 178
    iput-object v9, v1, Lcom/airbnb/lottie/value/Keyframe;->pathCp2:Landroid/graphics/PointF;

    .line 179
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseStaticValue(Lcom/airbnb/lottie/parser/moshi/JsonReader;FLcom/airbnb/lottie/parser/ValueParser;)Lcom/airbnb/lottie/value/Keyframe;
    .locals 2
    .param p0, "reader"    # Lcom/airbnb/lottie/parser/moshi/JsonReader;
    .param p1, "scale"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/lottie/parser/moshi/JsonReader;",
            "F",
            "Lcom/airbnb/lottie/parser/ValueParser<",
            "TT;>;)",
            "Lcom/airbnb/lottie/value/Keyframe<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    .local p2, "valueParser":Lcom/airbnb/lottie/parser/ValueParser;, "Lcom/airbnb/lottie/parser/ValueParser<TT;>;"
    invoke-interface {p2, p0, p1}, Lcom/airbnb/lottie/parser/ValueParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Object;

    move-result-object v0

    .line 185
    .local v0, "value":Ljava/lang/Object;, "TT;"
    new-instance v1, Lcom/airbnb/lottie/value/Keyframe;

    invoke-direct {v1, v0}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method private static pathInterpolatorCache()Landroidx/collection/SparseArrayCompat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/SparseArrayCompat<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/animation/Interpolator;",
            ">;>;"
        }
    .end annotation

    .line 41
    sget-object v0, Lcom/airbnb/lottie/parser/KeyframeParser;->pathInterpolatorCache:Landroidx/collection/SparseArrayCompat;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/parser/KeyframeParser;->pathInterpolatorCache:Landroidx/collection/SparseArrayCompat;

    .line 44
    :cond_0
    sget-object v0, Lcom/airbnb/lottie/parser/KeyframeParser;->pathInterpolatorCache:Landroidx/collection/SparseArrayCompat;

    return-object v0
.end method

.method private static putInterpolator(ILjava/lang/ref/WeakReference;)V
    .locals 2
    .param p0, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/animation/Interpolator;",
            ">;)V"
        }
    .end annotation

    .line 59
    .local p1, "interpolator":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/animation/Interpolator;>;"
    const-class v0, Lcom/airbnb/lottie/parser/KeyframeParser;

    monitor-enter v0

    .line 60
    :try_start_0
    sget-object v1, Lcom/airbnb/lottie/parser/KeyframeParser;->pathInterpolatorCache:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1, p0, p1}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 61
    monitor-exit v0

    .line 62
    return-void

    .line 61
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
