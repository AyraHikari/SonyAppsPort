.class public Lcom/airbnb/lottie/parser/GradientColorParser;
.super Ljava/lang/Object;
.source "GradientColorParser.java"

# interfaces
.implements Lcom/airbnb/lottie/parser/ValueParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/parser/ValueParser<",
        "Lcom/airbnb/lottie/model/content/GradientColor;",
        ">;"
    }
.end annotation


# instance fields
.field private colorPoints:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "colorPoints"    # I

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    .line 23
    return-void
.end method

.method private addOpacityStopsToGradientIfNeeded(Lcom/airbnb/lottie/model/content/GradientColor;Ljava/util/List;)V
    .locals 10
    .param p1, "gradientColor"    # Lcom/airbnb/lottie/model/content/GradientColor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/model/content/GradientColor;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 106
    .local p2, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    iget v0, p0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    mul-int/lit8 v0, v0, 0x4

    .line 107
    .local v0, "startIndex":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v0, :cond_0

    .line 108
    return-void

    .line 111
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    .line 112
    .local v1, "opacityStops":I
    new-array v2, v1, [D

    .line 113
    .local v2, "positions":[D
    new-array v3, v1, [D

    .line 115
    .local v3, "opacities":[D
    move v4, v0

    .local v4, "i":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_2

    .line 116
    rem-int/lit8 v6, v4, 0x2

    if-nez v6, :cond_1

    .line 117
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    float-to-double v6, v6

    aput-wide v6, v2, v5

    goto :goto_1

    .line 119
    :cond_1
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    float-to-double v6, v6

    aput-wide v6, v3, v5

    .line 120
    add-int/lit8 v5, v5, 0x1

    .line 115
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 124
    .end local v4    # "i":I
    .end local v5    # "j":I
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/GradientColor;->getSize()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 125
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/GradientColor;->getColors()[I

    move-result-object v5

    aget v5, v5, v4

    .line 126
    .local v5, "color":I
    nop

    .line 127
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/GradientColor;->getPositions()[F

    move-result-object v6

    aget v6, v6, v4

    float-to-double v6, v6

    invoke-direct {p0, v6, v7, v2, v3}, Lcom/airbnb/lottie/parser/GradientColorParser;->getOpacityAtPosition(D[D[D)I

    move-result v6

    .line 128
    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v7

    .line 129
    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v8

    .line 130
    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    .line 126
    invoke-static {v6, v7, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    .line 132
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/GradientColor;->getColors()[I

    move-result-object v6

    aput v5, v6, v4

    .line 124
    .end local v5    # "color":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 134
    .end local v4    # "i":I
    :cond_3
    return-void
.end method

.method private getOpacityAtPosition(D[D[D)I
    .locals 20
    .param p1, "position"    # D
    .param p3, "positions"    # [D
    .param p4, "opacities"    # [D

    .line 138
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    const-wide v4, 0x406fe00000000000L    # 255.0

    if-ge v2, v3, :cond_1

    .line 139
    add-int/lit8 v3, v2, -0x1

    aget-wide v6, v0, v3

    .line 140
    .local v6, "lastPosition":D
    aget-wide v8, v0, v2

    .line 141
    .local v8, "thisPosition":D
    aget-wide v10, v0, v2

    cmpl-double v3, v10, p1

    if-ltz v3, :cond_0

    .line 142
    sub-double v10, p1, v6

    sub-double v12, v8, v6

    div-double/2addr v10, v12

    .line 143
    .local v10, "progress":D
    add-int/lit8 v3, v2, -0x1

    aget-wide v14, v1, v3

    aget-wide v16, v1, v2

    move-wide/from16 v18, v10

    invoke-static/range {v14 .. v19}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(DDD)D

    move-result-wide v12

    mul-double/2addr v12, v4

    double-to-int v3, v12

    return v3

    .line 138
    .end local v6    # "lastPosition":D
    .end local v8    # "thisPosition":D
    .end local v10    # "progress":D
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 146
    .end local v2    # "i":I
    :cond_1
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-wide v2, v1, v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    return v2
.end method


# virtual methods
.method public parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Lcom/airbnb/lottie/model/content/GradientColor;
    .locals 13
    .param p1, "reader"    # Lcom/airbnb/lottie/parser/moshi/JsonReader;
    .param p2, "scale"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v0, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v1

    sget-object v2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 52
    .local v1, "isArray":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 53
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 55
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 56
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 58
    :cond_2
    if-eqz v1, :cond_3

    .line 59
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 61
    :cond_3
    iget v2, p0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    .line 62
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    .line 65
    :cond_4
    iget v2, p0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    new-array v3, v2, [F

    .line 66
    .local v3, "positions":[F
    new-array v2, v2, [I

    .line 68
    .local v2, "colors":[I
    const/4 v4, 0x0

    .line 69
    .local v4, "r":I
    const/4 v5, 0x0

    .line 70
    .local v5, "g":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    iget v7, p0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    mul-int/lit8 v7, v7, 0x4

    if-ge v6, v7, :cond_5

    .line 71
    div-int/lit8 v7, v6, 0x4

    .line 72
    .local v7, "colorIndex":I
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    float-to-double v8, v8

    .line 73
    .local v8, "value":D
    rem-int/lit8 v10, v6, 0x4

    const-wide v11, 0x406fe00000000000L    # 255.0

    packed-switch v10, :pswitch_data_0

    goto :goto_3

    .line 85
    :pswitch_0
    mul-double/2addr v11, v8

    double-to-int v10, v11

    .line 86
    .local v10, "b":I
    const/16 v11, 0xff

    invoke-static {v11, v4, v5, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v11

    aput v11, v2, v7

    goto :goto_3

    .line 82
    .end local v10    # "b":I
    :pswitch_1
    mul-double/2addr v11, v8

    double-to-int v5, v11

    .line 83
    goto :goto_3

    .line 79
    :pswitch_2
    mul-double/2addr v11, v8

    double-to-int v4, v11

    .line 80
    goto :goto_3

    .line 76
    :pswitch_3
    double-to-float v10, v8

    aput v10, v3, v7

    .line 77
    nop

    .line 70
    .end local v7    # "colorIndex":I
    .end local v8    # "value":D
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 91
    .end local v6    # "i":I
    :cond_5
    new-instance v6, Lcom/airbnb/lottie/model/content/GradientColor;

    invoke-direct {v6, v3, v2}, Lcom/airbnb/lottie/model/content/GradientColor;-><init>([F[I)V

    .line 92
    .local v6, "gradientColor":Lcom/airbnb/lottie/model/content/GradientColor;
    invoke-direct {p0, v6, v0}, Lcom/airbnb/lottie/parser/GradientColorParser;->addOpacityStopsToGradientIfNeeded(Lcom/airbnb/lottie/model/content/GradientColor;Ljava/util/List;)V

    .line 93
    return-object v6

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
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/parser/GradientColorParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Lcom/airbnb/lottie/model/content/GradientColor;

    move-result-object p1

    return-object p1
.end method
