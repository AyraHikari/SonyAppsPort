.class Lcom/airbnb/lottie/parser/KeyframesParser;
.super Ljava/lang/Object;
.source "KeyframesParser.java"


# static fields
.field static NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-string v0, "k"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/KeyframesParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;)Ljava/util/List;
    .locals 4
    .param p0, "reader"    # Lcom/airbnb/lottie/parser/moshi/JsonReader;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;
    .param p2, "scale"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/lottie/parser/moshi/JsonReader;",
            "Lcom/airbnb/lottie/LottieComposition;",
            "F",
            "Lcom/airbnb/lottie/parser/ValueParser<",
            "TT;>;)",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/value/Keyframe<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    .local p3, "valueParser":Lcom/airbnb/lottie/parser/ValueParser;, "Lcom/airbnb/lottie/parser/ValueParser<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .local v0, "keyframes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/value/Keyframe<TT;>;>;"
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v1

    sget-object v2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->STRING:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    if-ne v1, v2, :cond_0

    .line 25
    const-string v1, "Lottie doesn\'t support expressions."

    invoke-virtual {p1, v1}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 26
    return-object v0

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 30
    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 31
    sget-object v1, Lcom/airbnb/lottie/parser/KeyframesParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 50
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_0

    .line 33
    :pswitch_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v1

    sget-object v2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    .line 34
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 36
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v1

    sget-object v2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NUMBER:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    if-ne v1, v2, :cond_1

    .line 38
    invoke-static {p0, p1, p2, p3, v3}, Lcom/airbnb/lottie/parser/KeyframeParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;Z)Lcom/airbnb/lottie/value/Keyframe;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 40
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 41
    const/4 v1, 0x1

    invoke-static {p0, p1, p2, p3, v1}, Lcom/airbnb/lottie/parser/KeyframeParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;Z)Lcom/airbnb/lottie/value/Keyframe;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 44
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    goto :goto_0

    .line 46
    :cond_3
    invoke-static {p0, p1, p2, p3, v3}, Lcom/airbnb/lottie/parser/KeyframeParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;Z)Lcom/airbnb/lottie/value/Keyframe;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    goto :goto_0

    .line 53
    :cond_4
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 55
    invoke-static {v0}, Lcom/airbnb/lottie/parser/KeyframesParser;->setEndFrames(Ljava/util/List;)V

    .line 56
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static setEndFrames(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+",
            "Lcom/airbnb/lottie/value/Keyframe<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 64
    .local p0, "keyframes":Ljava/util/List;, "Ljava/util/List<+Lcom/airbnb/lottie/value/Keyframe<TT;>;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 65
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_1

    .line 67
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/value/Keyframe;

    .line 68
    .local v2, "keyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<TT;>;"
    add-int/lit8 v3, v1, 0x1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/value/Keyframe;

    .line 69
    .local v3, "nextKeyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<TT;>;"
    iget v4, v3, Lcom/airbnb/lottie/value/Keyframe;->startFrame:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, v2, Lcom/airbnb/lottie/value/Keyframe;->endFrame:Ljava/lang/Float;

    .line 70
    iget-object v4, v2, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    if-nez v4, :cond_0

    iget-object v4, v3, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 71
    iget-object v4, v3, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    iput-object v4, v2, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    .line 72
    instance-of v4, v2, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;

    if-eqz v4, :cond_0

    .line 73
    move-object v4, v2

    check-cast v4, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;

    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;->createPath()V

    .line 65
    .end local v2    # "keyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<TT;>;"
    .end local v3    # "nextKeyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<TT;>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    .end local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v0, -0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/value/Keyframe;

    .line 78
    .local v1, "lastKeyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<*>;"
    iget-object v2, v1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    if-nez v2, :cond_3

    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    .line 82
    invoke-interface {p0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 84
    :cond_3
    return-void
.end method
