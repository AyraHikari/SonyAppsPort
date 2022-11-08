.class public Lcom/airbnb/lottie/animation/keyframe/ScaleKeyframeAnimation;
.super Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation;
.source "ScaleKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation<",
        "Lcom/airbnb/lottie/value/ScaleXY;",
        ">;"
    }
.end annotation


# instance fields
.field private final scaleXY:Lcom/airbnb/lottie/value/ScaleXY;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/value/Keyframe<",
            "Lcom/airbnb/lottie/value/ScaleXY;",
            ">;>;)V"
        }
    .end annotation

    .line 14
    .local p1, "keyframes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/value/Keyframe<Lcom/airbnb/lottie/value/ScaleXY;>;>;"
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 11
    new-instance v0, Lcom/airbnb/lottie/value/ScaleXY;

    invoke-direct {v0}, Lcom/airbnb/lottie/value/ScaleXY;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/ScaleKeyframeAnimation;->scaleXY:Lcom/airbnb/lottie/value/ScaleXY;

    .line 15
    return-void
.end method


# virtual methods
.method public getValue(Lcom/airbnb/lottie/value/Keyframe;F)Lcom/airbnb/lottie/value/ScaleXY;
    .locals 10
    .param p2, "keyframeProgress"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/value/Keyframe<",
            "Lcom/airbnb/lottie/value/ScaleXY;",
            ">;F)",
            "Lcom/airbnb/lottie/value/ScaleXY;"
        }
    .end annotation

    .line 18
    .local p1, "keyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<Lcom/airbnb/lottie/value/ScaleXY;>;"
    iget-object v0, p1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 21
    iget-object v0, p1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v0, Lcom/airbnb/lottie/value/ScaleXY;

    .line 22
    .local v0, "startTransform":Lcom/airbnb/lottie/value/ScaleXY;
    iget-object v1, p1, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    move-object v9, v1

    check-cast v9, Lcom/airbnb/lottie/value/ScaleXY;

    .line 24
    .local v9, "endTransform":Lcom/airbnb/lottie/value/ScaleXY;
    iget-object v1, p0, Lcom/airbnb/lottie/animation/keyframe/ScaleKeyframeAnimation;->valueCallback:Lcom/airbnb/lottie/value/LottieValueCallback;

    if-eqz v1, :cond_0

    .line 26
    iget-object v1, p0, Lcom/airbnb/lottie/animation/keyframe/ScaleKeyframeAnimation;->valueCallback:Lcom/airbnb/lottie/value/LottieValueCallback;

    iget v2, p1, Lcom/airbnb/lottie/value/Keyframe;->startFrame:F

    iget-object v3, p1, Lcom/airbnb/lottie/value/Keyframe;->endFrame:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 28
    invoke-virtual {p0}, Lcom/airbnb/lottie/animation/keyframe/ScaleKeyframeAnimation;->getLinearCurrentKeyframeProgress()F

    move-result v7

    invoke-virtual {p0}, Lcom/airbnb/lottie/animation/keyframe/ScaleKeyframeAnimation;->getProgress()F

    move-result v8

    .line 26
    move-object v4, v0

    move-object v5, v9

    move v6, p2

    invoke-virtual/range {v1 .. v8}, Lcom/airbnb/lottie/value/LottieValueCallback;->getValueInternal(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/value/ScaleXY;

    .line 29
    .local v1, "value":Lcom/airbnb/lottie/value/ScaleXY;
    if-eqz v1, :cond_0

    .line 30
    return-object v1

    .line 34
    .end local v1    # "value":Lcom/airbnb/lottie/value/ScaleXY;
    :cond_0
    iget-object v1, p0, Lcom/airbnb/lottie/animation/keyframe/ScaleKeyframeAnimation;->scaleXY:Lcom/airbnb/lottie/value/ScaleXY;

    .line 35
    invoke-virtual {v0}, Lcom/airbnb/lottie/value/ScaleXY;->getScaleX()F

    move-result v2

    invoke-virtual {v9}, Lcom/airbnb/lottie/value/ScaleXY;->getScaleX()F

    move-result v3

    invoke-static {v2, v3, p2}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v2

    .line 36
    invoke-virtual {v0}, Lcom/airbnb/lottie/value/ScaleXY;->getScaleY()F

    move-result v3

    invoke-virtual {v9}, Lcom/airbnb/lottie/value/ScaleXY;->getScaleY()F

    move-result v4

    invoke-static {v3, v4, p2}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v3

    .line 34
    invoke-virtual {v1, v2, v3}, Lcom/airbnb/lottie/value/ScaleXY;->set(FF)V

    .line 38
    iget-object v1, p0, Lcom/airbnb/lottie/animation/keyframe/ScaleKeyframeAnimation;->scaleXY:Lcom/airbnb/lottie/value/ScaleXY;

    return-object v1

    .line 19
    .end local v0    # "startTransform":Lcom/airbnb/lottie/value/ScaleXY;
    .end local v9    # "endTransform":Lcom/airbnb/lottie/value/ScaleXY;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing values for keyframe."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getValue(Lcom/airbnb/lottie/value/Keyframe;F)Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/animation/keyframe/ScaleKeyframeAnimation;->getValue(Lcom/airbnb/lottie/value/Keyframe;F)Lcom/airbnb/lottie/value/ScaleXY;

    move-result-object p1

    return-object p1
.end method
