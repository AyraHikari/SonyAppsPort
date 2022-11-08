.class public Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;
.super Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation;
.source "PathKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private pathMeasure:Landroid/graphics/PathMeasure;

.field private pathMeasureKeyframe:Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;

.field private final point:Landroid/graphics/PointF;

.field private final pos:[F


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/airbnb/lottie/value/Keyframe<",
            "Landroid/graphics/PointF;",
            ">;>;)V"
        }
    .end annotation

    .line 18
    .local p1, "keyframes":Ljava/util/List;, "Ljava/util/List<+Lcom/airbnb/lottie/value/Keyframe<Landroid/graphics/PointF;>;>;"
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 12
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->point:Landroid/graphics/PointF;

    .line 13
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->pos:[F

    .line 15
    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->pathMeasure:Landroid/graphics/PathMeasure;

    .line 19
    return-void
.end method


# virtual methods
.method public getValue(Lcom/airbnb/lottie/value/Keyframe;F)Landroid/graphics/PointF;
    .locals 11
    .param p2, "keyframeProgress"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/value/Keyframe<",
            "Landroid/graphics/PointF;",
            ">;F)",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    .line 22
    .local p1, "keyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<Landroid/graphics/PointF;>;"
    move-object v0, p1

    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;

    .line 23
    .local v0, "pathKeyframe":Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;->getPath()Landroid/graphics/Path;

    move-result-object v1

    .line 24
    .local v1, "path":Landroid/graphics/Path;
    if-nez v1, :cond_0

    .line 25
    iget-object v2, p1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/PointF;

    return-object v2

    .line 28
    :cond_0
    iget-object v2, p0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->valueCallback:Lcom/airbnb/lottie/value/LottieValueCallback;

    if-eqz v2, :cond_1

    .line 29
    iget-object v3, p0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->valueCallback:Lcom/airbnb/lottie/value/LottieValueCallback;

    iget v4, v0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;->startFrame:F

    iget-object v2, v0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;->endFrame:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iget-object v6, v0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;->startValue:Ljava/lang/Object;

    iget-object v7, v0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;->endValue:Ljava/lang/Object;

    .line 30
    invoke-virtual {p0}, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->getLinearCurrentKeyframeProgress()F

    move-result v8

    .line 31
    invoke-virtual {p0}, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->getProgress()F

    move-result v10

    .line 29
    move v9, p2

    invoke-virtual/range {v3 .. v10}, Lcom/airbnb/lottie/value/LottieValueCallback;->getValueInternal(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    .line 32
    .local v2, "value":Landroid/graphics/PointF;
    if-eqz v2, :cond_1

    .line 33
    return-object v2

    .line 37
    .end local v2    # "value":Landroid/graphics/PointF;
    :cond_1
    iget-object v2, p0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->pathMeasureKeyframe:Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;

    const/4 v3, 0x0

    if-eq v2, v0, :cond_2

    .line 38
    iget-object v2, p0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->pathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 39
    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->pathMeasureKeyframe:Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;

    .line 42
    :cond_2
    iget-object v2, p0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->pathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v4

    mul-float/2addr v4, p2

    iget-object v5, p0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->pos:[F

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 43
    iget-object v2, p0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->point:Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->pos:[F

    aget v3, v4, v3

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 44
    iget-object v2, p0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->point:Landroid/graphics/PointF;

    return-object v2
.end method

.method public bridge synthetic getValue(Lcom/airbnb/lottie/value/Keyframe;F)Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->getValue(Lcom/airbnb/lottie/value/Keyframe;F)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method
