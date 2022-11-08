.class Lcom/airbnb/lottie/parser/PolystarShapeParser;
.super Ljava/lang/Object;
.source "PolystarShapeParser.java"


# static fields
.field private static final NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 14
    const-string v0, "nm"

    const-string v1, "sy"

    const-string v2, "pt"

    const-string v3, "p"

    const-string v4, "r"

    const-string v5, "or"

    const-string v6, "os"

    const-string v7, "ir"

    const-string v8, "is"

    const-string v9, "hd"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/PolystarShapeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/PolystarShape;
    .locals 24
    .param p0, "reader"    # Lcom/airbnb/lottie/parser/moshi/JsonReader;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 32
    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x0

    .line 33
    .local v3, "type":Lcom/airbnb/lottie/model/content/PolystarShape$Type;
    const/4 v4, 0x0

    .line 34
    .local v4, "points":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    const/4 v5, 0x0

    .line 35
    .local v5, "position":Lcom/airbnb/lottie/model/animatable/AnimatableValue;, "Lcom/airbnb/lottie/model/animatable/AnimatableValue<Landroid/graphics/PointF;Landroid/graphics/PointF;>;"
    const/4 v6, 0x0

    .line 36
    .local v6, "rotation":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    const/4 v7, 0x0

    .line 37
    .local v7, "outerRadius":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    const/4 v8, 0x0

    .line 38
    .local v8, "outerRoundedness":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    const/4 v9, 0x0

    .line 39
    .local v9, "innerRadius":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    const/4 v10, 0x0

    .line 40
    .local v10, "innerRoundedness":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    const/4 v11, 0x0

    .line 42
    .local v11, "hidden":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 43
    sget-object v12, Lcom/airbnb/lottie/parser/PolystarShapeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v0, v12}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v12

    const/4 v13, 0x0

    packed-switch v12, :pswitch_data_0

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_0

    .line 72
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextBoolean()Z

    move-result v11

    .line 73
    goto :goto_0

    .line 69
    :pswitch_1
    invoke-static {v0, v1, v13}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v10

    .line 70
    goto :goto_0

    .line 66
    :pswitch_2
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v9

    .line 67
    goto :goto_0

    .line 63
    :pswitch_3
    invoke-static {v0, v1, v13}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v8

    .line 64
    goto :goto_0

    .line 60
    :pswitch_4
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v7

    .line 61
    goto :goto_0

    .line 57
    :pswitch_5
    invoke-static {v0, v1, v13}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v6

    .line 58
    goto :goto_0

    .line 54
    :pswitch_6
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatablePathValueParser;->parseSplitPath(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    move-result-object v5

    .line 55
    goto :goto_0

    .line 51
    :pswitch_7
    invoke-static {v0, v1, v13}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v4

    .line 52
    goto :goto_0

    .line 48
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v12

    invoke-static {v12}, Lcom/airbnb/lottie/model/content/PolystarShape$Type;->forValue(I)Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    move-result-object v3

    .line 49
    goto :goto_0

    .line 45
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    .line 46
    goto :goto_0

    .line 80
    :cond_0
    new-instance v23, Lcom/airbnb/lottie/model/content/PolystarShape;

    move-object/from16 v12, v23

    move-object v13, v2

    move-object v14, v3

    move-object v15, v4

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v18, v9

    move-object/from16 v19, v7

    move-object/from16 v20, v10

    move-object/from16 v21, v8

    move/from16 v22, v11

    invoke-direct/range {v12 .. v22}, Lcom/airbnb/lottie/model/content/PolystarShape;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/PolystarShape$Type;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Z)V

    return-object v23

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
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
