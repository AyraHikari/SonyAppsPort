.class Lcom/airbnb/lottie/parser/ShapeTrimPathParser;
.super Ljava/lang/Object;
.source "ShapeTrimPathParser.java"


# static fields
.field private static NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 16
    const-string v0, "s"

    const-string v1, "e"

    const-string v2, "o"

    const-string v3, "nm"

    const-string v4, "m"

    const-string v5, "hd"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/ShapeTrimPathParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ShapeTrimPath;
    .locals 14
    .param p0, "reader"    # Lcom/airbnb/lottie/parser/moshi/JsonReader;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    const/4 v0, 0x0

    .line 27
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x0

    .line 28
    .local v1, "type":Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;
    const/4 v2, 0x0

    .line 29
    .local v2, "start":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    const/4 v3, 0x0

    .line 30
    .local v3, "end":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    const/4 v4, 0x0

    .line 31
    .local v4, "offset":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    const/4 v5, 0x0

    .line 33
    .local v5, "hidden":Z
    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 34
    sget-object v6, Lcom/airbnb/lottie/parser/ShapeTrimPathParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {p0, v6}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v6

    const/4 v7, 0x0

    packed-switch v6, :pswitch_data_0

    .line 54
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_0

    .line 51
    :pswitch_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextBoolean()Z

    move-result v5

    .line 52
    goto :goto_0

    .line 48
    :pswitch_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v6

    invoke-static {v6}, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->forId(I)Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    move-result-object v1

    .line 49
    goto :goto_0

    .line 45
    :pswitch_2
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 46
    goto :goto_0

    .line 42
    :pswitch_3
    invoke-static {p0, p1, v7}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v4

    .line 43
    goto :goto_0

    .line 39
    :pswitch_4
    invoke-static {p0, p1, v7}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v3

    .line 40
    goto :goto_0

    .line 36
    :pswitch_5
    invoke-static {p0, p1, v7}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v2

    .line 37
    goto :goto_0

    .line 58
    :cond_0
    new-instance v13, Lcom/airbnb/lottie/model/content/ShapeTrimPath;

    move-object v6, v13

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    move v12, v5

    invoke-direct/range {v6 .. v12}, Lcom/airbnb/lottie/model/content/ShapeTrimPath;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Z)V

    return-object v13

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
