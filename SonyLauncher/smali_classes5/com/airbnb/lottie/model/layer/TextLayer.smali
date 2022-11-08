.class public Lcom/airbnb/lottie/model/layer/TextLayer;
.super Lcom/airbnb/lottie/model/layer/BaseLayer;
.source "TextLayer.java"


# instance fields
.field private final codePointCache:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final composition:Lcom/airbnb/lottie/LottieComposition;

.field private final contentsForCharacter:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/airbnb/lottie/model/FontCharacter;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/content/ContentGroup;",
            ">;>;"
        }
    .end annotation
.end field

.field private final fillPaint:Landroid/graphics/Paint;

.field private final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private final matrix:Landroid/graphics/Matrix;

.field private final rectF:Landroid/graphics/RectF;

.field private final stringBuilder:Ljava/lang/StringBuilder;

.field private strokeColorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final strokePaint:Landroid/graphics/Paint;

.field private strokeWidthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final textAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

.field private textSizeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V
    .locals 2
    .param p1, "lottieDrawable"    # Lcom/airbnb/lottie/LottieDrawable;
    .param p2, "layerModel"    # Lcom/airbnb/lottie/model/layer/Layer;

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->stringBuilder:Ljava/lang/StringBuilder;

    .line 39
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->rectF:Landroid/graphics/RectF;

    .line 40
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->matrix:Landroid/graphics/Matrix;

    .line 41
    new-instance v0, Lcom/airbnb/lottie/model/layer/TextLayer$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/airbnb/lottie/model/layer/TextLayer$1;-><init>(Lcom/airbnb/lottie/model/layer/TextLayer;I)V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    .line 44
    new-instance v0, Lcom/airbnb/lottie/model/layer/TextLayer$2;

    invoke-direct {v0, p0, v1}, Lcom/airbnb/lottie/model/layer/TextLayer$2;-><init>(Lcom/airbnb/lottie/model/layer/TextLayer;I)V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->contentsForCharacter:Ljava/util/Map;

    .line 48
    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->codePointCache:Landroidx/collection/LongSparseArray;

    .line 65
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 66
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->getComposition()Lcom/airbnb/lottie/LottieComposition;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 68
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->getText()Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 69
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 70
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/model/layer/TextLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 72
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->getTextProperties()Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;

    move-result-object v0

    .line 73
    .local v0, "textProperties":Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->color:Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, v0, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->color:Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 75
    invoke-virtual {v1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 76
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/model/layer/TextLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 79
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->stroke:Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    if-eqz v1, :cond_1

    .line 80
    iget-object v1, v0, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->stroke:Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 81
    invoke-virtual {v1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 82
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/model/layer/TextLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 85
    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->strokeWidth:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    if-eqz v1, :cond_2

    .line 86
    iget-object v1, v0, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->strokeWidth:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 87
    invoke-virtual {v1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 88
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/model/layer/TextLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 91
    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->tracking:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    if-eqz v1, :cond_3

    .line 92
    iget-object v1, v0, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->tracking:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 93
    invoke-virtual {v1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 94
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/model/layer/TextLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 96
    :cond_3
    return-void
.end method

.method private applyJustification(Lcom/airbnb/lottie/model/DocumentData$Justification;Landroid/graphics/Canvas;F)V
    .locals 3
    .param p1, "justification"    # Lcom/airbnb/lottie/model/DocumentData$Justification;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "textLineWidth"    # F

    .line 295
    sget-object v0, Lcom/airbnb/lottie/model/layer/TextLayer$3;->$SwitchMap$com$airbnb$lottie$model$DocumentData$Justification:[I

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/DocumentData$Justification;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 303
    :pswitch_0
    neg-float v0, p3

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 300
    :pswitch_1
    neg-float v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 301
    goto :goto_0

    .line 298
    :pswitch_2
    nop

    .line 306
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private codePointToString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 8
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "startIndex"    # I

    .line 378
    invoke-virtual {p1, p2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 379
    .local v0, "firstCodePoint":I
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    .line 380
    .local v1, "firstCodePointLength":I
    move v2, v0

    .line 381
    .local v2, "key":I
    add-int v3, p2, v1

    .line 382
    .local v3, "index":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 383
    invoke-virtual {p1, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    .line 384
    .local v4, "nextCodePoint":I
    invoke-direct {p0, v4}, Lcom/airbnb/lottie/model/layer/TextLayer;->isModifier(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 385
    goto :goto_1

    .line 387
    :cond_0
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    .line 388
    .local v5, "nextCodePointLength":I
    add-int/2addr v3, v5

    .line 389
    mul-int/lit8 v6, v2, 0x1f

    add-int v2, v6, v4

    .line 390
    .end local v4    # "nextCodePoint":I
    .end local v5    # "nextCodePointLength":I
    goto :goto_0

    .line 392
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->codePointCache:Landroidx/collection/LongSparseArray;

    int-to-long v5, v2

    invoke-virtual {v4, v5, v6}, Landroidx/collection/LongSparseArray;->containsKey(J)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 393
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->codePointCache:Landroidx/collection/LongSparseArray;

    int-to-long v5, v2

    invoke-virtual {v4, v5, v6}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    return-object v4

    .line 396
    :cond_2
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->stringBuilder:Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 397
    move v4, p2

    .local v4, "i":I
    :goto_2
    if-ge v4, v3, :cond_3

    .line 398
    invoke-virtual {p1, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    .line 399
    .local v5, "codePoint":I
    iget-object v6, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 400
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v4, v6

    .line 401
    .end local v5    # "codePoint":I
    goto :goto_2

    .line 402
    .end local v4    # "i":I
    :cond_3
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 403
    .local v4, "str":Ljava/lang/String;
    iget-object v5, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->codePointCache:Landroidx/collection/LongSparseArray;

    int-to-long v6, v2

    invoke-virtual {v5, v6, v7, v4}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 404
    return-object v4
.end method

.method private drawCharacter(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "character"    # Ljava/lang/String;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "canvas"    # Landroid/graphics/Canvas;

    .line 353
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-nez v0, :cond_0

    .line 354
    return-void

    .line 356
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 357
    return-void

    .line 359
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p3

    move-object v2, p1

    move-object v7, p2

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 360
    return-void
.end method

.method private drawCharacterAsGlyph(Lcom/airbnb/lottie/model/FontCharacter;Landroid/graphics/Matrix;FLcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "character"    # Lcom/airbnb/lottie/model/FontCharacter;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p3, "fontScale"    # F
    .param p4, "documentData"    # Lcom/airbnb/lottie/model/DocumentData;
    .param p5, "canvas"    # Landroid/graphics/Canvas;

    .line 314
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/model/layer/TextLayer;->getContentsForCharacter(Lcom/airbnb/lottie/model/FontCharacter;)Ljava/util/List;

    move-result-object v0

    .line 315
    .local v0, "contentGroups":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/content/ContentGroup;>;"
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 316
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/animation/content/ContentGroup;

    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/content/ContentGroup;->getPath()Landroid/graphics/Path;

    move-result-object v2

    .line 317
    .local v2, "path":Landroid/graphics/Path;
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->rectF:Landroid/graphics/RectF;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 318
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 319
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->matrix:Landroid/graphics/Matrix;

    const/4 v4, 0x0

    iget v5, p4, Lcom/airbnb/lottie/model/DocumentData;->baselineShift:F

    neg-float v5, v5

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v6

    mul-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 320
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, p3, p3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 321
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 322
    iget-boolean v3, p4, Lcom/airbnb/lottie/model/DocumentData;->strokeOverFill:Z

    if-eqz v3, :cond_0

    .line 323
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v2, v3, p5}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 324
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    invoke-direct {p0, v2, v3, p5}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 326
    :cond_0
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    invoke-direct {p0, v2, v3, p5}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 327
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v2, v3, p5}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 315
    .end local v2    # "path":Landroid/graphics/Path;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 330
    .end local v1    # "j":I
    :cond_1
    return-void
.end method

.method private drawCharacterFromFont(Ljava/lang/String;Lcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "character"    # Ljava/lang/String;
    .param p2, "documentData"    # Lcom/airbnb/lottie/model/DocumentData;
    .param p3, "canvas"    # Landroid/graphics/Canvas;

    .line 343
    iget-boolean v0, p2, Lcom/airbnb/lottie/model/DocumentData;->strokeOverFill:Z

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0, p3}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawCharacter(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 345
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0, p3}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawCharacter(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0, p3}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawCharacter(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 348
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0, p3}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawCharacter(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 350
    :goto_0
    return-void
.end method

.method private drawFontTextLine(Ljava/lang/String;Lcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Canvas;F)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "documentData"    # Lcom/airbnb/lottie/model/DocumentData;
    .param p3, "canvas"    # Landroid/graphics/Canvas;
    .param p4, "parentScale"    # F

    .line 264
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 265
    invoke-direct {p0, p1, v0}, Lcom/airbnb/lottie/model/layer/TextLayer;->codePointToString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, "charString":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    .line 267
    invoke-direct {p0, v1, p2, p3}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawCharacterFromFont(Ljava/lang/String;Lcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Canvas;)V

    .line 268
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v2

    .line 270
    .local v2, "charWidth":F
    iget v3, p2, Lcom/airbnb/lottie/model/DocumentData;->tracking:I

    int-to-float v3, v3

    const/high16 v4, 0x41200000    # 10.0f

    div-float/2addr v3, v4

    .line 271
    .local v3, "tracking":F
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v4, :cond_0

    .line 272
    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-float/2addr v3, v4

    .line 274
    :cond_0
    mul-float v4, v3, p4

    add-float/2addr v4, v2

    .line 275
    .local v4, "tx":F
    const/4 v5, 0x0

    invoke-virtual {p3, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 276
    .end local v1    # "charString":Ljava/lang/String;
    .end local v2    # "charWidth":F
    .end local v3    # "tracking":F
    .end local v4    # "tx":F
    goto :goto_0

    .line 277
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "canvas"    # Landroid/graphics/Canvas;

    .line 333
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-nez v0, :cond_0

    .line 334
    return-void

    .line 336
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 337
    return-void

    .line 339
    :cond_1
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 340
    return-void
.end method

.method private drawGlyphTextLine(Ljava/lang/String;Lcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/Font;Landroid/graphics/Canvas;FF)V
    .locals 12
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "documentData"    # Lcom/airbnb/lottie/model/DocumentData;
    .param p3, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p4, "font"    # Lcom/airbnb/lottie/model/Font;
    .param p5, "canvas"    # Landroid/graphics/Canvas;
    .param p6, "parentScale"    # F
    .param p7, "fontScale"    # F

    .line 190
    move-object v6, p0

    const/4 v0, 0x0

    move v7, v0

    .local v7, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v7, v0, :cond_2

    .line 191
    move-object v8, p1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 192
    .local v9, "c":C
    invoke-virtual/range {p4 .. p4}, Lcom/airbnb/lottie/model/Font;->getFamily()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p4 .. p4}, Lcom/airbnb/lottie/model/Font;->getStyle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v0, v1}, Lcom/airbnb/lottie/model/FontCharacter;->hashFor(CLjava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 193
    .local v10, "characterHash":I
    iget-object v0, v6, Lcom/airbnb/lottie/model/layer/TextLayer;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getCharacters()Landroidx/collection/SparseArrayCompat;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/airbnb/lottie/model/FontCharacter;

    .line 194
    .local v11, "character":Lcom/airbnb/lottie/model/FontCharacter;
    if-nez v11, :cond_0

    .line 196
    move-object v1, p2

    move-object/from16 v4, p5

    goto :goto_1

    .line 198
    :cond_0
    move-object v0, p0

    move-object v1, v11

    move-object v2, p3

    move/from16 v3, p7

    move-object v4, p2

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawCharacterAsGlyph(Lcom/airbnb/lottie/model/FontCharacter;Landroid/graphics/Matrix;FLcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Canvas;)V

    .line 199
    invoke-virtual {v11}, Lcom/airbnb/lottie/model/FontCharacter;->getWidth()D

    move-result-wide v0

    double-to-float v0, v0

    mul-float v0, v0, p7

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v1

    mul-float/2addr v0, v1

    mul-float v0, v0, p6

    .line 201
    .local v0, "tx":F
    move-object v1, p2

    iget v2, v1, Lcom/airbnb/lottie/model/DocumentData;->tracking:I

    int-to-float v2, v2

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v2, v3

    .line 202
    .local v2, "tracking":F
    iget-object v3, v6, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v3, :cond_1

    .line 203
    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v2, v3

    .line 205
    :cond_1
    mul-float v3, v2, p6

    add-float/2addr v0, v3

    .line 206
    const/4 v3, 0x0

    move-object/from16 v4, p5

    invoke-virtual {v4, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 190
    .end local v0    # "tx":F
    .end local v2    # "tracking":F
    .end local v9    # "c":C
    .end local v10    # "characterHash":I
    .end local v11    # "character":Lcom/airbnb/lottie/model/FontCharacter;
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    move-object v8, p1

    move-object v1, p2

    move-object/from16 v4, p5

    .line 208
    .end local v7    # "i":I
    return-void
.end method

.method private drawTextGlyphs(Lcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/Font;Landroid/graphics/Canvas;)V
    .locals 23
    .param p1, "documentData"    # Lcom/airbnb/lottie/model/DocumentData;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p3, "font"    # Lcom/airbnb/lottie/model/Font;
    .param p4, "canvas"    # Landroid/graphics/Canvas;

    .line 153
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p4

    iget-object v0, v8, Lcom/airbnb/lottie/model/layer/TextLayer;->textSizeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-nez v0, :cond_0

    iget v0, v9, Lcom/airbnb/lottie/model/DocumentData;->size:F

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_0
    move v11, v0

    .line 154
    .local v11, "textSize":F
    const/high16 v0, 0x42c80000    # 100.0f

    div-float v12, v11, v0

    .line 155
    .local v12, "fontScale":F
    invoke-static/range {p2 .. p2}, Lcom/airbnb/lottie/utils/Utils;->getScale(Landroid/graphics/Matrix;)F

    move-result v13

    .line 157
    .local v13, "parentScale":F
    iget-object v14, v9, Lcom/airbnb/lottie/model/DocumentData;->text:Ljava/lang/String;

    .line 160
    .local v14, "text":Ljava/lang/String;
    iget v0, v9, Lcom/airbnb/lottie/model/DocumentData;->lineHeight:F

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v1

    mul-float v15, v0, v1

    .line 163
    .local v15, "lineHeight":F
    invoke-direct {v8, v14}, Lcom/airbnb/lottie/model/layer/TextLayer;->getTextLines(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 164
    .local v7, "textLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    .line 165
    .local v6, "textLineCount":I
    const/4 v0, 0x0

    move v5, v0

    .local v5, "l":I
    :goto_1
    if-ge v5, v6, :cond_1

    .line 167
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 168
    .local v4, "textLine":Ljava/lang/String;
    move-object/from16 v3, p3

    invoke-direct {v8, v4, v3, v12, v13}, Lcom/airbnb/lottie/model/layer/TextLayer;->getTextLineWidthForGlyphs(Ljava/lang/String;Lcom/airbnb/lottie/model/Font;FF)F

    move-result v2

    .line 170
    .local v2, "textLineWidth":F
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Canvas;->save()I

    .line 173
    iget-object v0, v9, Lcom/airbnb/lottie/model/DocumentData;->justification:Lcom/airbnb/lottie/model/DocumentData$Justification;

    invoke-direct {v8, v0, v10, v2}, Lcom/airbnb/lottie/model/layer/TextLayer;->applyJustification(Lcom/airbnb/lottie/model/DocumentData$Justification;Landroid/graphics/Canvas;F)V

    .line 176
    add-int/lit8 v0, v6, -0x1

    int-to-float v0, v0

    mul-float/2addr v0, v15

    const/high16 v1, 0x40000000    # 2.0f

    div-float v16, v0, v1

    .line 177
    .local v16, "multilineTranslateY":F
    int-to-float v0, v5

    mul-float/2addr v0, v15

    sub-float v1, v0, v16

    .line 178
    .local v1, "translateY":F
    const/4 v0, 0x0

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 181
    move-object/from16 v0, p0

    move/from16 v17, v1

    .end local v1    # "translateY":F
    .local v17, "translateY":F
    move-object v1, v4

    move/from16 v18, v2

    .end local v2    # "textLineWidth":F
    .local v18, "textLineWidth":F
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v19, v4

    .end local v4    # "textLine":Ljava/lang/String;
    .local v19, "textLine":Ljava/lang/String;
    move-object/from16 v4, p3

    move/from16 v20, v5

    .end local v5    # "l":I
    .local v20, "l":I
    move-object/from16 v5, p4

    move/from16 v21, v6

    .end local v6    # "textLineCount":I
    .local v21, "textLineCount":I
    move v6, v13

    move-object/from16 v22, v7

    .end local v7    # "textLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v22, "textLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move v7, v12

    invoke-direct/range {v0 .. v7}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawGlyphTextLine(Ljava/lang/String;Lcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/Font;Landroid/graphics/Canvas;FF)V

    .line 184
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Canvas;->restore()V

    .line 165
    .end local v16    # "multilineTranslateY":F
    .end local v17    # "translateY":F
    .end local v18    # "textLineWidth":F
    .end local v19    # "textLine":Ljava/lang/String;
    add-int/lit8 v5, v20, 0x1

    move/from16 v6, v21

    move-object/from16 v7, v22

    .end local v20    # "l":I
    .restart local v5    # "l":I
    goto :goto_1

    .line 186
    .end local v5    # "l":I
    .end local v21    # "textLineCount":I
    .end local v22    # "textLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "textLineCount":I
    .restart local v7    # "textLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method private drawTextWithFont(Lcom/airbnb/lottie/model/DocumentData;Lcom/airbnb/lottie/model/Font;Landroid/graphics/Matrix;Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "documentData"    # Lcom/airbnb/lottie/model/DocumentData;
    .param p2, "font"    # Lcom/airbnb/lottie/model/Font;
    .param p3, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p4, "canvas"    # Landroid/graphics/Canvas;

    .line 212
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-static/range {p3 .. p3}, Lcom/airbnb/lottie/utils/Utils;->getScale(Landroid/graphics/Matrix;)F

    move-result v3

    .line 213
    .local v3, "parentScale":F
    iget-object v4, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual/range {p2 .. p2}, Lcom/airbnb/lottie/model/Font;->getFamily()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/airbnb/lottie/model/Font;->getStyle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/airbnb/lottie/LottieDrawable;->getTypeface(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    .line 214
    .local v4, "typeface":Landroid/graphics/Typeface;
    if-nez v4, :cond_0

    .line 215
    return-void

    .line 217
    :cond_0
    iget-object v5, v1, Lcom/airbnb/lottie/model/DocumentData;->text:Ljava/lang/String;

    .line 218
    .local v5, "text":Ljava/lang/String;
    iget-object v6, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v6}, Lcom/airbnb/lottie/LottieDrawable;->getTextDelegate()Lcom/airbnb/lottie/TextDelegate;

    move-result-object v6

    .line 219
    .local v6, "textDelegate":Lcom/airbnb/lottie/TextDelegate;
    if-eqz v6, :cond_1

    .line 220
    invoke-virtual {v6, v5}, Lcom/airbnb/lottie/TextDelegate;->getTextInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 222
    :cond_1
    iget-object v7, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 223
    iget-object v7, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->textSizeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-nez v7, :cond_2

    iget v7, v1, Lcom/airbnb/lottie/model/DocumentData;->size:F

    goto :goto_0

    :cond_2
    invoke-virtual {v7}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 224
    .local v7, "textSize":F
    :goto_0
    iget-object v8, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v9

    mul-float/2addr v9, v7

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 225
    iget-object v8, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    iget-object v9, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 226
    iget-object v8, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    iget-object v9, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getTextSize()F

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 229
    iget v8, v1, Lcom/airbnb/lottie/model/DocumentData;->lineHeight:F

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v9

    mul-float/2addr v8, v9

    .line 232
    .local v8, "lineHeight":F
    invoke-direct {v0, v5}, Lcom/airbnb/lottie/model/layer/TextLayer;->getTextLines(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 233
    .local v9, "textLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    .line 234
    .local v10, "textLineCount":I
    const/4 v11, 0x0

    .local v11, "l":I
    :goto_1
    if-ge v11, v10, :cond_3

    .line 236
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 237
    .local v12, "textLine":Ljava/lang/String;
    iget-object v13, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v13, v12}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v13

    .line 240
    .local v13, "textLineWidth":F
    iget-object v14, v1, Lcom/airbnb/lottie/model/DocumentData;->justification:Lcom/airbnb/lottie/model/DocumentData$Justification;

    invoke-direct {v0, v14, v2, v13}, Lcom/airbnb/lottie/model/layer/TextLayer;->applyJustification(Lcom/airbnb/lottie/model/DocumentData$Justification;Landroid/graphics/Canvas;F)V

    .line 243
    add-int/lit8 v14, v10, -0x1

    int-to-float v14, v14

    mul-float/2addr v14, v8

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    .line 244
    .local v14, "multilineTranslateY":F
    int-to-float v15, v11

    mul-float/2addr v15, v8

    sub-float/2addr v15, v14

    .line 245
    .local v15, "translateY":F
    move-object/from16 v16, v4

    .end local v4    # "typeface":Landroid/graphics/Typeface;
    .local v16, "typeface":Landroid/graphics/Typeface;
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v15}, Landroid/graphics/Canvas;->translate(FF)V

    .line 248
    invoke-direct {v0, v12, v1, v2, v3}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawFontTextLine(Ljava/lang/String;Lcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Canvas;F)V

    .line 251
    move-object/from16 v4, p3

    invoke-virtual {v2, v4}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 234
    .end local v12    # "textLine":Ljava/lang/String;
    .end local v13    # "textLineWidth":F
    .end local v14    # "multilineTranslateY":F
    .end local v15    # "translateY":F
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v4, v16

    goto :goto_1

    .line 253
    .end local v11    # "l":I
    .end local v16    # "typeface":Landroid/graphics/Typeface;
    .restart local v4    # "typeface":Landroid/graphics/Typeface;
    :cond_3
    return-void
.end method

.method private getContentsForCharacter(Lcom/airbnb/lottie/model/FontCharacter;)Ljava/util/List;
    .locals 7
    .param p1, "character"    # Lcom/airbnb/lottie/model/FontCharacter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/model/FontCharacter;",
            ")",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/content/ContentGroup;",
            ">;"
        }
    .end annotation

    .line 363
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->contentsForCharacter:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->contentsForCharacter:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 366
    :cond_0
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/FontCharacter;->getShapes()Ljava/util/List;

    move-result-object v0

    .line 367
    .local v0, "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ShapeGroup;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 368
    .local v1, "size":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 369
    .local v2, "contents":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/content/ContentGroup;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 370
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/lottie/model/content/ShapeGroup;

    .line 371
    .local v4, "sg":Lcom/airbnb/lottie/model/content/ShapeGroup;
    new-instance v5, Lcom/airbnb/lottie/animation/content/ContentGroup;

    iget-object v6, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-direct {v5, v6, p0, v4}, Lcom/airbnb/lottie/animation/content/ContentGroup;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/ShapeGroup;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    .end local v4    # "sg":Lcom/airbnb/lottie/model/content/ShapeGroup;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 373
    .end local v3    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->contentsForCharacter:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    return-object v2
.end method

.method private getTextLineWidthForGlyphs(Ljava/lang/String;Lcom/airbnb/lottie/model/Font;FF)F
    .locals 11
    .param p1, "textLine"    # Ljava/lang/String;
    .param p2, "font"    # Lcom/airbnb/lottie/model/Font;
    .param p3, "fontScale"    # F
    .param p4, "parentScale"    # F

    .line 281
    const/4 v0, 0x0

    .line 282
    .local v0, "textLineWidth":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 283
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 284
    .local v2, "c":C
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/Font;->getFamily()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/Font;->getStyle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/airbnb/lottie/model/FontCharacter;->hashFor(CLjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 285
    .local v3, "characterHash":I
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieComposition;->getCharacters()Landroidx/collection/SparseArrayCompat;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/lottie/model/FontCharacter;

    .line 286
    .local v4, "character":Lcom/airbnb/lottie/model/FontCharacter;
    if-nez v4, :cond_0

    .line 287
    goto :goto_1

    .line 289
    :cond_0
    float-to-double v5, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/model/FontCharacter;->getWidth()D

    move-result-wide v7

    float-to-double v9, p3

    mul-double/2addr v7, v9

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v9

    float-to-double v9, v9

    mul-double/2addr v7, v9

    float-to-double v9, p4

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    double-to-float v0, v5

    .line 282
    .end local v2    # "c":C
    .end local v3    # "characterHash":I
    .end local v4    # "character":Lcom/airbnb/lottie/model/FontCharacter;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 291
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method private getTextLines(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 257
    const-string v0, "\r\n"

    const-string v1, "\r"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    const-string v2, "\n"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "formattedText":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, "textLinesArray":[Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private isModifier(I)Z
    .locals 2
    .param p1, "codePoint"    # I

    .line 408
    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    .line 409
    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result v0

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_1

    .line 410
    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    .line 411
    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result v0

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_1

    .line 412
    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 408
    :goto_1
    return v0
.end method


# virtual methods
.method public addValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/airbnb/lottie/value/LottieValueCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 418
    .local p1, "property":Ljava/lang/Object;, "TT;"
    .local p2, "callback":Lcom/airbnb/lottie/value/LottieValueCallback;, "Lcom/airbnb/lottie/value/LottieValueCallback<TT;>;"
    invoke-super {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 419
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->COLOR:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_3

    .line 420
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_0

    .line 421
    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto/16 :goto_0

    .line 423
    :cond_0
    if-nez p2, :cond_2

    .line 424
    if-eqz v0, :cond_1

    .line 425
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/model/layer/TextLayer;->removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 427
    :cond_1
    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    goto/16 :goto_0

    .line 429
    :cond_2
    new-instance v0, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 430
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 431
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/model/layer/TextLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    goto/16 :goto_0

    .line 434
    :cond_3
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->STROKE_COLOR:Ljava/lang/Integer;

    if-ne p1, v0, :cond_7

    .line 435
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_4

    .line 436
    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto/16 :goto_0

    .line 438
    :cond_4
    if-nez p2, :cond_6

    .line 439
    if-eqz v0, :cond_5

    .line 440
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/model/layer/TextLayer;->removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 442
    :cond_5
    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    goto/16 :goto_0

    .line 444
    :cond_6
    new-instance v0, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 445
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 446
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/model/layer/TextLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    goto/16 :goto_0

    .line 449
    :cond_7
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->STROKE_WIDTH:Ljava/lang/Float;

    if-ne p1, v0, :cond_b

    .line 450
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_8

    .line 451
    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_0

    .line 453
    :cond_8
    if-nez p2, :cond_a

    .line 454
    if-eqz v0, :cond_9

    .line 455
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/model/layer/TextLayer;->removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 457
    :cond_9
    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_0

    .line 459
    :cond_a
    new-instance v0, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 460
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 461
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/model/layer/TextLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    goto :goto_0

    .line 464
    :cond_b
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->TEXT_TRACKING:Ljava/lang/Float;

    if-ne p1, v0, :cond_f

    .line 465
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_c

    .line 466
    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_0

    .line 468
    :cond_c
    if-nez p2, :cond_e

    .line 469
    if-eqz v0, :cond_d

    .line 470
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/model/layer/TextLayer;->removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 472
    :cond_d
    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_0

    .line 474
    :cond_e
    new-instance v0, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 475
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 476
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/model/layer/TextLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    goto :goto_0

    .line 479
    :cond_f
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->TEXT_SIZE:Ljava/lang/Float;

    if-ne p1, v0, :cond_12

    .line 480
    if-nez p2, :cond_11

    .line 481
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textSizeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_10

    .line 482
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/model/layer/TextLayer;->removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 484
    :cond_10
    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textSizeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_0

    .line 486
    :cond_11
    new-instance v0, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textSizeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 487
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 488
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textSizeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/model/layer/TextLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 491
    :cond_12
    :goto_0
    return-void
.end method

.method drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p3, "parentAlpha"    # I

    .line 107
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 108
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->useTextGlyphs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/model/DocumentData;

    .line 112
    .local v0, "documentData":Lcom/airbnb/lottie/model/DocumentData;
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieComposition;->getFonts()Ljava/util/Map;

    move-result-object v1

    iget-object v2, v0, Lcom/airbnb/lottie/model/DocumentData;->fontName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/model/Font;

    .line 113
    .local v1, "font":Lcom/airbnb/lottie/model/Font;
    if-nez v1, :cond_1

    .line 115
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 116
    return-void

    .line 119
    :cond_1
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v2, :cond_2

    .line 120
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 122
    :cond_2
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/airbnb/lottie/model/DocumentData;->color:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    :goto_0
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v2, :cond_3

    .line 126
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 128
    :cond_3
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/airbnb/lottie/model/DocumentData;->strokeColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    :goto_1
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getOpacity()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v2

    const/16 v3, 0x64

    if-nez v2, :cond_4

    move v2, v3

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getOpacity()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 131
    .local v2, "opacity":I
    :goto_2
    mul-int/lit16 v4, v2, 0xff

    div-int/2addr v4, v3

    .line 132
    .local v4, "alpha":I
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 133
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 135
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v3, :cond_5

    .line 136
    iget-object v5, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_3

    .line 138
    :cond_5
    invoke-static {p2}, Lcom/airbnb/lottie/utils/Utils;->getScale(Landroid/graphics/Matrix;)F

    move-result v3

    .line 139
    .local v3, "parentScale":F
    iget-object v5, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    iget v6, v0, Lcom/airbnb/lottie/model/DocumentData;->strokeWidth:F

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v7

    mul-float/2addr v6, v7

    mul-float/2addr v6, v3

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 142
    .end local v3    # "parentScale":F
    :goto_3
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieDrawable;->useTextGlyphs()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 143
    invoke-direct {p0, v0, p2, v1, p1}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawTextGlyphs(Lcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/Font;Landroid/graphics/Canvas;)V

    goto :goto_4

    .line 145
    :cond_6
    invoke-direct {p0, v0, v1, p2, p1}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawTextWithFont(Lcom/airbnb/lottie/model/DocumentData;Lcom/airbnb/lottie/model/Font;Landroid/graphics/Matrix;Landroid/graphics/Canvas;)V

    .line 148
    :goto_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 149
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 3
    .param p1, "outBounds"    # Landroid/graphics/RectF;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p3, "applyParents"    # Z

    .line 100
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 102
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 103
    return-void
.end method
