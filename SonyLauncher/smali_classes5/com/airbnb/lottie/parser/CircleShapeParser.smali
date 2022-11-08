.class Lcom/airbnb/lottie/parser/CircleShapeParser;
.super Ljava/lang/Object;
.source "CircleShapeParser.java"


# static fields
.field private static NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 15
    const-string v0, "nm"

    const-string v1, "p"

    const-string v2, "s"

    const-string v3, "hd"

    const-string v4, "d"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/CircleShapeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;I)Lcom/airbnb/lottie/model/content/CircleShape;
    .locals 16
    .param p0, "reader"    # Lcom/airbnb/lottie/parser/moshi/JsonReader;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;
    .param p2, "d"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    const/4 v0, 0x0

    .line 28
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x0

    .line 29
    .local v1, "position":Lcom/airbnb/lottie/model/animatable/AnimatableValue;, "Lcom/airbnb/lottie/model/animatable/AnimatableValue<Landroid/graphics/PointF;Landroid/graphics/PointF;>;"
    const/4 v2, 0x0

    .line 30
    .local v2, "size":Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    move/from16 v6, p2

    if-ne v6, v5, :cond_0

    move v7, v3

    goto :goto_0

    :cond_0
    move v7, v4

    .line 31
    .local v7, "reversed":Z
    :goto_0
    const/4 v8, 0x0

    .line 33
    .local v8, "hidden":Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 34
    sget-object v9, Lcom/airbnb/lottie/parser/CircleShapeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-object/from16 v15, p0

    invoke-virtual {v15, v9}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 52
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 53
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_1

    .line 49
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v9

    if-ne v9, v5, :cond_1

    move v9, v3

    goto :goto_2

    :cond_1
    move v9, v4

    :goto_2
    move v7, v9

    .line 50
    goto :goto_1

    .line 45
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextBoolean()Z

    move-result v8

    .line 46
    goto :goto_1

    .line 42
    :pswitch_2
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parsePoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    move-result-object v2

    .line 43
    goto :goto_1

    .line 39
    :pswitch_3
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatablePathValueParser;->parseSplitPath(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    move-result-object v1

    .line 40
    goto :goto_1

    .line 36
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 37
    goto :goto_1

    .line 57
    :cond_2
    move-object/from16 v15, p0

    new-instance v3, Lcom/airbnb/lottie/model/content/CircleShape;

    move-object v9, v3

    move-object v10, v0

    move-object v11, v1

    move-object v12, v2

    move v13, v7

    move v14, v8

    invoke-direct/range {v9 .. v14}, Lcom/airbnb/lottie/model/content/CircleShape;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;ZZ)V

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
