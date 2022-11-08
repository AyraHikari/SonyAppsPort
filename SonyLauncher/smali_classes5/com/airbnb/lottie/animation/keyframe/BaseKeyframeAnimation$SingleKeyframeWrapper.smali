.class final Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$SingleKeyframeWrapper;
.super Ljava/lang/Object;
.source "BaseKeyframeAnimation.java"

# interfaces
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingleKeyframeWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapper<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private cachedInterpolatedProgress:F

.field private final keyframe:Lcom/airbnb/lottie/value/Keyframe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/value/Keyframe<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/airbnb/lottie/value/Keyframe<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 223
    .local p0, "this":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$SingleKeyframeWrapper;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$SingleKeyframeWrapper<TT;>;"
    .local p1, "keyframes":Ljava/util/List;, "Ljava/util/List<+Lcom/airbnb/lottie/value/Keyframe<TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$SingleKeyframeWrapper;->cachedInterpolatedProgress:F

    .line 224
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/value/Keyframe;

    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$SingleKeyframeWrapper;->keyframe:Lcom/airbnb/lottie/value/Keyframe;

    .line 225
    return-void
.end method


# virtual methods
.method public getCurrentKeyframe()Lcom/airbnb/lottie/value/Keyframe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/value/Keyframe<",
            "TT;>;"
        }
    .end annotation

    .line 239
    .local p0, "this":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$SingleKeyframeWrapper;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$SingleKeyframeWrapper<TT;>;"
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$SingleKeyframeWrapper;->keyframe:Lcom/airbnb/lottie/value/Keyframe;

    return-object v0
.end method

.method public getEndProgress()F
    .locals 1

    .line 249
    .local p0, "this":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$SingleKeyframeWrapper;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$SingleKeyframeWrapper<TT;>;"
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$SingleKeyframeWrapper;->keyframe:Lcom/airbnb/lottie/value/Keyframe;

    invoke-virtual {v0}, Lcom/airbnb/lottie/value/Keyframe;->getEndProgress()F

    move-result v0

    return v0
.end method

.method public getStartDelayProgress()F
    .locals 1

    .line 244
    .local p0, "this":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$SingleKeyframeWrapper;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$SingleKeyframeWrapper<TT;>;"
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$SingleKeyframeWrapper;->keyframe:Lcom/airbnb/lottie/value/Keyframe;

    invoke-virtual {v0}, Lcom/airbnb/lottie/value/Keyframe;->getStartProgress()F

    move-result v0

    return v0
.end method

.method public isCachedValueEnabled(F)Z
    .locals 1
    .param p1, "interpolatedProgress"    # F

    .line 254
    .local p0, "this":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$SingleKeyframeWrapper;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$SingleKeyframeWrapper<TT;>;"
    iget v0, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$SingleKeyframeWrapper;->cachedInterpolatedProgress:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 255
    const/4 v0, 0x1

    return v0

    .line 257
    :cond_0
    iput p1, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$SingleKeyframeWrapper;->cachedInterpolatedProgress:F

    .line 258
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 229
    .local p0, "this":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$SingleKeyframeWrapper;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$SingleKeyframeWrapper<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public isValueChanged(F)Z
    .locals 1
    .param p1, "progress"    # F

    .line 234
    .local p0, "this":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$SingleKeyframeWrapper;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$SingleKeyframeWrapper<TT;>;"
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$SingleKeyframeWrapper;->keyframe:Lcom/airbnb/lottie/value/Keyframe;

    invoke-virtual {v0}, Lcom/airbnb/lottie/value/Keyframe;->isStatic()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
