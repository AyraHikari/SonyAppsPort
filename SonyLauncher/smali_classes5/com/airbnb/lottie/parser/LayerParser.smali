.class public Lcom/airbnb/lottie/parser/LayerParser;
.super Ljava/lang/Object;
.source "LayerParser.java"


# static fields
.field private static final EFFECTS_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field private static final NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field private static final TEXT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 27
    const-string v0, "nm"

    const-string v1, "ind"

    const-string v2, "refId"

    const-string v3, "ty"

    const-string v4, "parent"

    const-string v5, "sw"

    const-string v6, "sh"

    const-string v7, "sc"

    const-string v8, "ks"

    const-string v9, "tt"

    const-string v10, "masksProperties"

    const-string v11, "shapes"

    const-string v12, "t"

    const-string v13, "ef"

    const-string v14, "sr"

    const-string v15, "st"

    const-string v16, "w"

    const-string v17, "h"

    const-string v18, "ip"

    const-string v19, "op"

    const-string v20, "tm"

    const-string v21, "cl"

    const-string v22, "hd"

    filled-new-array/range {v0 .. v22}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/LayerParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 63
    const-string v0, "d"

    const-string v1, "a"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/LayerParser;->TEXT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 68
    const-string v0, "nm"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/LayerParser;->EFFECTS_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/Layer;
    .locals 27
    .param p0, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    move-object/from16 v2, p0

    .line 54
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v25

    .line 55
    .local v25, "bounds":Landroid/graphics/Rect;
    new-instance v26, Lcom/airbnb/lottie/model/layer/Layer;

    move-object/from16 v0, v26

    .line 56
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    sget-object v6, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->PRE_COMP:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 57
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    new-instance v3, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    move-object v11, v3

    invoke-direct {v3}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;-><init>()V

    .line 59
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->width()I

    move-result v17

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->height()I

    move-result v18

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v21

    sget-object v22, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->NONE:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    const-string v3, "__container"

    const-wide/16 v4, -0x1

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v0 .. v24}, Lcom/airbnb/lottie/model/layer/Layer;-><init>(Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;Ljava/lang/String;JLcom/airbnb/lottie/model/layer/Layer$LayerType;JLjava/lang/String;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableTransform;IIIFFIILcom/airbnb/lottie/model/animatable/AnimatableTextFrame;Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;Ljava/util/List;Lcom/airbnb/lottie/model/layer/Layer$MatteType;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Z)V

    .line 55
    return-object v26
.end method

.method public static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/Layer;
    .locals 60
    .param p0, "reader"    # Lcom/airbnb/lottie/parser/moshi/JsonReader;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    move-object/from16 v0, p0

    move-object/from16 v15, p1

    const-string v1, "UNSET"

    .line 74
    .local v1, "layerName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 75
    .local v2, "layerType":Lcom/airbnb/lottie/model/layer/Layer$LayerType;
    const/4 v3, 0x0

    .line 76
    .local v3, "refId":Ljava/lang/String;
    const-wide/16 v4, 0x0

    .line 77
    .local v4, "layerId":J
    const/4 v6, 0x0

    .line 78
    .local v6, "solidWidth":I
    const/4 v7, 0x0

    .line 79
    .local v7, "solidHeight":I
    const/4 v8, 0x0

    .line 80
    .local v8, "solidColor":I
    const/4 v9, 0x0

    .line 81
    .local v9, "preCompWidth":I
    const/4 v10, 0x0

    .line 82
    .local v10, "preCompHeight":I
    const-wide/16 v11, -0x1

    .line 83
    .local v11, "parentId":J
    const/high16 v13, 0x3f800000    # 1.0f

    .line 84
    .local v13, "timeStretch":F
    const/4 v14, 0x0

    .line 85
    .local v14, "startFrame":F
    const/16 v16, 0x0

    .line 86
    .local v16, "inFrame":F
    const/16 v17, 0x0

    .line 87
    .local v17, "outFrame":F
    const/16 v18, 0x0

    .line 88
    .local v18, "cl":Ljava/lang/String;
    const/16 v19, 0x0

    .line 90
    .local v19, "hidden":Z
    sget-object v20, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->NONE:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    .line 91
    .local v20, "matteType":Lcom/airbnb/lottie/model/layer/Layer$MatteType;
    const/16 v21, 0x0

    .line 92
    .local v21, "transform":Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
    const/16 v22, 0x0

    .line 93
    .local v22, "text":Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;
    const/16 v23, 0x0

    .line 94
    .local v23, "textProperties":Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;
    const/16 v24, 0x0

    .line 96
    .local v24, "timeRemapping":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v39, v25

    .line 97
    .local v39, "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v40, v25

    .line 99
    .local v40, "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    move-object/from16 v41, v2

    move-object/from16 v42, v3

    move-wide/from16 v43, v4

    move/from16 v45, v6

    move/from16 v46, v7

    move/from16 v47, v8

    move/from16 v48, v9

    move/from16 v49, v10

    move-wide/from16 v50, v11

    move/from16 v52, v13

    move/from16 v53, v14

    move-object/from16 v12, v18

    move/from16 v54, v19

    move-object/from16 v55, v20

    move-object/from16 v56, v21

    move-object/from16 v57, v22

    move-object/from16 v58, v23

    move-object/from16 v59, v24

    move-object v14, v1

    .line 100
    .end local v1    # "layerName":Ljava/lang/String;
    .end local v2    # "layerType":Lcom/airbnb/lottie/model/layer/Layer$LayerType;
    .end local v3    # "refId":Ljava/lang/String;
    .end local v4    # "layerId":J
    .end local v6    # "solidWidth":I
    .end local v7    # "solidHeight":I
    .end local v8    # "solidColor":I
    .end local v9    # "preCompWidth":I
    .end local v10    # "preCompHeight":I
    .end local v11    # "parentId":J
    .end local v13    # "timeStretch":F
    .end local v18    # "cl":Ljava/lang/String;
    .end local v19    # "hidden":Z
    .end local v20    # "matteType":Lcom/airbnb/lottie/model/layer/Layer$MatteType;
    .end local v21    # "transform":Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
    .end local v22    # "text":Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;
    .end local v23    # "textProperties":Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;
    .end local v24    # "timeRemapping":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .local v12, "cl":Ljava/lang/String;
    .local v14, "layerName":Ljava/lang/String;
    .local v41, "layerType":Lcom/airbnb/lottie/model/layer/Layer$LayerType;
    .local v42, "refId":Ljava/lang/String;
    .local v43, "layerId":J
    .local v45, "solidWidth":I
    .local v46, "solidHeight":I
    .local v47, "solidColor":I
    .local v48, "preCompWidth":I
    .local v49, "preCompHeight":I
    .local v50, "parentId":J
    .local v52, "timeStretch":F
    .local v53, "startFrame":F
    .local v54, "hidden":Z
    .local v55, "matteType":Lcom/airbnb/lottie/model/layer/Layer$MatteType;
    .local v56, "transform":Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
    .local v57, "text":Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;
    .local v58, "textProperties":Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;
    .local v59, "timeRemapping":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 101
    sget-object v1, Lcom/airbnb/lottie/parser/LayerParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 231
    move-object/from16 v10, v39

    move-object/from16 v11, v40

    .end local v39    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    .end local v40    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    .local v10, "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    .local v11, "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 232
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto/16 :goto_8

    .line 228
    .end local v10    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    .end local v11    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    .restart local v39    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    .restart local v40    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextBoolean()Z

    move-result v54

    .line 229
    goto :goto_0

    .line 225
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v12

    .line 226
    goto :goto_0

    .line 222
    :pswitch_2
    const/4 v1, 0x0

    invoke-static {v0, v15, v1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v59

    .line 223
    goto :goto_0

    .line 219
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v1

    double-to-float v1, v1

    .line 220
    .end local v17    # "outFrame":F
    .local v1, "outFrame":F
    move/from16 v17, v1

    goto :goto_0

    .line 216
    .end local v1    # "outFrame":F
    .restart local v17    # "outFrame":F
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v1

    double-to-float v1, v1

    .line 217
    .end local v16    # "inFrame":F
    .local v1, "inFrame":F
    move/from16 v16, v1

    goto :goto_0

    .line 213
    .end local v1    # "inFrame":F
    .restart local v16    # "inFrame":F
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 214
    .end local v49    # "preCompHeight":I
    .local v1, "preCompHeight":I
    move/from16 v49, v1

    goto :goto_0

    .line 210
    .end local v1    # "preCompHeight":I
    .restart local v49    # "preCompHeight":I
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 211
    .end local v48    # "preCompWidth":I
    .local v1, "preCompWidth":I
    move/from16 v48, v1

    goto :goto_0

    .line 207
    .end local v1    # "preCompWidth":I
    .restart local v48    # "preCompWidth":I
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v1

    double-to-float v1, v1

    .line 208
    .end local v53    # "startFrame":F
    .local v1, "startFrame":F
    move/from16 v53, v1

    goto :goto_0

    .line 204
    .end local v1    # "startFrame":F
    .restart local v53    # "startFrame":F
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v1

    double-to-float v1, v1

    .line 205
    .end local v52    # "timeStretch":F
    .local v1, "timeStretch":F
    move/from16 v52, v1

    goto :goto_0

    .line 181
    .end local v1    # "timeStretch":F
    .restart local v52    # "timeStretch":F
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 182
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v1, "effectNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 184
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 185
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 186
    sget-object v2, Lcom/airbnb/lottie/parser/LayerParser;->EFFECTS_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v2

    packed-switch v2, :pswitch_data_1

    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_2

    .line 188
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    goto :goto_2

    .line 196
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    goto :goto_1

    .line 198
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lottie doesn\'t support layer effects. If you are using them for  fills, strokes, trim paths etc. then try adding them directly as contents  in your shape. Found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 202
    move-object/from16 v10, v39

    move-object/from16 v11, v40

    goto/16 :goto_8

    .line 157
    .end local v1    # "effectNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 158
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 159
    sget-object v1, Lcom/airbnb/lottie/parser/LayerParser;->TEXT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v1

    packed-switch v1, :pswitch_data_2

    .line 174
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 175
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_3

    .line 164
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 166
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableTextPropertiesParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;

    move-result-object v58

    .line 168
    :cond_2
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_4

    .line 171
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 172
    goto :goto_3

    .line 161
    :pswitch_d
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseDocumentData(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    move-result-object v57

    .line 162
    goto :goto_3

    .line 178
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 179
    goto/16 :goto_0

    .line 147
    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 148
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 149
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/ContentModelParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ContentModel;

    move-result-object v1

    .line 150
    .local v1, "shape":Lcom/airbnb/lottie/model/content/ContentModel;
    if-eqz v1, :cond_5

    .line 151
    move-object/from16 v11, v40

    .end local v40    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    .restart local v11    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 150
    .end local v11    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    .restart local v40    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    :cond_5
    move-object/from16 v11, v40

    .line 153
    .end local v1    # "shape":Lcom/airbnb/lottie/model/content/ContentModel;
    .end local v40    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    .restart local v11    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    :goto_6
    move-object/from16 v40, v11

    goto :goto_5

    .line 154
    .end local v11    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    .restart local v40    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    :cond_6
    move-object/from16 v11, v40

    .end local v40    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    .restart local v11    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 155
    move-object/from16 v10, v39

    goto/16 :goto_8

    .line 139
    .end local v11    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    .restart local v40    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    :pswitch_f
    move-object/from16 v11, v40

    .end local v40    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    .restart local v11    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 140
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 141
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/MaskParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/Mask;

    move-result-object v1

    move-object/from16 v10, v39

    .end local v39    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    .restart local v10    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 143
    .end local v10    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    .restart local v39    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    :cond_7
    move-object/from16 v10, v39

    .end local v39    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    .restart local v10    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v15, v1}, Lcom/airbnb/lottie/LottieComposition;->incrementMatteOrMaskCount(I)V

    .line 144
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 145
    goto/16 :goto_8

    .line 135
    .end local v10    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    .end local v11    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    .restart local v39    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    .restart local v40    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    :pswitch_10
    move-object/from16 v10, v39

    move-object/from16 v11, v40

    .end local v39    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    .end local v40    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    .restart local v10    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    .restart local v11    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    invoke-static {}, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->values()[Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v2

    aget-object v55, v1, v2

    .line 136
    const/4 v1, 0x1

    invoke-virtual {v15, v1}, Lcom/airbnb/lottie/LottieComposition;->incrementMatteOrMaskCount(I)V

    .line 137
    goto/16 :goto_0

    .line 132
    .end local v10    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    .end local v11    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    .restart local v39    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    .restart local v40    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    :pswitch_11
    move-object/from16 v10, v39

    move-object/from16 v11, v40

    .end local v39    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    .end local v40    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    .restart local v10    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    .restart local v11    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    move-result-object v56

    .line 133
    goto/16 :goto_0

    .line 129
    .end local v10    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    .end local v11    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    .restart local v39    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    .restart local v40    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    :pswitch_12
    move-object/from16 v10, v39

    move-object/from16 v11, v40

    .end local v39    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    .end local v40    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    .restart local v10    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    .restart local v11    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v47

    .line 130
    goto/16 :goto_0

    .line 126
    .end local v10    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    .end local v11    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    .restart local v39    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    .restart local v40    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    :pswitch_13
    move-object/from16 v10, v39

    move-object/from16 v11, v40

    .end local v39    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    .end local v40    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    .restart local v10    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    .restart local v11    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 127
    .end local v46    # "solidHeight":I
    .local v1, "solidHeight":I
    move/from16 v46, v1

    goto/16 :goto_0

    .line 123
    .end local v1    # "solidHeight":I
    .end local v10    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    .end local v11    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    .restart local v39    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    .restart local v40    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    .restart local v46    # "solidHeight":I
    :pswitch_14
    move-object/from16 v10, v39

    move-object/from16 v11, v40

    .end local v39    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    .end local v40    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    .restart local v10    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    .restart local v11    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 124
    .end local v45    # "solidWidth":I
    .local v1, "solidWidth":I
    move/from16 v45, v1

    goto/16 :goto_0

    .line 120
    .end local v1    # "solidWidth":I
    .end local v10    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    .end local v11    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    .restart local v39    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    .restart local v40    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    .restart local v45    # "solidWidth":I
    :pswitch_15
    move-object/from16 v10, v39

    move-object/from16 v11, v40

    .end local v39    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    .end local v40    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    .restart local v10    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    .restart local v11    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v1

    int-to-long v1, v1

    .line 121
    .end local v50    # "parentId":J
    .local v1, "parentId":J
    move-wide/from16 v50, v1

    goto/16 :goto_0

    .line 112
    .end local v1    # "parentId":J
    .end local v10    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    .end local v11    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    .restart local v39    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    .restart local v40    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    .restart local v50    # "parentId":J
    :pswitch_16
    move-object/from16 v10, v39

    move-object/from16 v11, v40

    .end local v39    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    .end local v40    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    .restart local v10    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    .restart local v11    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v1

    .line 113
    .local v1, "layerTypeInt":I
    sget-object v2, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->UNKNOWN:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    invoke-virtual {v2}, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->ordinal()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 114
    invoke-static {}, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->values()[Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    move-result-object v2

    aget-object v41, v2, v1

    move-object/from16 v39, v10

    move-object/from16 v40, v11

    goto/16 :goto_0

    .line 116
    :cond_8
    sget-object v41, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->UNKNOWN:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 118
    move-object/from16 v39, v10

    move-object/from16 v40, v11

    goto/16 :goto_0

    .line 109
    .end local v1    # "layerTypeInt":I
    .end local v10    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    .end local v11    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    .restart local v39    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    .restart local v40    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    :pswitch_17
    move-object/from16 v10, v39

    move-object/from16 v11, v40

    .end local v39    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    .end local v40    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    .restart local v10    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    .restart local v11    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v42

    .line 110
    goto/16 :goto_0

    .line 106
    .end local v10    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    .end local v11    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    .restart local v39    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    .restart local v40    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    :pswitch_18
    move-object/from16 v10, v39

    move-object/from16 v11, v40

    .end local v39    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    .end local v40    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    .restart local v10    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    .restart local v11    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v1

    int-to-long v1, v1

    .line 107
    .end local v43    # "layerId":J
    .local v1, "layerId":J
    move-wide/from16 v43, v1

    goto/16 :goto_0

    .line 103
    .end local v1    # "layerId":J
    .end local v10    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    .end local v11    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    .restart local v39    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    .restart local v40    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    .restart local v43    # "layerId":J
    :pswitch_19
    move-object/from16 v10, v39

    move-object/from16 v11, v40

    .end local v39    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    .end local v40    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    .restart local v10    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    .restart local v11    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v14

    .line 104
    goto/16 :goto_0

    .line 100
    :goto_8
    move-object/from16 v39, v10

    move-object/from16 v40, v11

    goto/16 :goto_0

    .line 235
    .end local v10    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    .end local v11    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    .restart local v39    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    .restart local v40    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    :cond_9
    move-object/from16 v10, v39

    move-object/from16 v11, v40

    .end local v39    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    .end local v40    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    .restart local v10    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    .restart local v11    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 240
    div-float v39, v16, v52

    .line 241
    .end local v16    # "inFrame":F
    .local v39, "inFrame":F
    div-float v17, v17, v52

    .line 243
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v1

    .line 245
    .local v9, "inOutKeyframes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/value/Keyframe<Ljava/lang/Float;>;>;"
    const/4 v8, 0x0

    cmpl-float v1, v39, v8

    if-lez v1, :cond_a

    .line 246
    new-instance v13, Lcom/airbnb/lottie/value/Keyframe;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v39 .. v39}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    move-object v1, v13

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 247
    .local v1, "preKeyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<Ljava/lang/Float;>;"
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    .end local v1    # "preKeyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<Ljava/lang/Float;>;"
    :cond_a
    cmpl-float v1, v17, v8

    if-lez v1, :cond_b

    move/from16 v13, v17

    goto :goto_9

    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    move-result v1

    move v13, v1

    .line 252
    .end local v17    # "outFrame":F
    .local v13, "outFrame":F
    :goto_9
    new-instance v16, Lcom/airbnb/lottie/value/Keyframe;

    .line 253
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move/from16 v6, v39

    invoke-direct/range {v1 .. v7}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 254
    .local v1, "visibleKeyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<Ljava/lang/Float;>;"
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    new-instance v2, Lcom/airbnb/lottie/value/Keyframe;

    .line 257
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object v8, v2

    move-object v7, v9

    .end local v9    # "inOutKeyframes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/value/Keyframe<Ljava/lang/Float;>;>;"
    .local v7, "inOutKeyframes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/value/Keyframe<Ljava/lang/Float;>;>;"
    move-object/from16 v9, p1

    move-object/from16 v40, v10

    .end local v10    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    .local v40, "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    move-object v10, v3

    move-object v3, v11

    .end local v11    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    .local v3, "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    move-object v11, v4

    move-object v4, v12

    .end local v12    # "cl":Ljava/lang/String;
    .local v4, "cl":Ljava/lang/String;
    move-object v12, v5

    move-object v5, v14

    .end local v14    # "layerName":Ljava/lang/String;
    .local v5, "layerName":Ljava/lang/String;
    move-object v14, v6

    invoke-direct/range {v8 .. v14}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 258
    .local v2, "outKeyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<Ljava/lang/Float;>;"
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    const-string v6, ".ai"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "ai"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 261
    :cond_c
    const-string v6, "Convert your Illustrator layers to shape layers."

    invoke-virtual {v15, v6}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 264
    :cond_d
    new-instance v6, Lcom/airbnb/lottie/model/layer/Layer;

    move-object v14, v6

    move-object v15, v3

    move-object/from16 v16, p1

    move-object/from16 v17, v5

    move-wide/from16 v18, v43

    move-object/from16 v20, v41

    move-wide/from16 v21, v50

    move-object/from16 v23, v42

    move-object/from16 v24, v40

    move-object/from16 v25, v56

    move/from16 v26, v45

    move/from16 v27, v46

    move/from16 v28, v47

    move/from16 v29, v52

    move/from16 v30, v53

    move/from16 v31, v48

    move/from16 v32, v49

    move-object/from16 v33, v57

    move-object/from16 v34, v58

    move-object/from16 v35, v7

    move-object/from16 v36, v55

    move-object/from16 v37, v59

    move/from16 v38, v54

    invoke-direct/range {v14 .. v38}, Lcom/airbnb/lottie/model/layer/Layer;-><init>(Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;Ljava/lang/String;JLcom/airbnb/lottie/model/layer/Layer$LayerType;JLjava/lang/String;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableTransform;IIIFFIILcom/airbnb/lottie/model/animatable/AnimatableTextFrame;Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;Ljava/util/List;Lcom/airbnb/lottie/model/layer/Layer$MatteType;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Z)V

    return-object v6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_b
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

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
    .end packed-switch
.end method
