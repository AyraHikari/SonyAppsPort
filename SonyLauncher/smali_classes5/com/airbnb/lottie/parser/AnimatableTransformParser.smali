.class public Lcom/airbnb/lottie/parser/AnimatableTransformParser;
.super Ljava/lang/Object;
.source "AnimatableTransformParser.java"


# static fields
.field private static ANIMATABLE_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field private static NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 24
    const-string v0, "a"

    const-string v1, "p"

    const-string v2, "s"

    const-string v3, "rz"

    const-string v4, "r"

    const-string v5, "o"

    const-string v6, "so"

    const-string v7, "eo"

    const-string v8, "sk"

    const-string v9, "sa"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 36
    const-string v0, "k"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->ANIMATABLE_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method private static isAnchorPointIdentity(Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;)Z
    .locals 3
    .param p0, "anchorPoint"    # Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;

    .line 143
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;->getKeyframes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/value/Keyframe;

    iget-object v1, v1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/PointF;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static isPositionIdentity(Lcom/airbnb/lottie/model/animatable/AnimatableValue;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/model/animatable/AnimatableValue<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;)Z"
        }
    .end annotation

    .line 147
    .local p0, "position":Lcom/airbnb/lottie/model/animatable/AnimatableValue;, "Lcom/airbnb/lottie/model/animatable/AnimatableValue<Landroid/graphics/PointF;Landroid/graphics/PointF;>;"
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    instance-of v1, p0, Lcom/airbnb/lottie/model/animatable/AnimatableSplitDimensionPathValue;

    if-nez v1, :cond_0

    .line 149
    invoke-interface {p0}, Lcom/airbnb/lottie/model/animatable/AnimatableValue;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Lcom/airbnb/lottie/model/animatable/AnimatableValue;->getKeyframes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/value/Keyframe;

    iget-object v1, v1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/PointF;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 147
    :goto_1
    return v0
.end method

.method private static isRotationIdentity(Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)Z
    .locals 3
    .param p0, "rotation"    # Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 153
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->getKeyframes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/value/Keyframe;

    iget-object v1, v1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static isScaleIdentity(Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;)Z
    .locals 3
    .param p0, "scale"    # Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;

    .line 157
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;->getKeyframes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/value/Keyframe;

    iget-object v1, v1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v1, Lcom/airbnb/lottie/value/ScaleXY;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v2}, Lcom/airbnb/lottie/value/ScaleXY;->equals(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static isSkewAngleIdentity(Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)Z
    .locals 3
    .param p0, "skewAngle"    # Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 165
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->getKeyframes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/value/Keyframe;

    iget-object v1, v1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static isSkewIdentity(Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)Z
    .locals 3
    .param p0, "skew"    # Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 161
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->getKeyframes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/value/Keyframe;

    iget-object v1, v1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
    .locals 27
    .param p0, "reader"    # Lcom/airbnb/lottie/parser/moshi/JsonReader;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    move-object/from16 v0, p0

    move-object/from16 v8, p1

    const/4 v1, 0x0

    .line 41
    .local v1, "anchorPoint":Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;
    const/4 v2, 0x0

    .line 42
    .local v2, "position":Lcom/airbnb/lottie/model/animatable/AnimatableValue;, "Lcom/airbnb/lottie/model/animatable/AnimatableValue<Landroid/graphics/PointF;Landroid/graphics/PointF;>;"
    const/4 v3, 0x0

    .line 43
    .local v3, "scale":Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;
    const/4 v4, 0x0

    .line 44
    .local v4, "rotation":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    const/4 v5, 0x0

    .line 45
    .local v5, "opacity":Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    const/4 v6, 0x0

    .line 46
    .local v6, "startOpacity":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    const/4 v7, 0x0

    .line 47
    .local v7, "endOpacity":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    const/4 v9, 0x0

    .line 48
    .local v9, "skew":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    const/4 v10, 0x0

    .line 50
    .local v10, "skewAngle":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v11

    sget-object v12, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_OBJECT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    const/4 v13, 0x0

    if-ne v11, v12, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    move v11, v13

    .line 51
    .local v11, "isObject":Z
    :goto_0
    if-eqz v11, :cond_1

    .line 52
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 54
    :cond_1
    move-object v12, v3

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    move-object v14, v9

    move-object v15, v10

    move-object v9, v1

    move-object v10, v2

    .end local v1    # "anchorPoint":Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;
    .end local v2    # "position":Lcom/airbnb/lottie/model/animatable/AnimatableValue;, "Lcom/airbnb/lottie/model/animatable/AnimatableValue<Landroid/graphics/PointF;Landroid/graphics/PointF;>;"
    .end local v3    # "scale":Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;
    .end local v5    # "opacity":Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    .end local v6    # "startOpacity":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .end local v7    # "endOpacity":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .local v9, "anchorPoint":Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;
    .local v10, "position":Lcom/airbnb/lottie/model/animatable/AnimatableValue;, "Lcom/airbnb/lottie/model/animatable/AnimatableValue<Landroid/graphics/PointF;Landroid/graphics/PointF;>;"
    .local v12, "scale":Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;
    .local v14, "skew":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .local v15, "skewAngle":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .local v24, "opacity":Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    .local v25, "startOpacity":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .local v26, "endOpacity":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 55
    sget-object v1, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 113
    move v1, v13

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    move-object/from16 v8, p1

    goto :goto_1

    .line 110
    :pswitch_0
    invoke-static {v0, v8, v13}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v15

    .line 111
    goto :goto_1

    .line 107
    :pswitch_1
    invoke-static {v0, v8, v13}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v14

    .line 108
    goto :goto_1

    .line 104
    :pswitch_2
    invoke-static {v0, v8, v13}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v26

    .line 105
    goto :goto_1

    .line 101
    :pswitch_3
    invoke-static {v0, v8, v13}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v25

    .line 102
    goto :goto_1

    .line 98
    :pswitch_4
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseInteger(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-result-object v24

    .line 99
    goto :goto_1

    .line 78
    :pswitch_5
    const-string v1, "Lottie doesn\'t support 3D layers."

    invoke-virtual {v8, v1}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 90
    :pswitch_6
    invoke-static {v0, v8, v13}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v16

    .line 91
    .end local v4    # "rotation":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .local v16, "rotation":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    invoke-virtual/range {v16 .. v16}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->getKeyframes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 92
    invoke-virtual/range {v16 .. v16}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->getKeyframes()Ljava/util/List;

    move-result-object v7

    new-instance v6, Lcom/airbnb/lottie/value/Keyframe;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    move-object v1, v6

    move-object/from16 v2, p1

    move-object v13, v6

    move/from16 v6, v17

    move-object v8, v7

    move-object/from16 v7, v18

    invoke-direct/range {v1 .. v7}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    goto :goto_2

    .line 93
    :cond_2
    invoke-virtual/range {v16 .. v16}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->getKeyframes()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/value/Keyframe;

    iget-object v1, v1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    if-nez v1, :cond_3

    .line 94
    invoke-virtual/range {v16 .. v16}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->getKeyframes()Ljava/util/List;

    move-result-object v8

    new-instance v13, Lcom/airbnb/lottie/value/Keyframe;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    move-object v1, v13

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    const/4 v1, 0x0

    invoke-interface {v8, v1, v13}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 93
    :cond_3
    const/4 v1, 0x0

    .line 54
    :goto_2
    move-object/from16 v8, p1

    move v13, v1

    move-object/from16 v4, v16

    goto/16 :goto_1

    .line 75
    .end local v16    # "rotation":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .restart local v4    # "rotation":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    :pswitch_7
    move v1, v13

    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseScale(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;

    move-result-object v12

    .line 76
    move-object/from16 v8, p1

    goto/16 :goto_1

    .line 71
    :pswitch_8
    move v1, v13

    .line 72
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatablePathValueParser;->parseSplitPath(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    move-result-object v10

    .line 73
    move-object/from16 v8, p1

    goto/16 :goto_1

    .line 57
    :pswitch_9
    move v1, v13

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 58
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 59
    sget-object v2, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->ANIMATABLE_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v2

    packed-switch v2, :pswitch_data_1

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_3

    .line 61
    :pswitch_a
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatablePathValueParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;

    move-result-object v9

    .line 62
    goto :goto_3

    .line 68
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 69
    move-object/from16 v8, p1

    move v13, v1

    goto/16 :goto_1

    .line 117
    :cond_5
    if-eqz v11, :cond_6

    .line 118
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 121
    :cond_6
    invoke-static {v9}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->isAnchorPointIdentity(Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 122
    const/4 v9, 0x0

    .line 124
    :cond_7
    invoke-static {v10}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->isPositionIdentity(Lcom/airbnb/lottie/model/animatable/AnimatableValue;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 125
    const/4 v10, 0x0

    .line 127
    :cond_8
    invoke-static {v4}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->isRotationIdentity(Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 128
    const/4 v4, 0x0

    .line 130
    :cond_9
    invoke-static {v12}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->isScaleIdentity(Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 131
    const/4 v12, 0x0

    .line 133
    :cond_a
    invoke-static {v14}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->isSkewIdentity(Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 134
    const/4 v14, 0x0

    move-object v1, v14

    goto :goto_4

    .line 133
    :cond_b
    move-object v1, v14

    .line 136
    .end local v14    # "skew":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .local v1, "skew":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    :goto_4
    invoke-static {v15}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->isSkewAngleIdentity(Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 137
    const/4 v15, 0x0

    move-object v2, v15

    goto :goto_5

    .line 136
    :cond_c
    move-object v2, v15

    .line 139
    .end local v15    # "skewAngle":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .local v2, "skewAngle":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    :goto_5
    new-instance v3, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    move-object v14, v3

    move-object v15, v9

    move-object/from16 v16, v10

    move-object/from16 v17, v12

    move-object/from16 v18, v4

    move-object/from16 v19, v24

    move-object/from16 v20, v25

    move-object/from16 v21, v26

    move-object/from16 v22, v1

    move-object/from16 v23, v2

    invoke-direct/range {v14 .. v23}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;-><init>(Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_a
    .end packed-switch
.end method
