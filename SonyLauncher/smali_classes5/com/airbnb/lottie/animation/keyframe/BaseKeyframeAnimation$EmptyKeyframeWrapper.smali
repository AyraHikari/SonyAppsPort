.class final Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$EmptyKeyframeWrapper;
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
    name = "EmptyKeyframeWrapper"
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 186
    .local p0, "this":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$EmptyKeyframeWrapper;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$EmptyKeyframeWrapper<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$1;

    .line 186
    .local p0, "this":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$EmptyKeyframeWrapper;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$EmptyKeyframeWrapper<TT;>;"
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$EmptyKeyframeWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentKeyframe()Lcom/airbnb/lottie/value/Keyframe;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/value/Keyframe<",
            "TT;>;"
        }
    .end annotation

    .line 199
    .local p0, "this":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$EmptyKeyframeWrapper;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$EmptyKeyframeWrapper<TT;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEndProgress()F
    .locals 1

    .line 209
    .local p0, "this":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$EmptyKeyframeWrapper;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$EmptyKeyframeWrapper<TT;>;"
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getStartDelayProgress()F
    .locals 1

    .line 204
    .local p0, "this":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$EmptyKeyframeWrapper;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$EmptyKeyframeWrapper<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public isCachedValueEnabled(F)Z
    .locals 2
    .param p1, "interpolatedProgress"    # F

    .line 214
    .local p0, "this":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$EmptyKeyframeWrapper;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$EmptyKeyframeWrapper<TT;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 189
    .local p0, "this":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$EmptyKeyframeWrapper;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$EmptyKeyframeWrapper<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public isValueChanged(F)Z
    .locals 1
    .param p1, "progress"    # F

    .line 194
    .local p0, "this":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$EmptyKeyframeWrapper;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$EmptyKeyframeWrapper<TT;>;"
    const/4 v0, 0x0

    return v0
.end method
