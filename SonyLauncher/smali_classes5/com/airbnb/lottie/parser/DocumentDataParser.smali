.class public Lcom/airbnb/lottie/parser/DocumentDataParser;
.super Ljava/lang/Object;
.source "DocumentDataParser.java"

# interfaces
.implements Lcom/airbnb/lottie/parser/ValueParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/parser/ValueParser<",
        "Lcom/airbnb/lottie/model/DocumentData;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/airbnb/lottie/parser/DocumentDataParser;

.field private static final NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 11
    new-instance v0, Lcom/airbnb/lottie/parser/DocumentDataParser;

    invoke-direct {v0}, Lcom/airbnb/lottie/parser/DocumentDataParser;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/parser/DocumentDataParser;->INSTANCE:Lcom/airbnb/lottie/parser/DocumentDataParser;

    .line 12
    const-string v1, "t"

    const-string v2, "f"

    const-string v3, "s"

    const-string v4, "j"

    const-string v5, "tr"

    const-string v6, "lh"

    const-string v7, "ls"

    const-string v8, "fc"

    const-string v9, "sc"

    const-string v10, "sw"

    const-string v11, "of"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/DocumentDataParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method


# virtual methods
.method public parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Lcom/airbnb/lottie/model/DocumentData;
    .locals 24
    .param p1, "reader"    # Lcom/airbnb/lottie/parser/moshi/JsonReader;
    .param p2, "scale"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    const/4 v0, 0x0

    .line 32
    .local v0, "text":Ljava/lang/String;
    const/4 v1, 0x0

    .line 33
    .local v1, "fontName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 34
    .local v2, "size":F
    sget-object v3, Lcom/airbnb/lottie/model/DocumentData$Justification;->CENTER:Lcom/airbnb/lottie/model/DocumentData$Justification;

    .line 35
    .local v3, "justification":Lcom/airbnb/lottie/model/DocumentData$Justification;
    const/4 v4, 0x0

    .line 36
    .local v4, "tracking":I
    const/4 v5, 0x0

    .line 37
    .local v5, "lineHeight":F
    const/4 v6, 0x0

    .line 38
    .local v6, "baselineShift":F
    const/4 v7, 0x0

    .line 39
    .local v7, "fillColor":I
    const/4 v8, 0x0

    .line 40
    .local v8, "strokeColor":I
    const/4 v9, 0x0

    .line 41
    .local v9, "strokeWidth":F
    const/4 v10, 0x1

    .line 43
    .local v10, "strokeOverFill":Z
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 44
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 45
    sget-object v11, Lcom/airbnb/lottie/parser/DocumentDataParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-object/from16 v15, p1

    invoke-virtual {v15, v11}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v11

    packed-switch v11, :pswitch_data_0

    .line 85
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 86
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_0

    .line 82
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextBoolean()Z

    move-result v10

    .line 83
    goto :goto_0

    .line 79
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v11

    double-to-float v9, v11

    .line 80
    goto :goto_0

    .line 76
    :pswitch_2
    invoke-static/range {p1 .. p1}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToColor(Lcom/airbnb/lottie/parser/moshi/JsonReader;)I

    move-result v8

    .line 77
    goto :goto_0

    .line 73
    :pswitch_3
    invoke-static/range {p1 .. p1}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToColor(Lcom/airbnb/lottie/parser/moshi/JsonReader;)I

    move-result v7

    .line 74
    goto :goto_0

    .line 70
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v11

    double-to-float v6, v11

    .line 71
    goto :goto_0

    .line 67
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v11

    double-to-float v5, v11

    .line 68
    goto :goto_0

    .line 64
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v4

    .line 65
    goto :goto_0

    .line 56
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v11

    .line 57
    .local v11, "justificationInt":I
    sget-object v12, Lcom/airbnb/lottie/model/DocumentData$Justification;->CENTER:Lcom/airbnb/lottie/model/DocumentData$Justification;

    invoke-virtual {v12}, Lcom/airbnb/lottie/model/DocumentData$Justification;->ordinal()I

    move-result v12

    if-gt v11, v12, :cond_1

    if-gez v11, :cond_0

    goto :goto_1

    .line 60
    :cond_0
    invoke-static {}, Lcom/airbnb/lottie/model/DocumentData$Justification;->values()[Lcom/airbnb/lottie/model/DocumentData$Justification;

    move-result-object v12

    aget-object v3, v12, v11

    .line 62
    goto :goto_0

    .line 58
    :cond_1
    :goto_1
    sget-object v3, Lcom/airbnb/lottie/model/DocumentData$Justification;->CENTER:Lcom/airbnb/lottie/model/DocumentData$Justification;

    goto :goto_0

    .line 53
    .end local v11    # "justificationInt":I
    :pswitch_8
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v11

    double-to-float v2, v11

    .line 54
    goto :goto_0

    .line 50
    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    .line 51
    goto :goto_0

    .line 47
    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 48
    goto :goto_0

    .line 89
    :cond_2
    move-object/from16 v15, p1

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 91
    new-instance v23, Lcom/airbnb/lottie/model/DocumentData;

    move-object/from16 v11, v23

    move-object v12, v0

    move-object v13, v1

    move v14, v2

    move-object v15, v3

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v8

    move/from16 v21, v9

    move/from16 v22, v10

    invoke-direct/range {v11 .. v22}, Lcom/airbnb/lottie/model/DocumentData;-><init>(Ljava/lang/String;Ljava/lang/String;FLcom/airbnb/lottie/model/DocumentData$Justification;IFFIIFZ)V

    return-object v23

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
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

.method public bridge synthetic parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/parser/DocumentDataParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Lcom/airbnb/lottie/model/DocumentData;

    move-result-object p1

    return-object p1
.end method
