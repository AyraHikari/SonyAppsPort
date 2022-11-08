.class public Lcom/airbnb/lottie/parser/ShapeDataParser;
.super Ljava/lang/Object;
.source "ShapeDataParser.java"

# interfaces
.implements Lcom/airbnb/lottie/parser/ValueParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/parser/ValueParser<",
        "Lcom/airbnb/lottie/model/content/ShapeData;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/airbnb/lottie/parser/ShapeDataParser;

.field private static final NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 16
    new-instance v0, Lcom/airbnb/lottie/parser/ShapeDataParser;

    invoke-direct {v0}, Lcom/airbnb/lottie/parser/ShapeDataParser;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/parser/ShapeDataParser;->INSTANCE:Lcom/airbnb/lottie/parser/ShapeDataParser;

    .line 17
    const-string v0, "c"

    const-string v1, "v"

    const-string v2, "i"

    const-string v3, "o"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/ShapeDataParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Lcom/airbnb/lottie/model/content/ShapeData;
    .locals 16
    .param p1, "reader"    # Lcom/airbnb/lottie/parser/moshi/JsonReader;
    .param p2, "scale"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v0

    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    if-ne v0, v1, :cond_0

    .line 32
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 35
    :cond_0
    const/4 v0, 0x0

    .line 36
    .local v0, "closed":Z
    const/4 v1, 0x0

    .line 37
    .local v1, "pointsArray":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/PointF;>;"
    const/4 v2, 0x0

    .line 38
    .local v2, "inTangents":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/PointF;>;"
    const/4 v3, 0x0

    .line 39
    .local v3, "outTangents":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/PointF;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 41
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 42
    sget-object v4, Lcom/airbnb/lottie/parser/ShapeDataParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-object/from16 v5, p1

    invoke-virtual {v5, v4}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 56
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 57
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_0

    .line 53
    :pswitch_0
    invoke-static/range {p1 .. p2}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoints(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/util/List;

    move-result-object v3

    .line 54
    goto :goto_0

    .line 50
    :pswitch_1
    invoke-static/range {p1 .. p2}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoints(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/util/List;

    move-result-object v2

    .line 51
    goto :goto_0

    .line 47
    :pswitch_2
    invoke-static/range {p1 .. p2}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoints(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/util/List;

    move-result-object v1

    .line 48
    goto :goto_0

    .line 44
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextBoolean()Z

    move-result v0

    .line 45
    goto :goto_0

    .line 61
    :cond_1
    move-object/from16 v5, p1

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 63
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v4

    sget-object v6, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->END_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    if-ne v4, v6, :cond_2

    .line 64
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 67
    :cond_2
    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    .line 71
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_3

    .line 72
    new-instance v4, Lcom/airbnb/lottie/model/content/ShapeData;

    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7}, Landroid/graphics/PointF;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    invoke-direct {v4, v7, v6, v8}, Lcom/airbnb/lottie/model/content/ShapeData;-><init>(Landroid/graphics/PointF;ZLjava/util/List;)V

    return-object v4

    .line 75
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .line 76
    .local v4, "length":I
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    .line 77
    .local v7, "vertex":Landroid/graphics/PointF;
    move-object v8, v7

    .line 78
    .local v8, "initialPoint":Landroid/graphics/PointF;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 80
    .local v9, "curves":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/CubicCurveData;>;"
    const/4 v10, 0x1

    .local v10, "i":I
    :goto_1
    if-ge v10, v4, :cond_4

    .line 81
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v7, v11

    check-cast v7, Landroid/graphics/PointF;

    .line 82
    add-int/lit8 v11, v10, -0x1

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/PointF;

    .line 83
    .local v11, "previousVertex":Landroid/graphics/PointF;
    add-int/lit8 v12, v10, -0x1

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/PointF;

    .line 84
    .local v12, "cp1":Landroid/graphics/PointF;
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/PointF;

    .line 85
    .local v13, "cp2":Landroid/graphics/PointF;
    invoke-static {v11, v12}, Lcom/airbnb/lottie/utils/MiscUtils;->addPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v14

    .line 86
    .local v14, "shapeCp1":Landroid/graphics/PointF;
    invoke-static {v7, v13}, Lcom/airbnb/lottie/utils/MiscUtils;->addPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v15

    .line 87
    .local v15, "shapeCp2":Landroid/graphics/PointF;
    new-instance v6, Lcom/airbnb/lottie/model/CubicCurveData;

    invoke-direct {v6, v14, v15, v7}, Lcom/airbnb/lottie/model/CubicCurveData;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    .end local v11    # "previousVertex":Landroid/graphics/PointF;
    .end local v12    # "cp1":Landroid/graphics/PointF;
    .end local v13    # "cp2":Landroid/graphics/PointF;
    .end local v14    # "shapeCp1":Landroid/graphics/PointF;
    .end local v15    # "shapeCp2":Landroid/graphics/PointF;
    add-int/lit8 v10, v10, 0x1

    const/4 v6, 0x0

    goto :goto_1

    .line 90
    .end local v10    # "i":I
    :cond_4
    if-eqz v0, :cond_5

    .line 91
    const/4 v6, 0x0

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v7, v10

    check-cast v7, Landroid/graphics/PointF;

    .line 92
    add-int/lit8 v6, v4, -0x1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    .line 93
    .local v6, "previousVertex":Landroid/graphics/PointF;
    add-int/lit8 v10, v4, -0x1

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/PointF;

    .line 94
    .local v10, "cp1":Landroid/graphics/PointF;
    const/4 v11, 0x0

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/PointF;

    .line 96
    .local v11, "cp2":Landroid/graphics/PointF;
    invoke-static {v6, v10}, Lcom/airbnb/lottie/utils/MiscUtils;->addPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v12

    .line 97
    .local v12, "shapeCp1":Landroid/graphics/PointF;
    invoke-static {v7, v11}, Lcom/airbnb/lottie/utils/MiscUtils;->addPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v13

    .line 99
    .local v13, "shapeCp2":Landroid/graphics/PointF;
    new-instance v14, Lcom/airbnb/lottie/model/CubicCurveData;

    invoke-direct {v14, v12, v13, v7}, Lcom/airbnb/lottie/model/CubicCurveData;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    .end local v6    # "previousVertex":Landroid/graphics/PointF;
    .end local v10    # "cp1":Landroid/graphics/PointF;
    .end local v11    # "cp2":Landroid/graphics/PointF;
    .end local v12    # "shapeCp1":Landroid/graphics/PointF;
    .end local v13    # "shapeCp2":Landroid/graphics/PointF;
    :cond_5
    new-instance v6, Lcom/airbnb/lottie/model/content/ShapeData;

    invoke-direct {v6, v8, v0, v9}, Lcom/airbnb/lottie/model/content/ShapeData;-><init>(Landroid/graphics/PointF;ZLjava/util/List;)V

    return-object v6

    .line 68
    .end local v4    # "length":I
    .end local v7    # "vertex":Landroid/graphics/PointF;
    .end local v8    # "initialPoint":Landroid/graphics/PointF;
    .end local v9    # "curves":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/CubicCurveData;>;"
    :cond_6
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v6, "Shape data was missing information."

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/parser/ShapeDataParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Lcom/airbnb/lottie/model/content/ShapeData;

    move-result-object p1

    return-object p1
.end method
