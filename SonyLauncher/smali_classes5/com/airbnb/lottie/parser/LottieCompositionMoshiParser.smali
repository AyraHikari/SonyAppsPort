.class public Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;
.super Ljava/lang/Object;
.source "LottieCompositionMoshiParser.java"


# static fields
.field static ASSETS_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field private static final FONT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field private static final MARKER_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field private static final NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 27
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

    sput-object v0, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 138
    const-string v1, "id"

    const-string v2, "layers"

    const-string v3, "w"

    const-string v4, "h"

    const-string v5, "p"

    const-string v6, "u"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->ASSETS_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 204
    const-string v0, "list"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->FONT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 237
    const-string v0, "cm"

    const-string v1, "tm"

    const-string v2, "dr"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->MARKER_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;)Lcom/airbnb/lottie/LottieComposition;
    .locals 28
    .param p0, "reader"    # Lcom/airbnb/lottie/parser/moshi/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    move-object/from16 v0, p0

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v1

    .line 43
    .local v1, "scale":F
    const/4 v2, 0x0

    .line 44
    .local v2, "startFrame":F
    const/4 v3, 0x0

    .line 45
    .local v3, "endFrame":F
    const/4 v4, 0x0

    .line 46
    .local v4, "frameRate":F
    new-instance v5, Landroidx/collection/LongSparseArray;

    invoke-direct {v5}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 47
    .local v5, "layerMap":Landroidx/collection/LongSparseArray;, "Landroidx/collection/LongSparseArray<Lcom/airbnb/lottie/model/layer/Layer;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v6

    .line 48
    .local v15, "layers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/layer/Layer;>;"
    const/4 v6, 0x0

    .line 49
    .local v6, "width":I
    const/4 v7, 0x0

    .line 50
    .local v7, "height":I
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    move-object v14, v8

    .line 51
    .local v14, "precomps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/airbnb/lottie/model/layer/Layer;>;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    move-object v13, v8

    .line 52
    .local v13, "images":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/airbnb/lottie/LottieImageAsset;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    move-object v12, v8

    .line 53
    .local v12, "fonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/airbnb/lottie/model/Font;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v8

    .line 54
    .local v11, "markers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/Marker;>;"
    new-instance v8, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v8}, Landroidx/collection/SparseArrayCompat;-><init>()V

    move-object v10, v8

    .line 56
    .local v10, "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    new-instance v8, Lcom/airbnb/lottie/LottieComposition;

    invoke-direct {v8}, Lcom/airbnb/lottie/LottieComposition;-><init>()V

    move-object v9, v8

    .line 57
    .local v9, "composition":Lcom/airbnb/lottie/LottieComposition;
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    move v8, v6

    move v6, v7

    .line 58
    .end local v7    # "height":I
    .local v6, "height":I
    .local v8, "width":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v7

    move/from16 v18, v4

    .end local v4    # "frameRate":F
    .local v18, "frameRate":F
    if-eqz v7, :cond_1

    .line 59
    sget-object v7, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v0, v7}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 102
    move-object v4, v10

    move-object v0, v11

    .end local v10    # "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    .end local v11    # "markers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/Marker;>;"
    .local v0, "markers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/Marker;>;"
    .local v4, "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto/16 :goto_1

    .line 99
    .end local v0    # "markers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/Marker;>;"
    .end local v4    # "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    .restart local v10    # "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    .restart local v11    # "markers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/Marker;>;"
    :pswitch_0
    invoke-static {v0, v9, v11}, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->parseMarkers(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Ljava/util/List;)V

    .line 100
    move-object v4, v10

    move-object v0, v11

    goto/16 :goto_1

    .line 96
    :pswitch_1
    invoke-static {v0, v9, v10}, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->parseChars(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Landroidx/collection/SparseArrayCompat;)V

    .line 97
    move-object v4, v10

    move-object v0, v11

    goto/16 :goto_1

    .line 93
    :pswitch_2
    invoke-static {v0, v12}, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->parseFonts(Lcom/airbnb/lottie/parser/moshi/JsonReader;Ljava/util/Map;)V

    .line 94
    move-object v4, v10

    move-object v0, v11

    goto/16 :goto_1

    .line 90
    :pswitch_3
    invoke-static {v0, v9, v14, v13}, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->parseAssets(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Ljava/util/Map;Ljava/util/Map;)V

    .line 91
    move-object v4, v10

    move-object v0, v11

    goto/16 :goto_1

    .line 87
    :pswitch_4
    invoke-static {v0, v9, v15, v5}, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->parseLayers(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Ljava/util/List;Landroidx/collection/LongSparseArray;)V

    .line 88
    move-object v4, v10

    move-object v0, v11

    goto/16 :goto_1

    .line 76
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    .line 77
    .local v7, "version":Ljava/lang/String;
    const-string v4, "\\."

    invoke-virtual {v7, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, "versions":[Ljava/lang/String;
    const/16 v16, 0x0

    aget-object v16, v4, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 79
    .local v16, "majorVersion":I
    const/16 v17, 0x1

    aget-object v17, v4, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 80
    .local v17, "minorVersion":I
    const/16 v19, 0x2

    aget-object v19, v4, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    .line 81
    .local v25, "patchVersion":I
    const/16 v22, 0x4

    const/16 v23, 0x4

    const/16 v24, 0x0

    move/from16 v19, v16

    move/from16 v20, v17

    move/from16 v21, v25

    invoke-static/range {v19 .. v24}, Lcom/airbnb/lottie/utils/Utils;->isAtLeastVersion(IIIIII)Z

    move-result v19

    if-nez v19, :cond_0

    .line 83
    const-string v0, "Lottie only supports bodymovin >= 4.4.0"

    invoke-virtual {v9, v0}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    move-object v4, v10

    move-object v0, v11

    goto/16 :goto_1

    .line 81
    :cond_0
    move-object v4, v10

    move-object v0, v11

    goto :goto_1

    .line 73
    .end local v4    # "versions":[Ljava/lang/String;
    .end local v7    # "version":Ljava/lang/String;
    .end local v16    # "majorVersion":I
    .end local v17    # "minorVersion":I
    .end local v25    # "patchVersion":I
    :pswitch_6
    move-object v4, v10

    move-object v0, v11

    .end local v10    # "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    .end local v11    # "markers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/Marker;>;"
    .restart local v0    # "markers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/Marker;>;"
    .local v4, "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v10

    double-to-float v7, v10

    .line 74
    .end local v18    # "frameRate":F
    .local v7, "frameRate":F
    move-object v11, v0

    move-object v10, v4

    move v4, v7

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 70
    .end local v0    # "markers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/Marker;>;"
    .end local v4    # "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    .end local v7    # "frameRate":F
    .restart local v10    # "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    .restart local v11    # "markers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/Marker;>;"
    .restart local v18    # "frameRate":F
    :pswitch_7
    move-object v4, v10

    move-object v0, v11

    .end local v10    # "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    .end local v11    # "markers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/Marker;>;"
    .restart local v0    # "markers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/Marker;>;"
    .restart local v4    # "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v10

    double-to-float v7, v10

    const v10, 0x3c23d70a    # 0.01f

    sub-float v3, v7, v10

    .line 71
    move-object v11, v0

    move-object v10, v4

    move/from16 v4, v18

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 67
    .end local v0    # "markers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/Marker;>;"
    .end local v4    # "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    .restart local v10    # "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    .restart local v11    # "markers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/Marker;>;"
    :pswitch_8
    move-object v4, v10

    move-object v0, v11

    .end local v10    # "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    .end local v11    # "markers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/Marker;>;"
    .restart local v0    # "markers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/Marker;>;"
    .restart local v4    # "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v10

    double-to-float v2, v10

    .line 68
    move-object v11, v0

    move-object v10, v4

    move/from16 v4, v18

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 64
    .end local v0    # "markers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/Marker;>;"
    .end local v4    # "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    .restart local v10    # "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    .restart local v11    # "markers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/Marker;>;"
    :pswitch_9
    move-object v4, v10

    move-object v0, v11

    .end local v10    # "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    .end local v11    # "markers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/Marker;>;"
    .restart local v0    # "markers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/Marker;>;"
    .restart local v4    # "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v6

    .line 65
    move/from16 v4, v18

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 61
    .end local v0    # "markers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/Marker;>;"
    .end local v4    # "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    .restart local v10    # "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    .restart local v11    # "markers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/Marker;>;"
    :pswitch_a
    move-object v4, v10

    move-object v0, v11

    .end local v10    # "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    .end local v11    # "markers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/Marker;>;"
    .restart local v0    # "markers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/Marker;>;"
    .restart local v4    # "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v8

    .line 62
    move/from16 v4, v18

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 58
    .end local v0    # "markers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/Marker;>;"
    .end local v4    # "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    .restart local v10    # "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    .restart local v11    # "markers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/Marker;>;"
    :goto_1
    move-object v11, v0

    move-object v10, v4

    move/from16 v4, v18

    move-object/from16 v0, p0

    .end local v10    # "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    .end local v11    # "markers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/Marker;>;"
    .restart local v0    # "markers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/Marker;>;"
    .restart local v4    # "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    goto/16 :goto_0

    .line 106
    .end local v0    # "markers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/Marker;>;"
    .end local v4    # "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    .restart local v10    # "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    .restart local v11    # "markers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/Marker;>;"
    :cond_1
    move-object v4, v10

    move-object v0, v11

    .end local v10    # "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    .end local v11    # "markers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/Marker;>;"
    .restart local v0    # "markers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/Marker;>;"
    .restart local v4    # "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    int-to-float v7, v8

    mul-float/2addr v7, v1

    float-to-int v11, v7

    .line 107
    .local v11, "scaledWidth":I
    int-to-float v7, v6

    mul-float/2addr v7, v1

    float-to-int v10, v7

    .line 108
    .local v10, "scaledHeight":I
    new-instance v7, Landroid/graphics/Rect;

    move-object/from16 v17, v0

    const/4 v0, 0x0

    .end local v0    # "markers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/Marker;>;"
    .local v17, "markers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/Marker;>;"
    invoke-direct {v7, v0, v0, v11, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 110
    .local v7, "bounds":Landroid/graphics/Rect;
    move v0, v6

    .end local v6    # "height":I
    .local v0, "height":I
    move-object v6, v9

    move/from16 v19, v8

    .end local v8    # "width":I
    .local v19, "width":I
    move v8, v2

    move-object/from16 v20, v9

    .end local v9    # "composition":Lcom/airbnb/lottie/LottieComposition;
    .local v20, "composition":Lcom/airbnb/lottie/LottieComposition;
    move v9, v3

    move/from16 v21, v10

    .end local v10    # "scaledHeight":I
    .local v21, "scaledHeight":I
    move/from16 v10, v18

    move/from16 v23, v11

    move-object/from16 v22, v17

    .end local v11    # "scaledWidth":I
    .end local v17    # "markers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/Marker;>;"
    .local v22, "markers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/Marker;>;"
    .local v23, "scaledWidth":I
    move-object v11, v15

    move-object/from16 v24, v12

    .end local v12    # "fonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/airbnb/lottie/model/Font;>;"
    .local v24, "fonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/airbnb/lottie/model/Font;>;"
    move-object v12, v5

    move-object/from16 v25, v13

    .end local v13    # "images":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/airbnb/lottie/LottieImageAsset;>;"
    .local v25, "images":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/airbnb/lottie/LottieImageAsset;>;"
    move-object v13, v14

    move-object/from16 v26, v14

    .end local v14    # "precomps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/airbnb/lottie/model/layer/Layer;>;>;"
    .local v26, "precomps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/airbnb/lottie/model/layer/Layer;>;>;"
    move-object/from16 v14, v25

    move-object/from16 v27, v15

    .end local v15    # "layers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/layer/Layer;>;"
    .local v27, "layers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/layer/Layer;>;"
    move-object v15, v4

    move-object/from16 v16, v24

    invoke-virtual/range {v6 .. v17}, Lcom/airbnb/lottie/LottieComposition;->init(Landroid/graphics/Rect;FFFLjava/util/List;Landroidx/collection/LongSparseArray;Ljava/util/Map;Ljava/util/Map;Landroidx/collection/SparseArrayCompat;Ljava/util/Map;Ljava/util/List;)V

    .line 113
    return-object v20

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

.method private static parseAssets(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Ljava/util/Map;Ljava/util/Map;)V
    .locals 15
    .param p0, "reader"    # Lcom/airbnb/lottie/parser/moshi/JsonReader;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/parser/moshi/JsonReader;",
            "Lcom/airbnb/lottie/LottieComposition;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/LottieImageAsset;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    .local p2, "precomps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/airbnb/lottie/model/layer/Layer;>;>;"
    .local p3, "images":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/airbnb/lottie/LottieImageAsset;>;"
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 150
    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 151
    const/4 v0, 0x0

    .line 153
    .local v0, "id":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v1, "layers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/layer/Layer;>;"
    new-instance v2, Landroidx/collection/LongSparseArray;

    invoke-direct {v2}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 156
    .local v2, "layerMap":Landroidx/collection/LongSparseArray;, "Landroidx/collection/LongSparseArray<Lcom/airbnb/lottie/model/layer/Layer;>;"
    const/4 v3, 0x0

    .line 157
    .local v3, "width":I
    const/4 v4, 0x0

    .line 158
    .local v4, "height":I
    const/4 v5, 0x0

    .line 159
    .local v5, "imageFileName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 160
    .local v6, "relativeFolder":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 161
    :goto_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 162
    sget-object v7, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->ASSETS_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-object v13, p0

    invoke-virtual {p0, v7}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 188
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 189
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_1

    .line 185
    :pswitch_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    .line 186
    goto :goto_1

    .line 182
    :pswitch_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v5

    .line 183
    goto :goto_1

    .line 179
    :pswitch_2
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v4

    .line 180
    goto :goto_1

    .line 176
    :pswitch_3
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v3

    .line 177
    goto :goto_1

    .line 167
    :pswitch_4
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 168
    :goto_2
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 169
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/LayerParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/Layer;

    move-result-object v7

    .line 170
    .local v7, "layer":Lcom/airbnb/lottie/model/layer/Layer;
    invoke-virtual {v7}, Lcom/airbnb/lottie/model/layer/Layer;->getId()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9, v7}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 171
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    .end local v7    # "layer":Lcom/airbnb/lottie/model/layer/Layer;
    goto :goto_2

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 174
    goto :goto_1

    .line 164
    :pswitch_5
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 165
    goto :goto_1

    .line 192
    :cond_1
    move-object v13, p0

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 193
    if-eqz v5, :cond_2

    .line 194
    new-instance v14, Lcom/airbnb/lottie/LottieImageAsset;

    move-object v7, v14

    move v8, v3

    move v9, v4

    move-object v10, v0

    move-object v11, v5

    move-object v12, v6

    invoke-direct/range {v7 .. v12}, Lcom/airbnb/lottie/LottieImageAsset;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .local v7, "image":Lcom/airbnb/lottie/LottieImageAsset;
    invoke-virtual {v7}, Lcom/airbnb/lottie/LottieImageAsset;->getId()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v9, p3

    invoke-interface {v9, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .end local v7    # "image":Lcom/airbnb/lottie/LottieImageAsset;
    move-object/from16 v7, p2

    goto :goto_3

    .line 198
    :cond_2
    move-object/from16 v9, p3

    move-object/from16 v7, p2

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .end local v0    # "id":Ljava/lang/String;
    .end local v1    # "layers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/layer/Layer;>;"
    .end local v2    # "layerMap":Landroidx/collection/LongSparseArray;, "Landroidx/collection/LongSparseArray<Lcom/airbnb/lottie/model/layer/Layer;>;"
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v5    # "imageFileName":Ljava/lang/String;
    .end local v6    # "relativeFolder":Ljava/lang/String;
    :goto_3
    goto/16 :goto_0

    .line 201
    :cond_3
    move-object v13, p0

    move-object/from16 v7, p2

    move-object/from16 v9, p3

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 202
    return-void

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

.method private static parseChars(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Landroidx/collection/SparseArrayCompat;)V
    .locals 2
    .param p0, "reader"    # Lcom/airbnb/lottie/parser/moshi/JsonReader;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/parser/moshi/JsonReader;",
            "Lcom/airbnb/lottie/LottieComposition;",
            "Landroidx/collection/SparseArrayCompat<",
            "Lcom/airbnb/lottie/model/FontCharacter;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    .local p2, "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 230
    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/FontCharacterParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/FontCharacter;

    move-result-object v0

    .line 232
    .local v0, "character":Lcom/airbnb/lottie/model/FontCharacter;
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/FontCharacter;->hashCode()I

    move-result v1

    invoke-virtual {p2, v1, v0}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 233
    .end local v0    # "character":Lcom/airbnb/lottie/model/FontCharacter;
    goto :goto_0

    .line 234
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 235
    return-void
.end method

.method private static parseFonts(Lcom/airbnb/lottie/parser/moshi/JsonReader;Ljava/util/Map;)V
    .locals 2
    .param p0, "reader"    # Lcom/airbnb/lottie/parser/moshi/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/parser/moshi/JsonReader;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/model/Font;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    .local p1, "fonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/airbnb/lottie/model/Font;>;"
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 208
    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    sget-object v0, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->FONT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 219
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 220
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_0

    .line 211
    :pswitch_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 212
    :goto_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    invoke-static {p0}, Lcom/airbnb/lottie/parser/FontParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;)Lcom/airbnb/lottie/model/Font;

    move-result-object v0

    .line 214
    .local v0, "font":Lcom/airbnb/lottie/model/Font;
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/Font;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    .end local v0    # "font":Lcom/airbnb/lottie/model/Font;
    goto :goto_1

    .line 216
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 217
    goto :goto_0

    .line 223
    :cond_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 224
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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

    .line 118
    .local p2, "layers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/layer/Layer;>;"
    .local p3, "layerMap":Landroidx/collection/LongSparseArray;, "Landroidx/collection/LongSparseArray<Lcom/airbnb/lottie/model/layer/Layer;>;"
    const/4 v0, 0x0

    .line 119
    .local v0, "imageCount":I
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 120
    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 121
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/LayerParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/Layer;

    move-result-object v1

    .line 122
    .local v1, "layer":Lcom/airbnb/lottie/model/layer/Layer;
    invoke-virtual {v1}, Lcom/airbnb/lottie/model/layer/Layer;->getLayerType()Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    move-result-object v2

    sget-object v3, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->IMAGE:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    if-ne v2, v3, :cond_0

    .line 123
    add-int/lit8 v0, v0, 0x1

    .line 125
    :cond_0
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-virtual {v1}, Lcom/airbnb/lottie/model/layer/Layer;->getId()J

    move-result-wide v2

    invoke-virtual {p3, v2, v3, v1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 128
    const/4 v2, 0x4

    if-le v0, v2, :cond_1

    .line 129
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

    .line 133
    .end local v1    # "layer":Lcom/airbnb/lottie/model/layer/Layer;
    :cond_1
    goto :goto_0

    .line 134
    :cond_2
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 135
    return-void
.end method

.method private static parseMarkers(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Ljava/util/List;)V
    .locals 5
    .param p0, "reader"    # Lcom/airbnb/lottie/parser/moshi/JsonReader;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/parser/moshi/JsonReader;",
            "Lcom/airbnb/lottie/LottieComposition;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/Marker;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    .local p2, "markers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/Marker;>;"
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 246
    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    const/4 v0, 0x0

    .line 248
    .local v0, "comment":Ljava/lang/String;
    const/4 v1, 0x0

    .line 249
    .local v1, "frame":F
    const/4 v2, 0x0

    .line 250
    .local v2, "durationFrames":F
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 251
    :goto_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 252
    sget-object v3, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->MARKER_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {p0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 263
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 264
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_1

    .line 260
    :pswitch_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v3

    double-to-float v2, v3

    .line 261
    goto :goto_1

    .line 257
    :pswitch_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v3

    double-to-float v1, v3

    .line 258
    goto :goto_1

    .line 254
    :pswitch_2
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 255
    goto :goto_1

    .line 267
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 268
    new-instance v3, Lcom/airbnb/lottie/model/Marker;

    invoke-direct {v3, v0, v1, v2}, Lcom/airbnb/lottie/model/Marker;-><init>(Ljava/lang/String;FF)V

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    .end local v0    # "comment":Ljava/lang/String;
    .end local v1    # "frame":F
    .end local v2    # "durationFrames":F
    goto :goto_0

    .line 270
    :cond_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 271
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
