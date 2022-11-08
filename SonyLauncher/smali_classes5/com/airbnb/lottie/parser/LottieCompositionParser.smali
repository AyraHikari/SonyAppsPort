.class public Lcom/airbnb/lottie/parser/LottieCompositionParser;
.super Ljava/lang/Object;
.source "LottieCompositionParser.java"


# static fields
.field static NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 26
    const-string v0, "w"

    const-string v1, "h"

    const-string v2, "ip"

    const-string v3, "op"

    const-string v4, "fr"

    const-string v5, "v"

    const-string v6, "layers"

    const-string v7, "assets"

    const-string v8, "fonts"

    const-string v9, "chars"

    const-string v10, "markers"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/LottieCompositionParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;)Lcom/airbnb/lottie/LottieComposition;
    .locals 26
    .param p0, "reader"    # Lcom/airbnb/lottie/parser/moshi/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    move-object/from16 v0, p0

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v1

    .line 41
    .local v1, "scale":F
    const/4 v2, 0x0

    .line 42
    .local v2, "startFrame":F
    const/4 v3, 0x0

    .line 43
    .local v3, "endFrame":F
    const/4 v4, 0x0

    .line 44
    .local v4, "frameRate":F
    new-instance v5, Landroidx/collection/LongSparseArray;

    invoke-direct {v5}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 45
    .local v5, "layerMap":Landroidx/collection/LongSparseArray;, "Landroidx/collection/LongSparseArray<Lcom/airbnb/lottie/model/layer/Layer;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v6

    .line 46
    .local v12, "layers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/layer/Layer;>;"
    const/4 v6, 0x0

    .line 47
    .local v6, "width":I
    const/4 v7, 0x0

    .line 48
    .local v7, "height":I
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 49
    .local v13, "precomps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/airbnb/lottie/model/layer/Layer;>;>;"
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 50
    .local v14, "images":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/airbnb/lottie/LottieImageAsset;>;"
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 51
    .local v16, "fonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/airbnb/lottie/model/Font;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v17, "markers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/Marker;>;"
    new-instance v15, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v15}, Landroidx/collection/SparseArrayCompat;-><init>()V

    .line 54
    .local v15, "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    new-instance v8, Lcom/airbnb/lottie/LottieComposition;

    invoke-direct {v8}, Lcom/airbnb/lottie/LottieComposition;-><init>()V

    move-object v11, v8

    .line 55
    .local v11, "composition":Lcom/airbnb/lottie/LottieComposition;
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    move v10, v6

    move v9, v7

    .line 56
    .end local v6    # "width":I
    .end local v7    # "height":I
    .local v9, "height":I
    .local v10, "width":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    .line 57
    sget-object v6, Lcom/airbnb/lottie/parser/LottieCompositionParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v0, v6}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_1

    .line 85
    :pswitch_0
    invoke-static {v0, v11, v12, v5}, Lcom/airbnb/lottie/parser/LottieCompositionParser;->parseLayers(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Ljava/util/List;Landroidx/collection/LongSparseArray;)V

    goto :goto_1

    .line 74
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    .line 75
    .local v6, "version":Ljava/lang/String;
    const-string v8, "\\."

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 76
    .local v8, "versions":[Ljava/lang/String;
    aget-object v7, v8, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 77
    .local v7, "majorVersion":I
    const/16 v18, 0x1

    aget-object v18, v8, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    .line 78
    .local v24, "minorVersion":I
    const/16 v18, 0x2

    aget-object v18, v8, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    .line 79
    .local v25, "patchVersion":I
    const/16 v21, 0x4

    const/16 v22, 0x4

    const/16 v23, 0x0

    move/from16 v18, v7

    move/from16 v19, v24

    move/from16 v20, v25

    invoke-static/range {v18 .. v23}, Lcom/airbnb/lottie/utils/Utils;->isAtLeastVersion(IIIIII)Z

    move-result v18

    if-nez v18, :cond_0

    .line 81
    const-string v0, "Lottie only supports bodymovin >= 4.4.0"

    invoke-virtual {v11, v0}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    goto :goto_2

    .line 71
    .end local v6    # "version":Ljava/lang/String;
    .end local v7    # "majorVersion":I
    .end local v8    # "versions":[Ljava/lang/String;
    .end local v24    # "minorVersion":I
    .end local v25    # "patchVersion":I
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v6

    double-to-float v4, v6

    .line 72
    move-object/from16 v0, p0

    goto :goto_0

    .line 68
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v6

    double-to-float v0, v6

    const v6, 0x3c23d70a    # 0.01f

    sub-float v3, v0, v6

    .line 69
    move-object/from16 v0, p0

    goto :goto_0

    .line 65
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v6

    double-to-float v2, v6

    .line 66
    move-object/from16 v0, p0

    goto :goto_0

    .line 62
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v9

    .line 63
    move-object/from16 v0, p0

    goto :goto_0

    .line 59
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v10

    .line 60
    move-object/from16 v0, p0

    goto :goto_0

    .line 87
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    .line 56
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    goto :goto_0

    .line 91
    :cond_1
    int-to-float v0, v10

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 92
    .local v0, "scaledWidth":I
    int-to-float v6, v9

    mul-float/2addr v6, v1

    float-to-int v8, v6

    .line 93
    .local v8, "scaledHeight":I
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v7, v7, v0, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v7, v6

    .line 95
    .local v7, "bounds":Landroid/graphics/Rect;
    move-object v6, v11

    move/from16 v18, v8

    .end local v8    # "scaledHeight":I
    .local v18, "scaledHeight":I
    move v8, v2

    move/from16 v19, v9

    .end local v9    # "height":I
    .local v19, "height":I
    move v9, v3

    move/from16 v20, v10

    .end local v10    # "width":I
    .local v20, "width":I
    move v10, v4

    move-object/from16 v21, v11

    .end local v11    # "composition":Lcom/airbnb/lottie/LottieComposition;
    .local v21, "composition":Lcom/airbnb/lottie/LottieComposition;
    move-object v11, v12

    move-object/from16 v22, v12

    .end local v12    # "layers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/layer/Layer;>;"
    .local v22, "layers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/layer/Layer;>;"
    move-object v12, v5

    invoke-virtual/range {v6 .. v17}, Lcom/airbnb/lottie/LottieComposition;->init(Landroid/graphics/Rect;FFFLjava/util/List;Landroidx/collection/LongSparseArray;Ljava/util/Map;Ljava/util/Map;Landroidx/collection/SparseArrayCompat;Ljava/util/Map;Ljava/util/List;)V

    .line 98
    return-object v21

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseLayers(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Ljava/util/List;Landroidx/collection/LongSparseArray;)V
    .locals 4
    .param p0, "reader"    # Lcom/airbnb/lottie/parser/moshi/JsonReader;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/parser/moshi/JsonReader;",
            "Lcom/airbnb/lottie/LottieComposition;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;",
            "Landroidx/collection/LongSparseArray<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    .local p2, "layers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/layer/Layer;>;"
    .local p3, "layerMap":Landroidx/collection/LongSparseArray;, "Landroidx/collection/LongSparseArray<Lcom/airbnb/lottie/model/layer/Layer;>;"
    const/4 v0, 0x0

    .line 104
    .local v0, "imageCount":I
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 105
    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 106
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/LayerParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/Layer;

    move-result-object v1

    .line 107
    .local v1, "layer":Lcom/airbnb/lottie/model/layer/Layer;
    invoke-virtual {v1}, Lcom/airbnb/lottie/model/layer/Layer;->getLayerType()Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    move-result-object v2

    sget-object v3, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->IMAGE:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    if-ne v2, v3, :cond_0

    .line 108
    add-int/lit8 v0, v0, 0x1

    .line 110
    :cond_0
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-virtual {v1}, Lcom/airbnb/lottie/model/layer/Layer;->getId()J

    move-result-wide v2

    invoke-virtual {p3, v2, v3, v1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 113
    const/4 v2, 0x4

    if-le v0, v2, :cond_1

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You have "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " images. Lottie should primarily be used with shapes. If you are using Adobe Illustrator, convert the Illustrator layers to shape layers."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 118
    .end local v1    # "layer":Lcom/airbnb/lottie/model/layer/Layer;
    :cond_1
    goto :goto_0

    .line 119
    :cond_2
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 120
    return-void
.end method
