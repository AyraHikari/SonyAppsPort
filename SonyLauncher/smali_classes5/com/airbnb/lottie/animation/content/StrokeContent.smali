.class public Lcom/airbnb/lottie/animation/content/StrokeContent;
.super Lcom/airbnb/lottie/animation/content/BaseStrokeContent;
.source "StrokeContent.java"


# instance fields
.field private final colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final hidden:Z

.field private final layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/ShapeStroke;)V
    .locals 11
    .param p1, "lottieDrawable"    # Lcom/airbnb/lottie/LottieDrawable;
    .param p2, "layer"    # Lcom/airbnb/lottie/model/layer/BaseLayer;
    .param p3, "stroke"    # Lcom/airbnb/lottie/model/content/ShapeStroke;

    .line 28
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeStroke;->getCapType()Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->toPaintCap()Landroid/graphics/Paint$Cap;

    move-result-object v4

    .line 29
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeStroke;->getJoinType()Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->toPaintJoin()Landroid/graphics/Paint$Join;

    move-result-object v5

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeStroke;->getMiterLimit()F

    move-result v6

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeStroke;->getOpacity()Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-result-object v7

    .line 30
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeStroke;->getWidth()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v8

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeStroke;->getLineDashPattern()Ljava/util/List;

    move-result-object v9

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeStroke;->getDashOffset()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v10

    .line 28
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v10}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V

    .line 31
    iput-object p2, p0, Lcom/airbnb/lottie/animation/content/StrokeContent;->layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 32
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeStroke;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/StrokeContent;->name:Ljava/lang/String;

    .line 33
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeStroke;->isHidden()Z

    move-result v0

    iput-boolean v0, p0, Lcom/airbnb/lottie/animation/content/StrokeContent;->hidden:Z

    .line 34
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeStroke;->getColor()Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/StrokeContent;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 35
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 36
    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 37
    return-void
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

    .line 57
    .local p1, "property":Ljava/lang/Object;, "TT;"
    .local p2, "callback":Lcom/airbnb/lottie/value/LottieValueCallback;, "Lcom/airbnb/lottie/value/LottieValueCallback<TT;>;"
    invoke-super {p0, p1, p2}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->addValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 58
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->STROKE_COLOR:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/StrokeContent;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_0

    .line 60
    :cond_0
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_2

    .line 61
    if-nez p2, :cond_1

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/StrokeContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_0

    .line 64
    :cond_1
    new-instance v0, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/StrokeContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 66
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 67
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/StrokeContent;->layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/StrokeContent;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 70
    :cond_2
    :goto_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p3, "parentAlpha"    # I

    .line 40
    iget-boolean v0, p0, Lcom/airbnb/lottie/animation/content/StrokeContent;->hidden:Z

    if-eqz v0, :cond_0

    .line 41
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/StrokeContent;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/StrokeContent;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    check-cast v1, Lcom/airbnb/lottie/animation/keyframe/ColorKeyframeAnimation;

    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/ColorKeyframeAnimation;->getIntValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/StrokeContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/StrokeContent;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/StrokeContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 47
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 48
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/StrokeContent;->name:Ljava/lang/String;

    return-object v0
.end method
