.class public Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;
.super Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
.source "ShapeKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
        "Lcom/airbnb/lottie/model/content/ShapeData;",
        "Landroid/graphics/Path;",
        ">;"
    }
.end annotation


# instance fields
.field private final tempPath:Landroid/graphics/Path;

.field private final tempShapeData:Lcom/airbnb/lottie/model/content/ShapeData;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/value/Keyframe<",
            "Lcom/airbnb/lottie/model/content/ShapeData;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    .local p1, "keyframes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/value/Keyframe<Lcom/airbnb/lottie/model/content/ShapeData;>;>;"
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 12
    new-instance v0, Lcom/airbnb/lottie/model/content/ShapeData;

    invoke-direct {v0}, Lcom/airbnb/lottie/model/content/ShapeData;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->tempShapeData:Lcom/airbnb/lottie/model/content/ShapeData;

    .line 13
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->tempPath:Landroid/graphics/Path;

    .line 17
    return-void
.end method


# virtual methods
.method public getValue(Lcom/airbnb/lottie/value/Keyframe;F)Landroid/graphics/Path;
    .locals 4
    .param p2, "keyframeProgress"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/value/Keyframe<",
            "Lcom/airbnb/lottie/model/content/ShapeData;",
            ">;F)",
            "Landroid/graphics/Path;"
        }
    .end annotation

    .line 20
    .local p1, "keyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<Lcom/airbnb/lottie/model/content/ShapeData;>;"
    iget-object v0, p1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v0, Lcom/airbnb/lottie/model/content/ShapeData;

    .line 21
    .local v0, "startShapeData":Lcom/airbnb/lottie/model/content/ShapeData;
    iget-object v1, p1, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    check-cast v1, Lcom/airbnb/lottie/model/content/ShapeData;

    .line 23
    .local v1, "endShapeData":Lcom/airbnb/lottie/model/content/ShapeData;
    iget-object v2, p0, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->tempShapeData:Lcom/airbnb/lottie/model/content/ShapeData;

    invoke-virtual {v2, v0, v1, p2}, Lcom/airbnb/lottie/model/content/ShapeData;->interpolateBetween(Lcom/airbnb/lottie/model/content/ShapeData;Lcom/airbnb/lottie/model/content/ShapeData;F)V

    .line 24
    iget-object v2, p0, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->tempShapeData:Lcom/airbnb/lottie/model/content/ShapeData;

    iget-object v3, p0, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->tempPath:Landroid/graphics/Path;

    invoke-static {v2, v3}, Lcom/airbnb/lottie/utils/MiscUtils;->getPathFromData(Lcom/airbnb/lottie/model/content/ShapeData;Landroid/graphics/Path;)V

    .line 25
    iget-object v2, p0, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->tempPath:Landroid/graphics/Path;

    return-object v2
.end method

.method public bridge synthetic getValue(Lcom/airbnb/lottie/value/Keyframe;F)Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->getValue(Lcom/airbnb/lottie/value/Keyframe;F)Landroid/graphics/Path;

    move-result-object p1

    return-object p1
.end method
